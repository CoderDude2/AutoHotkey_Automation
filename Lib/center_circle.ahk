#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


center_circle()

{
;;SELECT FIRST CIRCLE ICON IS BUGGY WITH QMK.  SELECTS ICON SO FAST BEFORE ALT IS RELEASE ON QMK, CAUSING ICON NOT CLICK
;; SOLUTION - INCLUDE KEYWAIT FOR ALT TO RELEASE BEFORE RUNNING SCRIPT, OR USE CLASS ICON TOOL TO SELECT BECAUSE THAT SEEMS TO JUST WORK
/*
;; FIRST SOLUTION
keywait, Alt
is.vsearch("icon_circle.png", 0, 0, 530, 175, 20)
mouseclick, left, is.x+10, is.y+10
*/

;; SECOND SOLUTION
ICON.TOOL("icon_circle.png")



;;; ==== real code
ImageSearch, xx1, yy1, 400, 182, 1660, 1320, *transblack C:\Users\tony\Documents\AutoHotkey\images\center_axis_6.png
if (errorlevel = 0)
{
MOUSEMOVE, % xx1+11, yy1+15
Click, Left

}






sendinput, .5
sleep, 100
sendinput, {enter}
sendinput, {escape}


;; ==================================================================================================
sendinput, {esc}
deg.deg0()
is.rvsearch("blue_background.png", 850, 200, 1400, 1250, 20)
mouseclick, left, is.x+15, is.y+5, 2
sendINPUT, {click}


is.rvsearch("center_circle_highlight.png", 386, 317, 1150, 1190, 20)
mousemove, is.x+4, is.y+2
send, +{click}

sleep, 100
border_icon.center_border_3()

*/
}