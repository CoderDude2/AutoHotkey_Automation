#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



BORDERFLAT_AUTO()

{


coordmode, mouse
mousegetpos, xo, yo
coordmode, mouse, window



ICON.TOOL("ICON_LINE.PNG")

CLICK, 1600, 1300
CLICK, 530, 1300

/*
// this is for BORDERLINE RIGHT UNDERNEATH THE YELLOW LINE
ICON.TOOL("ICON_LINE.PNG")
ImageSearch, xx1, yy1, 400, 182, 1660, 1320, *transblack C:\Users\tony\Documents\AutoHotkey\images\center_axis_6.png


mouseclick, left, 1430, yy1+40, 1, 0 ;; two last variables is click count / speed
mouseclick, left, 530, yy1+40, 1, 0 ;; two last variables is click count / speed
*/
border_icon.flatdoubleside()

coordmode, mouse
mousemove, %xo%, %yo%
coordmode, mouse, window
return

}