VERSION 5.00
Begin VB.Form meldung 
   BorderStyle     =   1  'Fest Einfach
   Caption         =   "Schwerer Ausnahmefehler"
   ClientHeight    =   3015
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7575
   Icon            =   "meldung.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3015
   ScaleWidth      =   7575
   StartUpPosition =   2  'Bildschirmmitte
   Begin VB.TextBox Label2 
      BackColor       =   &H80000000&
      Height          =   1455
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   3
      Text            =   "meldung.frx":0442
      Top             =   720
      Width           =   7335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   495
      Left            =   2640
      TabIndex        =   2
      Top             =   2340
      Width           =   1995
   End
   Begin VB.PictureBox Picture1 
      BorderStyle     =   0  'Kein
      Height          =   495
      Left            =   120
      Picture         =   "meldung.frx":0448
      ScaleHeight     =   495
      ScaleWidth      =   495
      TabIndex        =   0
      Top             =   120
      Width           =   495
   End
   Begin VB.Label Label1 
      Caption         =   "Schwerer Ausnahmefehler an jeder Adresse"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   720
      TabIndex        =   1
      Top             =   180
      Width           =   6735
   End
End
Attribute VB_Name = "meldung"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload meldung
End Sub


