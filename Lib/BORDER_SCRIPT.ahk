#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, FORCE

BORDER_SCRIPT()
{
;; INITIAL SETUP******************
;; CLOSE CHECK ROUGH SCRIPT
winclose, Check Rough ML & Create Border Solid
winactivate, ESPRIT
is.vsearch("blue_background.png", 440, 200, 1630, 1000, 10)
mouseclick, left, is.x, is.y

	
	
	
;;GET ORIGINAL MOUSE POS  마진
coordmode, mouse
mousegetpos, xo, yo
coordmode, mouse, window
LAYER_REDBOX()
;SLEEP, 300
WinActivate, ESPRIT
list_search.layer("0DEG 경계", "combobox2", "ESPRIT")
DEG.DEG90()
ICON.TOOL("ICON_LINE.PNG")
;back to original pos for mouse, screen mode
coordmode, mouse
mousemove, %xo%, %yo%
send, {WheelDown 3}
;set back to window coord mode
coordmode, mouse, window
pause




;;GET ORIGINAL MOUSE POS  마진
coordmode, mouse
mousegetpos, xo, yo
coordmode, mouse, window
LAYER_REDBOX()
;SLEEP, 300
WinActivate, ESPRIT
list_search.layer("90DEG 경계", "combobox2", "ESPRIT")
DEG.DEG180()
ICON.TOOL("ICON_LINE.PNG")
;back to original pos for mouse, screen mode
coordmode, mouse
mousemove, %xo%, %yo%
send, {WheelDown 3}
;set back to window coord mode
coordmode, mouse, window
pause






;;GET ORIGINAL MOUSE POS  마진
coordmode, mouse
mousegetpos, xo, yo
coordmode, mouse, window
LAYER_REDBOX()
;SLEEP, 300
WinActivate, ESPRIT
list_search.layer("180DEG 경계", "combobox2", "ESPRIT")
DEG.DEG270()
ICON.TOOL("ICON_LINE.PNG")
;back to original pos for mouse, screen mode
coordmode, mouse
mousemove, %xo%, %yo%
send, {WheelDown 3}
;set back to window coord mode
coordmode, mouse, window
pause

 

;;GET ORIGINAL MOUSE POS  마진
coordmode, mouse
mousegetpos, xo, yo
coordmode, mouse, window
LAYER_REDBOX()
;SLEEP, 300
WinActivate, ESPRIT
list_search.layer("270DEG 경계", "combobox2", "ESPRIT")
DEG.DEG0()
ICON.TOOL("ICON_LINE.PNG")
;back to original pos for mouse, screen mode
coordmode, mouse
mousemove, %xo%, %yo%
send, {WheelDown 3}
;set back to window coord mode
coordmode, mouse, window

}