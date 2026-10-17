# now-hook.ps1 — the PowerShell twin of scripts/now-hook, for Windows machines
# where Claude Code runs hooks under PowerShell because Git Bash isn't installed.
# Puts the current time into the agent's context every turn, and lets desk.ps1
# refresh the desk lease and add a line when background handoffs are waiting.
# The stamp is an anchor; scripts/now (or now.ps1) is the reading.
# Never fails the turn: on any error it prints what it has, or nothing.
$ErrorActionPreference = 'SilentlyContinue'
$utf8 = New-Object System.Text.UTF8Encoding($false)
try { [Console]::OutputEncoding = $utf8 } catch {}
$payload = ''
try { $payload = [Console]::In.ReadToEnd() } catch {}
$now = Get-Date
$tz = [TimeZoneInfo]::Local
$zone = if ($tz.IsDaylightSavingTime($now)) { $tz.DaylightName } else { $tz.StandardName }
$stamp = $now.ToString('dddd, MMMM d, yyyy') + ' ' + [char]0x2014 + ' ' + $now.ToString('h:mm tt') + " $zone"
$utc = [DateTime]::UtcNow.ToString('yyyy-MM-ddTHH:mmZ')
$text = "Current date and time: $stamp ($utc)"
$desk = Join-Path $PSScriptRoot 'desk.ps1'
if (Test-Path -LiteralPath $desk) {
  try {
    $extra = $payload | & powershell.exe -NoProfile -ExecutionPolicy Bypass -File $desk turn 2>$null
    $extra = ($extra -join "`n").Trim()
    if ($extra) { $text = "$text`n$extra" }
  } catch {}
}
$esc = $text -replace '\\', '\\' -replace '"', '\"' -replace "`t", '\t' -replace "`r", '' -replace "`n", '\n'
[Console]::Out.Write('{"suppressOutput":true,"hookSpecificOutput":{"hookEventName":"UserPromptSubmit","additionalContext":"' + $esc + '"}}' + "`n")
exit 0
