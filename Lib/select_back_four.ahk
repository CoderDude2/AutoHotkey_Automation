#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force




select_back_four()

{
;; version 2.0
WinActivate, ESPRIT
mousegetpos, xo, yo

IS.rVSEARCH("0_DEG_1_CROSS.PNG", 28, 550, 350, 1000, 0)
mousemove, IS.X+10 , IS.Y + 5
sendinput, ^{lbutton}
sleep, 50

mousemove, IS.X+10 , IS.Y + 60
sendinput, ^{lbutton}
sleep, 50

mousemove, IS.X+10 , IS.Y + 115
sendinput, ^{lbutton}
sleep, 50

mousemove, IS.X+10 , IS.Y + 170
sendinput, ^{lbutton}
sleep, 50


sleep, 100
mousemove, %xo%, %yo%

;; version 1.0

/*
WinActivate, ESPRIT
mousegetpos, xo, yo

IS.VSEARCH("0_DEG_1_CROSS.PNG", 28, 550, 350, 1000, 0)
mousemove, IS.X+10 , IS.Y + 5
sendinput, ^{lbutton}

sleep, 100
IS.VSEARCH("90_DEG_1_CROSS.PNG", 28, 550, 350, 1000, 0)
mousemove, IS.X+10 , IS.Y + 5
sendinput, ^{lbutton}


sleep, 100
IS.VSEARCH("180_DEG_1_CROSS.PNG", 28, 550, 350, 1000, 0)
mousemove, IS.X+10 , IS.Y + 5
sendinput, ^{lbutton}


sleep, 100
IS.VSEARCH("270_DEG_1_CROSS.PNG", 28, 550, 350, 1000, 0)
mousemove, IS.X+10 , IS.Y + 5
sendinput, ^{lbutton}

sleep, 100
mousemove, %xo%, %yo%
*/

}