#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force
#include C:\Users\tony\Documents\AutoHotkey\class\class.ahk

TEXT_90()

{

winactivate, Engraving Program Number Text
WinWaitActive, Engraving Program Number Text
SENDINPUT, {TAB}{TAB}{TAB}{TAB}{TAB}
SENDINPUT, 90
SENDINPUT, {TAB}{TAB}{TAB}{TAB}
SENDINPUT, {SPACE}
SENDINPUT, {TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}
SENDINPUT, 4
SLEEP, 100


;; EDONG MOVE MANUAL
	PostMessage, 0x111, 57634,,, ESPRIT
			WinWaitActive, ahk_class #32770
			SLEEP, 100
			control, chooseSTRING, 이동, ComboBox1, ahk_class #32770
			control, check,, Button8, ahk_class #32770
			SLEEP, 100
			CLICK, 104, 240



}