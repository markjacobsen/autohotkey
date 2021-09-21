;--------------------------------------------
; https://markjacobsen.net
; Misc web ehancements
;--------------------------------------------

;################################################################
; KEY REMAPPING SECTION
; ALT+[key]
;################################################################
!G::GoogleIt()
!U::GoToUrl()


;################################################################
; TEXT EXPANSION SECTION
;################################################################

; Given a FedEx tracking number on the clipboard, type !fedex to get the full tracking url
:O:!fedex::
SendInput https://www.fedex.com/apps/fedextrack/?action=track&trackingnumber=%clipboard%&cntry_code=us&locale=en_US
return

; Given a UPS tracking number on the clipboard, type !ups to get the full tracking url
:O:!ups::
SendInput https://www.ups.com/track?loc=en_US&tracknum=%clipboard%&requester=WT/trackdetails
return


;################################################################
; FUNCTIONS SECTION
;################################################################

GoogleIt() {
  InputBox, UserInput, Search Google, Google it..., , 400, 140, , , Locale, 60, %clipboard%
  if (ErrorLevel == 0) {
    If (InStr(UserInput, "http") == 1) {
      Run %UserInput%
    } else {
      Run https://www.google.com/search?q=%UserInput%
    }
  }
}

GoToUrl() {
  InputBox, UserInput, Go to URL, URL, , 400, 140, , , Locale, 60, %clipboard%
  if (ErrorLevel == 0) {
    if (InStr(UserInput, "http") <= 0) {
      UserInput := "http://" . UserInput
    }
    Run %UserInput%
  }
}
