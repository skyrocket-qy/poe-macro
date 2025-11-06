#Requires AutoHotkey v2.0
#Include util.ahk
#Include multi_keys.ahk

isLooping := false

LoopKeys(keys*) {
    while isLooping {
        MultiKeys(keys*)
    }
}

ToggleLoopKeys(){
    global isLooping
    isLooping := !isLooping  ; toggle state
    if (isLooping) {
        SetTimer(LoopKeys, -1)
    }
    
    return
}
