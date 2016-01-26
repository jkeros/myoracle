Sub LoadExcelCvs()
'''''''''''''''''''''''''''''
''''''''''''''Date:  05242014
''''''''''''''Description: This is the main procedure for the
''''''''''''''             automated data load
''''''''''''''Input:       None
'''''''''''''''''''''''''''''
'Dim MyFile As String,

Application.ScreenUpdating = False
Dim Sep As String
      Dim dirpath As String
      Dim cfile As String
      Dim cPath As String
      Dim rCfile As String
      Dim aCfile As String
      
    '''' set the control file paths
     
       Application.ScreenUpdating = False
       pControl = "C:\AutoMated_DataLoad_Jobs\test\oswald\control\oswald.ctl"
       dirpath = "C:\AutoMated_DataLoad_Jobs\test\oswald\toprocess\"
       cfile = "C:\AutoMated_DataLoad_Jobs\test\oswald\control\personnel.ctl"
      ' rCfile = "C:\AutoMated_DataLoad_Jobs\test\oswald\control\retail.ctl"
       ' aCfile = "C:\AutoMated_DataLoad_Jobs\test\oswald\control\main_alle.ctl"
      
       
       
       
      '' jak put back MyFile = Dir(dirpath & "*.csv")
         Dim objFSO As Object
         Dim fcount As Integer
    
    Set objFSO = CreateObject("Scripting.FileSystemObject").GetFolder(dirpath)
     fcount = objFSO.Files.Count
     Dim ii As Integer
     ii = 1
         

   '' jak put back Set colFiles = objFSO.Files
    
    
'' original JAK   For Each objFile In colFiles

    Dim colFiles As New Collection
  

    Dim MyFile As Variant
     RecursiveDir colFiles, dirpath, "*.xls*", True
    For Each MyFile In colFiles

   
     
       ' pExcel = grab_Shortpath(MyFile)
         pExcel = Replace(MyFile, " ", "")
         
         
        
        ''''
        ''' determine if this is retail or not
        '''

      



  '' original jak   MyFile = objFile.Name
            Dim xlApp, workBook1, workBook2, aSheets, fileName, aInfo2, aInfo1, oExcel, xl, wb, objWorksheet


            Const xlDelimited = 1
            Const xlTextQualifierDoubleQuote = 1
        Const xlOpenXMLWorkbook = 51
        Const xlCSV = 6
        Set xl = CreateObject("Excel.Application")

        xl.DisplayAlerts = False
        xl.Visible = True
        Set xl = CreateObject("Excel.Application")


        Application.Workbooks.Open (MyFile)
        'xl.Workbooks.Open (MyFile)

        Set wb = xl
        indexx = InStrRev(pExcel, "\")
        efilename = Mid(pExcel, indexx + 1)

        Set objExcel = GetObject(, "Excel.Application")

        With objExcel
        .Visible = True
        Set objWorkbook = .Workbooks(Mid(MyFile, InStrRev(MyFile, "\") + 1))
        objWorkbook.Activate
        End With
     
        
        
    
       

        Set wb = xl


        xl.DisplayAlerts = False

        Set objWorksheet = objWorkbook.Worksheets(1)
        
        If InStr(MyFile, "xlsx") > 0 Then
                 objWorksheet.SaveAs Replace(pExcel, ".xlsx", ".csv"), xlCSV
        Else
                 objWorksheet.SaveAs Replace(pExcel, ".xls", ".csv"), xlCSV
        End If
        

        xl.DisplayAlerts = False


        objWorkbook.Close savechanges:=False


'objWorksheet.SaveAs Replace(MyFile, ".xlsx", ".csv"), xlCSV

'xl.Quit


'''' now do the sqlldr command



Dim dataPart, controlPart, logPart, badPart
'''' put each of these parts into a java routine

        Set WshShell = CreateObject("WScript.Shell")
        Dim sqlldrvar
        'pExcel = LCase(pExcel)

        If InStr(pExcel, ".xlsx") > 0 Then
            sqlldrvar = "java sqlLoad data=" & Replace(pExcel, ".xlsx", ".csv") & " control=" & pControl
         ' sqlldrvar = "sqlldr julieker/hmrc$$julie1015@hradev_oracle data=" & Replace(pExcel, ".xlsx", ".csv") & " control=" & pControl
        Else
            sqlldrvar = "java sqlLoad  data=" & Replace(pExcel, ".xls", ".csv") & " control=" & pControl
           'sqlldrvar = "sqlldr julieker/hmrc$$julie1015@hradev_oracle data=" & Replace(pExcel, ".xls", ".csv") & " control=" & pControl
        End If

      indexx = InStrRev(pExcel, "\")
        efilename = Mid(pExcel, indexx + 1)
 loGGdir = "C:\AutoMated_DataLoad_Jobs\test\oswald\log\" & efilename & ".log"
 badPart = "C:\AutoMated_DataLoad_Jobs\test\oswald\log\" & efilename & ".bad"
 

        sqlldrvar = sqlldrvar & " log=" & loGGdir & " bad=" & badPart
        

        'WshShell.Run "ping -n 1 127.0.0.1>nul"
        
        
        WshShell.Run "ping 127.0.0.1 -4", 0, 1
        
        WshShell.Run sqlldrvar, 0, False


        WshShell.Run "ping 127.0.0.1 -4", 0, 1
        'im objShell

        'Set objShell = CreateObject("Shell.Application")

        'objShell.Run sqlldrvar




        'wb.Close

        'xl.Quit
       


        indexx = InStrRev(MyFile, "\")
        efilename = Mid(MyFile, indexx + 1)

   

 '''''''
'''' Look at string of log file  and if there is ORA in it then send an error message:
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Dim objFSOSource_agr, objFilesSource_agr, txtelig

  Set objFSOSource_agr = CreateObject("scripting.filesystemobject")
    Set objFilesSource_agr = objFSOSource_agr.OpenTextFile(loGGdir, 1)
    
    'Response.Write "debug3 I am INSIDE the ADD VoidTimeStamp..." & "<br>"
    
    txtelig = objFilesSource_agr.ReadAll
    objFilesSource_agr.Close

   ''''''''''''''''  Send email if there is an error
   ''''''''''''''''
   If InStr(txtelig, "ORA") > 0 Or InStr(txtelig, "System error") Then
   
   '''''''''''''''''''   Error was found
   Dim strSMTPFrom, strSMTPT, strSMTPRelay, strTextBody, strSubject, strAttachment, oMessage

strSMTPFrom = "julieker@umich.edu"
strSMTPTo = "julieker@umich.edu"
'strSMTPRelay = "98.139.237.162"
strTextBody = "---- File eligibility ended in error.  Log file is shown below : " & vbCrLf & vbCrLf & txtelig

strSubject = "Allegiance Eligibility File Load -- Error"



Set oMessage = CreateObject("CDO.Message")
'oMessage.Configuration.Fields.Item _
("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 0
oMessage.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
oMessage.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "192.168.249.210"

'oMessage.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = 1
oMessage.Configuration.Fields.Item("http://schemas.microsoft.compa/cdo/configuration/smtpserverport") = 25


oMessage.Subject = strSubject
oMessage.From = strSMTPFrom
oMessage.To = strSMTPTo
oMessage.TextBody = strTextBody


oMessage.Configuration.Fields.Update
oMessage.Send
   
   End If '''''''''''''''''''''''''''''''''''''''''''''''''''''''   Look at email error
   
   
   '''''''''''''''''''''''''''''' end of send email if error
   
        copyfileProcessed

'''' Go ahead and delete the file in toprocess and the csv file
KillProperly (MyFile)
KillProperly (Replace(Replace(pExcel, ".xlsx", ".csv"), ".xls", ".csv"))



 
 

    
       
Next MyFile
'WshShell.Run "ping -n 2 127.0.0.1"

  'Call cleanUp
   

Application.ScreenUpdating = True










End Sub
Public Sub copyfileProcessed()

Dim DestinationFile


'efilename = Mid(efilename, 1, InStr(efilename, ".") - 1) & Date & ".xlsx"
DestinationFile = "C:\AutoMated_DataLoad_Jobs\test\oswald\processed\" & efilename

Dim SourceFile
SourceFile = "C:\AutoMated_DataLoad_Jobs\test\oswald\toprocess\" & efilename
Const DestFolder = "C:\AutoMated_DataLoad_Jobs\test\oswald\processed\"



Set fso = CreateObject("Scripting.FileSystemObject")
    'Check to see if the file already exists in the destination folder
    If fso.FileExists(DestinationFile) Then
        'Check to see if the file is read-only
        If Not fso.GetFile(DestinationFile).Attributes And 1 Then
            'The file exists and is not read-only.  Safe to replace the file.
            fso.CopyFile SourceFile, DestFolder, True
        Else
            'The file exists and is read-only.
            'Remove the read-only attribute
            fso.GetFile(DestinationFile).Attributes = fso.GetFile(DestinationFile).Attributes - 1
            'Replace the file
            fso.CopyFile SourceFile, DestFolder, True
            'Reapply the read-only attribute
            fso.GetFile(DestinationFile).Attributes = fso.GetFile(DestinationFile).Attributes + 1
        End If
    Else
        'The file does not exist in the destination folder.  Safe to copy file to this folder.
        fso.CopyFile SourceFile, DestinationFile, True
       
        
        
    End If
    
    
  
  
    
    
  '''' If fso.FileExists(DestinationFile) Then
  ''' Make sure it was copied to the destination correctly.  Only then do we delete it.
    
     ''''   fso.DeleteFile SourceFile
         
    ''''    Dim csvFile
    ''''  csvFile = Replace(Replace(LCase(SourceFile), ".xlsx", ".csv"), "xls", "csv")
         
         ''' if the csv file still exists then delete that too
         
     ''''  If fso.FileExists(csvFile) Then
        ''''    fso.DeleteFile csvFile
    ''''  End If
         
         
         
 ''''  End If
    
Set fso = Nothing

End Sub
Public Sub KillProperly(Killfile As String)
    If Len(Dir$(Killfile)) > 0 Then
        SetAttr Killfile, vbNormal
        Kill Killfile
    End If
End Sub

Public Sub cleanUp()
Dim csvvFile
   Dim colfiles2 As New Collection
   Dim vtextfile

    Dim myfile2 As Variant
    Dim dirpath2 As String
     dirpath2 = "C:\AutoMated_DataLoad_Jobs\test\oswald\toprocess\"
     
     RecursiveDir colfiles2, dirpath2, "*.xlsx", True


 For Each myfile2 In colfiles2
        
           
           
           
           KillProperly (myfile2)
      
          
    Next myfile2

      RecursiveDir colfiles2, dirpath2, "*.csv", True


 For Each myfile2 In colfiles2
        
           
           
           
           KillProperly (myfile2)
      
          
    Next myfile2
    
          RecursiveDir colfiles2, dirpath2, "*.log", True


 For Each myfile2 In colfiles2
        
           
           
           
           KillProperly (myfile2)
      
          
    Next myfile2
        
    For Each myfile2 In colfiles2
           csvvFile = Replace(Replace(LCase(myfile2), ".xlsx", ".csv"), ".xls", ".csv")
             vtextfile = Replace(Replace(LCase(myfile2), ".xlsx", ".csv"), ".xls", ".xls.log")
           
           
           KillProperly (myfile2)
          KillProperly (csvvFile)
          KillProperly (vtextfile)
          
    Next myfile2
    
End Sub
Public Function RecursiveDir(colFiles As Collection, _
                             strFolder As String, _
                             strFileSpec As String, _
                             bIncludeSubfolders As Boolean)

    Dim strTemp As String
    Dim colFolders As New Collection
    Dim vFolderName As Variant

    'Add files in strFolder matching strFileSpec to colFiles
    strFolder = TrailingSlash(strFolder)
    strTemp = Dir(strFolder & strFileSpec)
    Do While strTemp <> vbNullString
        colFiles.Add strFolder & strTemp
        strTemp = Dir
    Loop

    If bIncludeSubfolders Then
        'Fill colFolders with list of subdirectories of strFolder
        strTemp = Dir(strFolder, vbDirectory)
        Do While strTemp <> vbNullString
            If (strTemp <> ".") And (strTemp <> "..") Then
                If (GetAttr(strFolder & strTemp) And vbDirectory) <> 0 Then
                    colFolders.Add strTemp
                End If
            End If
            strTemp = Dir
        Loop

        'Call RecursiveDir for each subfolder in colFolders
        For Each vFolderName In colFolders
            Call RecursiveDir(colFiles, strFolder & vFolderName, strFileSpec, True)
        Next vFolderName
    End If

End Function

Public Sub removeFirstCol()

 
 

  Columns("A:A").Select
   
    Selection.Delete Shift:=xlToLeft


End Sub
Public Function TrailingSlash(strFolder As String) As String
    If Len(strFolder) > 0 Then
        If Right(strFolder, 1) = "\" Then
            TrailingSlash = strFolder
        Else
            TrailingSlash = strFolder & "\"
        End If
    End If
End Function

Public Function grab_Shortpath(theLongPath) As String


    Set fso = CreateObject("Scripting.FileSystemObject")
  
    Set f = fso.GetFile(theLongPath)
    s = f.ShortName
    p = f.ShortPath
grab_Shortpath = p

End Function

Public Sub rm_Deptshift()
Dim coli
coli = 1
Dim colij
colij = 1
Dim lookAt
Dim rowi
rowi = 1


 While LCase(Trim(LCase(Cells(rowi, colij).Value))) <> "shift" And LCase(Trim(LCase(Cells(rowi, colij).Value))) <> ""
        lookAt = LCase(Trim(LCase(Cells(rowi, colij).Value)))
        If lookAt = "deptid" Then
                  coli = colij
                  
        End If
        colij = colij + 1
Wend
        
If coli <> 1 Then
 
        Range(Columns(coli), Columns(coli)).Select
        Selection.Delete Shift:=xlToLeft
End If

   Range(Columns(colij - 1), Columns(colij - 1)).Select
        Selection.Delete Shift:=xlToLeft



End Sub

Public Sub delNotRecorded()

    Cells.Replace What:="not recorded", Replacement:="", lookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=False, SearchFormat:=False, _
        ReplaceFormat:=False

End Sub











