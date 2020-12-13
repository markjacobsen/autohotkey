;--------------------------------------------
; https://markjacobsen.net
; Text expansion to simplify working with dates/times
;--------------------------------------------

; Timestamp ("human" format)
:O:!dt::
    FormatTime, CurrentDateTime,, MM/dd/yyyy h:mm tt
    SendInput %CurrentDateTime%
    return

; Timestamp (code format)
:O:!ts::
    FormatTime, CurrentDateTime,, yyyy-MM-dd hh:mm:ss
    SendInput %CurrentDateTime%
    return

; Date in "human" format (ex: 04/03/2020)
:O:!date::
    FormatTime, CurrentDate,, MM/dd/yyyy
    SendInput %CurrentDate%
    return

; Time in "human" format (ex: 6:15 pm)
:O:!time::
    FormatTime, CurrentDateTime,, h:mm tt
    SendInput %CurrentDateTime%
    return

; File name date
:O:!d::
    FormatTime, CurrentDate,, yyyy-MM-dd
    SendInput %CurrentDate%
    return

; File name timestamp
:O:!fts::
    FormatTime, CurrentDate,, yyyy-MM-dd_HH-mm
    SendInput %CurrentDate%
    return