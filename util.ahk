#Requires AutoHotkey v2.0

randv(l := 25, r := 50) {
    return Random(l, r)
}


sleepRand(l := 25, r := 50) {
    Sleep randv(l, r)
}