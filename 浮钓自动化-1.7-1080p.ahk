﻿; This script was created using Pulover's Macro Creator
; www.macrocreator.com

#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Screen
SendMode Event
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
ImageSearch, FoundX, FoundY, 626, 965, 759, 1005, *88 mate\T.png
If (ErrorLevel = 0)
{
    scan4()
}
ToolTip, 程序开始, A_ScreenWidth // 2, A_ScreenHeight // 2, 1
Sleep, 200
ToolTip
beep()
Loop
{
    scan1()
}
Return

F2::
Macro2:
SoundBeep, 7777, 33
SoundBeep, 4444, 33
SoundBeep, 7777, 33
Loop
{
    CoordMode, Pixel, Screen
    PixelSearch, FoundX, FoundY, 1345, 710, 1494, 784, 0xFF0201, 88, Fast RGB
    If (ErrorLevel)
    {
        SoundBeep, 120, 100
        Sleep, 450
        SetTimer, CheckKeyState, -10
    }
}
Return

CheckKeyState:
If (GetKeyState("CapsLock", "P"))
{
    flag := true
}
If (flag = true)
{
    Sleep, 600
    flag := false
    IO1()
}
Return

IO1()
{
    global godone, go1
    Send, {CapsLock Up}
    WinGetTitle, THISWINDOW, A
    WinActivate, Russian Fishing 4 ahk_exe rf4_x64.exe
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
    scan4()
    WinActivate, %THISWINDOW%
    Sleep, 4200
    SoundBeep, 7777, 33
    SoundBeep, 4444, 33
    SoundBeep, 7777, 33
}

