Sub CreateJiraIssuesFromRows()

    Dim ws As Worksheet
    Dim lastRow As Long, r As Long

    Dim jiraUrl As String
    Dim jiraUser As String
    Dim jiraToken As String
    Dim authHeader As String

    Dim http As Object
    Dim jsonBody As String
    Dim projectKey As String, issueType As String
    Dim summary As String, description As String

    Set ws = ThisWorkbook.Sheets("Sheet1") ' adjust

    ' CONFIGURE THESE
    jiraUrl = "https://httpbin.org/post"                  ' no trailing slash
    jiraUser = "your-username"
    jiraToken = "your-api-token-or-password"
    
    authHeader = "Basic " & jiraToken

    lastRow = ws.Cells(ws.Rows.Count, "A").End(xlUp).Row
    
    
    For r = 2 To lastRow
        projectKey = Trim(ws.Cells(r, "A").Value)
        issueType = Trim(ws.Cells(r, "B").Value)
        summary = Replace(Trim(ws.Cells(r, "C").Value), """", "\""")
        description = Replace(Trim(ws.Cells(r, "D").Value), """", "\""")
        
        If Len(projectKey) = 0 Or Len(issueType) = 0 Or Len(summary) = 0 Then
            ws.Cells(r, "E").Value = "Skipped: missing mandatory fields"
            GoTo NextRow
        End If

        jsonBody = _
            "{" & _
            "  ""fields"": {" & _
            "    ""project"": { ""key"": """ & projectKey & """ }," & _
            "    ""summary"": """ & summary & """," & _
            "    ""description"": """ & description & """," & _
            "    ""issuetype"": { ""name"": """ & issueType & """ }" & _
            "  }" & _
            "}"

        Set http = CreateObject("MSXML2.ServerXMLHTTP")

        With http
            .Open "POST", jiraUrl & "/rest/api/2/issue", False
            .setRequestHeader "Content-Type", "application/json"
            .setRequestHeader "Accept", "application/json"
            .setRequestHeader "Authorization", authHeader
            .send jsonBody

            MsgBox "Alert !!. status : " & .Status
            
            If .Status >= 200 And .Status < 300 Then
                ws.Cells(r, "O").Value = "Created"
                ws.Cells(r, "P").Value = .responseText ' contains id and key
            Else
                ws.Cells(r, "O").Value = "Error " & .Status
                ws.Cells(r, "P").Value = .responseText
            End If
        End With
        
        MsgBox "Alert !!. Row : " & r
    
NextRow:
    Next r
    
    
    Set http = Nothing
    
    
        ' Display a message
    MsgBox "Alert !!.  " & lastRow & "jsonBody : " & jsonBody
End Sub