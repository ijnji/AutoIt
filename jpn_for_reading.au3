HotKeySet("`", "PasteFromClipboard")

While 1
   Sleep(100)
WEnd

Func PasteFromClipboard()
   ;Send("{CTRLDOWN}c{CTRLUP}")

   Local $hWnd = WinWait("[CLASS:Notepad]", "", 10)
   Sleep(100)
   $clip = ClipGet() & @CR
   ControlSend($hWnd, "", "Edit1", $clip)
EndFunc