#Requires AutoHotkey v2.0
#Include util.ahk
#Include multi_keys.ahk

isLooping := false

LoopKeys(keys*) {
    global isLooping
    isLooping := !isLooping  ; toggle state

    if isLooping {
        while isLooping {
            MultiKeys(keys*)
        }
    } else {
        sleepRand(100, 200)
    }
}