#Requires AutoHotkey v2.0
#Include multi_keys.ahk
#Include util.ahk

Global auto_flask_active := false
Global low_life_X := 0
Global low_life_Y := 0
Global life_color := ""
Global low_life_flask_list := ["1", "2", "3", "4", "5"] 

ToggleAutoFlask() {
    Global auto_flask_active := !auto_flask_active
    
    if (auto_flask_active) {
        SetTimer(AutoFlask, -1)
    }

    return
}

AutoFlask() {
    While (auto_flask_active)
    {
        if WinActive("Path of Exile")
        {
            color := PixelGetColor(low_life_X, low_life_Y)
            
            if (color != life_color)
            {
                MultiKeys(low_life_flask_list)
                sleepRand()
            }
        }
        sleepRand()
    }
    return
}

SetAutoflask() {
    MouseGetPos(&low_life_X, &low_life_Y)
    Global life_color := PixelGetColor(low_life_X, low_life_Y)
    return
}