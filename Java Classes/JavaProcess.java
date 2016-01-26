import java.io.*;
import java.util.Iterator;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.util.DateFormatConverter;
import org.apache.poi.hssf.usermodel.HSSFDataFormat;
 import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.hssf.usermodel.*;
import java.text.*;


class JavaProcess {


public static void main(String[] args) 
{
    
  ExcelToCSVNonSchool excelcsv = new ExcelToCSVNonSchool();
  sqlLoadFoote sqlLoaderRoutine = new sqlLoadFoote();

   File path = new File("C:\\Automated_DataLoad_Jobs\\Test\\Allegiance\\toprocess\\");

    File [] files = path.listFiles();
String fString ;
String oString;

  for (int i = 0; i < files.length; i++){



//// a 1 argument indicates xlsx file, a 2 argument
//// indicates an xls file 
////
     
     System.out.println(files[i]);
     System.out.println("->");


  fString = files[i].toString();
   System.out.println(fString);
 if (fString.indexOf(".xls") > 0) 
{
      	File inputFile2 = new File(fString);

     	oString = fString.replace(".xlsx", ".csv");
       	File outputFile2 = new File(oString);


		System.out.println("----------------------------------->");
		System.out.println(inputFile2);
		System.out.println(outputFile2);


	if (fString.indexOf(".xlsx") > 0)  {
   	System.out.println("calling xlsx");
	   excelcsv.convertToXlsx(inputFile2, outputFile2);
  	}
	else  /// xls file 
  	{
   		System.out.println("calling xls");
     		excelcsv.convertToXls(inputFile2, outputFile2);
        
  	}

////////////////////////
//////////////////////////// now go through and call sql loader
///////////////////////////

    String arg1 = "data=" + fString.replace(" ","");
    System.out.println("-----" + arg1);
    String arg2 = "control=" + "C:\\Automated_DataLoad_Jobs\\Test\\Allegiance\\control\\foote_bio2012j.txt";
     System.out.println("-----" + arg2);
    String arg3 = "log=" + fString.replace(" ","") + ".log";
     System.out.println("-----" + arg3);
    String arg4 = "bad=" + fString.replace(" ","") + ".bad";
     System.out.println("-----" + arg4);


    } //if xls 

  } // end for


 } // end main
} // end class