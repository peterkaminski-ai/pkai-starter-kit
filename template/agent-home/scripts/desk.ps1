# desk.ps1 — the PowerShell twin of scripts/desk, for Windows machines where
# Claude Code runs hooks under PowerShell because Git Bash isn't installed.
# Same files, same behaviour; see scripts/desk for the why.
#
#   desk.ps1 start | turn | end | guard     (hooks; JSON payload on stdin)
#   desk.ps1 take [<session-id>] [--force]  (the agent, when the person says so)
#   desk.ps1 status
#
# Run through: powershell.exe -NoProfile -ExecutionPolicy Bypass -File desk.ps1 <cmd>
# (-ExecutionPolicy Bypass applies to this one process; no machine setting changes.)
# Never breaks a session: on any internal error a hook allows and stays quiet.
# Windows PowerShell 5.1 or later; no modules.

param([string]$Cmd = '', [string]$Arg1 = '', [string]$Arg2 = '')

# `-File` hands a leading-dash argument like --force to $args, not to a named
# parameter, so gather everything after the command here.
$Rest = @(@($Arg1, $Arg2) + @($args) | Where-Object { $_ })
$Force = [bool]($Rest | Where-Object { $_ -match '^(-{1,2}|/)?force$' })
$SidArg = [string]($Rest | Where-Object { $_ -notmatch '^(-{1,2}|/)?force$' } | Select-Object -First 1)

$ErrorActionPreference = 'Stop'
$utf8 = New-Object System.Text.UTF8Encoding($false)
try { [Console]::OutputEncoding = $utf8 } catch {}

$StaleMin = 30; if ($env:PKAI_DESK_STALE_MINUTES -match '^\d+$') { $StaleMin = [int]$env:PKAI_DESK_STALE_MINUTES }
$NoticeMin = 60; if ($env:PKAI_DESK_NOTICE_MINUTES -match '^\d+$') { $NoticeMin = [int]$env:PKAI_DESK_NOTICE_MINUTES }

$HomeDir = $env:CLAUDE_PROJECT_DIR
if (-not $HomeDir -or -not (Test-Path -LiteralPath $HomeDir -PathType Container)) {
  $HomeDir = Split-Path -Parent $PSScriptRoot
}
$D = Join-Path $HomeDir '.desk'
$L = Join-Path $D 'lease'

function Now-Epoch { [DateTimeOffset]::UtcNow.ToUnixTimeSeconds() }
function Write-Text($path, $text) { [IO.File]::WriteAllText($path, $text, $utf8) }
function Read-Text($path) { if (Test-Path -LiteralPath $path) { [IO.File]::ReadAllText($path).Trim() } else { '' } }

$script:Payload = $null
function Read-Payload {
  try { $raw = [Console]::In.ReadToEnd(); $script:Payload = $raw | ConvertFrom-Json } catch { $script:Payload = $null }
}
function Get-Sid {
  if ($null -eq $script:Payload) { return '' }
  $s = [string]$script:Payload.session_id
  if ($s -match '^[A-Za-z0-9._-]+$') { return $s } else { return '' }
}

function Escape-Json($text) {
  ($text -replace '\\', '\\' -replace '"', '\"' -replace "`t", '\t' -replace "`r", '' -replace "`n", '\n')
}
function Say-Context($event, $text) {
  if (-not $text) { return }
  [Console]::Out.Write('{"suppressOutput":true,"hookSpecificOutput":{"hookEventName":"' + $event + '","additionalContext":"' + (Escape-Json $text) + '"}}' + "`n")
}

function Field($file, $name) {
  if (-not (Test-Path -LiteralPath $file)) { return '' }
  foreach ($line in [IO.File]::ReadAllLines($file)) { if ($line.StartsWith("$name=")) { return $line.Substring($name.Length + 1) } }
  return ''
}
function Holder-Session { Field (Join-Path $L 'holder') 'session' }
function Seen-AgeMin {
  $s = Read-Text (Join-Path $L 'seen')
  if ($s -notmatch '^\d+$') { return $null }
  [int][Math]::Floor(((Now-Epoch) - [long]$s) / 60)
}

