#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2
DetectHiddenWindows, On

if WinExist("Geometry Dash")
{
Run, GDMScript.ahk
}
else
{
MsgBox, Geometry Dash is not opened!
Run, % A_ScriptDir "\..\..\Run.ahk"
ExitApp
}
F3::
WinClose, GDMScript.ahk
WinClose, GDMScript.exe
Run, % A_ScriptDir "\..\..\Run.ahk"
ExitApp
return