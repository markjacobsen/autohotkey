;--------------------------------------------
; https://markjacobsen.net
; Misc web ehancements
;--------------------------------------------

!G::GoogleIt()


GoogleIt() {
  InputBox, UserInput, Search Google, Google it..., , 400, 140, , , Locale, 60, %clipboard%
  if (ErrorLevel == 0) {
    Run https://www.google.com/search?q=%UserInput%
  }
}
