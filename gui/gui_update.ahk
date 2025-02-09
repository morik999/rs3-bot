UpdateGUI() {
    GuiControlGet, Section
    if (Section = "Necromancy") {
        GuiControl, Show, StartNecro
        GuiControl, Show, Wait1Min
        GuiControl, Show, Wait1Max
        GuiControl, Show, StartPotionO
        GuiControl, Show, WaitOMin
        GuiControl, Show, WaitOMax
        GuiControl, Show, TextWait1Min
        GuiControl, Show, TextWait1Max
        GuiControl, Show, TextWaitOMin
        GuiControl, Show, TextWaitOMax

        GuiControl, Hide, StartPotionP
        GuiControl, Hide, WaitPMin
        GuiControl, Hide, WaitPMax
        GuiControl, Hide, StartPotionI
        GuiControl, Hide, WaitIMin
        GuiControl, Hide, WaitIMax
        GuiControl, Hide, StartAutoTarget
        GuiControl, Hide, SleepLongMin
        GuiControl, Hide, SleepLongMax
        GuiControl, Hide, StartArcheology
        GuiControl, Hide, TextWaitPMin
        GuiControl, Hide, TextWaitPMax
        GuiControl, Hide, TextWaitIMin
        GuiControl, Hide, TextWaitIMax
        GuiControl, Hide, TextSleepLongMin
        GuiControl, Hide, TextSleepLongMax

    } else if (Section = "Fighting") {
        GuiControl, Show, StartPotionP
        GuiControl, Show, WaitPMin
        GuiControl, Show, WaitPMax
        GuiControl, Show, StartPotionI
        GuiControl, Show, WaitIMin
        GuiControl, Show, WaitIMax
        GuiControl, Show, StartAutoTarget
        GuiControl, Show, SleepLongMin
        GuiControl, Show, SleepLongMax
        GuiControl, Show, TextWaitPMin
        GuiControl, Show, TextWaitPMax
        GuiControl, Show, TextWaitIMin
        GuiControl, Show, TextWaitIMax
        GuiControl, Show, TextSleepLongMin
        GuiControl, Show, TextSleepLongMax

        GuiControl, Hide, StartNecro
        GuiControl, Hide, Wait1Min
        GuiControl, Hide, Wait1Max
        GuiControl, Hide, StartPotionO
        GuiControl, Hide, WaitOMin
        GuiControl, Hide, WaitOMax
        GuiControl, Hide, StartArcheology
        GuiControl, Hide, TextWait1Min
        GuiControl, Hide, TextWait1Max
        GuiControl, Hide, TextWaitOMin
        GuiControl, Hide, TextWaitOMax

    } else if (Section = "Archeology") {
        GuiControl, Show, StartArcheology

        GuiControl, Hide, StartNecro
        GuiControl, Hide, Wait1Min
        GuiControl, Hide, Wait1Max
        GuiControl, Hide, StartPotionO
        GuiControl, Hide, WaitOMin
        GuiControl, Hide, WaitOMax
        GuiControl, Hide, StartPotionP
        GuiControl, Hide, WaitPMin
        GuiControl, Hide, WaitPMax
        GuiControl, Hide, StartPotionI
        GuiControl, Hide, WaitIMin
        GuiControl, Hide, WaitIMax
        GuiControl, Hide, StartAutoTarget
        GuiControl, Hide, SleepLongMin
        GuiControl, Hide, SleepLongMax
        GuiControl, Hide, TextWait1Min
        GuiControl, Hide, TextWait1Max
        GuiControl, Hide, TextWaitOMin
        GuiControl, Hide, TextWaitOMax
        GuiControl, Hide, TextWaitPMin
        GuiControl, Hide, TextWaitPMax
        GuiControl, Hide, TextWaitIMin
        GuiControl, Hide, TextWaitIMax
        GuiControl, Hide, TextSleepLongMin
        GuiControl, Hide, TextSleepLongMax
    }
}
