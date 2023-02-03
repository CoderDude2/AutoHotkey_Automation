#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force



front_setting()
{
wingetclass, deg_class, A
list_search.layer("FRONT TURNING", "combobox2", "ESPRIT")



;============================== setup layers =================================
winactivate, 레이어
ImageSearch, frontx1, fronty1,  0, 0, 150, 300, *10 C:\Users\tony\Documents\AutoHotkey\images\front_setting_layer1.png
if (errorlevel = 0)
{
mouseclick, left, frontx1+4, fronty1+4
}
sleep, 50
ImageSearch, frontx2, fronty2,  0, 0, 150, 300, *10 C:\Users\tony\Documents\AutoHotkey\images\front_setting_layer2.png
if (errorlevel = 0)
{
mouseclick, left, frontx2+4, fronty2+4
}
sleep, 50
ImageSearch, frontx3, fronty3,  0, 0, 150, 300, *10 C:\Users\tony\Documents\AutoHotkey\images\front_setting_layer3.png
if (errorlevel = 0)
{
mouseclick, left, frontx3+4, fronty3+4
}



;====================== hi button =============================================
winactivate, ESPRIT
mousemove, 827,19
is.vsearch("hi_button.png", 1515, 1250, 1750, 1430, 10)
mouseclick, left, is.x+4, is.y+4
sleep, 300


;======================  open settings windows for icon button ======================
is.vsearch("icon_front_setting.png", 0, 16, 1055, 169, 10)
mouseclick, left, is.x+10, is.y+10, 1, 0
winwaitactive, ahk_class #32770
control, choose, 2, ComboBox1, ahk_class #32770
controlsettext, Edit1, 0.0001, ahk_class #32770
controlsettext, Edit2, 0.0001, ahk_class #32770
controlsettext, Edit3, 1, ahk_class #32770





;;; ======================= PART TWO ===================================================

Pause
;;; ============================ HIGHLIGHTING ABUTMENT  ===============================

 mouseclick, left
 sleep, 300
 mouseclick, left
 
 Pause
 mouseclick, left
 sleep, 300
 mouseclick, right
 sleep, 300
 mouseclick, left
 
 pAUSE






;; ================= SETTINGS WINDOW OK ============================
WINACTIVATE, 터닝 프로파일
SLEEP, 50
SENDINPUT, {ENTER}
sleep, 500
;; ======== ALT S ==========
SENDINPUT, !s
SLEEP, 50


;; ========== ICON CONNECT LINE ================
ICON.TOOL("ICON_CONNECT_LINE.PNG")







;;;**********===============    STARTING OF LABEL GOTO COMMAND =============================

YESNOLABEL:
Pause

;;;==========   HIGHLIGHT / MARGIN RED LINE / SWITCH ARRROW / SENDINPUT FRONT TURNING ============
MouseGetPos, FX, FY

sendinput, {esc}
sendinput, {SHIFT down}
CLICK, 2
sendinput, {SHIFT UP}
SLEEP, 100
ICON.TOOL("ICON_MARGIN_RED.PNG")
SLEEP, 200

;; =================== CHECK IF BLUE LINE IS GOOD, MSGBOX IF COMMAND ===================================

msgbox, 4, testing, BLUE LINE SET?
IfMsgBox NO
GOTO, YESNOLABEL


sendinput, {SHIFT down}
MOUSECLICK, LEFT, FX, FY, 2
sendinput, {SHIFT UP}


SLEEP, 50

ICON.TOOL("ICON_SWITCH_ARROW.PNG")
SENDINPUT, ^1


;================  REAL TIME SEARCH FOR HELP BUTTON =====================

ImageSearch, x, y, 0, 0, 800, 600, C:\Users\tony\Documents\AutoHotkey\images\help_button.png
while(ErrorLevel=1)
{
ImageSearch, x, y, 0, 0, 800, 600, C:\Users\tony\Documents\AutoHotkey\images\help_button.png
sleep, 100
}
;; === SEARCHING FOR FFRONT TURNING SETTING ICON ===================
ImageSearch, frontx3, fronty3,  0, 0, 600, 400, *10 C:\Users\tony\Documents\AutoHotkey\images\FRONT_TURNING_SETTING.png
if (errorlevel = 0)
{
is.vsearch("text_box_ok2.png", 0, 0, 250, 300, 10)
MOUSECLICK, LEFT, IS.X+3, IS.Y+3
}

SENDINPUT, !a




;;; ===================== DESELECT HI ================

winactivate, ESPRIT
is.vsearch("hi_button2.png", 1515, 1250, 1750, 1430, 10)
mouseclick, left, is.x+4, is.y+4
RETURN




}