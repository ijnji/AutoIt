HotKeySet("{F1}", "PasteSentence1")
HotKeySet("{F2}", "PasteSentence2")
HotKeySet("{F3}", "PasteSentence3")
HotKeySet("{F4}", "PasteSentence4")

HotKeySet("{F5}", "PasteSentence5")
HotKeySet("{F6}", "PasteSentence6")
HotKeySet("{F7}", "PasteSentence7")
HotKeySet("{F8}", "PasteSentence8")



While 1
   Sleep(100)
WEnd

Func PasteSentence1()
   Send("t")
   Sleep(300)
   Send("Don't bother trying to dampen the recoil. You do that with a revolver.", 1)
   Sleep(100)
   Send("{ENTER}")
EndFunc

Func PasteSentence2()
   Send("t")
   Sleep(300)
   Send("You tend to twist your elbow when you shoot.", 1)
   Sleep(300)
   Send("{ENTER}")
EndFunc

Func PasteSentence3()
   Send("t")
   Sleep(300)
   Send("But that was some fancy shooting.", 1)
   Sleep(300)
   Send("{ENTER}")
EndFunc

Func PasteSentence4()
   Send("t")
   Sleep(300)
   Send("Kept you waiting, huh?", 1)
   Sleep(300)
   Send("{ENTER}")
EndFunc

Func PasteSentence5()
   Send("t")
   Sleep(300)
   Send("Real heroes are never made public.", 1)
   Sleep(300)
   Send("{ENTER}")
EndFunc

Func PasteSentence6()
   Send("t")
   Sleep(300)
   Send("UGH!, It's rotten!", 1)
   Sleep(300)
   Send("{ENTER}")
EndFunc

Func PasteSentence7()
   Send("t")
   Sleep(300)
   Send("You're pretty good.", 1)
   Sleep(300)
   Send("{ENTER}")
EndFunc

Func PasteSentence8()
   Send("t")
   Sleep(300)
   Send("Metal... GEAR?!", 1)
   Sleep(300)
   Send("{ENTER}")
EndFunc
