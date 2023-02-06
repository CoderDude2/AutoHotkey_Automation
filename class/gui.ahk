#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force



;; =============== declare new variables for GUI 2 =========================


;; VAR ALL SET TO 0 FOR OFF
north_var := 0
south_var := 0
west_var := 0
east_var :=0

;; =====================			GUI INTERFACE			===========================
gui, 1:color, 34b4eb
gui, 1:+alwaysontop
gui, 1:show, w500 h80 x1150 y70,      =]
gui, 1:add, button, x2 y2 w70 h60 Gcopy_files, COPY FILES!
gui, 1:add, button, x80 y2 w70 h60 Gdel_files, CLEAR!
gui, 1:add, button, x160 y2 w70 h60 Gdel_bak, DEL BAK!
gui, 1:add, button, x280 y2 w70 h50 GROUGH_3, ROUGH 3
gui, 1:add, button, x360 y2 w70 h50 GROUGH_8, ROUGH 8 -8
;gui, add, text, x100 y10, yes
return

;; ======================   GUI INTERFACE 2 ==============================================
launch_gui2:
gui, 2:destroy

gui, 2:font, s16
gui, 2:color, , AQUA
gui, 2:+alwaysontop
gui, 2:+lastfound

;; ========================   Getting coordinates to show GUI interface on correct instance ===============================
coordmode, mouse, screen
MouseGetPos, gui2x, gui2y
coordmode, mouse, relative
if (gui2x < 1705){
	gui, 2:show, W410 h280 x587 y186,      GUI INTERFACE 2
}
if (gui2x < 3410 && gui2x > 1705){
	gui, 2:show, W410 h280 x2282 y186,      GUI INTERFACE 2
}
if (gui2x > 3410){
	gui, 2:show, W410 h280 x3994 y186,      GUI INTERFACE 2
}

;; ==========================================  BUTTON ASSIGNMENTS ============================================================
;===== NORTH BUTTONS
gui, 2:add, edit, X180 y10 w100 vnorthedit,
gui, 2:add, button, x130 y50 w70 h50 gnorth1, 1
gui, 2:add, button, x200 y50 w70 h50 gnorth2, 0.5

;===== SOUTH BUTTONS
gui, 2:add, edit, X180 y220 w80 vsouthedit ,
gui, 2:add, button, x130 y170 w70 h50 gsouth1, 1
gui, 2:add, button, x200 y170 w70 h50 gsouth2, 0.5

;===== WEST BUTTONS
gui, 2:add, edit, X45 y75 w80 VWESTEDIT
gui, 2:add, button, x25 y110 w70 h50 GWEST1, 1
gui, 2:add, button, x95 Y110 w70 h50 GWEST2, 0.5

;===== EAST BUTTONS
gui, 2:add, edit, X300 y75 w80 VEASTEDIT
gui, 2:add, button, x240 y110 w70 h50 GEAST1, 1
gui, 2:add, button, x310 y110 w70 h50 GEAST2, 0.5

;; ======== EXECUTE BUTTON  ===========

GUI, 2:ADD, BUTTON, X180 Y110 W50 H50 GEXECUTE, X

return

;;======================= GOSUB VARIABLES =========================
north1:
north_var := .01   ;;; setting 1 percen
guicontrol,, northedit, %north_var%
return

north2:
north_var := .005   ;;; setting 1 percen
guicontrol,, northedit, %north_var%
return

;;======================
south1:
south_var := .01   ;;; setting 1 percen
guicontrol,, southedit, %south_var%
return

south2:
south_var := .005   ;;; setting 1 percen
guicontrol,, southedit, %south_var%
return

;;;=======================
WEST1:
WEST_VAR := .01   ;;; setting 1 percen
guicontrol,, WESTEDIT, %WEST_VAR%
return

WEST2:
WEST_VAR := .005   ;;; setting 1 percen
guicontrol,, WESTEDIT, %WEST_VAR%
return

;;;;============================
EAST1:
EAST_VAR := .01   ;;; setting 1 percen
guicontrol,, EASTEDIT, %EAST_VAR%
return

EAST2:
EAST_VAR := .005   ;;; setting 1 percen
guicontrol,, EASTEDIT, %EAST_VAR%
return

;;; =======================  EXECUTE ----  BUTTON VARIABLES PASSED INTO FUNCTION ===============================

EXECUTE:

WINACTIVATE, ESPRIT
is.vsearch("blue_background.png", 490, 200, 1250, 900, 10)
mouseclick, left, is.x+20, is.y+2, 2, 0 ;; two last variables is click count / speed
sendINPUT, {click}

IF (north_var = .01){
PERCENT(NORTH_VAR, "0_DEG_1_CROSS.PNG")
}
IF (north_var = .005){
PERCENT(NORTH_VAR, "0_DEG_1_CROSS.PNG")
}
IF (west_var = .01){
PERCENT(west_VAR, "90_DEG_1_CROSS.PNG")
}
IF (west_var = .005){
PERCENT(west_VAR, "90_DEG_1_CROSS.PNG")
}
IF (south_var = .01){
PERCENT(south_VAR, "180_DEG_1_CROSS.PNG")
}
IF (south_var = .005){
PERCENT(south_VAR, "180_DEG_1_CROSS.PNG")
}
IF (east_var = .01){
PERCENT(east_VAR, "270_DEG_1_CROSS.PNG")
}
IF (east_var = .005){
PERCENT(east_VAR, "270_DEG_1_CROSS.PNG")
}
;; RESET ALL BUTTON VARIABLES

north_var := 0
south_var := 0
west_var := 0
east_var :=0

;; RESET EDIT VALUES
guicontrol,, northedit, %north_var%
guicontrol,, southedit, %south_var%
guicontrol,, WESTEDIT, %WEST_VAR%
guicontrol,, EASTEDIT, %EAST_VAR%


gui, 2:destroy
RETURN





;; =================  GUI 1 INTERFACE MOVE FILES ======================

copy_files:
winactivate, ahk_class CabinetWClass
sendinput, ^l
sleep, 200
ControlGetText,ePath, Edit1, ahk_class CabinetWClass
filecopy, C:\Users\tony\Desktop\작업\작업저장\*.esp, %epath%
SLEEP, 100
filecopy, C:\Users\tony\Documents\DP Technology\ESPRIT\Data\NC_Files\*.*, %epath%
return



;;; ============== CLEAR / delete FILES =========================
del_files:
FileRecycle,C:\Users\tony\Desktop\작업\작업저장\*.*
FileRecycle,C:\Users\tony\Desktop\작업\스캔파일\*.*
FileRecycle,C:\Users\tony\Documents\DP Technology\ESPRIT\Data\NC_Files\*.*
return

DEL_BAK:
FileDelete,C:\Users\tony\Desktop\작업\작업저장\*.esp_bak1
return


;; ======================		SUBMIT VALUES AND CLOSE EXIT APP		====================
submit_variable:
gui, submit, nohide
return

guiclose:
ExitApp
return


;; ========================== 	 ROUGH VALUE 3 AND 8/-8	==================================================
ROUGH_3:
winactivate, Check Rough ML & Create Border Solid
mouseclick, left, 162, 174, 2
sendinput, {backspace}{backspace}
sendinput, 3
mouseclick, left, 112, 282, 2
RETURN

ROUGH_8:
ROUGH_SETTING_8()
return
