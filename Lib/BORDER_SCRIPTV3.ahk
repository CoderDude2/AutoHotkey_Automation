#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, FORCE


BORDER_SCRIPTV3()

{
;; INITIAL SETUP******************
;; CLOSE CHECK ROUGH SCRIPT

;;; GETTING COORDINATES TO WINMOVE CORRECT INSTANCE FOR MACRO 5
coordmode, mouse			; defaults to entire screen mode
mousegetpos, xm5, ym5	;; m5 stands for macro 5..
coordmode, mouse, window	;; sets back to relative window




winclose, Check Rough ML & Create Border Solid
winactivate, ESPRIT
is.vsearch("blue_background.png", 440, 200, 1630, 1000, 10)
mouseclick, left, is.x, is.y


is.vsearch("MACRO5.png", 0, 0, 330, 330, 10)
mouseclick, left, is.x+10, is.y+10
WinWaitActive, [5]DEG 경계소재 & 마진

;; 823, 2556, 4277, -- borders of the 3 windows
if (xm5 < 1705 )
{
WINMOVE, [5]DEG 경계소재 & 마진,, 485, 189
}
if (xm5 > 1705 && xm5 < 3410 )
{
WINMOVE, [5]DEG 경계소재 & 마진,, 2170, 177
}
if (xm5 > 3410)
{
WINMOVE, [5]DEG 경계소재 & 마진,, 3870, 177
}




WinWaitActive, [5]DEG 경계소재 & 마진
mouseclick, left, 66, 135
;SLEEP, 50
MOUSECLICK, LEFT, 186, 283
SLEEP, 30
SENDINPUT, ^a
sleep, 30
sendinput, -7
sleep, 30	;; THIS PAUSE IMPORTANT, PREVIOUS INPUT OF '-7' WON'T GET INPUT BECAUSE NEXT LINE DEG.DEG90() EXECUTES TOO FAST
DEG.DEG90()
WINACTIVATE, ESPRIT

coordmode, mouse
mousemove, %xm5%, %ym5%
;set back to window coord mode
coordmode, mouse, window
send, {WheelDown 3}

ICON.TOOL("ICON_LINE.PNG")

PAUSE
;;;;;;;;=========================================================================

coordmode, mouse
mousegetpos, xo, yo
coordmode, mouse, window

winactivate, [5]DEG 경계소재 & 마진
mouseclick, left, 183, 135
;SLEEP, 50
MOUSECLICK, LEFT, 186, 283
SLEEP, 30
SENDINPUT, ^a
sleep, 30
sendinput, -7
sleep, 30
DEG.DEG180()
WINACTIVATE, ESPRIT
coordmode, mouse
mousemove, %xo%, %yo%
coordmode, mouse, window
send, {WheelDown 3}
ICON.TOOL("ICON_LINE.PNG")
PAUSE
;;;;;;;;=========================================================================



coordmode, mouse
mousegetpos, xo, yo
coordmode, mouse, window

winactivate, [5]DEG 경계소재 & 마진
mouseclick, left, 66, 181
;SLEEP, 50
MOUSECLICK, LEFT, 186, 283
SLEEP, 30
SENDINPUT, ^a
sleep, 30
sendinput, -7
sleep, 30
DEG.DEG270()
WINACTIVATE, ESPRIT
coordmode, mouse
mousemove, %xo%, %yo%
coordmode, mouse, window
send, {WheelDown 3}
ICON.TOOL("ICON_LINE.PNG")
PAUSE
;;;;;;;;=========================================================================


coordmode, mouse
mousegetpos, xo, yo
coordmode, mouse, window

winactivate, [5]DEG 경계소재 & 마진
mouseclick, left, 184, 181
;SLEEP, 50
MOUSECLICK, LEFT, 186, 283
SLEEP, 30
SENDINPUT, ^a
sleep, 30
sendinput, -7
sleep, 30
DEG.DEG0()
WINACTIVATE, ESPRIT
coordmode, mouse
mousemove, %xo%, %yo%
coordmode, mouse, window
send, {WheelDown 3}
ICON.TOOL("ICON_LINE.PNG")
PAUSE
;;;;;;;;=========================================================================


;; CLOSE MACRO 5
WinActivate, [5]DEG 경계소재 & 마진
MOUSECLICK, LEFT, 231, 15

coordmode, mouse
mousemove, %xo%, %yo%
coordmode, mouse, window
}