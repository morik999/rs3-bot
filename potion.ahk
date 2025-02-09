DrinkPotionP() {
    if !PotionPLoop
        return
    Send, {P down}
    Random, SleepTime, 40, 80
    Sleep, SleepTime
    Send, {P up}
    Random, WaitP, %WaitPMin% * 1000, %WaitPMax% * 1000
    Sleep, WaitP
}

DrinkPotionO() {
    if !PotionOLoop
        return
    Send, {O down}
    Random, SleepTime, 40, 80
    Sleep, SleepTime
    Send, {O up}
    Random, WaitO, %WaitOMin% * 1000, %WaitOMax% * 1000
    Sleep, WaitO
}

DrinkPotionI() {
    if !PotionILoop
        return
    Send, {I down}
    Random, SleepTime, 40, 80
    Sleep, SleepTime
    Send, {I up}
    Random, WaitI, %WaitIMin% * 1000, %WaitIMax% * 1000
    Sleep, WaitI
}