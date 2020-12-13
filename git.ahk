:O:!gitpull::git pull origin master
:O:!gitfetch::git fetch origin master
:X:!gitcommit::GitCommit()
:X:!test::Test()


GitCommit() {
    InputBox, UserInput, Commit message, Commit message, , 400, 140, , , Locale, 60, %clipboard%
    if (ErrorLevel == 0) {
        SendInput, git add -A{enter}
        SendInput, git commit -am `"%UserInput%`"{enter}
        SendInput, git push origin master{enter}
    }
}

Test() {
    InputBox, UserInput, Commit message, Commit message, , 400, 140, , , Locale, 60, %clipboard%
}