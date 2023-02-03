#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force


rough_redo()
{



;; DESELECT REDBOX
layer_redbox()
SLEEP, 100


;; ROUGH MSGBOX 0,120,240
MsgBox, 34, ROUGH MENU, 0 - 120 - 240
;; ABORT, RETRY, IGNORE  - 3 OPTIONS




;;============================================         0 DEG =====================================================================
IfMsgBox, Abort

{
	DEG.deg0()
    List_search.layer("[0DEG]ROUGH", "combobox2", "ESPRIT")
	sendinput, !s
	ICON.TOOL("ROUGH_OUTLINE.PNG")
	PAUSE
	mouseclick, left, XM5, YM5 ;; two last variables is click count / speed
	SLEEP, 100
	WinActivate, 파트 프로파일
	WinWaitActive, 파트 프로파일
	SENDINPUT, {ENTER}
	ICON.TOOL("icon_connect_line.PNG")
	PAUSE

	MOUSECLICK, LEFT
	SLEEP, 50
	SENDINPUT, 5
	SENDINPUT, {ENTER}
	SLEEP, 50
	SENDINPUT, 45
	SENDINPUT {ENTER}
	PAUSE

MOUSECLICK, LEFT
	SLEEP, 50
	SENDINPUT, 5
	SENDINPUT, {ENTER}
	SLEEP, 50
	SENDINPUT, -45
	SENDINPUT {ENTER}{esc}
	ICON.TOOL("icon_snip.png")


	Pause
DEG.deg0()

	ICON.TOOL("ICON_MARGIN_RED.png")

	Pause

;; HIGHLIGHT BLUE MARGIN LINE
	list_search.layer("연결", "combobox4", "ESPRIT")
SENDINPUT, ^a

;; SWITCHARROW ICON
ICON.TOOL("ICON_SWITCH_ARROW.png")
sleep, 100


;; ROUGH TAB OPEN TO CHANGE FILE NAME
sendinput, ^2

is.Rvsearch("ROUGH_TAB_1.png", 0, 0, 725, 644, 10)
mouseclick, left, is.x+5, is.y+3, 2, 0 ;; two last variables is click count / speed
SLEEP, 100
SENDINPUT, {TAB}
SendInput, 3-1. ROUGH_ENDMILL_0DEG
SENDINPUT, {ENTER}



list_search.layer("모두", "combobox4", "ESPRIT")
sendinput, !a
}




;;============================================         120 DEG =====================================================================



IfMsgBox, Retry

{
 	DEG.deg120()
    List_search.layer("[120DEG]ROUGH", "combobox2", "ESPRIT")
	sendinput, !s
	ICON.TOOL("ROUGH_OUTLINE.PNG")
	PAUSE
	mouseclick, left, XM5, YM5 ;; two last variables is click count / speed
	SLEEP, 100
	WinActivate, 파트 프로파일
	WinWaitActive, 파트 프로파일
	SENDINPUT, {ENTER}
	ICON.TOOL("icon_connect_line.PNG")
	PAUSE

	MOUSECLICK, LEFT
	SLEEP, 50
	SENDINPUT, 5
	SENDINPUT, {ENTER}
	SLEEP, 50
	SENDINPUT, 45
	SENDINPUT {ENTER}
	PAUSE

MOUSECLICK, LEFT
	SLEEP, 50
	SENDINPUT, 5
	SENDINPUT, {ENTER}
	SLEEP, 50
	SENDINPUT, -45
	SENDINPUT {ENTER}{esc}
	ICON.TOOL("icon_snip.png")


	Pause

DEG.deg120()
	ICON.TOOL("ICON_MARGIN_RED.png")

	Pause

;; HIGHLIGHT BLUE MARGIN LINE
	list_search.layer("연결", "combobox4", "ESPRIT")
SENDINPUT, ^a

;; SWITCHARROW ICON
ICON.TOOL("ICON_SWITCH_ARROW.png")
sleep, 100


;; ROUGH TAB OPEN TO CHANGE FILE NAME
sendinput, ^2

is.Rvsearch("ROUGH_TAB_1.png", 0, 0, 725, 644, 10)
mouseclick, left, is.x+5, is.y+3, 2, 0 ;; two last variables is click count / speed
SLEEP, 100
SENDINPUT, {TAB}
SendInput, 3-2. ROUGH_ENDMILL_120DEG
SENDINPUT, {ENTER}



list_search.layer("모두", "combobox4", "ESPRIT")
sendinput, !a
}



;;============================================         240 DEG =====================================================================
IfMsgBox, Ignore

{
    DEG.deg240()
    List_search.layer("[240DEG]ROUGH", "combobox2", "ESPRIT")
	sendinput, !s
	ICON.TOOL("ROUGH_OUTLINE.PNG")
	PAUSE
	mouseclick, left, XM5, YM5 ;; two last variables is click count / speed
	SLEEP, 100
	WinActivate, 파트 프로파일
	WinWaitActive, 파트 프로파일
	SENDINPUT, {ENTER}
	ICON.TOOL("icon_connect_line.PNG")
	PAUSE

	MOUSECLICK, LEFT
	SLEEP, 50
	SENDINPUT, 5
	SENDINPUT, {ENTER}
	SLEEP, 50
	SENDINPUT, 45
	SENDINPUT {ENTER}
	PAUSE

MOUSECLICK, LEFT
	SLEEP, 50
	SENDINPUT, 5
	SENDINPUT, {ENTER}
	SLEEP, 50
	SENDINPUT, -45
	SENDINPUT {ENTER}{esc}
	ICON.TOOL("icon_snip.png")


	Pause

DEG.deg240()
	ICON.TOOL("ICON_MARGIN_RED.png")

	Pause

;; HIGHLIGHT BLUE MARGIN LINE
	list_search.layer("연결", "combobox4", "ESPRIT")
SENDINPUT, ^a

;; SWITCHARROW ICON
ICON.TOOL("ICON_SWITCH_ARROW.png")
sleep, 100


;; ROUGH TAB OPEN TO CHANGE FILE NAME
sendinput, ^2

is.Rvsearch("ROUGH_TAB_1.png", 0, 0, 725, 644, 10)
mouseclick, left, is.x+5, is.y+3, 2, 0 ;; two last variables is click count / speed
SLEEP, 100
SENDINPUT, {TAB}
SendInput, 3-3. ROUGH_ENDMILL_240DEG
SENDINPUT, {ENTER}



list_search.layer("모두", "combobox4", "ESPRIT")
sendinput, !a
}

}
