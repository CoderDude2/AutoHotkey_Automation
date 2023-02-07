#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, FORCE

border_scriptV3() {
    ;; INITIAL SETUP******************
    ;; CLOSE CHECK ROUGH SCRIPT

    ;;; GETTING COORDINATES TO WINMOVE CORRECT INSTANCE FOR MACRO 5
    CoordMode, Mouse			; defaults to entire screen mode
    MouseGetPos, xm5, ym5	;; m5 stands for macro 5..
    CoordMode, Mouse, window	;; sets back to relative window

    WinClose, Check Rough ML & Create Border Solid
    WinActivate, ESPRIT
    IS.vsearch("blue_background.png", 440, 200, 1630, 1000, 10)
    MouseClick, Left, IS.x, IS.y


    IS.vsearch("MACRO5.png", 0, 0, 330, 330, 10)
    MouseClick, Left, Is.x + 10, Is.y + 10
    WinWaitActive, [5]DEG 경계소재 & 마진

    ;; 823, 2556, 4277, -- borders of the 3 windows
    if (xm5 < 1705 ) {
        WinMove, [5]DEG 경계소재 & 마진,, 485, 189
    }
    if (xm5 > 1705 && xm5 < 3410 ) {
        WinMove, [5]DEG 경계소재 & 마진,, 2170, 177
    }
    if (xm5 > 3410) {
        WinMove, [5]DEG 경계소재 & 마진,, 3870, 177
    }

    WinWaitActive, [5]DEG 경계소재 & 마진
    MouseClick, Left, 66, 135
    ;SLEEP, 50
    MouseClick, Left, 186, 283
    Sleep, 30
    SendInput, ^a
    Sleep, 30
    SendInput, -7
    Sleep, 30	;; THIS PAUSE IMPORTANT, PREVIOUS INPUT OF '-7' WON'T GET INPUT BECAUSE NEXT LINE DEG.DEG90() EXECUTES TOO FAST
    Deg.deg90()
    WinActivate, ESPRIT

    CoordMode, Mouse
    MouseMove, %xm5%, %ym5%
    ;set back to window coord mode
    CoordMode, Mouse, window
    Send, {WheelDown 3}

    Tool.line_tool()()

    Pause
    ;;;;;;;;=========================================================================

    CoordMode, Mouse
    MouseGetPos, xo, yo
    CoordMode, Mouse, window

    WinActivate, [5]DEG 경계소재 & 마진
    MouseClick, Left, 183, 135
    ;SLEEP, 50
    MouseClick, Left, 186, 283
    Sleep, 30
    SendInput, ^a
    Sleep, 30
    SendInput, -7
    Sleep, 30
    Deg.deg180()
    WinActivate, ESPRIT
    CoordMode, Mouse
    MouseMove, %xo%, %yo%
    CoordMode, Mouse, window
    Send, {WheelDown 3}
    Tool.line_tool()
    Pause
    ;;;;;;;;=========================================================================

    CoordMode, Mouse
    MouseGetPos, xo, yo
    CoordMode, Mouse, window

    WinActivate, [5]DEG 경계소재 & 마진
    MouseClick, Left, 66, 181
    ;SLEEP, 50
    MouseClick, Left, 186, 283
    Sleep, 30
    SendInput, ^a
    Sleep, 30
    SendInput, -7
    Sleep, 30
    Deg.deg270()
    WinActivate, ESPRIT
    CoordMode, Mouse
    MouseMove, %xo%, %yo%
    CoordMode, Mouse, window
    Send, {WheelDown 3}
    Tool.line_tool()
    pause
    ;;;;;;;;=========================================================================

    CoordMode, Mouse
    MouseGetPos, xo, yo
    CoordMode, Mouse, window

    WinActivate, [5]DEG 경계소재 & 마진
    MouseClick, Left, 184, 181
    ;SLEEP, 50
    MouseClick, Left, 186, 283
    Sleep, 30
    SendInput, ^a
    Sleep, 30
    SendInput, -7
    Sleep, 30
    Deg.deg0()
    WinActivate, ESPRIT
    CoordMode, Mouse
    MouseMove, %xo%, %yo%
    CoordMode, Mouse, window
    Send, {WheelDown 3}
    Tool.line_tool()
    Pause
    ;;;;;;;;=========================================================================

    ;; CLOSE MACRO 5
    WinActivate, [5]DEG 경계소재 & 마진
    MouseClick, Left, 231, 15

    CoordMode, Mouse
    MouseMove, %xo%, %yo%
    CoordMode, Mouse, window
}