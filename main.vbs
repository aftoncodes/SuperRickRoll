For i = 1 to 10
	Dim oPlayer
	Set oPlayer = CreateObject("WMPlayer.OCX")

	oPlayer.URL = "main.mp3"
	oPlayer.controls.play 
	While oPlayer.playState <> 1 ' 1 = Stopped
		WScript.Sleep 100
	Wend
	i = i - 1

oPlayer.close
