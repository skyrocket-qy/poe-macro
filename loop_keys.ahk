#Requires AutoHotkey v2.0
#Include util.ahk

LoopKeys(keys*){
    for index, key in keys {
        Send "{" key "}"
        sleepRand(150, 300)
    }
}