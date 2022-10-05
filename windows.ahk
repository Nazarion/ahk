#Include "common.ahk"
#Include "external/switch_app_window.ahk"

#t::FocusOrRun("WindowsTerminal")
#w::!F4
#f::FocusOrRun("Chrome")
#c::FocusOrRun("Code")
#h::RunAndActivate("explorer %homepath%", "ahk_exe explorer.exe")
#k::AppWindowNext()
LWin & j::AltTab
#+d::OpenDevDirectory()