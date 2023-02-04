#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force


text_scriptv2()
{

pause,  off

ImageSearch, x1, y1, 0, 0, 1000, 1000, C:\Users\tony\Documents\AutoHotkey\images\text_layer.png
if(errorlevel = 0)
{
msgbox, alreaddy have text
return
}


is.vsearch("text_macro.png", 88, 111, 251, 257, 10)
mouseclick, left, is.x+10, is.y+10


WinWaitActive, Engraving Program Number Text
mouseclick, left, 112, 121
sleep, 200
sendinput, {enter}



pause

winactivate, Engraving Program Number Text
WinWaitActive, Engraving Program Number Text
mouseclick, left, 118, 336

SLEEP, 200


winclose, Engraving Program Number Text


winactivate, ESPRIT
SLEEP, 30
LAYER_REDBOX()

sleep, 30
winactivate, ESPRIT
is.vsearch("blue_background.png", 440, 200, 1630, 1000, 10)
mouseclick, left, is.x, is.y
sleep, 30
DEG.deg0()
;is.vsearch("sim_play.png", 243, 54, 1100, 257, 10)
;mouseclick, left, is.x+10, is.y+10
TOOL.SIMULATION()
}
