#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force


FACE_INSPECT_auto()

{

;; setting value for margin line search
	marginvalue := 1 ;; ASSUMING MARGIN IS NOT FOUND.. SO DEFAULT IS NOT RESETTING SELECT BACK FOUR
ImageSearch, mgx1, mgy1, 550, 189, 1436, 1275, *10 C:\Users\tony\Documents\AutoHotkey\images\margin_line.png

;; errorlevel 0 is found, 1 is not found
if (ErrorLevel=1){
marginvalue := 1
}
if (ErrorLevel=0){
marginvalue := 0
}

;;======================================================================================================
ControlGet, LB_list, List, , combobox2, ESPRIT
			matchflag=0 ; no match yet
			loop, parse, LB_list, `n, `r
			IfInString, A_LoopField, '경계소재-4'
			  {
				matchflag=1 ; match found
				break
			  }
			  loop, parse, LB_list, `n, `r
			  IfInString, A_LoopField, '경계소재-5'
			  {
				matchflag=2 ; match found
				break
			  }
			  	  loop, parse, LB_list, `n, `r
			  IfInString, A_LoopField, '경계소재-6'
			  {
				matchflag=3 ; match found
				break
			  }

;; smaller circle
if (matchflag = 3){
face_inspect3()
}
;;smaller circle
if (matchflag = 2){
face_inspect2(marginvalue)
}
;; bigger CIRCLE
if (matchflag = 1){
face_inspect(marginvalue)
}


}