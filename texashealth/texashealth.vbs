Option Explicit
Dim xlApp, xlBook, WshShell

Set WshShell = CreateObject("WScript.Shell") 




Set xlApp = CreateObject("Excel.Application")
'~~> Change Path here
Set xlBook = xlApp.Workbooks.Open("c:\AutoMated_DataLoad_Jobs\Test\texashealth\texashealth.xlsm", 0, True)
xlApp.Run "LoadExcelCvs"
xlBook.Close
xlApp.Quit

Set xlBook = Nothing
Set xlApp = Nothing

'WScript.Echo "Finished."
WScript.Quit
Set WshShell = Nothing