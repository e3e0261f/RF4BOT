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
        ToolTip, 线收完毕, A_ScreenWidth // 2, A_ScreenHeight // 2
        Sleep, 250
        Sleep, 300
        ControlSend, , {\ Up}, ahk_exe rf4_x64.exe
        ControlSend, , {RShift Up}, ahk_exe rf4_x64.exe
        ControlSend, , {Enter Up}, ahk_exe rf4_x64.exe
        godone := 1
    }
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


F8::ExitApp

F12::Pause

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
[PMC Code v5.4.1]|F3||1|Window,2,Fast,0,1,Input,-1,-1,1|1|Macro1
Context=None|
Groups=开始:1
1|Continue, Continue, FoundX, FoundY, 0|1228, 956, 1247, 968, *77 C:\cygwin64\home\lee\RF4BOT\mate\准备完毕.png|1|0|ImageSearch||Screen|||1|
2|If Image/Pixel Found||1|0|If_Statement|||||3|
3|scan4|_null := |1|0|Function|||||5|
4|[End If]|EndIf|1|0|If_Statement|||||6|
5|[Pause]||1|200|Sleep|||||7|
6|ToolTip|程序开始, A_ScreenWidth // 2, A_ScreenHeight // 2|1|250|ToolTip|||||8|
7|beep|_null := |1|0|Function|||||10|
8|[LoopStart]|LoopStart|0|0|Loop|||||11|
9|scan1|_null := |1|0|Function|||||13|
10|[LoopEnd]|LoopEnd|1|0|Loop|||||14|

