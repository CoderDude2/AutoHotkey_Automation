#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force
#include C:\Users\tony\Documents\AutoHotkey\class\class.ahk

ROUGH_V2()

{

winactivate, Check Rough ML & Create Border Solid
mouseclick, left, 42, 90
sleep, 200



winactivate, Check Rough ML & Create Border Solid
mouseclick, left, 118, 90
sleep, 200



winactivate, Check Rough ML & Create Border Solid
mouseclick, left, 201, 90
sleep, 200



mouseclick, left, 42, 140

pause

;; setup for front setting
mouseclick, left, 35, 64
sleep, 100
mouseclick, left, 86, 38
sleep, 100
mouseclick, left, 60, 94

return
}