' Set the initial volume level
volume = 0

' Set the increment amount for each iteration
volumeIncrement = 10

' Set the maximum volume level
maxVolume = 100

' Loop indefinitely
Do
  ' Check if the PC is muted
  Set WshShell = CreateObject("WScript.Shell")
  WshShell.SendKeys(chr(&hAF))
  If WshShell.AppActivate("Volume Mixer") Then
    WshShell.SendKeys("%{TAB}")
    If WshShell.SendKeys("{UP}") = "" Then
      ' The PC is muted, unmute it
      WshShell.SendKeys("%{TAB}")
    End If
    WshShell.SendKeys("%{F4}")
  End If

  ' Increment the volume level
  volume = volume + volumeIncrement

  ' If the volume level exceeds the maximum, set it to the maximum
  If volume > maxVolume Then
    volume = maxVolume
  End If

  ' Set the volume level
  Set WshShell = CreateObject("WScript.Shell")
  WshShell.SendKeys(chr(&hAF))

  ' Wait for a short time before continuing the loop
  WScript.Sleep 100
Loop
