#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force




reset_one()

{
	;~ ====================== original IMAGE SEARCH RESET ==================
	
	
	/*
click, right
IS.rVSEARCH("REBUILD_ICON_1.png", 0, 160, 800, 1440, 50)
mousemove, IS.X+10 , IS.Y + 5
SLEEP,1000
IS.VSEARCH("unlock.png", 0, 160, 800, 1440, 50)
mouseclick, left, IS.X+10 , IS.Y + 5
*/

;;; ============== revised to use simple mousemove relative =====================
;~ sendinput, {click right}
MOUSECLICK, RIGHT
SLEEP, 200
mousemove, 150, 312 , 0, R
sleep, 700
mousemove, 200, 117 , 0, R
MOUSECLICK, LEFT
;~ sendinput, {click}
return
}