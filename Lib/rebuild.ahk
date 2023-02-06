#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force

rebuild() {
    Click, Right
    IS.RVSEARCH("REBUILD_ICON_1.PNG", 0, 500, 800, 1300, 25)
    MouseMove, IS.X, IS.Y + 5


    IS.RVSEARCH("REBUILD_ICON_2.PNG", 0, 500, 800, 1300, 25)
    MouseClick, LEFT, IS.X, IS.Y + 5
}
