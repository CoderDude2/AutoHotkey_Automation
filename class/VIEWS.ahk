#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

update_angle(angle_index) {
	WinGetClass, deg_class, A
	Control, choose, %angle_index%, ComboBox1, ahk_class %deg_class%
}

get_current_angle(){
	WinGetClass, deg_class, A
	ControlGet, string_combobox, choice, , combobox1, ahk_class %deg_class%
	ControlGet, current_value, findstring, %string_combobox%, combobox1, ahk_class %deg_class%
	return current_value
}

increment_10_degrees(){
	new_angle := get_current_angle() + 1
	if new_angle > 42
		new_angle := 7
	update_angle(new_angle)
}

decrement_10_degrees(){
	new_angle := get_current_angle() - 1
	if new_angle < 7
		new_angle := 42
	update_angle(new_angle)
}