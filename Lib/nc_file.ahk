#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force




nc_file()

{

winrestore, ESPRIT NC 편집기
winactivate, ESPRIT NC 편집기
WinWaitActive, ESPRIT NC 편집기
;~ SLEEP, 100
;SENDINPUT, ^{END}
Clipboard=
sendinput ^a ; Select All
Sendinput ^c ; Copy
clipwait
myvar := clipboard
IfInString, myvar, #100= 0
{
msgbox, overall length 0
return
}

IfInString, myvar, CUT-OFF
{
winclose, ESPRIT NC 편집기
}
else
	msgbox, not found

SLEEP, 100
FILE_CLOSE()

}