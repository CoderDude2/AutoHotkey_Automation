#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


activate(){
	global current_value
	wingetclass, deg_class, A
	control, choose, %current_value%, ComboBox1, ahk_class %deg_class%
}

increment_10_degrees:
	wingetclass, deg_class, A
	controlget, string_combobox, choice, ,combobox1, ahk_class %deg_class%
	controlget, current_value, findstring, %string_combobox%, combobox1, ahk_class %deg_class%

	current_value := current_value - 1
	if current_value = 6
		current_value := 42
	activate()


	return

decrement_10_degrees:
	wingetclass, deg_class, A
	controlget, string_combobox, choice, ,combobox1, ahk_class %deg_class%
	controlget, current_value, findstring, %string_combobox%, combobox1, ahk_class %deg_class%
current_value := current_value + 1
	if current_value = 43
		current_value := 7

	activate()
	return

