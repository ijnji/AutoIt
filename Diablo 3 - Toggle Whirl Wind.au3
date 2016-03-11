#include <misc.au3>

Global Const $MOUSEM = 04
Global Const $MOUSEX1 = 05
Global Const $MOUSEX2 = 06

$dll = DllOpen("user32.dll")
$engage = False

While 1
   If _IsPressed($MOUSEX1, $dll) Then
	  If $engage = False Then
	  	Send("{SHIFTDOWN}")
	  	MouseDown("left")
	  	$engage = True
	  Else
	  	Send("{SHIFTUP}")
	  	MouseUp("left")
	  	$engage = False
	  EndIf
	  While _IsPressed($MOUSEX1, $dll)
	  	Sleep(100)
	  WEnd
   EndIf
   Sleep(100)
WEnd

DllClose($dll)