#NoEnv
#SingleInstance Force
SendMode Input
SetWorkingDir %A_ScriptDir%

; Create a simple GUI
Gui, Color, 222222  ; Set background color to dark gray
Gui, Font, s12, Segoe UI
Gui, Add, Text, cWhite, This is a test GUI.
Gui, Add, Button, gButtonHandler, Click Me
Gui, Show, w300 h200, Test GUI
return

ButtonHandler:
    MsgBox, You clicked the button!
return

GuiClose:
    ExitApp
return