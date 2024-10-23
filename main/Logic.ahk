#MaxThreads 255
#Requires AutoHotkey v2.0
#SingleInstance Force
Persistent 1

#Include "%A_ScriptDir%\..\library\"
#Include "Gdip_All.ahk"
#Include "Gdip_ImageSearch.ahk"
#Include "HyperSleep.ahk"
#Include "Move.ahk"
#Include "QPC.ahk"
#Include "Roblox.ahk"

if !(pToken := Gdip_Startup())
    Throw OSError("Gdip_Startup failed")

CoordMode "Mouse", "Screen"
CoordMode "Pixel", "Screen"
SendMode "Event"

(bitmaps:=Map()).CaseSense := 0
#Include "%A_ScriptDir%\..\images"
#Include "bitmaps.ahk"

userStatus:=1 ; 1=main, 0=other accounts

/**
!!!!! MAIN LOOP !!!!!
**/
loop 1 {
    while ReconnectCheck(userStatus)=0 {

    }
}


/**
!!!!! FUNCTIONS !!!!!
**/
ReconnectCheck(userType?) {

    return 0
}

Respawn(wait?) {

    return 1
}

CloseRoblox() {

    return 0
}

OpenCloseMenu(status?) {
    if (!(IsSet(status)) || status=0)
    
    if (status = 1)
    
    return 0
}

LoadSlot(name) {

}

OnOffAnchor(status?) {
    if (!(IsSet(status)) || status=0)
    
    if (status = 1)
    
    return 0
}
