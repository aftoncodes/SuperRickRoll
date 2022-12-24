While true
	Dim oPlayer
	Set oPlayer = CreateObject("WMPlayer.OCX")
	oPlayer.URL = "main.mp3"
	oPlayer.controls.play 
	While oPlayer.playState <> 1 ' 1 = Stopped
		WScript.Sleep 100
	Wend
	
	oPlayer.close
	Dim counter, myNum
   	counter = 0
   	myNum = 20
	Do While myNum > 10
     		myNum = myNum - 1
     		counter = counter + 1
   	Loop
Wend
