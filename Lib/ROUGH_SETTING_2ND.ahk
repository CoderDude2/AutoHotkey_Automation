#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force
#include %A_ScriptDir%\class\class.ahk

ROUGH_SETTING_2ND()

{

winactivate, Check Rough ML & Create Border Solid
mouseclick, left, 162, 174, 2 
sendinput, {backspace}{backspace}
sendinput, 2
mouseclick, left, 112, 282, 2 
return
}