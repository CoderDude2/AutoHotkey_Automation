#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


LEFT_TAB_DEFAULT()


{

winactivate, ESPRIT
ImageSearch, x, y, 0, 0, 400, 500, C:\Users\tony\Documents\AutoHotkey\images\LEFT_TAB_DEFAULT.png
x1:=x+7
y1:=y+3

click, %x1%,%y1%


}