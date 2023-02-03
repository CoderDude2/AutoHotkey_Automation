#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force
#include C:\Users\tony\Documents\AutoHotkey\class\class.ahk

ROUGH_SETTING_6()

{

winactivate, Check Rough ML & Create Border Solid
mouseclick, left, 42, 90
sleep, 150
SENDINPUT, {TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}
SENDINPUT, 6
SENDINPUT, {TAB}
Sendraw, -6
mouseclick, left, 124, 289

sleep, 150


mouseclick, left, 117, 90
sleep, 150
SENDINPUT, {TAB}{TAB}{TAB}{TAB}{TAB}
SENDINPUT, 6
SENDINPUT, {TAB}
Sendraw, -6
mouseclick, left, 124, 289


sleep, 150

mouseclick, left, 198, 90
sleep, 150
SENDINPUT, {TAB}{TAB}{TAB}{TAB}
SENDINPUT, 6
SENDINPUT, {TAB}
Sendraw, -6
mouseclick, left, 124, 289

return
}