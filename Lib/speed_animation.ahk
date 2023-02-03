#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force
#include C:\Users\tony\Documents\AutoHotkey\class\class.ahk





speed_animation()

{
sendinput, !t
sleep, 100
sendinput, {up}
sleep, 100
sendinput, {enter}

winwaitactive, 옵션
sleep, 100
mouseclick, left, 213, 48
sleep, 200

mouseclickdrag, left, 137, 243, 106, 249, 50
sleep, 100
sendinput, {enter}

}