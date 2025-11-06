#Requires AutoHotkey v2.0
#Include util.ahk

MultiKeysRand(keys*) {
    shuffled := shuffle(keys*)
    for index, key in shuffled {
        Send "{" key "}"
        sleepRand()
    }
}