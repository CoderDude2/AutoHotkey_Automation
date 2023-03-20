﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force

#include %A_ScriptDir%\src\class.ahk
#include %A_ScriptDir%\src\views.ahk
#include %A_ScriptDir%\src\tools.ahk
#include %A_ScriptDir%\src\gui.ahk

#IfWinExist ahk_exe esprit.exe
#IfWinActive ahk_exe esprit.exe


^F13::Pause
return

 ;;; HOTSTRING
:*:3-1::
formatted_angle := (views.get_current_angle() - 7) * 10
Send 3-1. ROUGH_ENDMILL_%formatted_angle%DEG
return

:*:3-2::
formatted_angle := (views.get_current_angle() - 7) * 10
Send 3-2. ROUGH_ENDMILL_%formatted_angle%DEG
return

:*:3-3::
formatted_angle := (views.get_current_angle() - 7) * 10
Send 3-3. ROUGH_ENDMILL_%formatted_angle%DEG
return

;======================     SELECTING DEGREES        =====================
f13::
DEG.deg0()
Return
f14::
DEG.deg90()
return
f15::
DEG.DEG180()
return
f16::
DEG.DEG270()
return
f17::
DEG.FACE()
return
f18::
DEG.REAR()
return



!WheelDown::
views.increment_10_degrees()
return

^WheelDown::
views.increment_90_degrees()
return

!WheelUp::
views.decrement_10_degrees()
return

^WheelUp::
views.decrement_90_degrees()
return

;; ========================= WIRE FRAME VIEW ==================================
XButton2:: ;; TOP SIDE MOUSE BUTTON
tools.draw_path()

return

XButton1:: ;; BOTTOM SIDE MOUSE BUTTON
tools.trim_tool()
return


;; ========================= SELECT TOOLS ==================================


!f13::  ;; first line tool set to TAB
tools.line_tool()
return

!f16::
tools.circle_tool()
return

!f17::
tools.three_point_tool()
return

;;; ==========================  borders ==========================================


f19::
border_icon.flatdoubleside()
return

f20::
border_icon.slant_circle()
return

f23::
border_icon.center_border_3()
return

;; ========================= Macros ===========================================


f21::
SENDINPUT, X,90
SENDINPUT, {ENTER}
RETURN


f22::
BlockInput, On
;list_search.layer("도형", "combobox5", "ESPRIT")  ;;SET LAYER TO LINES ONLY, SO YOU CAN DRAW LINES ON TOP OF MODELS
;SLEEP, 50
;PostMessage, 0x111, 6384 , , , ESPRIT ;; OPTION "INT"  (BOTTOM RIGHT CORNER)  , THIS ALLOWS LINES TO BE DRAWN ON X/Y AXIS
sleep, 20
tools.line_tool()
Click Left
Send 25{Enter}0{Enter}{Esc}
Click Left 2
Sleep, 400
border_icon.flatdoubleside()
sendinput, {enter}
SLEEP, 50
;list_search.layer("모두", "combobox5", "ESPRIT") ;; SET LAYER BACK TO EVERYTHING
;PostMessage, 0x111, 6384 , , , ESPRIT ;; TURN OFF "INT" SETTING

BlockInput, Off
return

!F20::
SEND, ^{F9}
RETURN

;; ========================= END PROCESS / RELOAD ==============================

!F18::
Reload
return


!F19:: ;; this close will prevent software from slowing down over time
Loop
{
Process, Exist, esprit.exe
If !ErrorLevel
    Break
Process, Close, esprit.exe
}
return


;;========== START BINDS FROM !F21, !F14 AND !F15 OPEN ===============
