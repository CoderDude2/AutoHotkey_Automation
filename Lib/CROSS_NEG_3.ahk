#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



CROSS_NEG_3()

{
WinActivate, ESPRIT
control_value := "WindowsForms10.EDIT.app.0.1af7f43_r21_ad123"
ImageSearch, x, y, 0, 0, 800, 600, C:\Users\tony\Documents\AutoHotkey\images\help_button.png
while(ErrorLevel=1)
{
ImageSearch, x, y, 0, 0, 800, 600, C:\Users\tony\Documents\AutoHotkey\images\help_button.png
sleep, 300
}


ImageSearch, x2, y2, 0, 0, 480, 1000, *50 C:\Users\tony\Documents\AutoHotkey\images\tab_neg_2.png
click, %x2%, %y2%

sleep,100

ImageSearch, x3, y3, 0, 0, 480, 1000, *50 C:\Users\tony\Documents\AutoHotkey\images\tab_neg_1.png
click, %x3%, %y3%

sleep, 100

wingetclass, deg_class, A
controlsettext, %control_value%, -7, ahk_class %DEG_CLASS%
ControlFocus, %control_value%, ahk_class %DEG_CLASS%
SLEEP, 100
SENDINPUT, {TAB}
SLEEP, 100


;; DOUBLE CHECK INPUT VALUE
controlgettext, INPUTVALUE, %control_value%, ESPRIT

IF (INPUTVALUE = -7.000000)
{
SENDINPUT, {ENTER}

}



}