#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force


macro2()
{
winactivate, ESPRIT
SENDINPUT, ^s
sleep, 100
is.vsearch("MACRO2.png", 0, 0, 150, 257, 10)
mouseclick, left, is.x+10, is.y+10

;;; GETTING COORDINATES TO WINMOVE CORRECT INSTANCE FOR MACRO 5
coordmode, mouse			; defaults to entire screen mode
mousegetpos, xm5, ym5	;; m5 stands for macro 5..
coordmode, mouse, window	;; sets back to relative window



WinWaitActive, ahk_class ThunderDFrame

if (xm5 < 1705 )
{

WINMOVE, ahk_class ThunderDFrame,,465, 189
}
if (xm5 > 1705 && xm5 < 3410 )
{
WINMOVE, ahk_class ThunderDFrame,,2170, 177
}
if (xm5 > 3410)
{
WINMOVE, ahk_class ThunderDFrame,,3870, 177
}


/*
;; =========================================================
coordmode, mouse			; defaults to entire screen mode
mousegetpos, x, y
coordmode, mouse, window	;; sets back to relative window
*/
}
