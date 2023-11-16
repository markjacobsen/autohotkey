;--------------------------------------------
; https://markjacobsen.net
;--------------------------------------------

:O:#dtopts::{#}options where {*}=h (human), s (system), f (filesystem), c (code): dt* , dtd* , dtt*

; Date/Time ("human" format)
:O:.dth::
    FormatTime, CurrentDateTime,, MM/dd/yyyy hh:mm tt
    SendInput %CurrentDateTime%
    return

; Date/Time ("system" format)
:O:.dts::
    FormatTime, CurrentDateTime,, yyyy-MM-dd HH:mm
    SendInput %CurrentDateTime%
    return

; Date/Time ("filesystem" format)
:O:.dtf::
    FormatTime, CurrentDate,, yyyy-MM-dd_HH-mm
    SendInput %CurrentDate%
    return

; Date/Time ("code" format)
:O:.dtc::
    FormatTime, CurrentDateTime,, yyyy-MM-dd HH:mm:ss
    SendInput %CurrentDateTime%
    return

;---------------------------------------------------------------------

; Date ("human" format)
:O:.dtdh::
    FormatTime, CurrentDate,, MM/dd/yyyy
    SendInput %CurrentDate%
    return

; Date ("system" format)
:O:.dtds::
    FormatTime, CurrentDate,, yyyy-MM-dd
    SendInput %CurrentDate%
    return

; Date ("filesystem" format)
:O:.dtdf::
    FormatTime, CurrentDate,, yyyy-MM-dd
    SendInput %CurrentDate%
    return

; Date ("code" format)
:O:.dtdc::
    FormatTime, CurrentDate,, yyyy-MM-dd
    SendInput %CurrentDate%
    return

;---------------------------------------------------------------------

; Time ("human" format)
:O:.dtth::
    FormatTime, CurrentDateTime,, hh:mm tt
    SendInput %CurrentDateTime%
    return

; Time ("system" format)
:O:.dtts::
    FormatTime, CurrentDateTime,, HH:mm
    SendInput %CurrentDateTime%
    return

; Time ("filesystem" format)
:O:.dttf::
    FormatTime, CurrentDateTime,, HH:mm
    SendInput %CurrentDateTime%
    return

; Time ("code" format)
:O:.dttc::
    FormatTime, CurrentDateTime,, HH:mm:ss
    SendInput %CurrentDateTime%
    return

;---------------------------------------------------------------------
