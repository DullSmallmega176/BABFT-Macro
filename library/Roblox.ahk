/************************************************************************
 * @description General functions to help with automating roblox
 * @author Dully176
 * @date 2024/10/22
 * @version 0.0.1
 ***********************************************************************/


GetRobloxClientPos() {
    global robloxX, robloxY, robloxWidth, robloxHeight
    try 
        if roblox:=WinExist("Roblox ahk_exe RobloxPlayerBeta.exe")
            WinGetClientPos(&robloxX, &robloxY, &robloxWidth, &robloxHeight, "ahk_id" window)
    catch
        return robloxX:=robloxY:=robloxWidth:=robloxHeight:=0 
    return 1
}

ActivateRoblox() {
    try
        WinActivate "Roblox"
    catch
        return 0
    return 1
}

DetectBloxstrap() { ; just an idea

}
