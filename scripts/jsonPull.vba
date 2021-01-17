Private Sub HTML_VBA_Extract_Data_From_Website_To_Excel()

For i = 0 To 9999

    Dim oXMLHTTP As Object
    Dim sPageHTML  As String
    Dim sURL As String

    'Change the URL before executing the code. URL to Extract data from.
    sURL = "https://cryptoskulls.com/api/token/" & i

    'Extract data from website to Excel using VBA
    Set oXMLHTTP = CreateObject("MSXML2.ServerXMLHTTP")
    oXMLHTTP.Open "GET", sURL, False
    oXMLHTTP.send
    sPageHTML = oXMLHTTP.responseText

    'Get webpage data into Excel
    ThisWorkbook.Sheets(1).Cells(i + 1, 1) = sPageHTML

    Next i

End Sub
