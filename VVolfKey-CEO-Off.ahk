#NoEnv
SetWorkingDir %A_ScriptDir%
#IfWinActive ahk_class grcWindow
#SingleInstance Ignore

AutoHeal := "j"
AutoArmor := "k"
ReloadOutfit := "l"
Manual := "u"
CEO := "i"
Exit := "o"

IntMenuDelay := 120
KeySendDelay := 25
KeyPressDuration := 5

Hotkey, %AutoHeal%, H
Hotkey, %AutoArmor%, A
Hotkey, %ReloadOutfit%, O
Hotkey, %Manual%, M
Hotkey, %CEO%, C
Hotkey, %Exit%, E
Return

SetKeyDelay, KeySendDelay, KeyPressDuration

H:
Send {m}
Sleep, IntMenuDelay
Send {Down}{Down}{Enter}{Down}{Down}{Enter}{Enter}{Enter}{m}
Return

A:
Send {m}
Sleep, IntMenuDelay
Send {Down}{Down}{Enter}{Down}{Enter}{Up}{Up}{Up}{Enter}{m}
Return

O:
Send {m}
Sleep, IntMenuDelay
Send {Down}{Down}{Down}{Enter}{Down}{Down}{Down}{Enter}{m}
Return

M:
Run "VVolfKey-Manual.bat"
Return

C:
Run "VVolfKey-CEO-On.exe"
ExitApp
Return

E:
ExitApp
Return

; Autor: VVolf 
; Verze: VVolfKey 0.1
; Kontakty: 
; https://discordapp.com/users/212534612038123520
; https://steamcommunity.com/profiles/76561198133210314