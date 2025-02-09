AutotargetAction() {
    if !S9Loop
        return
    Send, {S down}
    Random, SleepTime, 40, 80
    Sleep, SleepTime
    Send, {S up}

    Random, WaitS, %SleepLongMin% * 1000, %SleepLongMax% * 1000
    Sleep, WaitS

    Send, 9
    Random, Wait9, 14500, 15500
    Sleep, Wait9
}