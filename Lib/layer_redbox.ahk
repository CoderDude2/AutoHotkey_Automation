#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force


layer_redbox()


{
;coordmode, mouse, window
winactivate, 레이어
ImageSearch, x, y, 0, 0, 50, 700, C:\Users\tony\Documents\AutoHotkey\images\layer_redbox.png
mouseclick, left, x + 8, y + 8
}
