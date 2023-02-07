#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

borderflat_auto() {
    CoordMode, Mouse
    MouseGetPos, xo, yo
    CoordMode, Mouse, window

    Tool.line_tool_2()
    WinActivate, ESPRIT
    MouseClick, Left, 530, 1300
    Sleep, 50

    Send 50{Enter}0{Enter}{Esc}

    border_icon.flatdoubleside()

    CoordMode, Mouse
    MouseMove, %xo%, %yo%
    CoordMode, Mouse, window
    return
}
