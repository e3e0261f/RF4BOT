; This script was created using Pulover's Macro Creator
; www.macrocreator.com

#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1


F3::
Macro1:
CoordMode, Pixel, Screen
ImageSearch, FoundX, FoundY, 1228, 956, 1247, 968, *77 C:\cygwin64\home\lee\RF4BOT\mate\准备完毕.png
If (ErrorLevel = 0)
{
    scan4()
}
Sleep, 200
ToolTip, 程序开始, A_ScreenWidth // 2, A_ScreenHeight // 2
Sleep, 250
beep()
Loop
{
    scan1()
}
Return

F2::
Macro2:
Loop
{
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 1245, 710, 1494, 784, *88 mate\自重漂z1.png
    CenterImgSrchCoords("*88 mate\自重漂z1.png", FoundX, FoundY)
    If (ErrorLevel)
    {
        SoundBeep, 120, 100
        CoordMode, Pixel, Screen
        ImageSearch, FoundX, FoundY, 1245, 710, 1494, 784, *88 mate\自重漂z1.png
        CenterImgSrchCoords("*88 mate\自重漂z1.png", FoundX, FoundY)
        CoordMode, Pixel, Screen
        ImageSearch, FoundX, FoundY, 1245, 710, 1494, 784, *88 mate\自重漂z1.png
        CenterImgSrchCoords("*88 mate\自重漂z1.png", FoundX, FoundY)
    }
    If (ErrorLevel = 0)
    {
    }
    ToolTip, 程序开始, A_ScreenHeight // 2, A_ScreenWidth // 2
    Sleep, 250
}
Return

scan1()
{
    CoordMode, Pixel, Screen
    PixelSearch, FoundX, FoundY, 1345, 710, 1494, 784, 0xFF0201, 88, Fast RGB
    If (ErrorLevel)
    {
        Sleep, 222
        CoordMode, Pixel, Screen
        ImageSearch, FoundX, FoundY, 1245, 710, 1494, 784, *88 mate\自重漂z1.png
        CenterImgSrchCoords("*88 mate\自重漂z1.png", FoundX, FoundY)
        Sleep, 666
        beep()
        Sleep, 500
        CoordMode, Pixel, Screen
        ImageSearch, FoundX, FoundY, 1245, 710, 1494, 784, *88 mate\自重漂z1.png
        CenterImgSrchCoords("*88 mate\自重漂z1.png", FoundX, FoundY)
        If (ErrorLevel)
        {
            beep()
            WinActivate, ahk_exe rf4_x64.exe
            Send, {Enter Up}
            scan2()
            CoordMode, Pixel, Screen
            ImageSearch, FoundX, FoundY, 626, 965, 759, 1005, *66 mate\T.png
        }
    }
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 626, 965, 759, 1005, *77 mate\T.png
    If (ErrorLevel = 0)
    {
        godone := 0
    }
}

scan2()
{
    scan21()
    Sleep, 333
    scan4()
}

scan21()
{
    global go2, go1, godone
    a := 0
    ControlSend, , {Enter Down}, ahk_exe rf4_x64.exe
    ControlSend, , {Control Down}, ahk_exe rf4_x64.exe
    ControlSend, , {\ Down}, ahk_exe rf4_x64.exe
    ControlSend, , {RShift Down}, ahk_exe rf4_x64.exe
    ControlSend, , {Enter Down}, ahk_exe rf4_x64.exe
    Sleep, 500
    ControlSend, , {Control Up}, ahk_exe rf4_x64.exe
    ControlSend, , {\ Up}, ahk_exe rf4_x64.exe
    ControlSend, , {RShift Up}, ahk_exe rf4_x64.exe
    ControlSend, , {Enter Up}, ahk_exe rf4_x64.exe
    Sleep, 50
    Loop
    {
        ControlSend, , {\ Down}, ahk_exe rf4_x64.exe
        ControlSend, , {RShift Down}, ahk_exe rf4_x64.exe
        ControlSend, , {Enter Down}, ahk_exe rf4_x64.exe
        go1 += 1
        SoundBeep, 120, 100
        outloop()
        done()
        CoordMode, Pixel, Screen
        ImageSearch, FoundX, FoundY, 845, 780, 1094, 830, *1 mate\经验点数.png
        If (ErrorLevel = 0)
        {
            ControlSend, , {RShift Up}, ahk_exe rf4_x64.exe
            ControlSend, , {\ Up}, ahk_exe rf4_x64.exe
            ControlSend, , {Enter Up}, ahk_exe rf4_x64.exe
            godone := 1
            Sleep, 300
            scan3()
        }
    }
    Until, godone=1
    SoundPlay, E:\remind.wav
    ControlSend, , {RShift Up}, ahk_exe rf4_x64.exe
    ControlSend, , {\ Up}, ahk_exe rf4_x64.exe
    ControlSend, , {Enter Up}, ahk_exe rf4_x64.exe
    godone := 0
}

