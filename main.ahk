#Requires AutoHotkey v2.0
#Include stuck_keys.ahk
#Include multi_keys_rand.ahk
#Include oos.ahk
#Include logout.ahk
#Include hideout.ahk
#Include afk.ahk
#Include auto_flask.ahk
#Include loop_keys.ahk

if !WinActive("Path of Exile"){
    return
}

F1::Hideout()
F2::Logout()
F8::Oos()
F12::Afk()

F2::StuckKeys("NumpadHome")
; drink all flasks
1::MultiKeysRand("1", "2", "3", "4", "5") 

^+F::SetAutoflask()      ; Ctrl + Shift + F
^F::ToggleAutoFlask()    ; Ctrl + F

^G::ToggleLoopKeys()    ; Ctrl + G