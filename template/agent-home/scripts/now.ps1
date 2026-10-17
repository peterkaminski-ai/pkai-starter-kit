# now.ps1 — print the current date and time, local and UTC (the PowerShell twin
# of scripts/now). A time written into any artifact comes from this script,
# never from an estimate.
$utf8 = New-Object System.Text.UTF8Encoding($false)
try { [Console]::OutputEncoding = $utf8 } catch {}
$now = Get-Date; $tz = [TimeZoneInfo]::Local
$zone = if ($tz.IsDaylightSavingTime($now)) { $tz.DaylightName } else { $tz.StandardName }
[Console]::Out.WriteLine($now.ToString('dddd, MMMM d, yyyy') + ' ' + [char]0x2014 + ' ' + $now.ToString('h:mm tt') + " $zone")
[Console]::Out.WriteLine('UTC ' + [DateTime]::UtcNow.ToString('yyyy-MM-ddTHH:mm:ssZ'))
