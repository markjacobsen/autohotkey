;--------------------------------------------
; https://markjacobsen.net
; Text expansion to simplify working with git
;
; Note: 
; :O: is for text expansion/replacement
; :X: is what causes a function to run
;--------------------------------------------

:O:!gitpull::git pull origin master
:O:!gitfetch::git fetch origin master
:X:!gitcommit::GitCommit()


GitCommit() {
    InputBox, UserInput, Commit message, Commit message, , 400, 140, , , Locale, 60, %clipboard%
    if (ErrorLevel == 0) {
        SendInput, {enter}
        SendInput, git add -A{enter}
        SendInput, git commit -am `"%UserInput%`"{enter}
        SendInput, git push origin master{enter}
    }
}