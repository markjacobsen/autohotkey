;--------------------------------------------
; https://markjacobsen.net
; Main driver script that includes all the 
; common scripts desired as well as any
; machine/workstation specific commands
;--------------------------------------------

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include %A_ScriptDir%\..\datetime.ahk
#Include %A_ScriptDir%\..\media.ahk
#Include %A_ScriptDir%\..\console-explorer.ahk
#Include %A_ScriptDir%\..\git.ahk
#Include %A_ScriptDir%\..\db.ahk
