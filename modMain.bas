Attribute VB_Name = "modMain"
'SecureScreensaver Source Code
'Copyright 2000 - 2001 Mahangu Weerasinghe
'You may use this code freely in your applications
'Email - vbdude777@email.com
'Website - http://mahangu.tripod.com


Public Declare Function SystemParametersInfo Lib _
"user32" Alias "SystemParametersInfoA" (ByVal uAction _
As Long, ByVal uParam As Long, ByVal lpvParam As Any, _
ByVal fuWinIni As Long) As Long

Dim Tries As Variant
Public Declare Function ExitWindowsEx Lib "user32" (ByVal uFlags As Long, ByVal dwReserved As Long) As Long
Public Const EWX_FORCE = 4
Public Const EWX_LOGOFF = 0
Public Const EWX_REBOOT = 2
Public Const EWX_SHUTDOWN = 1

Sub DisableCAD(bDisabled As Boolean)
    Dim x As Long
    x = SystemParametersInfo(97, bDisabled, CStr(1), 0)
End Sub

Public Sub AlwaysOnTop(hwnd As Long)
    SetWindowPos hwnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE + SWP_NOSIZE
End Sub


