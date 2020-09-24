VERSION 5.00
Begin VB.Form Chat 
   BorderStyle     =   1  'Fest Einfach
   Caption         =   "Chat"
   ClientHeight    =   4410
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4935
   Icon            =   "chat.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4410
   ScaleWidth      =   4935
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'Bildschirmmitte
   Begin VB.ListBox List1 
      Height          =   3765
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   4695
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Top             =   3960
      Width           =   4695
   End
End
Attribute VB_Name = "Chat"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub Form_Unload(Cancel As Integer)
client.wsoWinsock.SendData ("29")
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyReturn Then
        client.wsoWinsock.SendData ("24 " + "@Opfer: " + Text1.Text)
        List1.AddItem "@Opfer: " + Text1.Text
        Text1.Text = ""
        List1.ListIndex = List1.ListCount - 1
    End If
End Sub
