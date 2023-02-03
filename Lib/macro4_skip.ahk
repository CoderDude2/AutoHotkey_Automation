#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



macro4_skip()

{
IfWinExist, Check Rough ML & Create Border Solid
{
	winactivate, Check Rough ML & Create Border Solid
	mouseclick, left, 231, 12
}

IfWinExist, [5]DEG 경계소재 & 마진
{
	winactivate, [5]DEG 경계소재 & 마진
	mouseclick, left, 231, 12
}
winactivate, ESPRIT
sendinput, {esc}
is.vsearch("MACRO4.png", 0, 0, 150, 257, 10)
mouseclick, left, is.x+10, is.y+10
WinWaitActive, CAM Automation
sendinput, {enter}
reload
return

}