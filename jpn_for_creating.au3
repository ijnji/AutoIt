HotKeySet("{F1}", "PasteSentence")
HotKeySet("{F2}", "PasteWord")
HotKeySet("{F3}", "SearchWord")
HotKeySet("{F4}", "PasteDefinition")
HotKeySet("{F5}", "AnkiAdd")

While 1
   Sleep(100)
WEnd

Func PasteSentence()
   Local $clip = ClipGet()

   ; Paste into JGlossator
   Local $hWnd = WinWait("[TITLE:JGlossator]", "", 10)
   WinActivate($hWnd)
   WinWaitActive($hWnd)
   Send("{ESC}")
   Send("{END}{SHIFTDOWN}{HOME}{SHIFTUP}{DELETE}")
   Send("{CTRLDOWN}v{CTRLUP}{ENTER}")

   ; Paste into Anki Expression
   $hWnd = WinWait("[TITLE:Add]", "", 10)
   WinActivate($hWnd)
   WinWaitActive($hWnd)
   Send("{END}{SHIFTDOWN}{HOME}{SHIFTUP}{DELETE}")
   Send("{CTRLDOWN}v{CTRLUP}")
   Sleep(100)
   Send("{TAB}")
EndFunc

Func PasteWord()
   Send("{CTRLDOWN}c{CTRLUP}")

   ; Paste into Anki Meaning
   Local $hWnd = WinWait("[TITLE:Add]", "", 10)
   WinActivate($hWnd)
   WinWaitActive($hWnd)
   Local $clip = ClipGet()
   Send("{CTRLDOWN}v{CTRLUP}")
   Sleep(100)
   Send(": ")
   ;$hWnd = WinWait("[TITLE:JGlossator]", "", 10)
   ;WinActivate($hWnd)
   ;WinWaitActive($hWnd)
EndFunc

Func SearchWord()
   ;Run("C:\Program Files (x86)\Mozilla Firefox\firefox.exe")
   ;Local $hWnd = WinWait("[TITLE:Mozilla Firefox Start Page]", "", 10)
   ;WinActivate($hWnd)
   ;WinWaitActive($hWnd)
   ;Send("{CTRLDOWN}k{CTRLUP}")
   ;Local $clip = ClipGet()
   ;Send("{CTRLDOWN}v{CTRLUP}{ENTER}")
   ;Sleep(100)
   ;Send("{ENTER}")
   ;Sleep(100)
   ;Send("{CTRLDOWN}t{CTRLUP}")
   ;Sleep(100)
   ;Send("{CTRLDOWN}k{CTRLUP}")
   ;Send($clip & " kotobank")
   ;Send("{ENTER}")
   ;Sleep(100)
   ;Send("{ENTER}")
   ;WinMove($hWnd, "", 0, 0, 1250, 600)
   Local $clip = ClipGet()
   Sleep(100)
   Local $run1 = "C:\Program Files (x86)\Mozilla Firefox\firefox.exe " & "-new-tab https://www.google.com/webhp?hl=ja#hl=ja&q=" & $clip
   Local $run2 = "C:\Program Files (x86)\Mozilla Firefox\firefox.exe " & "-new-tab http://dic.search.yahoo.co.jp/search?p=" & $clip & "&stype=prefix&aq=-1&oq=&ei=UTF-8"
   Run($run1)
   Run($run2)
   Local $hWnd = WinWait("[TITLE:Mozilla Firefox Start Page]", "", 10)
   WinActivate($hWnd)
   WinWaitActive($hWnd)
EndFunc

Func PasteDefinition()
   Send("{CTRLDOWN}c{CTRLUP}")

   ; Paste into Anki Meaning
   Local $hWnd = WinWait("[TITLE:Add]", "", 10)
   WinActivate($hWnd)
   WinWaitActive($hWnd)
   Local $clip = ClipGet()
   Send("{CTRLDOWN}v{CTRLUP}{ENTER}")
   ;$hWnd = WinWait("[TITLE:JGlossator]", "", 10)
   ;WinActivate($hWnd)
   ;WinWaitActive($hWnd)
EndFunc

Func AnkiAdd()
   Local $hWnd = WinWait("[TITLE:Add]", "", 10)
   WinActivate($hWnd)
   WinWaitActive($hWnd)
   Send("{CTRLDOWN}{ENTER}{CTRLUP}")
EndFunc