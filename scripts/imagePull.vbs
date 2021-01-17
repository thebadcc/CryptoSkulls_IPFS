For i = 0 To 9999

Dim document : Set document = WScript.GetObject("https://cryptoskulls.com/images/skulls/" & i & ".png")
While document.readyState <> "complete" : WScript.Sleep 200 : Wend
Dim xhr : Set xhr = CreateObject("MSXML2.XMLHTTP.3.0")
xhr.open "GET", document.getElementsByTagName("img")(0).src, False
xhr.send
Dim stream : Set stream = CreateObject("Adodb.Stream")
stream.Type = 1
stream.Open
stream.Write xhr.responseBody
stream.SaveToFile "C:\..\CryptoSkulls\" & i & ".png", 2
stream.Close
WScript.Sleep 100

Next
