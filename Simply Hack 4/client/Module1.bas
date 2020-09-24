Attribute VB_Name = "Module1"
Global FilePath As String
Global SendFilePath As String
Global Blocks As Long
Global SentBlocks As Long
Global file As Boolean
Global Pfad As String
Global screenshot As Boolean

Declare Function SetCursorPos Lib "user32" (ByVal x As Long, ByVal y As Long) As Long

Public Sub Main()
screenshot = False
Server.Show
End Sub
