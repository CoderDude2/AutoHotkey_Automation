#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force


Class deg  ;;; shortcutkeys to deg views
{
		deg0()
		{
			WinActivate, ESPRIT
			wingetclass, deg_class, A
			control, choose, 7, ComboBox1, ahk_class %deg_class%
		}

		deg90()
		{
			WinActivate, ESPRIT
			wingetclass, deg_class, A
			control, choose, 16, ComboBox1, ahk_class %deg_class%
		}

		deg120()
		{

			WinActivate, ESPRIT
			wingetclass, deg_class, A
			control, choose, 19, ComboBox1, ahk_class %deg_class%
		}

		deg180()
		{
			WinActivate, ESPRIT
			wingetclass, deg_class, A
			control, choose, 25, ComboBox1, ahk_class %deg_class%
		}

		deg210()
		{
			WinActivate, ESPRIT
			wingetclass, deg_class, A
			control, choose, 28, ComboBox1, ahk_class %deg_class%
		}

		deg240()
		{
			WinActivate, ESPRIT
			wingetclass, deg_class, A
			control, choose, 31, ComboBox1, ahk_class %deg_class%
		}

		deg270()
		{
			WinActivate, ESPRIT
			wingetclass, deg_class, A
			control, choose, 34, ComboBox1, ahk_class %deg_class%
		}

		deg330()
		{
			WinActivate, ESPRIT
			wingetclass, deg_class, A
			control, choose, 40, ComboBox1, ahk_class %deg_class%
		}

		FACE()
		{
			WinActivate, ESPRIT
			wingetclass, deg_class, A
			control, choose, 5, ComboBox1, ahk_class %deg_class%
		}
		REAR()
		{
			WinActivate, ESPRIT
			wingetclass, deg_class, A
			control, choose, 6, ComboBox1, ahk_class %deg_class%
		}


}


class edong
{



		down()
			{
			PostMessage, 0x111, 57634,,, ESPRIT
			WinWaitActive, ahk_class #32770
			SLEEP, 100
			control, choose, 9, ComboBox1, ahk_class #32770
			controlsettext, Edit6, 4, ahk_class #32770
			SLEEP, 100
			SENDINPUT, {ENTER}
			}

		up()

			{
			PostMessage, 0x111, 57634,,, ESPRIT
			WinWaitActive, ahk_class #32770
			SLEEP, 100
			control, choose, 9, ComboBox1, ahk_class #32770
			controlsettext, Edit6, -4, ahk_class #32770
			SLEEP, 100
			SENDINPUT, {ENTER}
			}

		right()
			{
			sendinput, {ctrl down}c{ctrl up}
			winwaitactive, ahk_class #32770
			control, choose, 5, ComboBox1, ahk_class #32770
			control, check,, Button7, ahk_class #32770
			controlsettext, Edit2, 0.5, ahk_class #32770
			controlsettext, Edit3, 0, ahk_class #32770
			controlsettext, Edit4, 0, ahk_class #32770
			sendinput, {enter}
			}


		side(val)
		{
			WINACTIVATE, ESPRIT
			PostMessage, 0x111, 57634,,, ESPRIT
			WinWaitActive, ahk_class #32770
			;;; CHANGING EDONG FROM SELECT NUMBER ON LIST TO CHOOSING BASED ON STIRNG NAME, MORE ROBUST
			;control, choose, 5, ComboBox1, ahk_class #32770
			control, chooseSTRING, 이동, ComboBox1, ahk_class #32770
			control, check,, Button7, ahk_class #32770
			controlsettext, Edit2, %val%, ahk_class #32770
			controlsettext, Edit3, 0, ahk_class #32770
			controlsettext, Edit4, 0, ahk_class #32770
			control, check,, Button2, ahk_class #32770 ;; added this to fix DUPLICATE BORDERS BUG
			sendinput, {enter}
		}


			rotate(val)
			{
				WINACTIVATE, ESPRIT
			PostMessage, 0x111, 57634,,, ESPRIT
			WinWaitActive, ahk_class #32770
			SLEEP, 100
			control, choose, 9, ComboBox1, ahk_class #32770
			controlsettext, Edit6, %val%, ahk_class #32770
			SLEEP, 100
			SENDINPUT, {ENTER}
			}

			REALDOWN(val)
		{
			WINACTIVATE, ESPRIT
			PostMessage, 0x111, 57634,,, ESPRIT
			WinWaitActive, ahk_class #32770
			control, choose, 5, ComboBox1, ahk_class #32770
			control, check,, Button7, ahk_class #32770
			controlsettext, Edit2, 0, ahk_class #32770
			controlsettext, Edit3, %VAL%, ahk_class #32770
			controlsettext, Edit4, 0, ahk_class #32770
			sendinput, {enter}
		}



		}




class border_icon
{
		flatdoubleside()
		{
		BlockInput, On
		MOUSECLICK, LEFT
		sendinput, {Esc}
		winactivate, ESPRIT
		sendinput, +{Click 2}
		BlockInput, Off
		SLEEP, 50


		PostMessage, 0x111, 3130,,, ESPRIT
		winwaitactive, 보스 돌출/잘라내기
		control, choose, 2, ComboBox1, ahk_class #32770
		controlsettext, Edit1, 11, ahk_class #32770
		controlsettext, Edit4, 1, ahk_class #32770
		;SLEEP, 100
		control, check,, Button8, ahk_class #32770
		;SLEEP, 100
		sendinput, {enter}
		}


		center_border_3()

