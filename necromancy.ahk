PerformNecromancy() {
    Gui, Submit, NoHide
    MinWait := Wait1Min * 1000
    MaxWait := Wait1Max * 1000
    Random, Wait1, %MinWait%, %MaxWait%
    
    static FirstRun := True
    if (FirstRun) {
        Random, X1, 1710, 1730
        Random, Y1, 730, 760
        FirstRun := False
    }
    MouseMove, X1, Y1, 10
    Sleep, 200
    Click, Left
    Sleep, Wait1

    ; 3. Drag mouse with a random path to (1720,460) to (1735,510)
    MouseGetPos, StartX, StartY
    Random, X2, 1720, 1735
    Random, Y2, 460, 500
    MouseMoveSmooth(StartX, StartY, X2, Y2)
    Sleep, 200

    ; 4. Wait 4-5 seconds
    Random, Wait2, 4000, 5000
    Sleep, Wait2

    ; 5. Right mouse click
    Click, Right

    ; 6. Wait 2-3 seconds
    Random, Wait3, 2000, 3000
    Sleep, Wait3

    ; 7. Drag mouse 85-90 pixels south
    Random, DragDist, 82, 87
    NewY := Y2 + DragDist
    MouseMoveSmooth(X2, Y2, X2, NewY)
    Sleep, 200

    ; 8. Left mouse click
    Click, Left

    ; 9. Wait 3-4 seconds
    Random, Wait5, 3000, 4000
    Sleep, Wait5

    ; 10. Drag to (1705,995) to (1725,1015)
    Random, X3, 1705, 1725
    Random, Y3, 995, 1015
    MouseMoveSmooth(X2, NewY, X3, Y3)
    Sleep, 200

    X1 := X3
    Y1 := Y3
}

MouseMoveSmooth(x1, y1, x2, y2) {
    Steps := 10
    Loop, %Steps% {
        InterX := x1 + ((x2 - x1) * A_Index / Steps)
        InterY := y1 + ((y2 - y1) * A_Index / Steps)
        MouseMove, %InterX%, %InterY%, 5
        Sleep, 30
    }
}