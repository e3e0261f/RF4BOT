﻿; This script was created using Pulover's Macro Creator
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
ImageSearch, FoundX, FoundY, 1980, 1148, 2153, 1261, *99 *Trans0x773E39 C:\Users\lee\Documents\T.png
If (ErrorLevel = 0)
{
    scan4()
}
Sleep, 200
Run, E:\1.vbs, E:\
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
    ImageSearch, FoundX, FoundY, 1948, 1145, 2178, 1180, *66 C:\Users\lee\Pictures\title.png
    If (ErrorLevel)
    {
        SoundBeep, 120, 100
        Sleep, 300
        SoundBeep, 120, 100
    }
    If (ErrorLevel = 0)
    {
    }
}
Return

scan1()
{
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 1979, 1151, 2145, 1256, *66 C:\Users\lee\Pictures\title.png
    If (ErrorLevel)
    {
        scan2()
    }
    If (ErrorLevel = 0)
    {
        godone := 0
    }
}

scan2()
{
    Run, E:\2.vbs, E:\
    scan21()
    Sleep, 300
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
        CoordMode, Pixel, Screen
        ImageSearch, FoundX, FoundY, 983, 1332, 1015, 1353, *88 *Trans0x773E39 C:\Users\lee\Documents\T.png
        If (ErrorLevel)
        {
            ControlSend, , {\ Down}, ahk_exe rf4_x64.exe
            ControlSend, , {RShift Down}, ahk_exe rf4_x64.exe
            ControlSend, , {Enter Down}, ahk_exe rf4_x64.exe
        }
        SoundBeep, 120, 100
        go1 += 1
        outloop()
        done()
        CoordMode, Pixel, Screen
        ImageSearch, FoundX, FoundY, 0, 0, 2560, 1399, C:\Users\lee\Documents\经验点数.png
        If (ErrorLevel = 0)
        {
            ControlSend, , {\ Up}, ahk_exe rf4_x64.exe
            ControlSend, , {RShift Up}, ahk_exe rf4_x64.exe
            ControlSend, , {Enter Up}, ahk_exe rf4_x64.exe
            godone := 1
            Sleep, 300
            scan3()
        }
    }
    Until, godone=1
    godone := 0
}

scan3()
{
    Run, E:\3.vbs, E:\
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 929, 78, 1635, 333, *77 C:\Users\lee\Documents\达标.png
    If (ErrorLevel = 0)
    {
        SoundBeep, 140, 100
        ControlSend, , {Space}, ahk_exe rf4_x64.exe
        Sleep, 300
        ControlSend, , {Space}, ahk_exe rf4_x64.exe
    }
    If (ErrorLevel)
    {
        SoundBeep, 188, 100
        ControlClick, , ahk_exe rf4_x64.exe,, Left, 1,  x1301 y1046 NA
        Sleep, 10
        Sleep, 300
        ControlSend, , {Backspace}, ahk_exe rf4_x64.exe
    }
}

scan4()
{
    Run, E:\4.vbs, E:\
    ControlSend, , {Enter Down}, ahk_exe rf4_x64.exe
    Sleep, 900
    ControlSend, , {Enter Up}, ahk_exe rf4_x64.exe
    Sleep, 4200
    eat()
}

eat()
{
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 186, 1287, 230, 1315, *88 C:\Users\lee\Documents\红条.png
    If (ErrorLevel = 0)
    {
        SoundBeep, 4444, 33
        SoundBeep, 7777, 33
        SoundBeep, 4444, 33
        ControlSend, , {4}, ahk_exe rf4_x64.exe
        Sleep, 300
    }
    Sleep, 300
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 190, 1354, 218, 1372, *88 C:\Users\lee\Documents\红条.png
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
    ImageSearch, FoundX, FoundY, 983, 1332, 1015, 1353, *88 *Trans0x773E39 C:\Users\lee\Documents\T.png
    If (ErrorLevel = 0)
    {
        ControlSend, , {\ Up}, ahk_exe rf4_x64.exe
        ControlSend, , {RShift Up}, ahk_exe rf4_x64.exe
        ControlSend, , {Enter Up}, ahk_exe rf4_x64.exe
        godone := 1
    }
}

Macro10:
ControlFocus, , ahk_exe rf4_x64.exe
Loop
{
    eat()
}
Return

outloop()
{
    global godone, go1
    If (go1=300)
    {
        Sleep, 333
        ControlSend, , {\ Up}, ahk_exe rf4_x64.exe
        ControlSend, , {RShift Up}, ahk_exe rf4_x64.exe
        ControlSend, , {Enter Up}, ahk_exe rf4_x64.exe
        godone := 1
    }
}


F8::ExitApp

F12::Pause

