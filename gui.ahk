#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force




;; =====================			GUI INTERFACE			===========================

gui, 1:color, 34b4eb

gui, 1:+alwaysontop
gui, 1:show, w250 h50 x1150 y70,      =]
gui, 1:add, button, x2 y2 w70 h40 Gclose_script, test!
gui, 1:add, button, x80 y2 w70 h40 Gclose_script, test!
gui, 1:add, button, x160 y2 w70 h40 Gclose_script, test!

;gui, add, text, x100 y10, yes

return


;; ======================		SUBMIT VALUES AND CLOSE EXIT APP		====================
submit_variable:
gui, submit, nohide
return

close_script:
ExitApp
return

guiclose:
ExitApp
return

