#Include, subfunctions.ahk

Global ArcheologyLoop := False  ; Flag to control the loop

ToggleArcheologyLoop() {
    ArcheologyLoop := !ArcheologyLoop  ; Toggle loop state

    if (ArcheologyLoop) {
        SetTimer, ArcheologyRoutine, 0  ; Start the loop
        GuiControl,, StartArcheologyLoop, Stop Archeology Loop
    } else {
        SetTimer, ArcheologyRoutine, Off  ; Stop the loop
        GuiControl,, StartArcheologyLoop, Start Archeology Loop
    }
}

ArcheologyRoutine() {
    if (!ArcheologyLoop)  ; Stop if the loop is turned off
        return

    Random, sleepTime, 4500, 5000
    Sleep, %sleepTime%
    PressKey("n")  ; Step 2: Press 'N'
    
    Random, sleepTime, 5000, 5500
    Sleep, %sleepTime%
    LeftClickAt(1088, 944, 1150, 980)  ; Step 4

    Random, sleepTime, 6000, 7000
    Sleep, %sleepTime%
    PressKey("i")  ; Step 6

    Random, sleepTime, 4000, 4500
    Sleep, %sleepTime%
    LeftClickAt(1120, 700, 1210, 770)  ; Step 8

    Random, sleepTime, 4000, 4500
    Sleep, %sleepTime%
    LeftClickAt(1156, 745, 1900, 760)  ; Step 10

    Random, sleepTime, 4000, 4500
    Sleep, %sleepTime%
    LeftClickAt(2545, 606, 2585, 630)  ; Step 12

    Sleep, 20000  ; Step 13: Wait 20 sec

    Loop, 30 {  ; Step 14: Repeat 30 times
        Random, sleepTime, 90000, 120000  ; 1.5 - 2 min
        Sleep, %sleepTime%
        PressKey("l")  ; Step 14: Press 'L'

        Random, sleepTime, 3000, 4000
        Sleep, %sleepTime%
        LeftClickAt(1700, 740, 1745, 800)  ; Step 14: Click

        Random, sleepTime, 3000, 4000
        Sleep, %sleepTime%
    }

    BankTeleport()  ; Step 15

    Random, sleepTime, 3000, 4000
    Sleep, %sleepTime%
    RightClickAt(968, 346, 996, 369)  ; Step 17

    MouseGetPos, clickX, clickY  ; Get last click position
    LeftClickRelativeTo(clickX, clickY)  ; Step 18

    Random, sleepTime, 2000, 2500
    Sleep, %sleepTime%
    PressKey("F4")  ; Step 20

    Random, sleepTime, 2000, 2500
    Sleep, %sleepTime%
}

F2:: ; Press F2 to test Steps 15 to 21
    BankTeleport()  ; Step 15

    Random, sleepTime, 3000, 4000
    Sleep, %sleepTime%
    RightClickAt(968, 346, 996, 369)  ; Step 17

    MouseGetPos, clickX, clickY  ; Get last click position
    LeftClickRelativeTo(clickX, clickY)  ; Step 18

    Random, sleepTime, 2000, 2500
    Sleep, %sleepTime%
    PressKey("F4")  ; Step 20

    Random, sleepTime, 2000, 2500
    Sleep, %sleepTime%
Return
