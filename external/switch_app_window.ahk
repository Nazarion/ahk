; Source 

AppWindowNext()
{
    ; WinGetClass, OldClass, A
    oldClass := WinGetClass("A")
    ; WinGet, ActiveProcessName, ProcessName, A
    activeProcessName := WinGetProcessName("A")
    ; WinGet, WinClassCount, Count, ahk_exe %ActiveProcessName%
    winClassCount := WinGetCount("ahk_exe" ActiveProcessName)
    ; IF WinClassCount = 1
    if (winClassCount == 1)
        ; Return
        return
    ; loop, 2 {
    loop(2) {
        ; WinSet, Bottom,, A
        WinMoveBottom("A")
        ; WinActivate, ahk_exe %ActiveProcessName%
        WinActivate("ahk_exe" activeProcessName)
        ; WinGetClass, NewClass, A
        newClass := WinGetClass("A")
        ; if (OldClass <> "CabinetWClass" or NewClass = "CabinetWClass")
        if (oldClass != "CabinetWClass" || newClass == "CabinetWClass")
        ;   break
            break
    }
}