/*
PMC File Version 5.4.1
---[Do not edit anything in this section]---

[PMC Globals]|None|ahk_exe rf4_x64.exe|
[PMC Code v5.4.1]|F3||1|Window,2,Fast,0,1,Input,-1,-1,1|1|Macro1
Context=None|
Groups=开始:1
1|Continue, Continue, FoundX, FoundY, 0|1980, 1148, 2153, 1261, *99 *Trans0x773E39 C:\Users\lee\Documents\T.png|1|0|ImageSearch||Screen|||1|
2|If Image/Pixel Found||1|0|If_Statement|||||3|
3|scan4|_null := |1|0|Function|||||5|
4|[End If]|EndIf|1|0|If_Statement|||||6|
5|[Pause]||1|200|Sleep|||||7|
6|Run|E:\1.vbs, E:\|1|0|Run|||||8|
7|[LoopStart]|LoopStart|0|0|Loop|||||9|
8|scan1|_null := |1|0|Function|||||11|
9|[LoopEnd]|LoopEnd|1|0|Loop|||||12|

[PMC Code v5.4.1]|F2||1|Window,2,Fast,0,1,Input,-1,-1,1|1|Macro2
Context=None|
Groups=Start:1
1|[LoopStart]|LoopStart|0|0|Loop|||||1|
2|Continue, Continue, FoundX, FoundY, 0|1948, 1145, 2178, 1180, *66 C:\Users\lee\Pictures\title.png|1|0|ImageSearch||Screen|||3|
3|If Image/Pixel Not Found||1|0|If_Statement|||||5|
4|SoundBeep|120, 100|1|0|SoundBeep|||||7|
5|[Pause]||1|300|Sleep|||||8|
6|SoundBeep|120, 100|1|0|SoundBeep|||||9|
7|[End If]|EndIf|1|0|If_Statement|||||10|
8|If Image/Pixel Found||1|0|If_Statement|||||11|
9|[End If]|EndIf|1|0|If_Statement|||||13|
10|[LoopEnd]|LoopEnd|1|0|Loop|||||14|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|scan1()
Context=None|
Groups=Start:1
1|[FunctionStart]|scan1|1|0|UserFunction|Local| / |||1|
02|Run|E:\1.vbs, E:\|1|0|Run|||||3|
3|Continue, Continue, FoundX, FoundY, 0|1979, 1151, 2145, 1256, *66 C:\Users\lee\Pictures\title.png|1|0|ImageSearch||Screen|||3|
4|If Image/Pixel Not Found||1|0|If_Statement|||||5|
05|WinActivate||1|333|WinActivate||ahk_exe rf4_x64.exe|||7|
6|scan2|_null := |1|0|Function|||||9|
7|[End If]|EndIf|1|0|If_Statement|||||10|
8|If Image/Pixel Found||1|0|If_Statement|||||11|
9|[Assign Variable]|godone := 0|1|0|Variable|Expression||||13|
10|[End If]|EndIf|1|0|If_Statement|||||14|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|scan2()
Context=None|
Groups=Start:1
1|[FunctionStart]|scan2|1|0|UserFunction|Local| / |||1|
2|Run|E:\2.vbs, E:\|1|0|Run|||||3|
3|scan21|_null := |1|0|Function|||||4|
4|[Pause]||1|300|Sleep|||||5|
5|scan4|_null := |1|0|Function|||||6|

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
15|Continue, Continue, FoundX, FoundY, 0|983, 1332, 1015, 1353, *88 *Trans0x773E39 C:\Users\lee\Documents\T.png|1|0|ImageSearch||Screen|||18|
16|If Image/Pixel Not Found||1|0|If_Statement|||||20|
17|\|{\ Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||22|
18|RShift|{RShift Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||23|
19|Enter|{Enter Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||24|
20|[End If]|EndIf|1|0|If_Statement|||||25|
21|SoundBeep|120, 100|1|0|SoundBeep|||||26|
22|[Add Variable]|go1 += 1|1|0|Variable|Expression||||27|
23|outloop|_null := |1|0|Function|||||28|
24|done|_null := |1|0|Function|||||29|
25|Continue, Continue, FoundX, FoundY, 0|0, 0, 2560, 1399, C:\Users\lee\Documents\经验点数.png|1|0|ImageSearch||Screen|||30|
26|If Image/Pixel Found||1|0|If_Statement|||||32|
27|\|{\ Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||34|
28|RShift|{RShift Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||35|
29|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||36|
30|[Assign Variable]|godone := 1|1|0|Variable|Expression||||37|
31|[Pause]||1|300|Sleep|||||38|
32|scan3|_null := |1|0|Function|||||39|
33|[End If]|EndIf|1|0|If_Statement|||||40|
34|[LoopEnd]|LoopEnd|1|0|Loop|||||41|
35|[Assign Variable]|godone := 0|1|0|Variable|Expression||||43|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|scan3()
Context=None|
Groups=Start:1
1|[FunctionStart]|scan3|1|0|UserFunction|Local| / |||1|
2|Run|E:\3.vbs, E:\|1|0|Run|||||3|
3|Continue, Continue, FoundX, FoundY, 0|929, 78, 1635, 333, *77 C:\Users\lee\Documents\达标.png|1|0|ImageSearch||Screen|||4|
4|If Image/Pixel Found||1|0|If_Statement|||||6|
5|SoundBeep|140, 100|1|0|SoundBeep|||||8|
6|Space|{Space}|1|0|ControlSend||ahk_exe rf4_x64.exe|||9|
7|[Pause]||1|300|Sleep|||||10|
8|Space|{Space}|1|0|ControlSend||ahk_exe rf4_x64.exe|||11|
9|[End If]|EndIf|1|0|If_Statement|||||12|
10|If Image/Pixel Not Found||1|0|If_Statement|||||13|
11|SoundBeep|188, 100|1|0|SoundBeep|||||15|
12|Left Click|Left, 1,  x1301 y1046 NA|1|10|ControlClick||ahk_exe rf4_x64.exe|||16|
13|[Pause]||1|300|Sleep|||||18|
14|Backspace|{Backspace}|1|0|ControlSend||ahk_exe rf4_x64.exe|||19|
15|[End If]|EndIf|1|0|If_Statement|||||20|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|scan4()
Context=None|
Groups=Start:1
1|[FunctionStart]|scan4|1|0|UserFunction|Local| / |||1|
2|Run|E:\4.vbs, E:\|1|0|Run|||||3|
3|Enter|{Enter Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||4|
4|[Pause]|Random|1|900|Sleep|950||||5|
5|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||6|
6|[Pause]||1|4200|Sleep|||||7|
7|eat|_null := |1|0|Function|||||8|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|eat()
Context=None|
Groups=Start:1
1|[FunctionStart]|eat|1|0|UserFunction|Local| / |||1|
2|Continue, Continue, FoundX, FoundY, 0|186, 1287, 230, 1315, *88 C:\Users\lee\Documents\红条.png|1|0|ImageSearch||Screen|||3|
3|If Image/Pixel Found||1|0|If_Statement|||||5|
4|SoundBeep|4444, 33|1|0|SoundBeep|||||7|
5|SoundBeep|7777, 33|1|0|SoundBeep|||||8|
6|SoundBeep|4444, 33|1|0|SoundBeep|||||9|
7|4|{4}|1|0|ControlSend||ahk_exe rf4_x64.exe|||10|
8|[Pause]||1|300|Sleep|||||11|
9|[End If]|EndIf|1|0|If_Statement|||||12|
10|[Pause]||1|300|Sleep|||||13|
11|Continue, Continue, FoundX, FoundY, 0|190, 1354, 218, 1372, *88 C:\Users\lee\Documents\红条.png|1|0|ImageSearch||Screen|||14|
12|If Image/Pixel Found||1|0|If_Statement|||||16|
13|[Pause]||1|100|Sleep|||||18|
14|SoundBeep|7777, 33|1|0|SoundBeep|||||19|
15|SoundBeep|4444, 33|1|0|SoundBeep|||||20|
16|SoundBeep|7777, 33|1|0|SoundBeep|||||21|
17|5|{5}|1|222|ControlSend||ahk_exe rf4_x64.exe|||22|
18|[End If]|EndIf|1|0|If_Statement|||||24|
19|[Pause]||1|500|Sleep|||||25|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|done()
Context=None|
Groups=Start:1
1|[FunctionStart]|done|1|0|UserFunction|Local|godone / |||1|
2|Continue, Continue, FoundX, FoundY, 0|983, 1332, 1015, 1353, *88 *Trans0x773E39 C:\Users\lee\Documents\T.png|1|0|ImageSearch||Screen|||4|
3|If Image/Pixel Found||1|0|If_Statement|||||6|
4|\|{\ Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||8|
5|RShift|{RShift Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||9|
6|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||10|
7|[Assign Variable]|godone := 1|1|0|Variable|Expression||||11|
8|[End If]|EndIf|1|0|If_Statement|||||12|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|Macro10
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
2|Evaluate Expression|go1=300|1|0|If_Statement|||||4|
3|[Pause]|Random|1|333|Sleep|444||||6|
4|\|{\ Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||7|
5|RShift|{RShift Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||8|
6|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||9|
7|[Assign Variable]|godone := 1|1|0|Variable|Expression||||10|
08|[Pause]|Random|1|3333|Sleep|3344||||11|
9|[End If]|EndIf|1|0|If_Statement|||||11|

*/
