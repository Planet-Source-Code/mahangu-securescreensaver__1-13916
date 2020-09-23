VERSION 5.00
Begin VB.Form frmMain 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.TextBox txtPass 
      Height          =   375
      Left            =   480
      TabIndex        =   2
      Text            =   "Password"
      Top             =   1320
      Width           =   1695
   End
   Begin VB.CommandButton cmdLogin 
      Caption         =   "&Login"
      Height          =   375
      Left            =   720
      TabIndex        =   1
      Top             =   1800
      Width           =   1215
   End
   Begin VB.TextBox txtUser 
      Height          =   375
      Left            =   480
      TabIndex        =   0
      Text            =   "Username"
      Top             =   840
      Width           =   1695
   End
   Begin VB.Shape shpBox 
      Height          =   1575
      Left            =   360
      Top             =   720
      Width           =   1935
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'SecureScreensaver Source Code
'Copyright 2000 - 2001 Mahangu Weerasinghe
'You may use this code freely in your applications
'Email - vbdude777@email.com
'Website - http://mahangu.tripod.com



Private Sub cmdLogin_Click()
If txtUser.Text = "Username" And txtPass.Text = "Password" Then
    Unload Me

    Else: MsgBox "You are not authorised to login!"
    
    End If

End Sub

Private Sub Form_Load()
DisableCAD True




End Sub

Private Sub Form_Terminate()
DisableCAD False

End Sub

Private Sub Form_Unload(Cancel As Integer)
DisableCAD False
End Sub


