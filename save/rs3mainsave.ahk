#Include, autotarget.ahk
#Include, potion.ahk
#Include, necromancy.ahk

Global S9Loop := False
Global PotionPLoop := False
Global PotionOLoop := False
Global PotionILoop := False
Global NecromancyLoop := False

Global SleepLongMin := 1.5
Global SleepLongMax := 2.5
Global WaitPMin := 5.75
Global WaitPMax := 5.92
Global WaitOMin := 5.75
Global WaitOMax := 5.92
Global WaitIMin := 5.75
Global WaitIMax := 5.92
Global Wait1Min := 79
Global Wait1Max := 81

Gui, +AlwaysOnTop +Resize
Gui, Color, 1E1E1E
Gui, Font, s10 cWhite, Segoe UI

Gui, Add, DropDownList, vSection gUpdateGUI x20 y20 w200, Necromancy|Fighting

; **Necromancy Section**
Gui, Add, Button, vStartNecro gToggleNecromancy x20 y60 w200 h40, Start Necromancy Ritual
Gui, Add, Edit, vWait1Min x20 y110 w95 h30, %Wait1Min%
Gui, Add, Edit, vWait1Max x125 y110 w95 h30, %Wait1Max%
Gui, Add, Button, vStartPotionO gTogglePotionO x20 y150 w200 h40, Start Potion O
Gui, Add, Edit, vWaitOMin x20 y200 w95 h30, %WaitOMin%
Gui, Add, Edit, vWaitOMax x125 y200 w95 h30, %WaitOMax%

; **Fighting Section**
Gui, Add, Button, vStartPotionP gTogglePotionP x20 y60 w200 h40, Start Potion P
Gui, Add, Edit, vWaitPMin x20 y110 w95 h30, %WaitPMin%
Gui, Add, Edit, vWaitPMax x125 y110 w95 h30, %WaitPMax%
Gui, Add, Button, vStartPotionI gTogglePotionI x20 y150 w200 h40, Start Potion I
Gui, Add, Edit, vWaitIMin x20 y200 w95 h30, %WaitIMin%
Gui, Add, Edit, vWaitIMax x125 y200 w95 h30, %WaitIMax%
Gui, Add, Button, vStartAutoTarget gToggleS9 x20 y250 w200 h40, Start Auto-Target
Gui, Add, Edit, vSleepLongMin x20 y300 w95 h30, %SleepLongMin%
Gui, Add, Edit, vSleepLongMax x125 y300 w95 h30, %SleepLongMax%

; **Exit Button**
Gui, Add, Button, gExitScript x20 y350 w200 h40, Exit

Gui, Show, w250 h400, RuneScape Bot
UpdateGUI()
Return

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

UpdateGUI() {
    GuiControlGet, Section
    if (Section = "Necromancy") {
        GuiControl, Show, StartNecro
        GuiControl, Show, Wait1Min
        GuiControl, Show, Wait1Max
        GuiControl, Show, StartPotionO
        GuiControl, Show, WaitOMin
        GuiControl, Show, WaitOMax

        GuiControl, Hide, StartPotionP
        GuiControl, Hide, WaitPMin
        GuiControl, Hide, WaitPMax
        GuiControl, Hide, StartPotionI
        GuiControl, Hide, WaitIMin
        GuiControl, Hide, WaitIMax
        GuiControl, Hide, StartAutoTarget
        GuiControl, Hide, SleepLongMin
        GuiControl, Hide, SleepLongMax
    } else {
        GuiControl, Show, StartPotionP
        GuiControl, Show, WaitPMin
        GuiControl, Show, WaitPMax
        GuiControl, Show, StartPotionI
        GuiControl, Show, WaitIMin
        GuiControl, Show, WaitIMax
        GuiControl, Show, StartAutoTarget
        GuiControl, Show, SleepLongMin
        GuiControl, Show, SleepLongMax

        GuiControl, Hide, StartNecro
        GuiControl, Hide, Wait1Min
        GuiControl, Hide, Wait1Max
        GuiControl, Hide, StartPotionO
        GuiControl, Hide, WaitOMin
        GuiControl, Hide, WaitOMax
    }
}

ExitScript() {
    ExitApp
}

GuiClose() {
    ExitApp
}
