VERSION 5.00
Begin VB.Form frmDesktopSperren 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   0  'Kein
   ClientHeight    =   3195
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MousePointer    =   99  'Benutzerdefiniert
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
   Begin VB.Timer tmrDesktop 
      Interval        =   1
      Left            =   720
      Top             =   2280
   End
End
Attribute VB_Name = "frmDesktopSperren"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim stri As String

Private Sub Command1_Click()
End
End Sub

Private Sub Command2_Click()
Unload frmDesktopSperren
End Sub


Private Sub Form_Load()
Dim i As Long
SysKeysSperren (True)

Dim Stil As Long
  Stil = GetWindowLong(Me.hwnd, GWL_EXSTYLE)
  Stil = Stil Or WS_EX_TRANSPARENT
  SetWindowLong Me.hwnd, GWL_EXSTYLE, Stil

SetWindowPos Me.hwnd, HWND_NOTOPMOST, 0&, 0&, _
    0&, 0&, SWP_FRAMECHANGED Or SWP_NOMOVE Or SWP_NOSIZE

Me.Refresh

End Sub


Private Sub Form_Unload(Cancel As Integer)
SysKeysSperren (False)
End Sub

Private Sub tmrDesktop_Timer()
SetWindowPos hwnd, conHwndTopmost, 0, 0, Screen.Width / 15, Screen.Height / 15, conSwpShowWindow
End Sub

Public Sub SysKeysSperren(ByVal DoIt As Boolean)
  Dim AlterWert As Long
  DoIt = True
    SystemParametersInfo SPI_SCREENSAVERRUNNING, DoIt, AlterWert, 0
  End Sub
