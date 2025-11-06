#Requires AutoHotkey v2.0
#Include util.ahk

; Variadic function (keys is now a pseudo-array)
StuckKeys(keys*) {
    if !WinActive("Path of Exile")
        return

    ; Send all keys Up first
    for index, key in keys {
        sleepRand()
        Send "{" key " Up}"
    }

    flag := false
    if GetKeyState("NumLock", "T") {
        flag := true
        Send "{NumLock}"
        sleepRand()
        return
    }

    ; Send all keys Down
    for index, key in keys {
        Send "{" key " Down}"
        sleepRand()
    }
    Send "{NumLock}"

    if flag {
        sleepRand()
        Send "{NumLock}"
    }
}