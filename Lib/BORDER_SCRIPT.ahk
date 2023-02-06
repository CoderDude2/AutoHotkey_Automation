#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, FORCE

BORDER_SCRIPT() {
    ;; INITIAL SETUP******************
    ;; CLOSE CHECK ROUGH SCRIPT
    WinClose, Check Rough ML & Create Border Solid
    WinActivate, ESPRIT
    is.vsearch("blue_background.png", 440, 200, 1630, 1000, 10)
    MouseClick, Left, is.x, is.y

    ;;GET ORIGINAL MOUSE POS  마진
    CoordMode, Mouse
    MouseGetPos, xo, yo
    CoordMode, Mouse, window
    LAYER_REDBOX()
    ;SLEEP, 300
    WinActivate, ESPRIT
    list_search.layer("0DEG 경계", "combobox2", "ESPRIT")
    Deg.deg90()
    Icon.tool("ICON_LINE.PNG")
    ;back to original pos for mouse, screen mode
    CoordMode, Mouse
    MouseMove, %xo%, %yo%
    Send, {WheelDown 3}
    ;set back to window coord mode
    CoordMode, <ouse, window
    Pause

    ;;GET ORIGINAL MOUSE POS  마진
    CoordMode, Mouse
    MouseGetPos, xo, yo
    CoordMode, Mouse, window
    LAYER_REDBOX()
    ;SLEEP, 300
    WinActivate, ESPRIT
    list_search.layer("90DEG 경계", "combobox2", "ESPRIT")
    Deg.deg180()
    Icon.tool("ICON_LINE.PNG")
    ;back to original pos for mouse, screen mode
    CoordMode, Mouse
    MouseMove, %xo%, %yo%
    Send, {WheelDown 3}
    ;set back to window coord mode
    CoordMode, Mouse, window
    Pause

    ;;GET ORIGINAL MOUSE POS  마진
    CoordMode, Mouse
    MouseGetPos, xo, yo
    CoordMode, Mouse, window
    LAYER_REDBOX()
    ;SLEEP, 300
    WinActivate, ESPRIT
    list_search.layer("180DEG 경계", "combobox2", "ESPRIT")
    Deg.deg270()
    Icon.tool("ICON_LINE.PNG")
    ;back to original pos for mouse, screen mode
    CoordMode, Mouse
    MouseMove, %xo%, %yo%
    Send, {WheelDown 3}
    ;set back to window coord mode
    CoordMode, Mouse, window
    Pause

    ;;GET ORIGINAL MOUSE POS  마진
    CoordMode, Mouse
    MouseGetPos, xo, yo
    CoordMode, Mouse, window
    LAYER_REDBOX()
    ;SLEEP, 300
    WinActivate, ESPRIT
    list_search.layer("270DEG 경계", "combobox2", "ESPRIT")
    Deg.deg0()
    Icon.tool("ICON_LINE.PNG")
    ;back to original pos for mouse, screen mode
    CoordMode, Mouse
    MouseMove, %xo%, %yo%
    Send, {WheelDown 3}
    ;set back to window coord mode
    CoordMode, Mouse, window
}