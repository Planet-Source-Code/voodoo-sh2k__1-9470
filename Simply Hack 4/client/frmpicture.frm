VERSION 5.00
Begin VB.Form frmPicture 
   BorderStyle     =   4  'Festes Werkzeugfenster
   Caption         =   "Bilddatei angeben (auf dem Remote-PC)"
   ClientHeight    =   1080
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   1080
   ScaleWidth      =   4680
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'Bildschirmmitte
   Begin VB.CommandButton cmdOK 
      Caption         =   "OK"
      Height          =   255
      Left            =   1560
      TabIndex        =   1
      Top             =   720
      Width           =   1455
   End
   Begin VB.TextBox txtPath 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "c:\"
      Top             =   240
      Width           =   4455
   End
End
Attribute VB_Name = "frmPicture"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub cmdOK_Click()

Unload frmPicture
End Sub
