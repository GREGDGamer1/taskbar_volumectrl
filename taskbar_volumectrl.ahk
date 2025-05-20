#SingleInstance force

hMouseIsOver(WinTitle) {
    MouseGetPos,,, Win
    return WinExist(WinTitle . " ahk_id " . Win)
}

#If hMouseIsOver("ahk_class Shell_TrayWnd")

WheelUp::
    Send {Volume_Up}
return

WheelDown::
    Send {Volume_Down}
return

MButton::
    Send {Volume_Mute}
return

Alt::
    Send {Volume_Mute}
return

XButton1::  ; M4 button
    Send {Media_prev}
return

XButton2::  ; M5 button
    Send {Media_Next}
return
