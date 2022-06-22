#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; Always on top
^SPACE::  Winset, Alwaysontop, , A

; Google Search highlighted text
^+c::
{
 Send, ^c
 Sleep 50
 Run, http://www.google.com/search?q=%clipboard%
 Return
}

; ToUpper
^+u::
Send, ^c
Sleep 50
StringUpper, clipboard, clipboard
Send, ^v
Clipboard :=

; ToLower
^+l::
Send, ^c
Sleep 50
StringLower, clipboard, clipboard
Send, ^v
Clipboard :=