$script:StaleWhy = ''
function Lease-Stale {
  if (-not (Test-Path -LiteralPath $L)) { return $false }
  $a = Seen-AgeMin
  if ($null -eq $a) {
    $age = ((Get-Date) - (Get-Item -LiteralPath $L).LastWriteTime).TotalMinutes
    if ($age -ge $StaleMin) { $script:StaleWhy = 'its claim was never finished'; return $true }
    return $false
  }
  if ($a -ge $StaleMin) { $script:StaleWhy = $(if ($a -eq 1) { "no turn for 1 minute" } else { "no turn for $a minutes" }); return $true }
  # Process liveness is not used on Windows: the clock is the only signal.
  return $false
}

function Write-Lease($sid) {
  Write-Text (Join-Path $L 'seen') ([string](Now-Epoch))
  $t = Join-Path $L 'holder.tmp'
  Write-Text $t ("session=$sid`nhost=$env:COMPUTERNAME`npid=`nstarted=" + [DateTime]::UtcNow.ToString('yyyy-MM-ddTHH:mm:ssZ') + "`n")
  Move-Item -LiteralPath $t -Destination (Join-Path $L 'holder') -Force
}
function Claim($sid) {
  if (-not (Test-Path -LiteralPath $D)) { [void](New-Item -ItemType Directory -Path $D -Force) }
  # cmd's mkdir fails if the folder exists, in one system call: the atomic claim.
  cmd.exe /d /c "mkdir `"$L`" >nul 2>nul"
  if ($LASTEXITCODE -ne 0) { return $false }
  Write-Lease $sid; return $true
}
function Break-Stale {
  $aside = Join-Path $D ("stale.$PID." + (Now-Epoch))
  try { Move-Item -LiteralPath $L -Destination $aside -ErrorAction Stop } catch { return $false }
  Remove-Item -LiteralPath $aside -Recurse -Force -ErrorAction SilentlyContinue
  return $true
}
function Refresh {
  $t = Join-Path $L 'seen.tmp'
  Write-Text $t ([string](Now-Epoch)); Move-Item -LiteralPath $t -Destination (Join-Path $L 'seen') -Force
}

function Guest-Folder($sid) { Read-Text (Join-Path (Join-Path $D 'guests') $sid) }
function Make-Guest($sid) {
  $g = Join-Path $D 'guests'; $bg = Join-Path $HomeDir 'bg'
  foreach ($p in @($g, $bg)) { if (-not (Test-Path -LiteralPath $p)) { [void](New-Item -ItemType Directory -Path $p -Force) } }
  $stamp = [DateTime]::UtcNow.ToString('yyyyMMddTHHmmssZ'); $name = "guest-$stamp"; $n = 1
  while ($true) {
    cmd.exe /d /c "mkdir `"$(Join-Path $bg $name)`" >nul 2>nul"
    if ($LASTEXITCODE -eq 0) { break }
    $n++; $name = "guest-$stamp-$n"; if ($n -gt 20) { return '' }
  }
  Write-Text (Join-Path $g $sid) "bg/$name"
  return "bg/$name"
}
function Guest-Text($sid, $folder, $why) {
  $age = Seen-AgeMin
  $active = if ($null -ne $age) { "last active $age minutes ago" } else { 'active now' }
  @"
Desk: you are a GUEST in this house. $why ($active), so this session must not change the house's shared state.
- Your folder is $folder/. Keep status.md there as you go; when you finish, write handoff.md (what you did, what the foreground should integrate) and then an empty DONE file. Follow the "If you are a guest" rules in the foreground-background skill.
- Writes to memory/, CLAUDE.md and .claude/ are blocked for you; put what belongs there in your handoff instead.
- Tell the person once, in one plain sentence, for example: "Another session is already working in this house — in another terminal, or in the Claude app — so I'll work here as a guest and leave notes for it." Then offer three choices: keep going as a guest (the default); switch to the other session; or take the desk, if the other session is closed or idle.
- To take the desk, when the person says so: powershell -NoProfile -ExecutionPolicy Bypass -File scripts\desk.ps1 take $sid (add --force only after the person confirms the other session is closed).
"@.Trim()
}

