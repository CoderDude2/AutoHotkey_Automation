#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, FORCE




final_inspect()

{

TOOL.STOP_SIM()
sleep, 20


is.vsearch("OPERATIONS_TAB2.png", 0, 720, 425, 1200, 20)
mouseclick, left, is.x+10, is.y+5, 2
sleep, 50

control, choose, 1, ComboBox2, ESPRIT
sleep, 20

list_search.layer("FRONT TURNIN", "combobox2", "ESPRIT")
;list_search.layer("CUT-OFF", "combobox2", "ESPRIT")
deg.deg0()
is.rvsearch("blue_background.png", 385, 150, 1550, 900, 10)
mouseclick, left, is.x+20, is.y+5, 2
send, {WheelDown 1}

;;;----- phase 2
sleep, 100

is.rvsearch("blue_background.png", 385, 150, 1550, 900, 10)
mouseclick, left, is.x+20, is.y+5, 2
sleep, 100
send, ^s
sleep, 100


;================= START NC FILE =====================
send, ^{f9}

;=================== WAIT FOR ADVANCED NC CODE OUTPUT =============
WinWaitActive, Advanced NC Code Output
SENDINPUT, {TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{SPACE}

}
