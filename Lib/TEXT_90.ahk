#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force
;#include %A_ScriptDir%\class\class.ahk

TEXT_90() {
	WinWaitActive, Engraving Program Number Text
	WinWaitActive, Engraving Program Number Text
	SendInput, {TAB}{TAB}{TAB}{Tab}{Tab}
	SendInput, 90
	SendInput, {TAB}{TAB}{TAB}{TAB}
	SendInput, {SPACE}
	SendInput, {TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}
	SendInput, 4
	Sleep, 100


	;; EDONG MOVE MANUAL
	PostMessage, 0x111, 57634, , , ESPRIT
	WinWaitActive, ahk_class #32770
	Sleep, 100
	Control, chooseSTRING, 이동, ComboBox1, ahk_class #32770
	Control, check, , Button8, ahk_class #32770
	Sleep, 100
	Click, 104, 240
}

TEXT_90()