;--------------------------------------------
; https://markjacobsen.net
;--------------------------------------------

; Enable paste via ctrl+v
#IfWinActive ahk_group CMD_PROMPT
^V::
SendInput {Raw}%clipboard%
Return
#IfWinActive

; Use "page up" key to scroll up
#IfWinActive ahk_group CMD_PROMPT
PgUp::
Send {WheelUp}
Return
#IfWinActive

; Use "page down" key to scroll down
#IfWinActive ahk_group CMD_PROMPT
PgDn::
Send {WheelDown}
Return
#IfWinActive

; open current explorer folder in cmd prompt on CTRL+ALT+P
#IfWinActive ahk_group FILE_EXPLORER
^!P::
send !{d}
send c:\windows\system32\cmd.exe .
send {enter}
return
#IfWinActive