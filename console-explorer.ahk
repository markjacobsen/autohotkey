;--------------------------------------------
; https://markjacobsen.net
; Text expansion to simplify working with the
; console/command line and explorer
;--------------------------------------------

GroupAdd, CLASS_CONSOLE, ahk_class ConsoleWindowClass
GroupAdd, CLASS_FILE_EXPLORER, ahk_class CabinetWClass
GroupAdd, CLASS_FILE_EXPLORER, ahk_class ExploreWClass

;Enable paste via ctrl+v
#IfWinActive ahk_group CLASS_CONSOLE
^V::
SendInput {Raw}%clipboard%
Return
#IfWinActive


#IfWinActive ahk_group CLASS_CONSOLE
PgUp::
Send {WheelUp}
Return
#IfWinActive


#IfWinActive ahk_group CLASS_CONSOLE
PgDn::
Send {WheelDown}
Return
#IfWinActive


#IfWinActive ahk_group CLASS_FILE_EXPLORER ; open current explorer folder in cmd prompt on CTRL+ALT+P
^!P::
send !{d}
send c:\windows\system32\cmd.exe .
send {enter}
return
#IfWinActive