function Waiting-List {
  $bg = Join-Path $HomeDir 'bg'
  if (-not (Test-Path -LiteralPath $bg)) { return @() }
  $out = @()
  foreach ($d in (Get-ChildItem -LiteralPath $bg -Directory | Sort-Object Name)) {
    if ($d.Name -eq 'archive') { continue }
    if (Test-Path -LiteralPath (Join-Path $d.FullName 'DONE')) { $out += "bg/$($d.Name)" }
    elseif ($d.Name -like 'guest-*' -and (Test-Path -LiteralPath (Join-Path $d.FullName 'handoff.md'))) { $out += "bg/$($d.Name)" }
  }
  return $out
}
function Mark-Told {
  if (-not (Test-Path -LiteralPath $D)) { [void](New-Item -ItemType Directory -Path $D -Force) }
  Write-Text (Join-Path $D 'notice.told') (((Waiting-List) -join "`n") + "`n")
  Write-Text (Join-Path $D 'notice.at') ([string](Now-Epoch))
}
function Notice-Line {
  $w = @(Waiting-List); if ($w.Count -eq 0) { return '' }
  $told = @(); $tf = Join-Path $D 'notice.told'
  if (Test-Path -LiteralPath $tf) { $told = [IO.File]::ReadAllLines($tf) }
  $new = @($w | Where-Object { $told -notcontains $_ }); if ($new.Count -eq 0) { return '' }
  $at = Read-Text (Join-Path $D 'notice.at'); if ($at -notmatch '^\d+$') { $at = 0 }
  if ((((Now-Epoch) - [long]$at) / 60) -lt $NoticeMin) { return '' }
  $what = if ($w.Count -eq 1) { '1 background handoff is' } else { "$($w.Count) background handoffs are" }
  Mark-Told
  "Handoffs: $what waiting ($($w -join ' ')). Tell the person in one line, for example: `"$what waiting; say 'integrate' when it suits.`" Integrate with the foreground-background skill when they say so."
}

function Cmd-Start {
  Read-Payload; $sid = Get-Sid; if (-not $sid) { return }
  $why = ''
  if (Claim $sid) { }
  elseif ((Holder-Session) -eq $sid) { Write-Lease $sid }
  elseif (Lease-Stale) {
    if ((Break-Stale) -and (Claim $sid)) { $why = "You took over the desk from a session that had stopped ($script:StaleWhy)." }
  }
  if ((Holder-Session) -eq $sid) {
    Remove-Item -LiteralPath (Join-Path (Join-Path $D 'guests') $sid) -Force -ErrorAction SilentlyContinue
    $w = @(Waiting-List); $text = $why
    if ($w.Count -gt 0) {
      $line = "Waiting to integrate: $($w -join ' '). Mention it to the person in one line; integrate when they say so (foreground-background skill)."
      $text = if ($text) { "$text`n$line" } else { $line }
      Mark-Told
    }
    Say-Context 'SessionStart' $text; return
  }
  $g = Guest-Folder $sid; if (-not $g) { $g = Make-Guest $sid }; if (-not $g) { return }
  Say-Context 'SessionStart' (Guest-Text $sid $g 'Another session holds the desk')
}

function Cmd-Turn {  # prints context lines; now-hook.ps1 adds the clock
  Read-Payload; $sid = Get-Sid; if (-not $sid) { return '' }
  $h = Holder-Session
  if ($h -and $h -eq $sid) { Refresh; return (Notice-Line) }
  if (-not $h -or (Lease-Stale)) {
    $tf = Join-Path (Join-Path $D 'guests') "$sid.told-free"
    if ((Guest-Folder $sid) -and -not (Test-Path -LiteralPath $tf)) {
      Write-Text $tf ''
      return "Desk: the other session has closed or gone idle, so the desk is free. You may offer to take it: powershell -NoProfile -ExecutionPolicy Bypass -File scripts\desk.ps1 take $sid"
    }
    return ''
  }
  if (-not (Guest-Folder $sid)) {
    $g = Make-Guest $sid; if (-not $g) { return '' }
    return (Guest-Text $sid $g 'Another session took the desk while this one was idle')
  }
  return ''
}

function Cmd-End {
  Read-Payload; $sid = Get-Sid; if (-not $sid) { return }
  if ((Holder-Session) -eq $sid) { Remove-Item -LiteralPath $L -Recurse -Force -ErrorAction SilentlyContinue }
  Remove-Item -LiteralPath (Join-Path (Join-Path $D 'guests') "$sid.told-free") -Force -ErrorAction SilentlyContinue
}

