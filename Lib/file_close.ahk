#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



file_close()

{
	winactivate, Advanced NC Code Output
winclose, Advanced NC Code Output
WinWaitActive, ESPRIT
SENDINPUT, ^s
is.rvsearch("close.png", 820, 0, 3440, 150, 0)
mouseclick, left, is.x+20, is.y+20


return

}