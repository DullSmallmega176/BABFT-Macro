/************************************************************************
 * @description General functions to make movement easier in Roblox.
 * @author Dully176
 * @date 2024/10/22
 * @version 0.0.1
 ***********************************************************************/
movewait(studs) {
    HyperSleep(studs/16*1000)
}

move(studs, direction1, direction2?) {
    Send "{" direction1 " down}" (IsSet(direction2) ? "{" direction2 " down}" : "")
    movewait(studs)
    Send "{" direction1 " up}" (IsSet(direction2) ? "{" direction2 " up}" : "")
}
