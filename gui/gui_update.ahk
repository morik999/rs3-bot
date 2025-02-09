UpdateGUI() {
    GuiControlGet, section,, Section

    ; Hide all sections first
    GuiControl, Hide, StartNecro
    GuiControl, Hide, TextWait1Min
    GuiControl, Hide, Wait1Min
    GuiControl, Hide, TextWait1Max
    GuiControl, Hide, Wait1Max
    GuiControl, Hide, StartPotionO
    GuiControl, Hide, TextWaitOMin
    GuiControl, Hide, WaitOMin
    GuiControl, Hide, TextWaitOMax
    GuiControl, Hide, WaitOMax

    GuiControl, Hide, StartPotionP
    GuiControl, Hide, TextWaitPMin
    GuiControl, Hide, WaitPMin
    GuiControl, Hide, TextWaitPMax
    GuiControl, Hide, WaitPMax
    GuiControl, Hide, StartPotionI
    GuiControl, Hide, TextWaitIMin
    GuiControl, Hide, WaitIMin
    GuiControl, Hide, TextWaitIMax
    GuiControl, Hide, WaitIMax
    GuiControl, Hide, StartAutoTarget
    GuiControl, Hide, TextSleepLongMin
    GuiControl, Hide, SleepLongMin
    GuiControl, Hide, TextSleepLongMax
    GuiControl, Hide, SleepLongMax

    GuiControl, Hide, StartArcheology
    GuiControl, Hide, StartArcheologyLoop

    ; Show only the selected section
    if (section = "Necromancy") {
        GuiControl, Show, StartNecro
        GuiControl, Show, TextWait1Min
        GuiControl, Show, Wait1Min
        GuiControl, Show, TextWait1Max
        GuiControl, Show, Wait1Max
        GuiControl, Show, StartPotionO
        GuiControl, Show, TextWaitOMin
        GuiControl, Show, WaitOMin
        GuiControl, Show, TextWaitOMax
        GuiControl, Show, WaitOMax
    } else if (section = "Fighting") {
        GuiControl, Show, StartPotionP
        GuiControl, Show, TextWaitPMin
        GuiControl, Show, WaitPMin
        GuiControl, Show, TextWaitPMax
        GuiControl, Show, WaitPMax
        GuiControl, Show, StartPotionI
        GuiControl, Show, TextWaitIMin
        GuiControl, Show, WaitIMin
        GuiControl, Show, TextWaitIMax
        GuiControl, Show, WaitIMax
        GuiControl, Show, StartAutoTarget
        GuiControl, Show, TextSleepLongMin
        GuiControl, Show, SleepLongMin
        GuiControl, Show, TextSleepLongMax
        GuiControl, Show, SleepLongMax
    } else if (section = "Archeology") {
        GuiControl, Show, StartArcheology
        GuiControl, Show, StartArcheologyLoop
    }
}
