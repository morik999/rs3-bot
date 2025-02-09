StartGUI() {
    ToolTip, StartGUI() function is running!
    Sleep, 2000  ; Give time to see the tooltip

    Gui, Destroy
    Gui, +AlwaysOnTop +Resize
    Gui, Color, 222222
    Gui, Font, s12, Segoe UI

    Gui, Add, Button, gExitScript x20 y20 w200, Exit

    MsgBox, Before showing GUI  ; Debug step
    Gui, Show, w250 h100, RS3 Helper
    MsgBox, GUI should be visible now!  ; Debug step
}

ExitScript:
    ExitApp
Return