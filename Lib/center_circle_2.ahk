#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


center_circle_2() {
    ;; FOR THE MANUALLY DRAWN CENTER CIRCLES
    SendInput, {Esc}
    Deg.deg0()
    IS.rvsearch("blue_background.png", 440, 200, 1400, 1250, 20)
    MouseClick, Left, IS.x + 15, IS.y + 5, 2
    Sleep, 300
    IS.rvsearch("center_circle_highlight.png", 386, 317, 1150, 1190, 20)
    MouseMove, IS.x + 4, IS.y + 2
    Send, +{Click}
    Sleep, 100
    Edong.side(-0.5)
    Sleep, 200
    border_icon.center_border_3()
}