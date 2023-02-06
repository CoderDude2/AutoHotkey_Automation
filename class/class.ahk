#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force

class Deg  {      ;;; shortcutkeys to deg views
    deg0() {
        WinActivate, ESPRIT
        WinGetClass, deg_class, A
        Control, choose, 7, ComboBox1, ahk_class %deg_class%
    }

    deg90() {
        WinActivate, ESPRIT
        WinGetClass, deg_class, A
        Control, choose, 16, ComboBox1, ahk_class %deg_class%
    }

    deg120() {

        WinActivate, ESPRIT
        WinGetClass, deg_class, A
        Control, choose, 19, ComboBox1, ahk_class %deg_class%
    }

    deg180() {
        WinActivate, ESPRIT
        WinGetClass, deg_class, A
        Control, choose, 25, ComboBox1, ahk_class %deg_class%
    }

    deg210() {
        WinActivate, ESPRIT
        WinGetClass, deg_class, A
        Control, choose, 28, ComboBox1, ahk_class %deg_class%
    }

    deg240() {
        WinActivate, ESPRIT
        WinGetClass, deg_class, A
        Control, choose, 31, ComboBox1, ahk_class %deg_class%
    }

    deg270() {
        WinActivate, ESPRIT
        WinGetClass, deg_class, A
        Control, choose, 34, ComboBox1, ahk_class %deg_class%
    }

    deg330() {
        WinActivate, ESPRIT
        WinGetClass, deg_class, A
        Control, choose, 40, ComboBox1, ahk_class %deg_class%
    }

    face() {
        WinActivate, ESPRIT
        WinGetClass, deg_class, A
        Control, choose, 5, ComboBox1, ahk_class %deg_class%
    }

    rear() {
        WinActivate, ESPRIT
        WinGetClass, deg_class, A
        Control, choose, 6, ComboBox1, ahk_class %deg_class%
    }
}

class Edong {
    down() {
        PostMessage, 0x111, 57634,,, ESPRIT
        WinWaitActive, ahk_class #32770
        Sleep, 100
        Control, choose, 9, ComboBox1, ahk_class #32770
        ControlSetText, Edit6, 4, ahk_class #32770
        Sleep, 100
        SendInput, {Enter}
    }

    up() {
        PostMessage, 0x111, 57634,,, ESPRIT
        WinWaitActive, ahk_class #32770
        Sleep, 100
        Control, choose, 9, ComboBox1, ahk_class #32770
        ControlSetText, Edit6, -4, ahk_class #32770
        Sleep, 100
        SendInput, {Enter}
    }

    right() {
        SendInput, {ctrl down}c{ctrl up}
        WinWaitActive, ahk_class #32770
        Control, choose, 5, ComboBox1, ahk_class #32770
        Control, check,, Button7, ahk_class #32770
        ControlSetText, Edit2, 0.5, ahk_class #32770
        ControlSetText, Edit3, 0, ahk_class #32770
        ControlSetText, Edit4, 0, ahk_class #32770
        SendInput, {Enter}
    }

    side(val) {
        WinActivate, ESPRIT
        PostMessage, 0x111, 57634,,, ESPRIT
        WinWaitActive, ahk_class #32770
        ;;; CHANGING EDONG FROM SELECT NUMBER ON LIST TO CHOOSING BASED ON STIRNG NAME, MORE ROBUST
        ;Control, choose, 5, ComboBox1, ahk_class #32770
        Control, chooseSTRING, 이동, ComboBox1, ahk_class #32770
        Control, check,, Button7, ahk_class #32770
        ControlSetText, Edit2, %val%, ahk_class #32770
        ControlSetText, Edit3, 0, ahk_class #32770
        ControlSetText, Edit4, 0, ahk_class #32770
        Control, check,, Button2, ahk_class #32770 ;; added this to fix DUPLICATE BORDERS BUG
        SendInput, {Enter}
    }
    
