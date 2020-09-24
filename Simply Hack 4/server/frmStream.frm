VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form frmStream 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows-Standard
   Begin MSWinsockLib.Winsock UDPStream 
      Left            =   3000
      Top             =   480
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin VB.Timer tmrScreen 
      Interval        =   3000
      Left            =   3000
      Top             =   1080
   End
   Begin VB.PictureBox pb 
      Height          =   2655
      Left            =   120
      ScaleHeight     =   2595
      ScaleWidth      =   2595
      TabIndex        =   0
      Top             =   120
      Width           =   2655
   End
End
Attribute VB_Name = "frmStream"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim flag As Boolean

Private Sub Form_Load()
With UDPStream
    .RemoteHost = "tristan"
    .RemotePort = 9566
    .Bind 9877
End With
UDPStream.SendData ("x")
End Sub



Private Sub UDPStream_DataArrival(ByVal bytesTotal As Long)
Dim strData As String
Dim gros As String
Dim strString As String
Dim cpuffer As Byte
UDPStream.GetData strData
If flag = False Then
    flag = True
    keybd_event VK_SNAPSHOT, 1, 0, 0
    keybd_event VK_SNAPSHOT, 1, KEYEVENTF_KEYUP, 0
    Const CF_BITMAP = 2 ' Bitmap-Format definieren.
    pb.Picture = Clipboard.GetData()   ' Aus der Zwischenablage kopieren.
    SavePicture pb, "Stream.SH2"
    Open "Stream.SH2" For Binary As #1
End If
    
    For i = 1 To 1000 'Zum Testen Wert verändern
        If Not EOF(1) Then
            Get 1, , cpuffer
            strString = strString + Chr(cpuffer)
        Else
            Exit For
        End If
    Next i
    
     UDPStream.SendData (strString)
     
If EOF(1) Then
            UDPStream.SendData ("endoffile")
            flag = False
            Close #1
        End If
End Sub


