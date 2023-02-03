#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


slant_circle_script()

{
			WINACTIVATE, ESPRIT
			PostMessage, 0x111, 57634,,, ESPRIT
			WinWaitActive, ahk_class #32770
			control, choose, 7, ComboBox1, ahk_class #32770
			controlsettext, Edit8, 0.8, ahk_class #32770
			sendinput, {enter}
			
			sleep, 100
			
			
				PostMessage, 0x111, 57634,,, ESPRIT
			winwaitactive, ahk_class #32770
			control, choose, 5, ComboBox1, ahk_class #32770
			control, check,, Button7, ahk_class #32770
			controlsettext, Edit2, .9, ahk_class #32770
			controlsettext, Edit3, 0, ahk_class #32770
			controlsettext, Edit4, 0, ahk_class #32770
			sendinput, {enter}
			
			
				sleep, 100
			
					WINACTIVATE, ESPRIT
			PostMessage, 0x111, 57634,,, ESPRIT
			WinWaitActive, ahk_class #32770
			control, choose, 5, ComboBox1, ahk_class #32770
			control, check,, Button7, ahk_class #32770
			controlsettext, Edit2, 0, ahk_class #32770
			controlsettext, Edit3, -0.05, ahk_class #32770
			controlsettext, Edit4, 0, ahk_class #32770
			sendinput, {enter}

}