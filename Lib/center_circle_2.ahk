#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


center_circle_2()

{
;; FOR THE MANUALLY DRAWN CENTER CIRCLES
sendinput, {esc}
deg.deg0()
is.rvsearch("blue_background.png", 440, 200, 1400, 1250, 20)
mouseclick, left, is.x+15, is.y+5, 2
sleep, 300
is.rvsearch("center_circle_highlight.png", 386, 317, 1150, 1190, 20)
mousemove, is.x+4, is.y+2
send, +{click}
sleep, 100
EDONG.SIDE(-.5)
sleep, 200
border_icon.center_border_3()


}