#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, FORCE


90_adjust()

{
KEYWAIT, ALT
WinActivate, ESPRIT
is.rvsearch("macro1.png", 0, 0, 300, 300, 15)
mouseclick, left, is.x+15, is.y+10
WinWaitActive, ahk_class #32770
sendinput, {enter}
WinWaitActive, esprit
sendinput, {tab}
sendinput, {space}
WinWaitActive, ahk_class #32770
sendraw, X,90
sendinput, {enter}


}