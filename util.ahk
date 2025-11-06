#Requires AutoHotkey v2.0

randv(l := 25, r := 50) {
    return Random(l, r)
}


sleepRand(l := 25, r := 50) {
    Sleep randv(l, r)
}

shuffle(arr*) {
    n := arr.Length()
    Loop n {
        i := A_Index
        j := Random(1, n) ; pick random index
        ; swap arr[i] and arr[j]
        temp := arr[i]
        arr[i] := arr[j]
        arr[j] := temp
    }
    return arr
}

command(input) {
    BlockInput("On")
    Send "{Enter}"
    sleepRand()
    Send "{" input "}"
    Send "{Enter}"
    BlockInput("Off")
}

