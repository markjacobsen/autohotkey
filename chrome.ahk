;--------------------------------------------
; https://markjacobsen.net
; Text expansion to simplify working with Chrome
;--------------------------------------------

GroupAdd, CLASS_WEB_BROWSER, ahk_class Chrome_WindowImpl_0
GroupAdd, CLASS_WEB_BROWSER, ahk_class Chrome_WidgetWin_0
GroupAdd, CLASS_WEB_BROWSER, ahk_class Chrome_WidgetWin_1
GroupAdd, CLASS_WEB_BROWSER, ahk_exe chrome.exe

#IfWinActive ahk_group CLASS_WEB_BROWSER
!WheelDown::Send, ^+{Tab}
!WheelUp::Send, ^{Tab}
!m::WinMinimize
!d::Send, ^w
!x::Send, ^w
#IfWinActive
