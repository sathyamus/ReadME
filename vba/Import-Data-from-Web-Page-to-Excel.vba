

how to call REST endpoints from excel

https://techguruplus.com/vba-code-to-import-data-from-a-web-page-into-excel/

https://www.quickpickdeal.com/coding/how-send-an-http-post-request-to-a-server-from-excel-using-vba
https://www.exceldemy.com/integrating-external-apis-in-excel-fetching-live-data-with-power-query/
https://moldstud.com/articles/p-the-ultimate-guide-to-excel-api-integration-for-developers-enhance-your-data-management-skills


' VBA Code to Import Data from a Web Page into Excel

Sub ImportDataFromWeb()
    Dim ws As Worksheet
    Dim url As String
    
    ' Set the worksheet to import the data
    Set ws = ThisWorkbook.Worksheets("Sheet1") ' Replace with the name of your worksheet
    
    ' Specify the URL of the web page to import data from
    url = "https://www.example.com" ' Replace with the URL of your web page
    
    ' Clear the existing data in the worksheet
    ws.Cells.Clear
    
    ' Import the data from the web page
    With ws.QueryTables.Add(Connection:="URL;" & url, Destination:=ws.Range("A1"))
        .Name = "WebData"
        .FieldNames = True
        .RowNumbers = False
        .FillAdjacentFormulas = False
        .PreserveFormatting = True
        .RefreshOnFileOpen = False
        .BackgroundQuery = True
        .RefreshStyle = xlInsertDeleteCells
        .SavePassword = False
        .SaveData = True
        .AdjustColumnWidth = True
        .RefreshPeriod = 0
        .WebSelectionType = xlEntirePage
        .WebFormatting = xlWebFormattingNone
        .WebPreFormattedTextToColumns = True
        .WebConsecutiveDelimitersAsOne = True
        .WebSingleBlockTextImport = False
        .WebDisableDateRecognition = False
        .WebDisableRedirections = False
        .Refresh BackgroundQuery:=False
    End With
    
    ' Format the imported data if needed
    
    ' Display a message
    MsgBox "Data has been imported from the web page."
End Sub
