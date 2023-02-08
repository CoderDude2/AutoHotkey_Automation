#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force

#include %A_ScriptDir%\class\class.ahk
#include %A_ScriptDir%\class\gui.ahk
#include %A_ScriptDir%\class\views.ahk

^F13::Pause
return

#IfWinExist ahk_exe esprit.exe
#IfWinActive ahk_exe esprit.exe

 ;;; HOTSTRING
:*:3-1::3-1. ROUGH_ENDMILL_0DEG
:*:3-2::3-2. ROUGH_ENDMILL_120DEG
:*:3-3::3-3. ROUGH_ENDMILL_240DEG

;;-------------------- RIGHT CLICK / DOUBLE CLICK ---------------------------
RButton::
Click, 2
return

;======================     SELECTING DEGREES        =====================
F13::
Deg.deg0()
return
F14::
Deg.deg90()
return
F15::
Deg.deg180()()
return
F16::
Deg.deg270()()
return
F17::
Deg.face()()
return
F18::
Deg.rear()
return

;========================== MOUSE WHEEL SCROLL VIEW =====================
^WheelDown::
increment_10_degrees()
return

^WheelUp::
decrement_10_degrees()
return
;;================================= Edong ==============================
;; =============  UP IS NOW ROTATE TEXT 90  ======
Up::
TEXT_90()
return

Down::
Edong.rotate(4)
return

Left::
Edong.side(-.1)
return

Right::
Edong.side(.5)
RETURN

!F17::
Edong.realDown(-.5)
return

!F18::
center_circle_2()
RETURN

;;========================    BORDER ICON   ============================
;border icon - flat double side 11/1
F19::
border_icon.flatdoubleside()
return

F20::
border_icon.center_border_3()
return

+!F11::
border_icon.slant_circle()
return

+!F12::
slant_circle_script()
return

+F13::
BORDERFLAT_AUTO()
return

;;==========================  REDBOX    ==============================
F23::
layer_redbox()
return

;;==================   BORDER / MARGIN LINE SCRIPT      =====================
F21::
border_scriptV3()
margin_line_script()
Sleep, 100
;; PUTTING IN THE MACRO 4 SCRIPT BELOW
SendInput, ^s
;sleep, 500
WinActivate, ESPRIT
IS.RVSEARCH("MACRO4.PNG", 0, 0, 300, 300, 0)
MouseClick, Left, IS.X + 10, IS.Y + 10
Sleep, 200
SendInput, {Enter}
return

;; ======================== MACRO 2 =====================================================
^F24::
MACRO2()
return

;;; ===============================    SELECT FOUR'S    =================================
^F16::
select_back_four()
return

^F17::
select_back_four_reset()
return

;;;; ============================== TEXT SCRIPT  ==========================================
^F19::
TEXT_SCRIPTv2()
return

;; =========================  FINAL INSPECT   ======================================
^F20::
FINAL_INSPECT()
return

;; ========================== ADJUSTMENTS ======================================
^F23::
CROSS_NEG_3()
return

;;; ======================== CENTER CIRCLE MACRO =======================
!F13::
center_circle()
return

;; ==========================  ICON MACROS TOOLSS ================================
!F14::
Tool.line_tool()()
return

!F22::
Tool.3_dot()
;;  connect dots
KeyWait, Alt
KeyWait, mbutton
KeyWait, LButton, d
MouseGetPos, 3x, 3y
KeyWait, LButton, U
Pause
BlockInput, On
SendInput, {Click, %3x%, %3y%}
Sleep, 100
BlockInput, Off
SendInput, {esc}
Sleep, 100
center_circle_2()
return

+!F10::
Tool.snip()
return

;;; =========================== REBUILD ============================
;;; changed for now to Edong move up 1.25
!F15::
rebuild()
return

;;; ========================= RESET ONE ================================
+F15::
reset_one()
return
reset_one()

;; ==================== OPEN FILE =====================================
;; DISABLED DUE TO ADMINISTRATOR BUG - RUN MANUALLY
/*
!F16::
OPEN_FILE()
return
*/

;; ****   !F17 TAKEN Edong.REALDOWN
;; ****    !F18 TAKEN Edong -0.5

;; ====================  FRONT SETTINGS FOR MANUAL FRONG TURNIN =====================
!F19::
FRONT_SETTING()
return

/*;; for now Edong 1 up
!F20::
FRONT_SETTING_SHORT()
return
*/

!F21::
SendInput, X, 90
SendInput, {Enter}
return

;; ========================  ROUGH MILL SCRIPTS 1-3 ==================================
!F24::
ROUGH_V2()
return

;; ========================= WIRE FRAME VIEW ==================================
XButton2::
SendInput, !a
return

XButton1::
SendInput, !s
return

;; =====================  FACE INSPECT 2 =====================
+F14::
FACE_INSPECT_auto()
return

;; =======================  ROUGH SETTINGS 6, -6 AND 7, -7 & 2ND LAYER ADD ===============================
^F21::
ROUGH_SETTING_6()
return

^F22::
ROUGH_SETTING_7()
return

+!F9::
ROUGH_SETTING_2ND()
return

;; ========================  FILE CLOSE ======================================
+F16::
FILE_CLOSE()
return

;; =======================   FILE OPEN  ========================================
+!F13::
PostMessage, 0x111, 57601,,, ESPRIT
return

;; =================== SPEED ANIMATION ===============================
+F17::
SPEED_ANIMATION()
return

;; ==========================================  90 ADJUST BEGINNING MACRO 1  ======================================================
+!F14::
90_ADJUST()
return

;; ============================================= Edong UP 1 AND 2 =====================================================
;;was +!f15
;; Edong UP 1 IS NO LONGER MOVE UP 1, NO ADJUST AND ONLY FRONT TURNING
!f20::
EDONG_UP_1()
return

;; Edong 2 up is changed to moove Edong line 1.25  ==== SHIFT R
+!F16::
Edong.REALDOWN(1.25)
return

;; ============================================= WIRE LINE UP =====================================================
+!F17::
LINE_UP_FRAME()
return

;; ================================================= HIGHLIGHT SELECT WIRE / SELECT ALL WIRE =============================
+!F18::
SELECT_WIRE()
return

;; ==========================================  MOVE ROUGH MENU ==================================
+!F19::
MOVE_ROUGH_MENU()
return

;; ===================================  NC FILE RESTORE AND END PAGE ================================
+!F20::
nc_file()
return

/*
^F24::
ROUGH_INSPECT()
RETURN

*/

;;;================================   2ND GUI ==================================================
^F14::
gosub, LAUNCH_GUI2
return

;;; ==================================   SHIFT SELECT AND DELETE ============================
+!F21::
return

^F15::
macro4_skip()
return

+!F1::
close()
return

+!F2::
rough_redo()
return

;;; ====================++++++++++++++++++ FREEEEEEEE ++++++++++++++++++++++++++
;;;
/*
+!F3::
ONE_PERCENT_3()
return

+!F4::
ONE_PERCENT_4()
return


+!F5::
HALF_PERCENT_1()
return


+!F6::
HALF_PERCENT_2()
return


+!F7::
HALF_PERCENT_3()
return


+!F8::
HALF_PERCENT_4()
return
*/
