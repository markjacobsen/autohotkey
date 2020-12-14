;--------------------------------------------
; https://markjacobsen.net
; Misc web ehancements
;--------------------------------------------

;################################################################
; KEY REMAPPING SECTION
;################################################################
!G::GoogleIt()


;################################################################
; TEXT EXPANSION SECTION
;################################################################

:O:!fedex::
SendInput https://www.fedex.com/apps/fedextrack/?action=track&trackingnumber=%clipboard%&cntry_code=us&locale=en_US
return

:O:!ups::
SendInput https://www.ups.com/track?loc=en_US&tracknum=%clipboard%&requester=WT/trackdetails
return


;################################################################
; FUNCTIONS SECTION
;################################################################

GoogleIt() {
  InputBox, UserInput, Search Google, Google it..., , 400, 140, , , Locale, 60, %clipboard%
  if (ErrorLevel == 0) {
    Run https://www.google.com/search?q=%UserInput%
  }
}
