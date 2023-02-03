#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



PERCENT(value, layer)

{
;; SETS THE CONTROL EDIT BOX VALUE FOR FUTURE IF YOU FORMAT THIS VALUE WILL CHANGE
control_value := "WindowsForms10.EDIT.app.0.1af7f43_r21_ad112"


IS.RVSEARCH(layer, 28, 550, 350, 1000, 0)
mouseclick, left, IS.X+10 , IS.Y + 5, 2
send, {click 2}
WinActivate, ESPRIT



ImageSearch, x, y, 0, 0, 800, 600, C:\Users\tony\Documents\AutoHotkey\images\help_button.png
while(ErrorLevel=1)
{
ImageSearch, x, y, 0, 0, 800, 600, C:\Users\tony\Documents\AutoHotkey\images\help_button.png
sleep, 300
}





ImageSearch, x3, y3, 0, 0, 480, 1000, *50 C:\Users\tony\Documents\AutoHotkey\images\tab_neg_1.png
click, %x3%, %y3%

sleep, 100

ImageSearch, x2, y2, 0, 0, 480, 1000, *50 C:\Users\tony\Documents\AutoHotkey\images\tab_neg_2.png
click, %x2%, %y2%

sleep,100




wingetclass, deg_class, A
controlsettext, %control_value%, %value%, ahk_class %DEG_CLASS%
ControlFocus, %control_value%, ahk_class %DEG_CLASS%
SLEEP, 100
SENDINPUT, {TAB}
SLEEP, 100
SENDINPUT, {ENTER}

;;**********===================== THIS DOUBLE CHECK SKIP FOR NOW, MAKE THINGS MORE COMPLICATED WITH UP TO 4 MACROS RUNNNING
;; =================================  CANNOT RERUN SINGLE MACROS OF EACH PERCENT

/*
;; DOUBLE CHECK INPUT VALUE
controlgettext, INPUTVALUE, WindowsForms10.EDIT.app.0.1af7f43_r31_ad112, ESPRIT
IF (INPUTVALUE = 0.010000)
{
SENDINPUT, {ENTER}

}
*/

}