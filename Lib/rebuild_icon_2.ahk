#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


rebuild_icon_2()


{


winactivate, ESPRIT
ImageSearch, x, y, 0, 160, 800, 1050, C:\Users\tony\Documents\AutoHotkey\images\REBUILD_ICON_2.png
x1:=x+8
y1:=y+4

;msgbox, %x% - %y%

mousemove, %x1%,%y1%

}