        WinActivate, ESPRIT
        PostMessage, 0x111, 57634,,, ESPRIT
        WinWaitActive, ahk_class #32770
        Sleep, 100
        Control, choose, 9, ComboBox1, ahk_class #32770
        ControlSetText, Edit6, %val%, ahk_class #32770
        Sleep, 100
        SendInput, {Enter}
    }

    real_down(val) {
        WinActivate, ESPRIT
        PostMessage, 0x111, 57634,,, ESPRIT
        WinWaitActive, ahk_class #32770
        Control, choose, 5, ComboBox1, ahk_class #32770
        Control, check,, Button7, ahk_class #32770
        ControlSetText, Edit2, 0, ahk_class #32770
        ControlSetText, Edit3, %VAL%, ahk_class #32770
        ControlSetText, Edit4, 0, ahk_class #32770
        SendInput, {Enter}
    }
}

class border_icon {
    flatdoubleside() {
        BlockInput, On
        MouseClick, LEFT
        SendInput, {Esc}
        WinActivate, ESPRIT
        SendInput, +{Click 2}
        BlockInput, Off
        Sleep, 50

        PostMessage, 0x111, 3130,,, ESPRIT
        WinWaitActive, 보스 돌출/잘라내기
        Control, choose, 2, ComboBox1, ahk_class #32770
        ControlSetText, Edit1, 11, ahk_class #32770
        ControlSetText, Edit4, 1, ahk_class #32770
        ;Sleep, 100
        Control, check,, Button8, ahk_class #32770
        ;Sleep, 100
        SendInput, {Enter}
    }

    center_border_3() {
        WinActivate, ESPRIT
        PostMessage, 0x111, 3130,,, ESPRIT
        ;Sleep, 100

        ;;WinWaitActive, 보스 돌출/잘라내기
        WinWaitActive, ahk_class #32770
        ControlSetText, Edit1, 3, ahk_class #32770
        Sleep, 50
        ;Control, CHECK,, Button2, ahk_class #32770
        MouseClick, left, 225, 65
        Sleep, 100
        MouseClick, left, 225, 65
        /*
        WinActivate, ahk_class #32770
        Control, UNCHECK,, Button2, ahk_class #32770
        Sleep, 30
        Control, CHECK,, Button2, ahk_class #32770
        Sleep, 30
        Control, UNCHECK,, Button2, ahk_class #32770

        */
    }

    slant_circle() {
        WinActivate, ESPRIT
        SendInput, +{Click 2}
        Sleep, 100
        PostMessage, 0x111, 3130,,, ESPRIT
        WinWaitActive, ahk_class #32770
        Control, choose, 2, ComboBox1, ahk_class #32770
        ControlSetText, Edit1, 11, ahk_class #32770
        ControlSetText, Edit4, 4, ahk_class #32770
        Control, choose, 2, ComboBox2, ahk_class #32770
        Sleep, 100
        Control, check,, Button8, ahk_class #32770
        Control, check,, Button3, ahk_class #32770
        Sleep, 100
        SendInput, {Enter}
    }
}

class list_search {
    ; list_search.layer("euro", "combobox5", "Font")
    layer(search_term, box, title) {
        ControlGet, LB_list, List, , %box%, %title%
        matchflag=0 ; no match yet
        loop, parse, LB_list, `n, `r
        IfInString, A_LoopField, %search_term%
            {
            matchflag=1 ; match found
            Match := A_LoopField
            break
            }
        ;;msgbox %LB_list%`r`n`r`n %match%
        Control, ChooseString, %match%, %box%, %title%
        return
    }

    ; ===================================================================

