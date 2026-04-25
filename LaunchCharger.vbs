Set shell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
strPath = fso.GetParentFolderName(WScript.ScriptFullName)

' Check if already running to prevent double-start
Set wmi = GetObject("winmgmts:\\.\root\cimv2")
Set procs = wmi.ExecQuery("SELECT * FROM Win32_Process WHERE Name = 'powershell.exe' AND CommandLine LIKE '%ChargerSound.ps1%'")

If procs.Count = 0 Then
    command = "powershell.exe -ExecutionPolicy Bypass -WindowStyle Hidden -NoProfile -File """ & strPath & "\ChargerSound.ps1"""
    shell.Run command, 0, False
End If
