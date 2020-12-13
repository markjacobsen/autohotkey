;--------------------------------------------
; https://markjacobsen.net
; Text expansion to simplify working with DBs
;
; Note: 
; :O: is for text expansion/replacement
; :X: is what causes a function to run
;--------------------------------------------

:O:!dbro::FOR READ ONLY WITH UR
:O:!dbff::FETCH FIRST 10 ROWS ONLY WITH UR FOR READ ONLY
:O:!dbfro::WITH UR FOR READ ONLY
:O:!db1hr::> CURRENT_TIMESTAMP - 1 HOUR