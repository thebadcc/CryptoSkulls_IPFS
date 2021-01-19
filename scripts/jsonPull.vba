Private Sub x()

For i = 0 To 9999

    Dim oXMLHTTP As Object
    Dim sPageHTML  As String
    Dim sURL As String

    sURL = "https://cryptoskulls.com/api/token/" & i

    Set oXMLHTTP = CreateObject("MSXML2.ServerXMLHTTP")
    oXMLHTTP.Open "GET", sURL, False
    oXMLHTTP.send
    sPageHTML = oXMLHTTP.responseText

    ThisWorkbook.Sheets(1).Cells(i + 1, 1) = sPageHTML

    Next i

End Sub
