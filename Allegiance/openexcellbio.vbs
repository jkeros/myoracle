Option Explicit
Dim xlApp, xlBook, WshShell

Set WshShell = CreateObject("WScript.Shell") 




Set xlApp = CreateObject("Excel.Application")
'~~> Change Path here
Set xlBook = xlApp.Workbooks.Open("C:\Automated_DataLoad_Jobs\Test\Allegiance\exceltocvsbio.xlsm", 0, True)
xlApp.Run "SaveExcelCvs"
xlBook.Close
xlApp.Quit

Set xlBook = Nothing
Set xlApp = Nothing

'WScript.Echo "Finished."
WScript.Quit
Set WshShell = Nothing

