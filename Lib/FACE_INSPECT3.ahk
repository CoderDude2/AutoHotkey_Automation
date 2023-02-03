#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force


FACE_INSPECT3()

{
	pause,  off

is.vsearch("small_close.png", 650, 130, 930, 270, 10)
mouseclick, left, is.x+5, is.y+5
sleep, 200
layer_redbox()
sleep, 100
winactivate, ESPRIT


LEFT_TAB_DEFAULT() ;; CLICK ON TOP LEFT TAB




SENDINPUT, {DOWN}{DOWN}
SENDINPUT, {SHIFT Down}
SENDINPUT, {DOWN}{DOWN}{DOWN}
SENDINPUT, {SHIFT UP}

;;SELECT LAYER 14
wingetclass, deg_class, A
List_search.layer("경계소재-6", "combobox2", "ESPRIT")



;;GOTO FACE DEG VIEW
WinActivate, ESPRIT
			control, choose, 5, ComboBox1, ESPRIT





;; start msgbox FACE INSPECT GOOD OR NO? ==========================================
MsgBox, 36, FACE INSPECT BOX, GOOD?


IfMsgBox, Yes
{
 is.rvsearch("red_board.png", 450, 200, 1050, 700, 15)
 mouseclick, left, is.x+10, is.y+10

select_back_four_reset()
return
}

else

    is.rvsearch("face_inspect_icon_1.png", 0, 0, 400, 400, 10)
mouseclick, left, is.x+25, is.y+5, 2


;; click middle box
 is.rvsearch("icon_ok_text.png", 0, 0, 400, 400, 10)
 sleep, 50 ;; changed ffom 300
mouseclick, left, is.x+300, is.y+300
;SLEEP, 300

;Pause
is.vsearch("FACE_INSPECT_ICON_3.png", 500, 200, 1400, 500, 20)
MOUSEMOVE, IS.X+10, IS.Y+30
;SLEEP, 200

;; highlighting circle
sendinput, +{lbutton}
sleep, 50
mouseclick, left
sleep, 50
;; click ok
 is.rvsearch("icon_ok_text.png", 0, 0, 400, 400, 10)
 mouseclick, left, is.x+5, is.y+5,


 ;;  locate face ball middle icon

 is.rvsearch("face_inspect_icon_2.png", 0, 0, 400, 400, 10)
 mousemove, is.x+5, is.y+5,

 rebuild()
 return


}