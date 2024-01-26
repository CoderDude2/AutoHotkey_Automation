#SingleInstance Force
SetWorkingDir A_ScriptDir


extrude_tool(){
	PostMessage 0x111, 3130 , , , "ESPRIT"
}

circle_tool(){
	PostMessage 0x111, 3005 , , , "ESPRIT"
}

line_tool(){
	PostMessage 0x111, 3018 , , , "ESPRIT"
}

line_tool_2(){
	PostMessage 0x111, 3019 , , , "ESPRIT"
}

trim_tool(){
	PostMessage 0x111, 3033 , , , "ESPRIT"
}

three_point_tool(){
	PostMessage 0x111, 3004 , , , "ESPRIT"
}

wireframe_view(){
	PostMessage 0x111, 6130 , , , "ESPRIT"
}

solid_view(){
	PostMessage 0x111, 6135 , , , "ESPRIT"
}

generate_path(){
	PostMessage 0x111, 3054 , , , "ESPRIT"
}

swap_path(){
	PostMessage 0x111, 3145 , , , "ESPRIT"
}

draw_path(){
	PostMessage 0x111, 3057, , , "ESPRIT"
}

toggle_simulation(){
	PostMessage 0x111, 6268 , , , "ESPRIT"
}

stop_simulation(){
	PostMessage 0x111, 6276 , , , "ESPRIT"
}

save_file(){
	PostMessage 0x111, 57603 , , , "ESPRIT"
}

transformation_window(){
	PostMessage 0x111, 57634 , , , "ESPRIT"
}

unsuppress_operation(){
	PostMessage 0x111, 32792 , , "SysTreeView321", "ESPRIT"
}

suppress_operation(){
	PostMessage 0x111, 32770 , , "SysTreeView321", "ESPRIT"
}

rebuild_operation(){
	PostMessage 0x111, 32768 , , "SysTreeView321", "ESPRIT"
}

double_sided_border() {
	WinActivate("ESPRIT")
	PostMessage(0x111, 3130, , , "ESPRIT")

	WinWaitActive("ahk_class #32770")
	try{
		ControlChooseIndex(2,"ComboBox1","ahk_class #32770")
		ControlSetText(11, "Edit1", "ahk_class #32770")
		ControlSetText(1, "Edit4", "ahk_class #32770")
		ControlSetChecked(1,"Button8","ahk_class #32770")
		ControlSetChecked(0,"Button8","ahk_class #32770")
	} catch TargetError as err {
		MsgBox "Select a line first"
	}
}

cut_with_border() {
	WinActivate("ESPRIT")
	PostMessage(0x111, 3130, , , "ESPRIT")

	WinWaitActive("ahk_class #32770")
	try{
		ControlChooseIndex(2,"ComboBox1","ahk_class #32770")
		ControlSetText(11, "Edit1", "ahk_class #32770")
		ControlSetText(4, "Edit4", "ahk_class #32770")
		ControlChooseIndex(2,"ComboBox2","ahk_class #32770")
		ControlSetChecked(1,"Button8","ahk_class #32770")
		ControlSetChecked(1,"Button3","ahk_class #32770")
	} catch TargetError as err {
		MsgBox "Select a line first"
	}
}

center_border_3() {
	WinActivate("ESPRIT")
	PostMessage(0x111, 3130, , , "ESPRIT")

	WinWaitActive("ahk_class #32770")
	try{
		ControlSetText(6, "Edit1", "ahk_class #32770")
		Sleep(100)
		ControlSetChecked(1,"Button2","ahk_class #32770")
		Sleep(100)
		ControlSetChecked(0,"Button2","ahk_class #32770")
	} catch TargetError as err {
		MsgBox "Select a line first"
	}
}