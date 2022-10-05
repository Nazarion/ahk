FocusOrRun(proc) 
{
    proc := proc ".exe"
    if (WinExist("ahk_exe " proc))
    {
        WinActivate()
    }
    else
    {
        Run(proc)
    }
}

RunAndActivate(app, winSelector)
{
    Run(app)
    WinWait(winSelector, 5)
    WinActivate()
}

Explorer(path)
{
    Run("explorer " path)
}

OpenDevDirectory()
{
    rootDev := "C:\dev"
    repos := "%homepath%\source\repos"

    if (DirExist(rootDev))
        Explorer(rootDev)
    else Explorer(repos)
}