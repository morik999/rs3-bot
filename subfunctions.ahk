; Smooth Mouse Movement Function
MouseMoveSmooth(x1, y1) {
    MouseGetPos, startX, startY  ; Get current cursor position
    Steps := 10  ; More steps for smoother movement

    Loop, %Steps% {
        InterX := startX + ((x1 - startX) * A_Index / Steps)
        InterY := startY + ((y1 - startY) * A_Index / Steps)
        MouseMove, %InterX%, %InterY%, 5
        Sleep, 20  ; Reduce sleep for faster response
    }
}

; Function for moving mouse and left-clicking at a random position
LeftClickAt(x1, y1, x2, y2) {
    Random, randX, %x1%, %x2%
    Random, randY, %y1%, %y2%

    MouseMoveSmooth(randX, randY)  ; Move mouse smoothly to random position
    Random, sleepTime, 400, 600  ; Wait 0.4 - 0.6 sec
    Sleep, %sleepTime%
    Click, Left  ; Click at final position
}

; Bank Teleport Function
BankTeleport() {
    Sleep, 800  ; Initial delay of 0.8 sec
    Send, n  ; Press 'N' key
    Random, sleepTime, 3500, 4500  ; Wait 3.5 - 4.5 sec
    Sleep, %sleepTime%

    ; Click at random coordinates between (2817, 56) and (2846, 78)
    LeftClickAt(2817, 56, 2846, 78)

    Random, sleepTime, 11000, 12000  ; Wait 11 - 12 sec
    Sleep, %sleepTime%

    ; Click at random coordinates between (1775, 700) and (1790, 730)
    LeftClickAt(1775, 700, 1790, 730)
}

RightClickAt(x1, y1, x2, y2) {
    Random, randX, %x1%, %x2%
    Random, randY, %y1%, %y2%

    MouseMoveSmooth(randX, randY)
    Random, sleepTime, 400, 600  ; Wait 0.4 - 0.6 sec
    Sleep, %sleepTime%
    Click, Right  ; Right-click
}

LeftClickRelativeTo(x, y) {
    Random, offsetX, -50, 50  ; Randomly move left or right by 50px
    Random, offsetY, 80, 90   ; Move down by 80-90px
    newX := x + offsetX
    newY := y + offsetY

    LeftClickAt(newX, newY, newX, newY)  ; Click at the new coordinates
}

PressKey(key) {
    Send, {%key% down}
    Random, SleepTime, 40, 55
    Sleep, SleepTime
    Send, {%key% up}
}