#Requires Autohotkey v2.0
#SingleInstance Force

#Include "commands.ahk"
#Include "updater.ahk"

; if(FileExist(A_ScriptDir "\resources\prefs.ini")){
;     remote_path := IniRead(A_ScriptDir "\resources\prefs.ini")
; } else {
;     IniWrite()
; }

open_dashboard(*){
    static dashboard_open := False
    f12_mode := IniRead("prefs.ini", "f12_mode", "value")
    w_as_delete := IniRead("prefs.ini", "w_as_delete", "value")
    if(!dashboard_open){
        dashboard_open := True
        root := Gui()
        root.Title := "Tru-AHK Dashboard"
        root.show("w200 h300")

        root.Add("GroupBox","r2 xm ym Section w175 h400","Update")
        root.Add("Text","xs+5 ys+15","An Update is available")
        root.Add("Button",,"Update Now")

        root.Add("Text",,"F12 Mode")
        f12_dropdown := root.Add("DropDownList","vf12_options",["Disabled","Active Instance", "All Instances"])
        f12_dropdown.Choose(f12_mode)
        f12_dropdown.OnEvent("Change", setF12Mode)

        w_checkbox := root.Add("CheckBox","h20","W as Delete Key")
        w_checkbox.value := w_as_delete
        w_checkbox.OnEvent("Click", setWMode)

        setF12Mode(*){
            ; MsgBox(f12_dropdown.Text)
            IniWrite(f12_dropdown.Text, "prefs.ini", "f12_mode", "value")
        }

        setWMode(*){
            IniWrite(w_checkbox.value, "prefs.ini", "w_as_delete", "value")
        }

        root.OnEvent("Close", OnClose)
        onClose(*){
            dashboard_open := False
        }

        Gui_Size(thisGui, MinMax, Width, Height){
            if MinMax = -1
                return
        }
    }
}