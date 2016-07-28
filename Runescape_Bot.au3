#cs ----------------------------------------------------------------------------


 Runescape Bot: 7.27.16
 Author:         Mourtadah Karim

 Script Function:
	 AutoIt script.
	 Creds: http://ow.ly/zkWM302Gav6

#ce ----------------------------------------------------------------------------


HotKeySet("{ESC}", "killFunc")
HotKeySet("!q", "getColor")
HotKeySet("!a","combatLoopFunc")

Global $color

Global $interval
$interval = "10000"


MsgBox(0, "Runescape Combat Bot : Mourtadah Karim", "Press ALT+Q to set color | ALT+A to attack |(ESC) to quit bot")
MsgBox(0, "Runescape Combat Bot : Mourtadah Karim", "Make sure you pick a color different on the enemy that is unique to the environment!")

Func killFunc()
	  MsgBox(0, "Runescape Combat Bot : Mourtadah Karim", "Runescape Bot has quit.")
	  MsgBox(0, "Runescape Combat Bot : Mourtadah Karim", "Don't forget to follow me on Github: Github.com/Mourtadah")
   Exit 1

EndFunc

Func getColor()
   $point = MouseGetPos()
   $color = PixelGetColor($point[0], $point[1])
   MsgBox(0, "Color Set", "Color set to " & $color)
EndFunc

Func combatLoopFunc()
   MsgBox(0,"Attacking","Starting attack")
   While 1
	  $point = PixelSearch(262, 148, 1679, 618, $color)
		  if IsArray($point) Then
                 MouseClick("left", $point[0], $point[1])

                 Sleep($interval)

          EndIf
			Sleep(20)
   WEnd
EndFunc

While 1
   sleep(150)
WEnd
