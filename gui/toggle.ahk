ToggleNecromancy() {
    Gui, Submit, NoHide
    NecromancyLoop := !NecromancyLoop
    if (NecromancyLoop) {
        SetTimer, PerformNecromancy, 0
        GuiControl,, StartNecro, Stop Necromancy Ritual
    } else {
        SetTimer, PerformNecromancy, Off
        GuiControl,, StartNecro, Start Necromancy Ritual
    }
}

TogglePotionP() {
    Gui, Submit, NoHide
    PotionPLoop := !PotionPLoop
    if (PotionPLoop) {
        SetTimer, DrinkPotionP, 0
        GuiControl,, StartPotionP, Stop Potion P
    } else {
        SetTimer, DrinkPotionP, Off
        GuiControl,, StartPotionP, Start Potion P
    }
}

TogglePotionO() {
    Gui, Submit, NoHide
    PotionOLoop := !PotionOLoop
    if (PotionOLoop) {
        SetTimer, DrinkPotionO, 0
        GuiControl,, StartPotionO, Stop Potion O
    } else {
        SetTimer, DrinkPotionO, Off
        GuiControl,, StartPotionO, Start Potion O
    }
}

TogglePotionI() {
    Gui, Submit, NoHide
    PotionILoop := !PotionILoop
    if (PotionILoop) {
        SetTimer, DrinkPotionI, 0
        GuiControl,, StartPotionI, Stop Potion I
    } else {
        SetTimer, DrinkPotionI, Off
        GuiControl,, StartPotionI, Start Potion I
    }
}

ToggleS9() {
    Gui, Submit, NoHide
    S9Loop := !S9Loop
    if (S9Loop) {
        SetTimer, AutotargetAction, 0
        GuiControl,, StartAutoTarget, Stop Auto-Target
    } else {
        SetTimer, AutotargetAction, Off
        GuiControl,, StartAutoTarget, Start Auto-Target
    }
}

ToggleArcheology() {
    MsgBox, Archeology button clicked!
}