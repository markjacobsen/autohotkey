;--------------------------------------------
; https://markjacobsen.net
;
; Note: 
; :O: is for text expansion/replacement
; :X: is what causes a function to run
;--------------------------------------------

:O:#gitopts::{#}options: gitpull , gitpullreset , gitfetch , gitcommit, gitstashapply

:O:.gitpull::git pull origin master
:X:!gitpullreset::GitPullReset()
:O:.gitfetch::git fetch origin master
:X:!gitcommit::GitCommit()
:X:!gitstashapply::GitStashApply()


GitCommit() {
    InputBox, UserInput, Commit message, Commit message, , 400, 140, , , Locale, 60, %clipboard%
    if (ErrorLevel == 0) {
        SendInput, {enter}
        SendInput, git add -A{enter}
        SendInput, git commit -am `"%UserInput%`"{enter}
        SendInput, git push origin master{enter}
    }
}

; Will overwrite what is local with what is remote
GitPullReset() {
    SendInput, git fetch --all{enter}
    SendInput,  git reset --hard origin/master{enter}
}

; Useful for when permissions may have been changed
; on local copy
; Will overwrite what is local with what is remote
; then reapply what was local to those updates
GitStashApply() {
    SendInput, git stash{enter}
    SendInput,  git pull{enter}
    SendInput, git stash apply{enter}
}