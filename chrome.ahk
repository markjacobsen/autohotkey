;--------------------------------------------
; https://markjacobsen.net
; CTRL+ALT+[key]
;--------------------------------------------

#IfWinActive ahk_group CHROME_BROWSER
^!WheelDown::Send, ^+{Tab}
^!WheelUp::Send, ^{Tab}
^!m::WinMinimize
^!d::Send, ^w
^!x::Send, ^w
#IfWinActive
