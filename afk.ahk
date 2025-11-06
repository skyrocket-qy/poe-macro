#Requires AutoHotkey v2.0
#Include util.ahk


Afk() {
    BlockInput("On")
    Send "{Enter}"
    sleepRand(2000, 3000)
    Send "/afk"
    Send "{Enter}"
    BlockInput("Off")
}