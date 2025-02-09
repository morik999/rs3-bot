; GUI Layout for RS3 Bot
Gui, +AlwaysOnTop +Resize
Gui, Color, 1E1E1E
Gui, Font, s10 cWhite, Segoe UI

Gui, Add, DropDownList, vSection gUpdateGUI x20 y20 w200, Necromancy|Fighting|Archeology

; **Necromancy Section**
Gui, Add, Button, vStartNecro gToggleNecromancy x20 y60 w200 h40, Start Necromancy Ritual
Gui, Add, Text, vTextWait1Min x20 y110 w200 cWhite, Wait Time Min:
Gui, Add, Edit, vWait1Min x20 y130 w95 h30 cBlack, 
Gui, Add, Text, vTextWait1Max x125 y110 w200 cWhite, Wait Time Max:
Gui, Add, Edit, vWait1Max x125 y130 w95 h30 cBlack, 

Gui, Add, Button, vStartPotionO gTogglePotionO x20 y170 w200 h40, Start Potion O
Gui, Add, Text, vTextWaitOMin x20 y220 w200 cWhite, Wait Time Min:
Gui, Add, Edit, vWaitOMin x20 y240 w95 h30 cBlack, 
Gui, Add, Text, vTextWaitOMax x125 y220 w200 cWhite, Wait Time Max:
Gui, Add, Edit, vWaitOMax x125 y240 w95 h30 cBlack, 

; **Fighting Section**
Gui, Add, Button, vStartPotionP gTogglePotionP x20 y60 w200 h40, Start Potion P
Gui, Add, Text, vTextWaitPMin x20 y110 w200 cWhite, Wait Time Min:
Gui, Add, Edit, vWaitPMin x20 y130 w95 h30 cBlack, 
Gui, Add, Text, vTextWaitPMax x125 y110 w200 cWhite, Wait Time Max:
Gui, Add, Edit, vWaitPMax x125 y130 w95 h30 cBlack, 

Gui, Add, Button, vStartPotionI gTogglePotionI x20 y170 w200 h40, Start Potion I
Gui, Add, Text, vTextWaitIMin x20 y220 w200 cWhite, Wait Time Min:
Gui, Add, Edit, vWaitIMin x20 y240 w95 h30 cBlack, 
Gui, Add, Text, vTextWaitIMax x125 y220 w200 cWhite, Wait Time Max:
Gui, Add, Edit, vWaitIMax x125 y240 w95 h30 cBlack, 

Gui, Add, Button, vStartAutoTarget gToggleS9 x20 y290 w200 h40, Start Auto-Target
Gui, Add, Text, vTextSleepLongMin x20 y340 w200 cWhite, Sleep Time Min:
Gui, Add, Edit, vSleepLongMin x20 y360 w95 h30 cBlack, 
Gui, Add, Text, vTextSleepLongMax x125 y340 w200 cWhite, Sleep Time Max:
Gui, Add, Edit, vSleepLongMax x125 y360 w95 h30 cBlack, 

; **Archeology Section**
Gui, Add, Button, vStartArcheology gToggleArcheology x20 y60 w200 h40, Start Archeology
Gui, Add, Button, vStartArcheologyLoop gToggleArcheologyLoop x20 y120 w200 h40, Start Archeology Loop


; **Exit Button**
Gui, Add, Button, gExitScript x20 y420 w200 h40, Exit

Gui, Show, w250 h480, RuneScape Bot
UpdateGUI()
Return