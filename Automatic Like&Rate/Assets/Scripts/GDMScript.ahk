#NoEnv
DllCall("SetProcessDPIAware")
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2
DetectHiddenWindows, On
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
CoordMode, Tooltip, Screen

Test := A_ScriptDir . "\test.png"
SX := A_ScreenWidth
SY := A_ScreenHeight
Xmenu := SX * 1237 / 1920
Ymenu := SY * 462 / 1080
XGI := SX * 1420 / 1920
Y1 := SY * 759 / 1080
Y2 := SY * 461 / 1080
Y3 := SY * 250 / 1080
Y4 := SY * 642 / 1080
Y5 := SY * 336 / 1080
XposRate := SX * 1817 / 1920
YposRate := SY * 958 / 1080
XDemon := SX * 1224 / 1920
YDemon := SY * 604 / 1080
XSubmit := SX * 1181 / 1920
YSubmit := SY * 757 / 1080
XLikeDislike := SX * 1814 / 1920
YLikeDislike := SY * 784 / 1080
XLike := SX * 811 / 1920
YLike := SY * 590 / 1080
XReturn := SX * 92 / 1920
YReturn := SY * 80 / 1080
XNextPage := SX * 1850 / 1920
YNextPage := SY * 543 / 1080
XICOE := SX * 250 / 1920
YICOE := SY * 79 / 1080

Loop
{
	LoopN := 0
	MouseMove, %Xmenu%, %Ymenu%
	Loop, 100
	{
		SendInput, {WheelDown}
		Sleep, 10
	}
	Loop
	{
		LoopN += 1
		if (LoopN == 1)
		{
			MouseClick, left, %XGI%, %Y1%
		}
		else if (LoopN == 2)
		{
			MouseClick, left, %XGI%, %Y2%
		}
		else if (LoopN <= 7)
		{
			MouseClick, left, %XGI%, %Y3%
		}
		else if (LoopN == 8)
		{
			MouseClick, left, %XGI%, %Y4%
		}
		else if (LoopN == 9)
		{
			MouseClick, left, %XGI%, %Y5%
		}
		Sleep, 1500
		ImageSearch, foundX, foundY, 0, 0, A_ScreenWidth, A_ScreenHeight, %Test%
    if (ErrorLevel = 0)
    {
		MouseClick, left, %XposRate%, %YposRate%
		Sleep, 300
		MouseClick, left, %XDemon%, %YDemon%
		Sleep, 300
		MouseClick, left, %XSubmit%, %YSubmit%
		Sleep, 300
		MouseClick, left, %XLikeDislike%, %YLikeDislike%
		Sleep, 300
		MouseClick, left, %XLike%, %YLike%
		Sleep, 300
		MouseClick, left, %XReturn%, %YReturn%
		MouseClick, left, %XICOE%, %YICOE%
		Sleep, 1500
	}
	if (LoopN >= 9)
		{
			MouseClick, left, %XNextPage%, %YNextPage%
			Sleep, 2500
			break
		}
	}
}