    ; list_search.string("euro", "combobox5", "Font")
    string(search_term, box, title) { 
        ; returns a string of the match

        /* example
        list_search.string("ish", "combobox5", "Font")
        x := list_search.returnstring
        Control, choosestring, %x%, combobox5, Font
        */

        ControlGet, LB_list, List, , %box%, %title%
        matchflag=0 ; no match yet
        loop, parse, LB_list, `n, `r
        IfInString, A_LoopField, %search_term%
            {
            matchflag=1 ; match found
            Match := A_LoopField
            break
            }
        ; msgbox %LB_list%`r`n`r`n %match%
        ; Control, ChooseString, %match%, %box%, %title%
        ; return
        this.returnstring := match
        return
    }
}

class Icon {
    tool(file) {
        ;;Get original mouse position.
        CoordMode, mouse
        MouseGetPos, xo, yo
        CoordMode, mouse, window

        ; Click on margin line icon.
        WinActivate, ESPRIT
        ImageSearch, x, y, 0, 0, 1900, 200, *50 C:\Users\tony\Documents\AutoHotkey\images\%file%
        MouseClick, left, x+5, y+3

        ; Back to original position for mouse, using screen mode.
        CoordMode, mouse
        MouseMove, %xo%, %yo%
        CoordMode, mouse, window
    }
}

class Tool{
    line_tool() {
        PostMessage, 0x111, 3019 , , , ESPRIT
    }

    margin_tool() {
        PostMessage, 0x111, 3057 , , , ESPRIT
    }

    3_dot() {
        PostMessage, 0x111, 3004 , , , ESPRIT
    }

    circle() {
        PostMessage, 0x111, 3005 , , , ESPRIT
    }

    snip() {
        PostMessage, 0x111, 3033 , , , ESPRIT
    }

    simulation() {
        PostMessage, 0x111, 6268 , , , ESPRIT
    }

    line_tool_2() {
        PostMessage, 0x111, 3018 , , , ESPRIT
    }

    stop_sim() {
        PostMessage, 0x111, 6276 , , , ESPRIT
    }

}

; class IS  ;; image search class will return 2 values 'x' and 'y'
; {
; 	vSearch(file, xl1, yl1, xl2, yl2, v)	;;; function returns 2 values x and y =====  file is the var for image file name
; 		{
; 			ImageSearch, x1, y1, %xl1%, %yl1%, %xl2%, %yl2%, *%v% C:\Users\tony\Documents\AutoHotkey\images\%file% ;; image search returns 2 values x1 and y1
; 			this.x := x1	;;; this class %x1% is now x
; 			this.y := y1	;; this class %y1% is now y
; 			;msgbox % this.x " and " this.y
; 		}	
    
; 	RVSearch(file, xl1, yl1, xl2, yl2, v) {;;; continuous real time image search
; 		ImageSearch, x1, y1, %xl1%, %yl1%, %xl2%, %yl2%, *%v% C:\Users\tony\Documents\AutoHotkey\images\%file%  ;; green line image / or orange box image
; 		while(ErrorLevel=1) {
; 			ImageSearch, x1, y1, %xl1%, %yl1%, %xl2%, %yl2%, *%v% C:\Users\tony\Documents\AutoHotkey\images\%file% ;; real time searching for green line
; 			Sleep, 100
; 		}
; 		;; after image found next line
; 		this.x := x1
; 		this.y := y1
; 	}


; 	RVSearchseq(file, xl1, yl1, xl2, yl2, v) {;;; continuous real time image search
; 		ImageSearch, x1, y1, %xl1%, %yl1%, %xl2%, %yl2%, *%v% C:\Users\tony\Documents\AutoHotkey\images\%file%  ;; green line image / or orange box image
; 		while(ErrorLevel=1) {
; 			IfWinExist, ahk_class #32770
; 			{
; 				WinActivate, ahk_class #32770
; 			SendInput, {Enter}
; 			}
; 			SendInput, !a
; 			ImageSearch, x1, y1, %xl1%, %yl1%, %xl2%, %yl2%, *%v% C:\Users\tony\Documents\AutoHotkey\images\%file% ;; real time searching for green line
; 			Sleep, 100
; 		}
; 		;; after image found next line
; 		this.x := x1
; 		this.y := y1
; 	}
; }