function Norm($p) { (($p -replace '\\', '/') -replace '^/([A-Za-z])/', '$1:/').ToLowerInvariant().TrimEnd('/') }
function Cmd-Guard {
  Read-Payload; $sid = Get-Sid; if (-not $sid) { return }
  $g = Guest-Folder $sid; if (-not $g) { return }
  if ((Holder-Session) -eq $sid) { return }
  $ti = $script:Payload.tool_input; if ($null -eq $ti) { return }
  $p = [string]$ti.file_path; if (-not $p) { $p = [string]$ti.notebook_path }; if (-not $p) { return }
  $f = Norm $p; $r = Norm $HomeDir
  if ($f -eq "$r/memory" -or $f.StartsWith("$r/memory/") -or $f -eq "$r/claude.md" -or $f -eq "$r/.claude" -or $f.StartsWith("$r/.claude/")) {
    $reason = "This session is a guest: another session holds the desk, so memory/, CLAUDE.md and .claude/ are the foreground's to change. Put this change in your handoff ($g/handoff.md) instead, or ask the person whether to take the desk."
    [Console]::Out.Write('{"hookSpecificOutput":{"hookEventName":"PreToolUse","permissionDecision":"deny","permissionDecisionReason":"' + (Escape-Json $reason) + '"}}' + "`n")
  }
}

function Cmd-Take($sid, [bool]$force) {
  if (-not $sid) { $sid = $env:CLAUDE_CODE_SESSION_ID }
  if ($sid -notmatch '^[A-Za-z0-9._-]+$') { [Console]::Error.WriteLine('usage: desk.ps1 take [<session-id>] [--force]'); exit 2 }
  if (-not (Test-Path -LiteralPath $D)) { [void](New-Item -ItemType Directory -Path $D -Force) }
  $h = Holder-Session
  if ($h -and $h -eq $sid) { 'This session already holds the desk.'; exit 0 }
  if ((Test-Path -LiteralPath $L) -and -not (Lease-Stale) -and -not $force) {
    $a = Seen-AgeMin; if ($null -eq $a) { $a = 0 }
    "The other session was active $a minutes ago, so the desk isn't stale yet."
    "If the person confirms that session is closed, run: powershell -NoProfile -ExecutionPolicy Bypass -File scripts\desk.ps1 take $sid --force"
    exit 1
  }
  if ((Test-Path -LiteralPath $L) -and -not (Break-Stale)) { [Console]::Error.WriteLine("Couldn't take the desk; try again."); exit 1 }
  if (Claim $sid) {
    $g = Guest-Folder $sid
    Remove-Item -LiteralPath (Join-Path (Join-Path $D 'guests') $sid), (Join-Path (Join-Path $D 'guests') "$sid.told-free") -Force -ErrorAction SilentlyContinue
    'This session now holds the desk; the write guard is off for it.'
    if ($g) { "Your guest notes are still in $g/; integrate them as the foreground." }
    exit 0
  }
  [Console]::Error.WriteLine('Another session claimed the desk at the same moment; this one is still a guest.'); exit 1
}

function Cmd-Status {
  if (-not (Test-Path -LiteralPath $L)) { 'The desk is free.'; return }
  $s = Holder-Session; $a = Seen-AgeMin
  "Desk held by session $s on $(Field (Join-Path $L 'holder') 'host'), since $(Field (Join-Path $L 'holder') 'started'); last active $a minutes ago."
  if (Lease-Stale) { "That lease is stale: $script:StaleWhy." }
}

try {
  switch ($Cmd) {
    'start'  { Cmd-Start }
    'turn'   { $t = Cmd-Turn; if ($t) { [Console]::Out.Write($t) } }
    'end'    { Cmd-End }
    'guard'  { Cmd-Guard }
    'take'   { $ErrorActionPreference = 'Continue'; Cmd-Take $SidArg $Force }
    'status' { Cmd-Status }
    default  { [Console]::Error.WriteLine('usage: desk.ps1 start|turn|end|guard|take [<session-id>] [--force]|status'); exit 2 }
  }
} catch {
  if ($Cmd -eq 'take' -or $Cmd -eq 'status') { [Console]::Error.WriteLine($_.Exception.Message); exit 1 }
}
exit 0