		{

		winactivate, ESPRIT
		PostMessage, 0x111, 3130,,, ESPRIT
		;SLEEP, 100

		;;winwaitactive, 보스 돌출/잘라내기
		WinWaitActive, ahk_class #32770
		controlsettext, Edit1, 3, ahk_class #32770
		sleep, 50
		;control, CHECK,, Button2, ahk_class #32770
		mouseclick, left, 225, 65
		sleep, 100
		mouseclick, left, 225, 65
		/*
		WinActivate, ahk_class #32770
		control, UNCHECK,, Button2, ahk_class #32770
		SLEEP, 30
		control, CHECK,, Button2, ahk_class #32770
		SLEEP, 30
		control, UNCHECK,, Button2, ahk_class #32770

		*/


		}

		slant_circle()
		{
		winactivate, ESPRIT
		sendinput, +{Click 2}
		SLEEP, 100
		PostMessage, 0x111, 3130,,, ESPRIT
		winwaitactive, ahk_class #32770
		control, choose, 2, ComboBox1, ahk_class #32770
		controlsettext, Edit1, 11, ahk_class #32770
		controlsettext, Edit4, 4, ahk_class #32770
		control, choose, 2, ComboBox2, ahk_class #32770
		SLEEP, 100
		control, check,, Button8, ahk_class #32770
		control, check,, Button3, ahk_class #32770
		SLEEP, 100
		sendinput, {enter}
		}


}



class list_search
{
		layer(search_term, box, title) ;;; 			list_search.layer("euro", "combobox5", "Font")
		{
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
			control, ChooseString, %match%, %box%, %title%
			return
			}
			;;; ===================================================================
		string(search_term, box, title) ;;; 			list_search.string("euro", "combobox5", "Font")
		;; returns a string of the match

		/* example
		list_search.string("ish", "combobox5", "Font")
		x := list_search.returnstring
		control, choosestring, %x%, combobox5, Font
		*/

		{

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
			;control, ChooseString, %match%, %box%, %title%
			;return
			this.returnstring := match
			return
			}
}



class icon
{

	tool(file)
		{
		;;GET ORIGINAL MOUSE POS
		coordmode, mouse
		mousegetpos, xo, yo
		coordmode, mouse, window

		; click on margin line icon
		winactivate, ESPRIT
		ImageSearch, x, y, 0, 0, 1900, 200, *50 C:\Users\tony\Documents\AutoHotkey\images\%file%
		mouseclick, left, x+5, y+3

		;back to original pos for mouse, screen mode
		coordmode, mouse
		mousemove, %xo%, %yo%
		coordmode, mouse, window
		}


}


CLASS TOOL{
	line_tool(){
		PostMessage, 0x111, 3019 , , , ESPRIT
	}


	MARGIN_TOOL(){
		PostMessage, 0x111, 3057 , , , ESPRIT
	}

	3_DOT(){
		PostMessage, 0x111, 3004 , , , ESPRIT
	}
	CIRCLE(){
		PostMessage, 0x111, 3005 , , , ESPRIT
	}
	SNIP(){
		PostMessage, 0x111, 3033 , , , ESPRIT
	}

	SIMULATION(){
		PostMessage, 0x111, 6268 , , , ESPRIT
	}

	LINE_TOOL_2(){
		PostMessage, 0x111, 3018 , , , ESPRIT
	}
	STOP_SIM(){
		PostMessage, 0x111, 6276 , , , ESPRIT
	}

}



class IS  ;; image search class will return 2 values 'x' and 'y'
{
	vSearch(file, xl1, yl1, xl2, yl2, v)	;;; function returns 2 values x and y =====  file is the var for image file name
		{
			ImageSearch, x1, y1, %xl1%, %yl1%, %xl2%, %yl2%, *%v% C:\Users\tony\Documents\AutoHotkey\images\%file% ;; image search returns 2 values x1 and y1
			this.x := x1	;;; this class %x1% is now x
			this.y := y1	;; this class %y1% is now y
			;msgbox % this.x " and " this.y
		}



	RVSearch(file, xl1, yl1, xl2, yl2, v) ;;; continuous real time image search
	{
		ImageSearch, x1, y1, %xl1%, %yl1%, %xl2%, %yl2%, *%v% C:\Users\tony\Documents\AutoHotkey\images\%file%  ;; green line image / or orange box image
		while(ErrorLevel=1)
		{
			ImageSearch, x1, y1, %xl1%, %yl1%, %xl2%, %yl2%, *%v% C:\Users\tony\Documents\AutoHotkey\images\%file% ;; real time searching for green line
			sleep, 100
		}
		;; after image found next line
		this.x := x1
		this.y := y1
	}


		RVSearchseq(file, xl1, yl1, xl2, yl2, v) ;;; continuous real time image search
	{
		ImageSearch, x1, y1, %xl1%, %yl1%, %xl2%, %yl2%, *%v% C:\Users\tony\Documents\AutoHotkey\images\%file%  ;; green line image / or orange box image
		while(ErrorLevel=1)
		{

								IfWinExist, ahk_class #32770
								{
									WinActivate, ahk_class #32770
								sendinput, {enter}
								}
								sendinput, !a
			ImageSearch, x1, y1, %xl1%, %yl1%, %xl2%, %yl2%, *%v% C:\Users\tony\Documents\AutoHotkey\images\%file% ;; real time searching for green line
			sleep, 100
		}
		;; after image found next line
		this.x := x1
		this.y := y1
	}


}
