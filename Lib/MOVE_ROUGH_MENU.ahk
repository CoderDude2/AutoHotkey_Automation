#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, FORCE


MOVE_ROUGH_MENU()

{




;;; GETTING COORDINATES TO WINMOVE CORRECT INSTANCE FOR MACRO 5
coordmode, mouse			; defaults to entire screen mode
mousegetpos, xm5, ym5	;; m5 stands for macro 5..
coordmode, mouse, window	;; sets back to relative window



if (xm5 < 1705 )
{
WINMOVE, Check Rough ML & Create Border Solid,,485, 189
}
if (xm5 > 1705 && xm5 < 3410 )
{
WINMOVE, Check Rough ML & Create Border Solid,,2190, 177
}
if (xm5 > 3410)
{
WINMOVE, Check Rough ML & Create Border Solid,,3890, 177
}





/*
;;;======================================================================
WinWaitActive, Check Rough ML & Create Border Solid



;; 823, 2556, 4277, -- borders of the 3 windows
if (xm2 > 823 && xm2 < 2556 )
{
WINMOVE, Check Rough ML & Create Border Solid,, 1294, 189
}
if (xm2 > 2556 && xm2 < 4277 )
{
WINMOVE, Check Rough ML & Create Border Solid,, 3029, 177
}
if (xm2 > 4277)
{
WINMOVE, Check Rough ML & Create Border Solid,, 4748, 177
}
*/
}