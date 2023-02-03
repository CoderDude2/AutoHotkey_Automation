#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



ROUGH_VALUE(VAL1,VAL2)

{
;INPUTBOX, VAL1, ROUGH VALUE, INPUT ROUGH VALUE 1
;INPUTBOX, VAL2, ROUGH VALUE, INPUT ROUGH VALUE 2
WINACTIVATE, ESPRIT
WinWaitActive, ESPRIT
;;REAL TIME SEARCH FOR 2ND TAB
IS.RVSEARCH("ROUGH_TAB2.PNG", 0, 0, 450, 600, 75)
MOUSECLICK, LEFT, IS.X +5, IS.Y + 10

;; REAL TIME IMAGE SEARCH FOR THIS TAB, SO YOU CAN WAIT FOR PAGE TO LOAD BEFORE INPUTING VALUES
IS.RVSEARCH("ROUGH_TAB3.PNG", 0, 0, 450, 600, 50)


CONTROLGETTEXT, X, WindowsForms10.EDIT.app.0.1af7f43_r31_ad19, ESPRIT




		;CHECK FIRST VALUE 1 OR MORE
		CONTROLGETTEXT, X, WindowsForms10.EDIT.app.0.1af7f43_r31_ad19, ESPRIT
		
		
		
		IF (X=1)
		{
		controlsettext, WindowsForms10.EDIT.app.0.1af7f43_r31_ad113, %VAL2%, ESPRIT
		CONTROLFOCUS, WindowsForms10.EDIT.app.0.1af7f43_r31_ad113, ESPRIT
		SLEEP, 300
		SENDINPUT, {TAB}
		SLEEP, 100

		controlsettext, WindowsForms10.EDIT.app.0.1af7f43_r31_ad115, -%VAL2%, ESPRIT
		CONTROLFOCUS, WindowsForms10.EDIT.app.0.1af7f43_r31_ad115, ESPRIT


		CONTROLSETTEXT, WindowsForms10.EDIT.app.0.1af7f43_r31_ad19,%VAL1%,ESPRIT
		CONTROLFOCUS, WindowsForms10.EDIT.app.0.1af7f43_r31_ad19, ESPRIT
		SLEEP, 100
		SENDINPUT, {TAB}
		SLEEP, 100
		}
		else
		{
		controlsettext, WindowsForms10.EDIT.app.0.1af7f43_r31_ad115, %VAL2%, ESPRIT
		CONTROLFOCUS, WindowsForms10.EDIT.app.0.1af7f43_r31_ad115, ESPRIT
		SLEEP, 100
		SENDINPUT, {TAB}
		SLEEP, 100
		controlsettext, WindowsForms10.EDIT.app.0.1af7f43_r31_ad117, -%VAL2%, ESPRIT
		CONTROLFOCUS, WindowsForms10.EDIT.app.0.1af7f43_r31_ad117, ESPRIT




		CONTROLSETTEXT, WindowsForms10.EDIT.app.0.1af7f43_r31_ad19,%VAL1%,ESPRIT
		CONTROLFOCUS, WindowsForms10.EDIT.app.0.1af7f43_r31_ad19, ESPRIT
		SLEEP, 100
		SENDINPUT, {TAB}
		SLEEP, 100
		}


}


