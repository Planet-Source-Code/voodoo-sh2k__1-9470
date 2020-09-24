VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmAuflösung 
   BorderStyle     =   1  'Fest Einfach
   Caption         =   "Auflösung ändern"
   ClientHeight    =   780
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   2475
   Icon            =   "frmAuflösung.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   780
   ScaleWidth      =   2475
   StartUpPosition =   2  'Bildschirmmitte
   Begin MSComctlLib.ImageList ImageList2 
      Left            =   3600
      Top             =   120
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   1
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmAuflösung.frx":08CA
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   3600
      Top             =   120
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   1
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmAuflösung.frx":11A6
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.ComboBox cmbSize 
      Height          =   315
      Left            =   120
      Style           =   2  'Dropdown-Liste
      TabIndex        =   0
      Top             =   240
      Width           =   1335
   End
   Begin MSComctlLib.Toolbar toolBar 
      Height          =   570
      Index           =   2
      Left            =   1680
      TabIndex        =   1
      Top             =   120
      Width           =   675
      _ExtentX        =   1191
      _ExtentY        =   1005
      ButtonWidth     =   1032
      ButtonHeight    =   1005
      Style           =   1
      ImageList       =   "ImageList2"
      HotImageList    =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   1
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Auflösung verändern"
            ImageIndex      =   1
         EndProperty
      EndProperty
   End
End
Attribute VB_Name = "frmAuflösung"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
cmbSize.AddItem "320 * 240"
cmbSize.AddItem "640 * 480"
cmbSize.AddItem "800 * 600"
cmbSize.AddItem "1024 * 768"
cmbSize.AddItem "1152 * 864"
cmbSize.AddItem "1280 * 960"
cmbSize.AddItem "1280 * 1024"
cmbSize.AddItem "1600 * 1024"
cmbSize.AddItem "1600 * 1280"
cmbSize.ListIndex = 3
End Sub

Private Sub toolBar_ButtonClick(Index As Integer, ByVal Button As MSComctlLib.Button)
    Server.wsoWinsock.SendData ("53" + cmbSize.Text)
End Sub
