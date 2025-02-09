StartGUI() {
    Gui, Destroy
    Gui, +AlwaysOnTop +Resize
    Gui, Color, 222222  ; Dark background
    Gui, Font, s12, Segoe UI

    ; Set window position (X=100, Y=100)
    Gui, Show, x100 y100 w250 h1000, RS3 Helper

    ; Dropdown
    Gui, Add, DropDownList, vMode gUpdateGUI x20 y20 w200, Necromancy|Fighting|Archeology

    ; === Necromancy Section ===
    Gui, Add, Text, x20 y60 w200 cWhite, Necromancy Ritual:
    Gui, Add, Button, vStartNecro gToggleNecro x20 y90 w200, Start Necromancy
    Gui, Add, Text, x20 y130 w200 cWhite, Wait1 Min:
    Gui, Add, Edit, vWait1Min x20 y160 w200 Background444444 cWhite
    Gui, Add, Text, x20 y190 w200 cWhite, Wait1 Max:
    Gui, Add, Edit, vWait1Max x20 y220 w200 Background444444 cWhite
    Gui, Add, Button, vStartPotionO gTogglePotionO x20 y260 w200, Start Potion O
    Gui, Add, Text, x20 y290 w200 cWhite, WaitO Min:
    Gui, Add, Edit, vWaitOMin x20 y320 w200 Background444444 cWhite
    Gui, Add, Text, x20 y350 w200 cWhite, WaitO Max:
    Gui, Add, Edit, vWaitOMax x20 y380 w200 Background444444 cWhite

    ; === Fighting Section ===
    Gui, Add, Button, vStartPotionP gTogglePotionP x20 y420 w200, Start Potion P
    Gui, Add, Text, x20 y450 w200 cWhite, WaitP Min:
    Gui, Add, Edit, vWaitPMin x20 y480 w200 Background444444 cWhite
    Gui, Add, Text, x20 y510 w200 cWhite, WaitP Max:
    Gui, Add, Edit, vWaitPMax x20 y540 w200 Background444444 cWhite
    Gui, Add, Button, vStartPotionI gTogglePotionI x20 y580 w200, Start Potion I
    Gui, Add, Text, x20 y610 w200 cWhite, WaitI Min:
    Gui, Add, Edit, vWaitIMin x20 y640 w200 Background444444 cWhite
    Gui, Add, Text, x20 y670 w200 cWhite, WaitI Max:
    Gui, Add, Edit, vWaitIMax x20 y700 w200 Background444444 cWhite
    Gui, Add, Button, vStartAutoTarget gToggleAutoTarget x20 y740 w200, Start Auto Target
    Gui, Add, Text, x20 y770 w200 cWhite, SleepLong Min:
    Gui, Add, Edit, vSleepLongMin x20 y800 w200 Background444444 cWhite
    Gui, Add, Text, x20 y830 w200 cWhite, SleepLong Max:
    Gui, Add, Edit, vSleepLongMax x20 y860 w200 Background444444 cWhite

    ; === Archeology Section Placeholder ===
    Gui, Add, Text, x20 y900 w200 cWhite, Archeology Placeholder:

    ; Exit Button
    Gui, Add, Button, gExitScript x20 y940 w200, Exit
}

ToggleNecro() {
    PerformNecromancy()
}

UpdateGUI:
    Gui, Submit, NoHide

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

    if (Mode == "Necromancy") {
        GuiControl, Show, StartNecro
        GuiControl, Show, Wait1Min
        GuiControl, Show, Wait1Max
        GuiControl, Show, StartPotionO
        GuiControl, Show, WaitOMin
        GuiControl, Show, WaitOMax
    } else if (Mode == "Fighting") {
        GuiControl, Show, StartPotionP
        GuiControl, Show, WaitPMin
        GuiControl, Show, WaitPMax
        GuiControl, Show, StartPotionI
        GuiControl, Show, WaitIMin
        GuiControl, Show, WaitIMax
        GuiControl, Show, StartAutoTarget
        GuiControl, Show, SleepLongMin
        GuiControl, Show, SleepLongMax
    } else if (Mode == "Archeology") {
        ; Future UI updates for Archeology will go here
    }
return

ExitScript:
    ExitApp
return
