#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force
#include C:\Users\tony\Documents\AutoHotkey\class\class.ahk
#include C:\Users\tony\Documents\AutoHotkey\class\GUI.ahk
#include C:\Users\tony\Documents\AutoHotkey\class\VIEWS.ahk




^F13::Pause
return

 ;;; HOTSTRING
:*:3-1::3-1. ROUGH_ENDMILL_0DEG
:*:3-2::3-2. ROUGH_ENDMILL_120DEG
:*:3-3::3-3. ROUGH_ENDMILL_240DEG



;;-------------------- RIGHT CLICK / DOUBLE CLICK ---------------------------

rbutton::
click, 2
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

;========================== MOUSE WHEEL SCROLL VIEW =====================


^WheelDown::
gosub increment_10_degrees
return

^WheelUp::
gosub decrement_10_degrees
return



;;================================= EDONG ==============================

;; =============  UP IS NOW ROTATE TEXT 90  ======
UP::
TEXT_90()
return

DOWN::
EDONG.ROTATE(4)
return

LEFT::
EDONG.SIDE(-.1)
return

RIGHT::
EDONG.SIDE(.5)
RETURN

!F17::
EDONG.REALDOWN(-.5)
return

!F18::
center_circle_2()
RETURN



;;========================    BORDER ICON   ============================

;border icon - flat double side 11/1
f19::
border_icon.flatdoubleside()
return


f20::
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
f23::
layer_redbox()
return



;;==================   BORDER / MARGIN LINE SCRIPT      =====================
F21::
border_scriptv3()
margin_line_script()
SLEEP, 100
;; PUTTING IN THE MACRO 4 SCRIPT BELOW
sendinput, ^s
;sleep, 500
winactivate, ESPRIT
IS.RVSEARCH("MACRO4.PNG", 0, 0, 300, 300, 0)
MOUSECLICK, LEFT, IS.X +10, IS.Y+10
SLEEP, 200
SENDINPUT, {ENTER}
RETURN
return




;; ======================== MACRO 2 =====================================================

^F24::
MACRO2()
return







;;; ===============================    SELECT FOUR'S    =================================
^f16::
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

!f13::
center_circle()
return



;; ==========================  ICON MACROS TOOLSS ================================

!F14::
TOOL.LINE_TOOL()
RETURN


!F22::
TOOL.3_DOT()
;;  connect dots
keywait, Alt
keywait, mbutton
Keywait, LButton, d
MouseGetPos, 3x, 3y
KeyWait, LButton, U
PAUSE
BlockInput, On
sendINPUT, {click, %3x%, %3y%}
SLEEP, 100
BlockInput, Off
SendInput, {esc}
SLEEP, 100
center_circle_2()
RETURN

+!F10::
TOOL.SNIP()
return

;;; =========================== REBUILD ============================
;;; changed for now to edong move up 1.25
!F15::
REBUILD()
RETURN



;;; ========================= RESET ONE ================================

+F15::
RESET_ONE()
return



;; ==================== OPEN FILE =====================================
;; DISABLED DUE TO ADMINISTRATOR BUG - RUN MANUALLY
/*
!F16::
OPEN_FILE()
return
*/

;; ****   !F17 TAKEN EDONG.REALDOWN
;; ****    !F18 TAKEN EDONG -0.5


;; ====================  FRONT SETTINGS FOR MANUAL FRONG TURNIN =====================
!F19::
FRONT_SETTING()
return

/*;; for now edong 1 up
!F20::
FRONT_SETTING_SHORT()
return
*/


!F21::
SENDINPUT, X,0
SENDINPUT, {ENTER}
RETURN


;; ========================  ROUGH MILL SCRIPTS 1-3 ==================================

!F24::
ROUGH_V2()
RETURN

;; ========================= WIRE FRAME VIEW ==================================
XButton2::

sendinput, !a
return

XButton1::
sendinput, !s
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
RETURN



;; ==========================================  90 ADJUST BEGINNING MACRO 1  ======================================================

+!F14::
90_ADJUST()
return

;; ============================================= EDONG UP 1 AND 2 =====================================================
;;was +!f15
;; EDONG UP 1 IS NO LONGER MOVE UP 1, NO ADJUST AND ONLY FRONT TURNING
!f20::
EDONG_UP_1()
return


;; edong 2 up is changed to moove edong line 1.25  ==== SHIFT R
+!F16::
EDONG.REALDOWN(1.25)
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
RETURN



;; ===================================  NC FILE RESTORE AND END PAGE ================================
+!F20::
nc_file()
RETURN

/*
^F24::
ROUGH_INSPECT()
RETURN

*/


;;;================================   2ND GUI ==================================================

^F14::
gosub, LAUNCH_GUI2
RETURN

;;; ==================================   SHIFT SELECT AND DELETE ============================


+!F21::
RETURN



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
