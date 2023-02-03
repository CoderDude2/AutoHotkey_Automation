#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



OPEN_FILE()

{
/*
wingetclass, deg_class, A
PostMessage, 0x111, 57601,,, ahk_class %deg_class%
winwaitactive, ahk_class #32770
sleep, 100
MOUSECLICK, LEFT, 172, 47
sleep, 200
control, ChooseString, 1 미국 커스텀 자동화 설정 (제품 픽업 수정), ComboBox1, ahk_class #32770
SENDINPUT, {ENTER}
*/


run, C:\Users\tony\Desktop\SelectSTLFile_R3\SelectSTLFile.exe
winwaitactive, ahk_class #32770
sendinput, {enter}
}