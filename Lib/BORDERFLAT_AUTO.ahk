#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



BORDERFLAT_AUTO()

{

coordmode, mouse
mousegetpos, xo, yo
coordmode, mouse, window




TOOL.LINE_TOOL_2()
WINACTIVATE, ESPRIT
MOUSECLICK, LEFT, 530, 1300
SLEEP, 50

Send 50{Enter}0{Enter}{Esc}


border_icon.flatdoubleside()

coordmode, mouse
mousemove, %xo%, %yo%
coordmode, mouse, window
return

}
