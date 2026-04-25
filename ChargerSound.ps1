# 1. Clean up old instances to prevent duplicates
Unregister-Event -SourceIdentifier "PowerMonitor" -ErrorAction SilentlyContinue

# 2. Set Paths
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Definition
$soundConnect = Join-Path $scriptPath "Connect.wav"
$soundDisconnect = Join-Path $scriptPath "Disconnect.wav"
$player = New-Object System.Media.SoundPlayer

# 3. Define the Action (This ONLY runs when a change is detected)
$action = {
    # Check current status: 1 = Battery, 2 = AC
    $status = (Get-CimInstance -ClassName Win32_Battery).BatteryStatus
    if ($status -eq 1) { $player.SoundLocation = $soundDisconnect; $player.Play() }
    elseif ($status -eq 2) { $player.SoundLocation = $soundConnect; $player.Play() }
}

# 4. Register the Event Listener (Idle at ~0% CPU)
$query = "SELECT * FROM Win32_PowerManagementEvent WHERE EventType = 10"
Register-WmiEvent -Query $query -Action $action -SourceIdentifier "PowerMonitor"

# 5. Wait indefinitely without a CPU-heavy loop
Wait-Event
