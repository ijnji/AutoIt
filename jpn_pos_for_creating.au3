$hWnd = WinWait("[REGEXPTITLE:(.*Mozilla Firefox.*)]", "", 10)
WinActivate($hWnd)
WinMove($hWnd, "", 0, 0, 900, 1010)

$hWnd = WinWait("[REGEXPTITLE:(.*JGlossator.*)]", "", 10)
WinActivate($hWnd)
WinMove($hWnd, "", 900, 0, 1020, 467)

$hWnd = WinWait("[REGEXPTITLE:(.*Sublime*)]", "", 10)
WinActivate($hWnd)
WinMove($hWnd, "", 900, 472, 525, 536)

$hWnd = WinWait("[REGEXPTITLE:(.*Add.*)]", "", 10)
WinActivate($hWnd)
WinMove($hWnd, "", 1427, 472, 492, 538)

Exit