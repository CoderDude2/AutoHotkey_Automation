#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force


LINE_UP_FRAME()

{
;; =================	CLOSE MACRO WINDOW

sendinput, !s
SLEEP, 100

;; ===================== ACTIVATE HIGHLIGHT ICON / CLICK IT / ENTER
PostMessage, 0x111, 3129,,, ESPRIT
Pause


mouseclick, left
;============  WAIT FOR MENU WINDOW TO ACTIVATE BEFORE ENTER COMMAND ================


SLEEP, 200	;; THIS DELAY IS IMPORTANT, LETS THE CLICK REGISTER OTHERWISE WINACTIVE 파트 프로파일 -- DOESN'T ACTIVATE
WINACTIVATE, 파트 프로파일
WinWaitActive, 파트 프로파일
SENDINPUT, {ENTER}
SLEEP, 100 ;; THIS DELAY IMPORTANT OTHERWISE THE ENTER KEYSTROKE WONT EXECUTE
;~ sleep, 500 ;; insttead trying winwaitnotactive

;; =======================	DRAW LINE UP AFTER PAUSE =======================

ICON.TOOL("ICON_LINE.PNG")
is.vsearch("yellow_line2.png", 800, 250, 1660, 1370, 10)
mouseclick, left, is.x+10, is.y+8, 1, 0 ;; two last variables is click count / speed
pause


;; ============== PRESS ESC TO DESELECT LINE ICON, MOVE TO NEXT STEPS ===========
SENDINPUT, {ESC}
SLEEP, 100
;; ========================================================================


;; ==============	LAYER REDBOX
winactivate, 레이어
ImageSearch, x, y, 0, 0, 50, 700, C:\Users\tony\Documents\AutoHotkey\images\layer_redbox.png
mouseclick, left, x + 8, y + 8
SLEEP, 100

;; ==============	HIGHLIGHT LAYER 11
list_search.layer("11 '", "combobox2", "ESPRIT")

;~ WINACTIVATE, ESPRIT

;~ SENDINPUT, ^a

;; ================ MANUAL SELECT 9,10,11 ====================

Pause



;; ==============	HIGHLIGHT LAYER STL AGAIN
WINACTIVATE, 레이어
list_search.layer("'STL'", "combobox2", "ESPRIT")


;; -============== EDONG MOVE ======================
		PostMessage, 0x111, 57634,,, ESPRIT
			WinWaitActive, ahk_class #32770
			SLEEP, 100
			control, choose, 9, ComboBox1, ahk_class #32770
			control, check,, Button8, ahk_class #32770
			sleep, 30
			sendinput, {Enter}



Pause



;; ============== HIGHLIGHT BOXES 9,10,11 ======================

	CONTROL, CHOOSE, 10, ListBox1, 레이어
	CONTROL, CHOOSE, 11, ListBox1, 레이어
	CONTROL, CHOOSE, 12, ListBox1, 레이어

sleep, 100

;; ================  SELECT BLUEBACKGROUND TO DESELECT WIRE HIGHLIGHTS =======================

is.vsearch("blue_background2.png", 490, 200, 1550, 900, 10)
mouseclick, left, is.x+30, is.y+30, 2, 0 ;; two last variables is click count / speed
sendINPUT, {click}
sleep, 100
;; ================ DESELECT 9,10,11, THROUGH  IMAGESEARCH  =================
WINACTIVATE, 레이어

is.vsearch("HIGHLIGHT_BACKTURNING.PNG", 0, 0, 150, 250, 10)
mouseclick, left, is.x-10, is.y+22, 1, 0 ;; two last variables is click count / speed


sleep, 100
;; ================== SELECT WIRE FUNCTION  DELETE ========================
SELECT_WIRE()
sleep, 100
WINACTIVATE, ESPRIT
SENDINPUT, {DEL}
SENDINPUT, !a


}

