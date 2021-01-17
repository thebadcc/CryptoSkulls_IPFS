Sub TextFile_Example1()

  Dim Path As String
  Dim FileNumber As Integer

  Path = "C:\Users\afend\Documents\jsonPull.txt"

   FileNumber = FreeFile

Open Path For Output As FileNumber

For i = 1 To 10000

   Print #FileNumber, Cells(i, 1) & ","

Next i

   Close FileNumber

End Sub
