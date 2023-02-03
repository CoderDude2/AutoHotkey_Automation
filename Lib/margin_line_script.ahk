#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force

Margin_line_script()


{




	;;GET ORIGINAL MOUSE POS  마진
coordmode, mouse
mousegetpos, xo, yo
coordmode, mouse, window
LAYER_REDBOX()
;SLEEP, 300
WinActivate, ESPRIT
list_search.layer("0DEG 마진", "combobox2", "ESPRIT")
DEG.DEG0()
ICON.TOOL("ICON_MARGIN_LINE.PNG")
;back to original pos for mouse, screen mode
coordmode, mouse
mousemove, %xo%, %yo%
send, {WheelDown 3}
;set back to window coord mode
coordmode, mouse, window


;; ===================== CONNECT DOTS =======================
Keywait, LButton, d
MouseGetPos,x,y
global click1x := x
global click1y := y
KeyWait, LButton, U
PAUSE

mouseclick, LEFT
MouseGetPos,x123,y123
global click2x := x123
global click2y := y123
is.vsearch("YELLOW_LINE.png", 404, 173, 1700, 1400, 10)

mouseclick, left, is.x+30, %Y123%
;SLEEP, 100
MOUSECLICK, LEFT, IS.X+30, %Y%
;SLEEP, 100
BlockInput, On
sendINPUT, {click, %click1x%, %click1y%}
SLEEP, 100
BlockInput, Off

;;========================================================================



;;GET ORIGINAL MOUSE POS  마진
coordmode, mouse
mousegetpos, xo, yo
coordmode, mouse, window
LAYER_REDBOX()
;SLEEP, 300
WinActivate, ESPRIT
list_search.layer("90DEG 마진", "combobox2", "ESPRIT")
DEG.DEG90()
ICON.TOOL("ICON_MARGIN_LINE.PNG")
;back to original pos for mouse, screen mode
coordmode, mouse
mousemove, %xo%, %yo%
send, {WheelDown 3}
;set back to window coord mode
coordmode, mouse, window


;; ===================== CONNECT DOTS =======================
Keywait, LButton, d
MouseGetPos,x,y
global click1x := x
global click1y := y
KeyWait, LButton, U
PAUSE

mouseclick, LEFT
MouseGetPos,x123,y123
global click2x := x123
global click2y := y123
is.vsearch("YELLOW_LINE.png", 404, 173, 1700, 1400, 10)

mouseclick, left, is.x+30, %Y123%
;SLEEP, 100
MOUSECLICK, LEFT, IS.X+30, %Y%
;SLEEP, 100
BlockInput, On
sendINPUT, {click, %click1x%, %click1y%}
SLEEP, 100
BlockInput, Off

;;========================================================================






;;GET ORIGINAL MOUSE POS  마진
coordmode, mouse
mousegetpos, xo, yo
coordmode, mouse, window
LAYER_REDBOX()
;SLEEP, 300
WinActivate, ESPRIT
list_search.layer("180DEG 마진", "combobox2", "ESPRIT")
DEG.DEG180()
ICON.TOOL("ICON_MARGIN_LINE.PNG")
;back to original pos for mouse, screen mode
coordmode, mouse
mousemove, %xo%, %yo%
send, {WheelDown 3}
;set back to window coord mode
coordmode, mouse, window


;; ===================== CONNECT DOTS =======================
Keywait, LButton, d
MouseGetPos,x,y
global click1x := x
global click1y := y
KeyWait, LButton, U
PAUSE


mouseclick, LEFT
MouseGetPos,x123,y123
global click2x := x123
global click2y := y123
is.vsearch("YELLOW_LINE.png", 404, 173, 1700, 1400, 10)

mouseclick, left, is.x+30, %Y123%
;SLEEP, 100
MOUSECLICK, LEFT, IS.X+30, %Y%
;SLEEP, 100
BlockInput, On
sendINPUT, {click, %click1x%, %click1y%}
SLEEP, 100
BlockInput, Off




;;========================================================================



;;GET ORIGINAL MOUSE POS  마진
coordmode, mouse
mousegetpos, xo, yo
coordmode, mouse, window
LAYER_REDBOX()
;SLEEP, 300
WinActivate, ESPRIT
list_search.layer("270DEG 마진", "combobox2", "ESPRIT")
DEG.DEG270()
ICON.TOOL("ICON_MARGIN_LINE.PNG")
;back to original pos for mouse, screen mode
coordmode, mouse
mousemove, %xo%, %yo%
send, {WheelDown 3}
;set back to window coord mode
coordmode, mouse, window

;; ===================== CONNECT DOTS =======================
Keywait, LButton, d
MouseGetPos,x,y
global click1x := x
global click1y := y
KeyWait, LButton, U
PAUSE


mouseclick, LEFT
MouseGetPos,x123,y123
global click2x := x123
global click2y := y123
is.vsearch("YELLOW_LINE.png", 404, 173, 1700, 1400, 10)

mouseclick, left, is.x+30, %Y123%
;SLEEP, 100
MOUSECLICK, LEFT, IS.X+30, %Y%
;SLEEP, 100
BlockInput, On
sendINPUT, {click, %click1x%, %click1y%}
SLEEP, 100
BlockInput, Off

;;========================================================================


return


}