scan3()
{
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 551, 79, 1323, 229, *5 mate\星1.png
    If (ErrorLevel)
    {
        CoordMode, Pixel, Screen
        ImageSearch, FoundX, FoundY, 612, 72, 1286, 236, *5 mate\标1.png
        If (ErrorLevel = 0)
        {
            SoundBeep, 140, 100
            ControlSend, , {Space}, ahk_exe rf4_x64.exe
            Sleep, 300
            ControlSend, , {Space}, ahk_exe rf4_x64.exe
            ToolTip, 入户, A_ScreenWidth // 2, A_ScreenHeight // 2
            Sleep, 250
        }
        If (ErrorLevel)
        {
            SoundBeep, 4444, 33
            SoundBeep, 4444, 33
            Sleep, 300
            CoordMode, Pixel, Screen
            ImageSearch, FoundX, FoundY, 612, 74, 1305, 227, *5 mate\标1.png
            If (ErrorLevel)
            {
                SoundBeep, 188, 100
                Sleep, 300
                ControlSend, , {Backspace}, ahk_exe rf4_x64.exe
                ToolTip, 丢弃, A_ScreenWidth // 2, A_ScreenHeight // 2
                Sleep, 250
            }
        }
    }
    If (ErrorLevel = 0)
    {
        SoundBeep, 140, 100
        ControlSend, , {Space}, ahk_exe rf4_x64.exe
        Sleep, 300
        ControlSend, , {Space}, ahk_exe rf4_x64.exe
    }
}

scan4()
{
    ToolTip, 抛竿, A_ScreenWidth // 2, A_ScreenHeight // 2
    Sleep, 250
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 626, 965, 759, 1005, *88 mate\T.png
    If (ErrorLevel = 0)
    {
        ControlSend, , {Enter Down}, ahk_exe rf4_x64.exe
        Sleep, 666
        ControlSend, , {Enter Up}, ahk_exe rf4_x64.exe
    }
    Sleep, 4200
    SoundBeep, 7777, 33
    SoundBeep, 4444, 33
    SoundBeep, 7777, 33
    eat()
}

eat()
{
    ToolTip, 吃东西, A_ScreenWidth // 2, A_ScreenHeight // 2
    Sleep, 250
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 188, 931, 220, 952, *22 mate\红条.png
    If (ErrorLevel = 0)
    {
        Sleep, 555
        SoundBeep, 7777, 33
        SoundBeep, 4444, 33
        Sleep, 999
        Sleep, 300
    }
    Sleep, 300
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 189, 988, 228, 1017, *22 mate\红条.png
    If (ErrorLevel = 0)
    {
        Sleep, 100
        SoundBeep, 7777, 33
        SoundBeep, 4444, 33
        SoundBeep, 7777, 33
        ControlSend, , {5}, ahk_exe rf4_x64.exe
        Sleep, 222
    }
    Sleep, 500
}

done()
{
    global godone
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 1229, 959, 1245, 966, *77 C:\cygwin64\home\lee\RF4BOT\mate\准备完毕.png
    If (ErrorLevel = 0)
    {
        Sleep, 300
        CoordMode, Pixel, Screen
        ImageSearch, FoundX, FoundY, 1229, 959, 1245, 966, *77 C:\cygwin64\home\lee\RF4BOT\mate\准备完毕.png
        If (ErrorLevel = 0)
        {
            ToolTip, 线收完毕, A_ScreenWidth // 2, A_ScreenHeight // 2
            Sleep, 250
            Sleep, 300
            ControlSend, , {\ Up}, ahk_exe rf4_x64.exe
            ControlSend, , {RShift Up}, ahk_exe rf4_x64.exe
            ControlSend, , {Enter Up}, ahk_exe rf4_x64.exe
            godone := 1
        }
    }
}

outloop()
{
    global godone, go1
    If (go1=9000)
    {
        ToolTip, 收线超时, A_ScreenWidth // 2, A_ScreenHeight // 2
        Sleep, 250
        Sleep, 333
        ControlSend, , {RShift Up}, ahk_exe rf4_x64.exe
        ControlSend, , {Enter Up}, ahk_exe rf4_x64.exe
        godone := 1
        go1 := 0
    }
}

beep()
{
    SoundBeep, 7777, 33
    ToolTip, 入户, A_ScreenWidth // 2, A_ScreenHeight // 2
    Sleep, 250
}
