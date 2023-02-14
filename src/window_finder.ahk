#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

class window_finder{
    static limitation_window_title := "[5]DEG 경계소재 & 마진"
    static roughing_window_title := "Check Rough ML & Create Border Solid"

    get_window_limitation_position(){
        WinGetPos, posX, posY, win_width, win_height, [5]DEG 경계소재 & 마진
        MsgBox, (%posX%, %posY%)
    }
}

#IfWinExist [5]DEG 경계소재 & 마진
WinActivate, [5]DEG 경계소재 & 마진
Sleep 1000
MouseMove, 67, 135, 0