[PMC Code v5.4.1]|F2||1|Window,2,Fast,0,1,Input,-1,-1,1|1|Macro2
Context=None|
Groups=Start:1
1|[LoopStart]|LoopStart|0|0|Loop|||||1|
2|Continue, Continue, FoundX, FoundY, 1|1245, 710, 1494, 784, *88 mate\自重漂z1.png|1|0|ImageSearch||Screen|||3|
3|If Image/Pixel Not Found||1|0|If_Statement|||||6|
4|SoundBeep|120, 100|1|0|SoundBeep|||||8|
5|Continue, Continue, FoundX, FoundY, 1|1245, 710, 1494, 784, *88 mate\自重漂z1.png|1|0|ImageSearch||Screen|||9|
6|Continue, Continue, FoundX, FoundY, 1|1245, 710, 1494, 784, *88 mate\自重漂z1.png|1|0|ImageSearch||Screen|||12|
7|[End If]|EndIf|1|0|If_Statement|||||15|
8|If Image/Pixel Found||1|0|If_Statement|||||16|
9|[End If]|EndIf|1|0|If_Statement|||||18|
10|ToolTip|程序开始, A_ScreenHeight // 2, A_ScreenWidth // 2|1|250|ToolTip|||||3|
11|[LoopEnd]|LoopEnd|1|0|Loop|||||19|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|scan1()
Context=None|
Groups=Start:1
1|[FunctionStart]|scan1|1|0|UserFunction|Local| / |||1|
2|Continue, Continue, FoundX, FoundY|1345, 710, 1494, 784, 0xFF0201, 88, Fast RGB|1|0|PixelSearch||Screen|||3|
3|If Image/Pixel Not Found||1|0|If_Statement|||||5|
4|[Pause]|NoRandom|1|222|Sleep|||||7|
5|beep|_null := |1|0|Function|||||12|
6|[Pause]|NoRandom|1|500|Sleep|||||13|
7|Continue, Continue, FoundX, FoundY, 1|1245, 710, 1494, 784, *88 mate\自重漂z1.png|1|0|ImageSearch||Screen|||14|
8|If Image/Pixel Not Found||1|0|If_Statement|||||17|
9|beep|_null := |1|0|Function|||||19|
10|WinActivate||1|0|WinActivate||ahk_exe rf4_x64.exe|||20|
11|Enter|{Enter Up}|1|0|Send|||||21|
12|scan2|_null := |1|0|Function|||||22|
13|Continue, Continue, FoundX, FoundY, 0|626, 965, 759, 1005, *66 mate\T.png|1|0|ImageSearch||Screen|||23|
14|[End If]|EndIf|1|0|If_Statement|||||25|
15|[End If]|EndIf|1|0|If_Statement|||||26|
16|Continue, Continue, FoundX, FoundY, 0|626, 965, 759, 1005, *77 mate\T.png|1|0|ImageSearch||Screen|||27|
17|If Image/Pixel Found||1|0|If_Statement|||||29|
18|[Assign Variable]|godone := 0|1|0|Variable|Expression||||31|
19|[End If]|EndIf|1|0|If_Statement|||||32|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|scan2()
Context=None|
Groups=Start:1
1|[FunctionStart]|scan2|1|0|UserFunction|Local| / |||1|
02|beep|_null := |1|0|Function|||||3|
3|scan21|_null := |1|0|Function|||||3|
4|[Pause]|NoRandom|1|333|Sleep|||||4|
5|scan4|_null := |1|0|Function|||||5|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|scan21()
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
18|[Add Variable]|go1 += 1|1|250|Variable|Expression||||21|
19|SoundBeep|120, 100|1|0|SoundBeep|||||22|
20|outloop|_null := |1|0|Function|||||23|
21|done|_null := |1|0|Function|||||24|
22|Continue, Continue, FoundX, FoundY, 0|845, 780, 1094, 830, *1 mate\经验点数.png|1|0|ImageSearch||Screen|||25|
23|If Image/Pixel Found||1|0|If_Statement|||||27|
24|RShift|{RShift Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||29|
25|\|{\ Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||30|
26|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||31|
27|[Assign Variable]|godone := 1|1|0|Variable|Expression||||32|
28|[Pause]||1|300|Sleep|||||33|
29|scan3|_null := |1|0|Function|||||34|
30|[End If]|EndIf|1|0|If_Statement|||||35|
31|[LoopEnd]|LoopEnd|1|0|Loop|||||36|
32|SoundPlay|E:\remind.wav|1|0|SoundPlay|||||38|
33|RShift|{RShift Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||39|
34|\|{\ Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||40|
35|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||41|
36|[Assign Variable]|godone := 0|1|0|Variable|Expression||||42|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|scan3()
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
11|ToolTip|入户, A_ScreenWidth // 2, A_ScreenHeight // 2|1|250|ToolTip|||||15|
12|[End If]|EndIf|1|0|If_Statement|||||17|
13|If Image/Pixel Not Found||1|0|If_Statement|||||18|
14|SoundBeep|4444, 33|1|0|SoundBeep|||||20|
15|SoundBeep|4444, 33|1|0|SoundBeep|||||21|
16|[Pause]||1|300|Sleep|||||22|
17|Continue, Continue, FoundX, FoundY, 0|612, 74, 1305, 227, *5 mate\标1.png|1|0|ImageSearch||Screen|||23|
18|If Image/Pixel Not Found||1|0|If_Statement|||||25|
19|SoundBeep|188, 100|1|0|SoundBeep|||||27|
20|[Pause]||1|300|Sleep|||||28|
21|Backspace|{Backspace}|1|0|ControlSend||ahk_exe rf4_x64.exe|||29|
22|ToolTip|丢弃, A_ScreenWidth // 2, A_ScreenHeight // 2|1|250|ToolTip|||||30|
23|[End If]|EndIf|1|0|If_Statement|||||32|
24|[End If]|EndIf|1|0|If_Statement|||||33|
25|[End If]|EndIf|1|0|If_Statement|||||34|
26|If Image/Pixel Found||1|0|If_Statement|||||35|
27|SoundBeep|140, 100|1|0|SoundBeep|||||37|
28|Space|{Space}|1|0|ControlSend||ahk_exe rf4_x64.exe|||38|
29|[Pause]||1|300|Sleep|||||39|
30|Space|{Space}|1|0|ControlSend||ahk_exe rf4_x64.exe|||40|
31|[End If]|EndIf|1|0|If_Statement|||||41|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|scan4()
Context=None|
Groups=Start:1
1|[FunctionStart]|scan4|1|0|UserFunction|Local| / |||1|
02|beep|_null := |1|0|Function|||||3|
3|ToolTip|抛竿, A_ScreenWidth // 2, A_ScreenHeight // 2|1|250|ToolTip|||||3|
4|Continue, Continue, FoundX, FoundY, 0|626, 965, 759, 1005, *88 mate\T.png|1|0|ImageSearch||Screen|||5|
5|If Image/Pixel Found||1|0|If_Statement|||||7|
6|Enter|{Enter Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||9|
7|[Pause]|Random|1|666|Sleep|777||||10|
8|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||11|
9|[End If]|EndIf|1|0|If_Statement|||||12|
10|[Pause]||1|4200|Sleep|||||13|
11|SoundBeep|7777, 33|1|0|SoundBeep|||||14|
12|SoundBeep|4444, 33|1|0|SoundBeep|||||15|
13|SoundBeep|7777, 33|1|0|SoundBeep|||||16|
14|eat|_null := |1|0|Function|||||17|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|eat()
Context=None|
Groups=Start:1
1|[FunctionStart]|eat|1|0|UserFunction|Local| / |||1|
2|ToolTip|吃东西, A_ScreenWidth // 2, A_ScreenHeight // 2|1|250|ToolTip|||||13|
3|Continue, Continue, FoundX, FoundY, 0|188, 931, 220, 952, *22 mate\红条.png|1|0|ImageSearch||Screen|||3|
4|If Image/Pixel Found||1|0|If_Statement|||||5|
5|[Pause]|Random|1|555|Sleep|666||||7|
6|SoundBeep|7777, 33|1|0|SoundBeep|||||8|
7|SoundBeep|4444, 33|1|0|SoundBeep|||||9|
8|[Pause]|NoRandom|1|999|Sleep|||||10|
9|[Pause]||1|300|Sleep|||||11|
10|[End If]|EndIf|1|0|If_Statement|||||12|
11|[Pause]||1|300|Sleep|||||13|
12|Continue, Continue, FoundX, FoundY, 0|189, 988, 228, 1017, *22 mate\红条.png|1|0|ImageSearch||Screen|||14|
13|If Image/Pixel Found||1|0|If_Statement|||||16|
14|[Pause]||1|100|Sleep|||||18|
15|SoundBeep|7777, 33|1|0|SoundBeep|||||19|
16|SoundBeep|4444, 33|1|0|SoundBeep|||||20|
17|SoundBeep|7777, 33|1|0|SoundBeep|||||21|
18|5|{5}|1|222|ControlSend||ahk_exe rf4_x64.exe|||22|
19|[End If]|EndIf|1|0|If_Statement|||||24|
20|[Pause]||1|500|Sleep|||||25|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|done()
Context=None|
Groups=Start:1
1|[FunctionStart]|done|1|0|UserFunction|Local|godone / |||1|
2|Continue, Continue, FoundX, FoundY, 0|1229, 959, 1245, 966, *77 C:\cygwin64\home\lee\RF4BOT\mate\准备完毕.png|1|0|ImageSearch||Screen|||9|
3|If Image/Pixel Found||1|0|If_Statement|||||11|
4|ToolTip|线收完毕, A_ScreenWidth // 2, A_ScreenHeight // 2|1|250|ToolTip|||||13|
5|[Pause]||1|300|Sleep|||||15|
6|\|{\ Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||16|
7|RShift|{RShift Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||17|
8|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||18|
9|[Assign Variable]|godone := 1|1|0|Variable|Expression||||19|
010|SoundPlay|C:\cygwin64\home\lee\RF4BOT\mate\1.wav|1|250|SoundPlay|||||20|
11|[End If]|EndIf|1|0|If_Statement|||||20|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|allsave
Context=None|
Groups=Start:1
1|[Control]||1|0|ControlFocus||ahk_exe rf4_x64.exe|||1|
2|[LoopStart]|LoopStart|0|0|Loop|||||2|
3|eat|_null := |1|0|Function|||||4|
4|[LoopEnd]|LoopEnd|1|0|Loop|||||5|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|outloop()
Context=None|
Groups=Start:1
1|[FunctionStart]|outloop|1|0|UserFunction|Local|godone, go1 / |||1|
2|Evaluate Expression|go1=9000|1|0|If_Statement|||||4|
3|ToolTip|收线超时, A_ScreenWidth // 2, A_ScreenHeight // 2|1|250|ToolTip|||||6|
4|[Pause]|Random|1|333|Sleep|444||||8|
5|RShift|{RShift Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||9|
6|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||10|
7|[Assign Variable]|godone := 1|1|0|Variable|Expression||||11|
8|[Assign Variable]|go1 := 0|1|0|Variable|Expression||||12|
9|[End If]|EndIf|1|0|If_Statement|||||13|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|beep()
Context=None|
Groups=Start:1
1|[FunctionStart]|beep|1|0|UserFunction|Local| / |||1|
2|SoundBeep|7777, 33|1|0|SoundBeep|||||3|
3|ToolTip|入户, A_ScreenWidth // 2, A_ScreenHeight // 2|1|250|ToolTip|||||4|

*/