scan1()
{
    global THISWINDOW
    CoordMode, Pixel, Screen
    PixelSearch, FoundX, FoundY, 1345, 710, 1494, 784, 0xFF0201, 88, Fast RGB
    If (ErrorLevel)
    {
        Sleep, 222
        CoordMode, Pixel, Screen
        ImageSearch, FoundX, FoundY, 1245, 710, 1494, 784, *88 mate\自重漂z1.png
        CenterImgSrchCoords("*88 mate\自重漂z1.png", FoundX, FoundY)
        WinGetTitle, THISWINDOW, A
        ToolTip, %THISWINDOW%, A_ScreenHeight // 1.5, A_ScreenWidth // 1.5, 1
        beep()
        Sleep, 500
        CoordMode, Pixel, Screen
        ImageSearch, FoundX, FoundY, 1245, 710, 1494, 784, *88 mate\自重漂z1.png
        CenterImgSrchCoords("*88 mate\自重漂z1.png", FoundX, FoundY)
        If (ErrorLevel)
        {
            beep()
            WinActivate, ahk_exe rf4_x64.exe
            ControlSend, , {Enter Up}, ahk_exe rf4_x64.exe
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
    ToolTip, 等待咬钩动作, A_ScreenHeight // 1.5, A_ScreenWidth // 1.5, 1
    WinGetTitle, THISWINDOW, A
    scan21()
    Sleep, 333
    scan4()
    Sleep, 4200
    SoundBeep, 7777, 33
    SoundBeep, 4444, 33
    SoundBeep, 7777, 33
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
            ToolTip, 收线完毕, A_ScreenWidth // 2, A_ScreenHeight // 2, 1
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
            ToolTip, 入户, A_ScreenWidth // 2, A_ScreenHeight // 2, 1
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
                ToolTip, 丢弃, A_ScreenWidth // 2, A_ScreenHeight // 2
                ControlSend, , {Backspace}, ahk_exe rf4_x64.exe
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
    global THISWINDOW
    ToolTip, 抛竿, A_ScreenWidth // 2, A_ScreenHeight // 2, 1
    Sleep, 300
    ToolTip
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 626, 965, 759, 1005, *88 mate\T.png
    If (ErrorLevel = 0)
    {
        ControlSend, , {Enter Down}, ahk_exe rf4_x64.exe
        Sleep, 666
        ControlSend, , {Enter Up}, ahk_exe rf4_x64.exe
    }
    eat()
    WinActivate, %THISWINDOW%
}

eat()
{
    ToolTip, 吃吃, A_ScreenWidth // 2, A_ScreenHeight // 2, 1
    Sleep, 300
    ToolTip
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 188, 931, 220, 952, *22 mate\红条.png
    If (ErrorLevel = 0)
    {
        Sleep, 555
        SoundBeep, 4444, 33
        SoundBeep, 7777, 33
        SoundBeep, 4444, 33
        Send, {4}
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
    }
    Sleep, 500
}

done()
{
    global godone
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 626, 965, 759, 1005, *88 mate\T.png
    If (ErrorLevel = 0)
    {
        Sleep, 666
        CoordMode, Pixel, Screen
        ImageSearch, FoundX, FoundY, 662, 972, 696, 992, *188 *Trans0x51631B C:\cygwin64\home\lee\RF4BOT\mate\一下1.png
        CenterImgSrchCoords("*188 *Trans0x51631B C:\cygwin64\home\lee\RF4BOT\mate\一下1.png", FoundX, FoundY)
        If (ErrorLevel = 0)
        {
            ToolTip, 线收完毕, A_ScreenWidth // 2, A_ScreenHeight // 2, 1
            Sleep, 300
            ToolTip
            ControlSend, , {\ Up}, ahk_exe rf4_x64.exe
            ControlSend, , {RShift Up}, ahk_exe rf4_x64.exe
            ControlSend, , {Enter Up}, ahk_exe rf4_x64.exe
            godone := 1
        }
    }
    Sleep, 300
    ToolTip
}

allsave:
ControlFocus, , ahk_exe rf4_x64.exe
Loop
{
    eat()
}
Return

outloop()
{
    global godone, go1
    If (go1=9000)
    {
        ToolTip, 收线超时, A_ScreenWidth // 2, A_ScreenHeight // 2, 1
        Sleep, 300
        ToolTip
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
}


^!z::ExitApp

^!x::Pause

CenterImgSrchCoords(File, ByRef CoordX, ByRef CoordY)
{
	static LoadedPic
	LastEL := ErrorLevel

	Gui, Pict:Add, Pic, vLoadedPic, % RegExReplace(File, "^(\*\w+\s)+")
	GuiControlGet, LoadedPic, Pict:Pos
	Gui, Pict:Destroy
	CoordX += LoadedPicW // 2
	CoordY += LoadedPicH // 2
	ErrorLevel := LastEL
}

/*
PMC File Version 5.4.1
---[Do not edit anything in this section]---

[PMC Globals]|None|ahk_exe rf4_x64.exe|
[PMC Code v5.4.1]|F3||1|Screen,2,Fast,0,1,Event,-1,-1,1|1|Macro1
Context=None|
Groups=开始:1
1|Continue, Continue, FoundX, FoundY, 0|626, 965, 759, 1005, *88 mate\T.png|1|0|ImageSearch||Screen|||1|
2|If Image/Pixel Found||1|0|If_Statement|||||3|
3|scan4|_null := |1|0|Function|||||5|
4|[End If]|EndIf|1|0|If_Statement|||||6|
5|ToolTip|程序开始, A_ScreenWidth // 2, A_ScreenHeight // 2, 1|1|0|ToolTip|||||7|
6|[Pause]||1|200|Sleep|||||8|
7|ToolTip||1|0|ToolTip|||||9|
8|beep|_null := |1|0|Function|||||10|
9|[LoopStart]|LoopStart|0|0|Loop|||||11|
10|scan1|_null := |1|0|Function|||||13|
11|[LoopEnd]|LoopEnd|1|0|Loop|||||14|

[PMC Code v5.4.1]|F2||1|Screen,2,Fast,0,1,Event,-1,-1,1|1|Macro2
Context=None|
Groups=Start:1
1|SoundBeep|7777, 33|1|0|SoundBeep|||||1|
2|SoundBeep|4444, 33|1|0|SoundBeep|||||2|
3|SoundBeep|7777, 33|1|0|SoundBeep|||||3|
4|[LoopStart]|LoopStart|0|0|Loop|||||4|
5|Continue, Continue, FoundX, FoundY|1345, 710, 1494, 784, 0xFF0201, 88, Fast RGB|1|0|PixelSearch||Screen|||6|
6|If Image/Pixel Not Found||1|0|If_Statement|||||8|
7|SoundBeep|120, 100|1|450|SoundBeep|||||10|
8|Run Once|CheckKeyState|1|10|SetTimer|||||14|
9|[End If]|EndIf|1|0|If_Statement|||||15|
010|DllCall|_null := "LibraryName\FunctionName", "Uint", arg1, "Uint", arg2, "Str", arg3|1|0|Function|||||16|
11|[LoopEnd]|LoopEnd|1|0|Loop|||||16|

[PMC Code v5.4.1]|||1|Screen,2,Fast,0,1,Event,-1,-1,1|1|CheckKeyState
Context=None|
Groups=Start:1
1|Evaluate Expression|GetKeyState("CapsLock", "P")|1|0|If_Statement|||||1|
2|[Assign Variable]|flag := true|1|0|Variable|Expression||||3|
3|[End If]|EndIf|1|0|If_Statement|||||4|
4|Compare Variables|flag = true|1|0|If_Statement|||||5|
5|[Pause]|NoRandom|1|600|Sleep|||||7|
6|[Assign Variable]|flag := false|1|0|Variable|Expression||||8|
7|IO1|_null := |1|0|Function|||||9|
8|[End If]|EndIf|1|0|If_Statement|||||10|

[PMC Code v5.4.1]|||1|Screen,2,Fast,0,1,Event,-1,-1,1|1|IO1()
Context=None|
Groups=Start:1
1|[FunctionStart]|IO1|1|0|UserFunction|Local|godone, go1 / |||1|
2|CapsLock|{CapsLock Up}|1|0|Send|||||4|
3|WinGetTitle|THISWINDOW|1|0|WinGetTitle||A|||5|
4|WinActivate||1|0|WinActivate||Russian Fishing 4 ahk_exe rf4_x64.exe|||6|
5|[Assign Variable]|a := 0|1|0|Variable|Expression||||7|
6|[Assign Variable]|{Enter Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||8|
7|Control|{Control Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||9|
8|\|{\ Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||10|
9|RShift|{RShift Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||11|
10|Enter|{Enter Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||12|
11|[Pause]||1|500|Sleep|||||13|
12|Control|{Control Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||14|
13|\|{\ Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||15|
14|RShift|{RShift Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||16|
15|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||17|
16|[Pause]||1|50|Sleep|||||18|
17|[LoopStart]|LoopStart|0|0|Loop|godone=1||||19|
18|\|{\ Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||21|
19|RShift|{RShift Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||22|
20|Enter|{Enter Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||23|
21|[Add Variable]|go1 += 1|1|250|Variable|Expression||||24|
22|SoundBeep|120, 100|1|0|SoundBeep|||||25|
23|outloop|_null := |1|0|Function|||||26|
24|done|_null := |1|0|Function|||||27|
25|Continue, Continue, FoundX, FoundY, 0|845, 780, 1094, 830, *1 mate\经验点数.png|1|0|ImageSearch||Screen|||28|
26|If Image/Pixel Found||1|0|If_Statement|||||30|
27|RShift|{RShift Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||32|
28|\|{\ Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||33|
29|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||34|
30|[Assign Variable]|godone := 1|1|0|Variable|Expression||||35|
31|[Pause]||1|300|Sleep|||||36|
32|scan3|_null := |1|0|Function|||||37|
33|[End If]|EndIf|1|0|If_Statement|||||38|
34|[LoopEnd]|LoopEnd|1|0|Loop|||||39|
35|SoundPlay|E:\remind.wav|1|0|SoundPlay|||||41|
36|RShift|{RShift Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||42|
37|\|{\ Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||43|
38|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||44|
39|[Assign Variable]|godone := 0|1|0|Variable|Expression||||45|
40|scan4|_null := |1|0|Function|||||46|
41|WinActivate||1|0|WinActivate||%THISWINDOW%|||47|
42|[Pause]||1|4200|Sleep|||||48|
43|SoundBeep|7777, 33|1|0|SoundBeep|||||49|
44|SoundBeep|4444, 33|1|0|SoundBeep|||||50|
45|SoundBeep|7777, 33|1|0|SoundBeep|||||51|

[PMC Code v5.4.1]|||1|Screen,2,Fast,0,1,Event,-1,-1,1|1|scan1()
Context=None|
Groups=Start:1
1|[FunctionStart]|scan1|1|0|UserFunction|Local|THISWINDOW / |||1|
2|Continue, Continue, FoundX, FoundY|1345, 710, 1494, 784, 0xFF0201, 88, Fast RGB|1|0|PixelSearch||Screen|||4|
3|If Image/Pixel Not Found||1|0|If_Statement|||||6|
4|[Pause]|NoRandom|1|222|Sleep|||||8|
5|Continue, Continue, FoundX, FoundY, 1|1245, 710, 1494, 784, *88 mate\自重漂z1.png|1|0|ImageSearch||Screen|||9|
6|WinGetTitle|THISWINDOW|1|0|WinGetTitle||A|||12|
7|ToolTip|%THISWINDOW%, A_ScreenHeight // 1.5, A_ScreenWidth // 1.5, 1|1|0|ToolTip|||||13|
8|beep|_null := |1|0|Function|||||14|
9|[Pause]|NoRandom|1|500|Sleep|||||15|
10|Continue, Continue, FoundX, FoundY, 1|1245, 710, 1494, 784, *88 mate\自重漂z1.png|1|0|ImageSearch||Screen|||16|
11|If Image/Pixel Not Found||1|0|If_Statement|||||19|
12|beep|_null := |1|0|Function|||||21|
13|WinActivate||1|0|WinActivate||ahk_exe rf4_x64.exe|||22|
14|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||23|
15|scan2|_null := |1|0|Function|||||24|
16|Continue, Continue, FoundX, FoundY, 0|626, 965, 759, 1005, *66 mate\T.png|1|0|ImageSearch||Screen|||25|
17|[End If]|EndIf|1|0|If_Statement|||||27|
18|[End If]|EndIf|1|0|If_Statement|||||28|
19|Continue, Continue, FoundX, FoundY, 0|626, 965, 759, 1005, *77 mate\T.png|1|0|ImageSearch||Screen|||29|
20|If Image/Pixel Found||1|0|If_Statement|||||31|
21|[Assign Variable]|godone := 0|1|0|Variable|Expression||||33|
22|[End If]|EndIf|1|0|If_Statement|||||34|

[PMC Code v5.4.1]|||1|Screen,2,Fast,0,1,Event,-1,-1,1|1|scan2()
Context=None|
Groups=Start:1
1|[FunctionStart]|scan2|1|0|UserFunction|Local| / |||1|
2|ToolTip|等待咬钩动作, A_ScreenHeight // 1.5, A_ScreenWidth // 1.5, 1|1|0|ToolTip|||||3|
3|WinGetTitle|THISWINDOW|1|0|WinGetTitle||A|||4|
4|scan21|_null := |1|0|Function|||||5|
5|[Pause]|NoRandom|1|333|Sleep|||||6|
6|scan4|_null := |1|0|Function|||||7|
7|[Pause]||1|4200|Sleep|||||8|
8|SoundBeep|7777, 33|1|0|SoundBeep|||||9|
9|SoundBeep|4444, 33|1|0|SoundBeep|||||10|
10|SoundBeep|7777, 33|1|0|SoundBeep|||||11|

[PMC Code v5.4.1]|||1|Screen,2,Fast,0,1,Event,-1,-1,1|1|scan21()
Context=None|
Groups=Start:1
1|[FunctionStart]|scan21|1|0|UserFunction|Local|go2, go1, godone / |||1|
2|[Assign Variable]|a := 0|1|0|Variable|Expression||||4|
3|[Assign Variable]|{Enter Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||5|
4|Control|{Control Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||6|
5|\|{\ Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||7|
6|RShift|{RShift Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||8|
7|Enter|{Enter Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||9|
8|[Pause]||1|500|Sleep|||||10|
9|Control|{Control Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||11|
10|\|{\ Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||12|
11|RShift|{RShift Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||13|
12|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||14|
13|[Pause]||1|50|Sleep|||||15|
14|[LoopStart]|LoopStart|0|0|Loop|godone=1||||16|
15|\|{\ Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||18|
16|RShift|{RShift Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||19|
17|Enter|{Enter Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||20|
18|[Add Variable]|go1 += 1|1|0|Variable|Expression||||21|
19|SoundBeep|120, 100|1|0|SoundBeep|||||22|
20|outloop|_null := |1|0|Function|||||23|
21|done|_null := |1|0|Function|||||24|
22|Continue, Continue, FoundX, FoundY, 0|845, 780, 1094, 830, *1 mate\经验点数.png|1|0|ImageSearch||Screen|||25|
23|If Image/Pixel Found||1|0|If_Statement|||||27|
24|ToolTip|收线完毕, A_ScreenWidth // 2, A_ScreenHeight // 2, 1|1|0|ToolTip|||||29|
25|RShift|{RShift Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||30|
26|\|{\ Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||31|
27|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||32|
28|[Assign Variable]|godone := 1|1|0|Variable|Expression||||33|
29|[Pause]||1|300|Sleep|||||34|
30|scan3|_null := |1|0|Function|||||35|
31|[End If]|EndIf|1|0|If_Statement|||||36|
32|[LoopEnd]|LoopEnd|1|0|Loop|||||37|
33|SoundPlay|E:\remind.wav|1|0|SoundPlay|||||39|
34|RShift|{RShift Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||40|
35|\|{\ Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||41|
36|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||42|
37|[Assign Variable]|godone := 0|1|0|Variable|Expression||||43|

[PMC Code v5.4.1]|||1|Screen,2,Fast,0,1,Event,-1,-1,1|1|scan3()
Context=None|
Groups=Start:1
1|[FunctionStart]|scan3|1|0|UserFunction|Local| / |||1|
02|beep|_null := |1|0|Function|||||3|
3|Continue, Continue, FoundX, FoundY, 0|551, 79, 1323, 229, *5 mate\星1.png|1|0|ImageSearch||Screen|||3|
4|If Image/Pixel Not Found||1|0|If_Statement|||||5|
5|Continue, Continue, FoundX, FoundY, 0|612, 72, 1286, 236, *5 mate\标1.png|1|0|ImageSearch||Screen|||7|
6|If Image/Pixel Found||1|0|If_Statement|||||9|
7|SoundBeep|140, 100|1|0|SoundBeep|||||11|
8|Space|{Space}|1|0|ControlSend||ahk_exe rf4_x64.exe|||12|
9|[Pause]||1|300|Sleep|||||13|
10|Space|{Space}|1|0|ControlSend||ahk_exe rf4_x64.exe|||14|
11|ToolTip|入户, A_ScreenWidth // 2, A_ScreenHeight // 2, 1|1|0|ToolTip|||||15|
12|[End If]|EndIf|1|0|If_Statement|||||16|
13|If Image/Pixel Not Found||1|0|If_Statement|||||17|
14|SoundBeep|4444, 33|1|0|SoundBeep|||||19|
15|SoundBeep|4444, 33|1|0|SoundBeep|||||20|
16|[Pause]||1|300|Sleep|||||21|
17|Continue, Continue, FoundX, FoundY, 0|612, 74, 1305, 227, *5 mate\标1.png|1|0|ImageSearch||Screen|||22|
18|If Image/Pixel Not Found||1|0|If_Statement|||||24|
19|SoundBeep|188, 100|1|0|SoundBeep|||||26|
20|ToolTip|丢弃, A_ScreenWidth // 2, A_ScreenHeight // 2|1|0|ToolTip|||||27|
21|Backspace|{Backspace}|1|0|ControlSend||ahk_exe rf4_x64.exe|||28|
22|[End If]|EndIf|1|0|If_Statement|||||29|
23|[End If]|EndIf|1|0|If_Statement|||||30|
24|[End If]|EndIf|1|0|If_Statement|||||31|
25|If Image/Pixel Found||1|0|If_Statement|||||32|
26|SoundBeep|140, 100|1|0|SoundBeep|||||34|
27|Space|{Space}|1|0|ControlSend||ahk_exe rf4_x64.exe|||35|
28|[Pause]||1|300|Sleep|||||36|
29|Space|{Space}|1|0|ControlSend||ahk_exe rf4_x64.exe|||37|
30|[End If]|EndIf|1|0|If_Statement|||||38|

[PMC Code v5.4.1]|||1|Screen,2,Fast,0,1,Event,-1,-1,1|1|scan4()
Context=None|
Groups=Start:1
1|[FunctionStart]|scan4|1|0|UserFunction|Local|THISWINDOW / |||1|
02|beep|_null := |1|0|Function|||||4|
3|ToolTip|抛竿, A_ScreenWidth // 2, A_ScreenHeight // 2, 1|1|0|ToolTip|||||4|
4|[Pause]||1|300|Sleep|||||5|
5|ToolTip||1|0|ToolTip|||||6|
6|Continue, Continue, FoundX, FoundY, 0|626, 965, 759, 1005, *88 mate\T.png|1|0|ImageSearch||Screen|||7|
7|If Image/Pixel Found||1|0|If_Statement|||||9|
8|Enter|{Enter Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||11|
9|[Pause]|Random|1|666|Sleep|777||||12|
10|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||13|
11|[End If]|EndIf|1|0|If_Statement|||||14|
12|eat|_null := |1|0|Function|||||15|
13|WinActivate||1|0|WinActivate||%THISWINDOW%|||16|
014|WinSet|AlwaysOnTop, Off|1|333|WinSet||ahk_id %THISWINDOW%|||17|

[PMC Code v5.4.1]|||1|Screen,2,Fast,0,1,Event,-1,-1,1|1|eat()
Context=None|
Groups=Start:1
1|[FunctionStart]|eat|1|0|UserFunction|Local| / |||1|
2|ToolTip|吃吃, A_ScreenWidth // 2, A_ScreenHeight // 2, 1|1|0|ToolTip|||||3|
3|[Pause]|NoRandom|1|300|Sleep|||||5|
4|ToolTip||1|0|ToolTip|||||6|
5|Continue, Continue, FoundX, FoundY, 0|188, 931, 220, 952, *22 mate\红条.png|1|0|ImageSearch||Screen|||8|
6|If Image/Pixel Found||1|0|If_Statement|||||10|
7|[Pause]|Random|1|555|Sleep|666||||12|
8|SoundBeep|4444, 33|1|0|SoundBeep|||||14|
9|SoundBeep|7777, 33|1|0|SoundBeep|||||13|
10|SoundBeep|4444, 33|1|0|SoundBeep|||||14|
11|4|{4}|1|0|Send||||||
12|[Pause]||1|300|Sleep|||||16|
13|[End If]|EndIf|1|0|If_Statement|||||17|
14|[Pause]||1|300|Sleep|||||18|
15|Continue, Continue, FoundX, FoundY, 0|189, 988, 228, 1017, *22 mate\红条.png|1|0|ImageSearch||Screen|||19|
16|If Image/Pixel Found||1|0|If_Statement|||||21|
17|[Pause]||1|100|Sleep|||||23|
18|SoundBeep|7777, 33|1|0|SoundBeep|||||24|
19|SoundBeep|4444, 33|1|0|SoundBeep|||||25|
20|SoundBeep|7777, 33|1|0|SoundBeep|||||26|
21|5|{5}|1|0|ControlSend||ahk_exe rf4_x64.exe|||27|
22|[End If]|EndIf|1|0|If_Statement|||||29|
23|[Pause]||1|500|Sleep|||||30|

[PMC Code v5.4.1]|||1|Screen,2,Fast,0,1,Event,-1,-1,1|1|done()
Context=None|
Groups=Start:1
1|[FunctionStart]|done|1|0|UserFunction|Local|godone / |||1|
2|Continue, Continue, FoundX, FoundY, 0|626, 965, 759, 1005, *88 mate\T.png|1|0|ImageSearch||Screen|||4|
3|If Image/Pixel Found||1|0|If_Statement|||||6|
4|[Pause]|NoRandom|1|666|Sleep|||||8|
5|Continue, Continue, FoundX, FoundY, 1|662, 972, 696, 992, *188 *Trans0x51631B C:\cygwin64\home\lee\RF4BOT\mate\一下1.png|1|0|ImageSearch||Screen|||9|
6|If Image/Pixel Found||1|0|If_Statement|||||12|
7|ToolTip|线收完毕, A_ScreenWidth // 2, A_ScreenHeight // 2, 1|1|0|ToolTip|||||14|
8|[Pause]||1|300|Sleep|||||15|
9|ToolTip||1|0|ToolTip|||||16|
10|\|{\ Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||17|
11|RShift|{RShift Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||18|
12|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||19|
13|[Assign Variable]|godone := 1|1|0|Variable|Expression||||20|
014|SoundPlay|C:\cygwin64\home\lee\RF4BOT\mate\1.wav|1|0|SoundPlay|||||21|
15|[End If]|EndIf|1|0|If_Statement|||||21|
16|[End If]|EndIf|1|0|If_Statement|||||22|
17|[Pause]||1|300|Sleep|||||23|
18|ToolTip||1|0|ToolTip|||||24|

[PMC Code v5.4.1]|||1|Screen,2,Fast,0,1,Event,-1,-1,1|1|allsave
Context=None|
Groups=Start:1
1|[Control]||1|0|ControlFocus||ahk_exe rf4_x64.exe|||1|
2|[LoopStart]|LoopStart|0|0|Loop|||||2|
3|eat|_null := |1|0|Function|||||4|
4|[LoopEnd]|LoopEnd|1|0|Loop|||||5|

[PMC Code v5.4.1]|||1|Screen,2,Fast,0,1,Event,-1,-1,1|1|outloop()
Context=None|
Groups=Start:1
1|[FunctionStart]|outloop|1|0|UserFunction|Local|godone, go1 / |||1|
2|Evaluate Expression|go1=9000|1|0|If_Statement|||||4|
3|ToolTip|收线超时, A_ScreenWidth // 2, A_ScreenHeight // 2, 1|1|0|ToolTip|||||6|
4|[Pause]||1|300|Sleep|||||8|
5|ToolTip||1|0|ToolTip|||||9|
6|[Pause]|Random|1|333|Sleep|444||||11|
7|RShift|{RShift Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||12|
8|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||13|
9|[Assign Variable]|godone := 1|1|0|Variable|Expression||||14|
10|[Assign Variable]|go1 := 0|1|0|Variable|Expression||||15|
11|[End If]|EndIf|1|0|If_Statement|||||16|

[PMC Code v5.4.1]|||1|Screen,2,Fast,0,1,Event,-1,-1,1|1|beep()
Context=None|
Groups=Start:1
1|[FunctionStart]|beep|1|0|UserFunction|Local| / |||1|
2|SoundBeep|7777, 33|1|0|SoundBeep|||||3|

*/
