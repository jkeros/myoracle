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

class ExcelToCSVBorgess {

static void convertToXlsx(File inputFile, File outputFile) 
//////////////////
///***  convertToXlsX 
//// This will convert an xlsx file to a csv file without opening the file. 
///// We iterate through the workbook by row and column 
////////////////////////////////////
{
        // For storing data into CSV files
StringBuffer cellValue = new StringBuffer();
int currentCell;
int previousCell;
int cellInc;
int rowInc;
String sNumber;
int wNumber;
String chkDept;

cellInc = 1;
rowInc = 1;

String colEliminate ;
String noDept;

try 
{
noDept = "";
colEliminate = "";

        FileOutputStream fos = new FileOutputStream(outputFile);

        // Get the workbook instance for XLSX file
        XSSFWorkbook wb = new XSSFWorkbook(new FileInputStream(inputFile));

        // Get first sheet from the workbook
        XSSFSheet sheet = wb.getSheetAt(0);

        Row row;
        Cell cell;

        // Iterate through each rows from first sheet
        Iterator<Row> rowIterator = sheet.iterator();
        notCompanySchool:
        while (rowIterator.hasNext()) 

//// iterate for each row
        {
        row = rowIterator.next();
    

        // For each row, iterate through each columns
        Iterator<Cell> cellIterator = row.cellIterator();
           previousCell = -1;
           currentCell = 0;
           cellInc = 1;
        while (cellIterator.hasNext()) 
        {
////// iterate by cell
        
                
                cell = cellIterator.next();

                currentCell = cell.getColumnIndex();


               if (colEliminate.indexOf("-" + cellInc + "-") == -1 )
   {
//////////////// make sure column is not to be eliminated
////////////////



                if (previousCell != currentCell-1)
                           {
//// account for blank cell 
                               int numBlanks ;
                               int blankIterator;
                               blankIterator = 1;
                               numBlanks = (currentCell -1) - previousCell;

////// Loop through blank cells 
                               while (blankIterator <= numBlanks)
                               {  
                                     cellValue.append("" + ",");
                                     blankIterator++;
					cellInc++;

                                }      
                            }
                switch (cell.getCellType()) 
                {
                
                case Cell.CELL_TYPE_BOOLEAN:
                   
                        cellValue.append(cell.getBooleanCellValue() + ",");
                        break;
                
                
                
                case Cell.CELL_TYPE_STRING:
                        chkDept =  cell.getStringCellValue();
                        chkDept = chkDept.toLowerCase();
                       //  System.out.println("Here is chkDept:" + chkDept);

///////////
///// Check if we have a school or company
///// This will be the first column and row checking for school company or name
/////  check for code in the second column
/////////

                   

////////////// check and see if we can eliminate columns 
/////////////  

                        if (rowInc == 1 && cellInc== 14) 
                         {
//// add a blank for dept 
                            if (chkDept.indexOf("dept") == -1 )

                                 {
                                    noDept= "Y";
                                 }

                         }


   System.out.println("Here is noDept:" + noDept);
/// Insert an extra column for department
////

 System.out.println("........cellInc:" + cellInc);
System.out.println("... here is check dept:" + chkDept);

System.out.println("........here is no dept:" + noDept);


                      if (noDept.indexOf("Y") == 0 && cellInc== 14 )
                     {
                           System.out.println("Appending extra columns");
                           cellValue.append( ",");    
                      }

                      //    if (noDept.indexOf("Y") > 0 && cellInc== 14 )
                    //   {
                          cellValue.append(cell.getStringCellValue() + ",");
                    //  }
                        break;
                   
                 case Cell.CELL_TYPE_NUMERIC:
			if (DateUtil.isCellDateFormatted(cell)) {
                         
                            SimpleDateFormat fmt = new SimpleDateFormat("M/d/yyyy ");
                 
			     //  DataFormat poiFormat = wb.createDataFormat();
                              
 			//// CellStyle my_style_0 =  wb.createCellStyle();
                    ////  my_style_0.setDataFormat(HSSFDataFormat.getBuiltinFormat("m/d/yyyy"));
                   ////  cell.setCellStyle(my_style_0); 
                                
                                // Date datee = cell.getDateCellValue();
                                 
                                 

				//// Orignal   cellValue.append(cell.getDateCellValue() + ",");  
                               cellValue.append(fmt.format(cell.getDateCellValue()) + ",");  

            		}
                        else
                        {
                                
                        	  cellValue.append((int) cell.getNumericCellValue() + ",");
 				
                        }
                         
                        break;

                case Cell.CELL_TYPE_BLANK:
                        cellValue.append("" + ",");
                                   
                        break;
                        
                default:
                               
                        cellValue.append("" + ",");

                }
             
   }
//////////////// make sure column is not to be eliminated
////////////////

                   previousCell = currentCell;
                cellInc++;
        }


  cellValue.append("\n");
   rowInc++;

        }

fos.write(cellValue.toString().getBytes());

fos.close();
        System.out.println("Here is coleliminate:" + colEliminate); 
} 
catch (Exception e) 
{
        System.err.println("Exception :" + e.getMessage());
}
}

static void convertToXls(File inputFile, File outputFile) 
//////////////////
///***  convertToXls 
//// This will convert an xls file to a csv file without opening the file. 
///// We iterate through the workbook by row and column 
////////////////////////////////////
{
        // For storing data into CSV files
StringBuffer cellValue = new StringBuffer();
int currentCell;
int previousCell;
int cellInc;
int rowInc;
String sNumber;
int wNumber;
String chkDept;

cellInc = 1;
rowInc = 1;

String colEliminate ;
String noDept;

try 
{
noDept = "";
colEliminate = "";

        FileOutputStream fos = new FileOutputStream(outputFile);

        // Get the workbook instance for XLSX file
        HSSFWorkbook wb = new HSSFWorkbook(new FileInputStream(inputFile));

        // Get first sheet from the workbook
        HSSFSheet sheet = wb.getSheetAt(0);

        Row row;
        Cell cell;

        // Iterate through each rows from first sheet
        Iterator<Row> rowIterator = sheet.iterator();
        notCompanySchool:
        while (rowIterator.hasNext()) 

//// iterate for each row
        {
        row = rowIterator.next();
    

        // For each row, iterate through each columns
        Iterator<Cell> cellIterator = row.cellIterator();
           previousCell = -1;
           currentCell = 0;
           cellInc = 1;
        while (cellIterator.hasNext()) 
        {
////// iterate by cell
        
                
                cell = cellIterator.next();

                currentCell = cell.getColumnIndex();


               if (colEliminate.indexOf("-" + cellInc + "-") == -1 )
   {
//////////////// make sure column is not to be eliminated
////////////////



                if (previousCell != currentCell-1)
                           {
//// account for blank cell 
                               int numBlanks ;
                               int blankIterator;
                               blankIterator = 1;
                               numBlanks = (currentCell -1) - previousCell;

////// Loop through blank cells 
                               while (blankIterator <= numBlanks)
                               {  
                                     cellValue.append("" + ",");
                                     blankIterator++;
					cellInc++;

                                }      
                            }
                switch (cell.getCellType()) 
                {
                
                case Cell.CELL_TYPE_BOOLEAN:
                   
                        cellValue.append(cell.getBooleanCellValue() + ",");
                        break;
                
                
                
                case Cell.CELL_TYPE_STRING:
                        chkDept =  cell.getStringCellValue();
                        chkDept = chkDept.toLowerCase();
                       //  System.out.println("Here is chkDept:" + chkDept);

///////////
///// Check if we have a school or company
///// This will be the first column and row checking for school company or name
/////  check for code in the second column
/////////

                   

////////////// check and see if we can eliminate columns 
/////////////  

                        if (rowInc == 1 && cellInc== 14) 
                         {
//// add a blank for dept 
                            if (chkDept.indexOf("dept") == -1 )

                                 {
                                    noDept= "Y";
                                 }

                         }


   System.out.println("Here is noDept:" + noDept);
/// Insert an extra column for department
////

 System.out.println("........cellInc:" + cellInc);
System.out.println("... here is check dept:" + chkDept);

System.out.println("........here is no dept:" + noDept);


                      if (noDept.indexOf("Y") == 0 && cellInc== 14 )
                     {
                           System.out.println("Appending extra columns");
                           cellValue.append( ",");    
                      }

                      //    if (noDept.indexOf("Y") > 0 && cellInc== 14 )
                    //   {
                          cellValue.append(cell.getStringCellValue() + ",");
                    //  }
                        break;
                   
                 case Cell.CELL_TYPE_NUMERIC:
			if (DateUtil.isCellDateFormatted(cell)) {
                         
                            SimpleDateFormat fmt = new SimpleDateFormat("M/d/yyyy ");
                 
			     //  DataFormat poiFormat = wb.createDataFormat();
                              
 			//// CellStyle my_style_0 =  wb.createCellStyle();
                    ////  my_style_0.setDataFormat(HSSFDataFormat.getBuiltinFormat("m/d/yyyy"));
                   ////  cell.setCellStyle(my_style_0); 
                                
                                // Date datee = cell.getDateCellValue();
                                 
                                 

				//// Orignal   cellValue.append(cell.getDateCellValue() + ",");  
                               cellValue.append(fmt.format(cell.getDateCellValue()) + ",");  

            		}
                        else
                        {
                                
                        	  cellValue.append((int) cell.getNumericCellValue() + ",");
 				
                        }
                         
                        break;

                case Cell.CELL_TYPE_BLANK:
                        cellValue.append("" + ",");
                                   
                        break;
                        
                default:
                               
                        cellValue.append("" + ",");

                }
             
   }
//////////////// make sure column is not to be eliminated
////////////////

                   previousCell = currentCell;
                cellInc++;
        }


  cellValue.append("\n");
   rowInc++;

        }

fos.write(cellValue.toString().getBytes());

fos.close();
        System.out.println("Here is coleliminate:" + colEliminate); 
} 
catch (Exception e) 
{
        System.err.println("Exception :" + e.getMessage());
}
}

public static void main(String[] args) 
{
//// a 1 argument indicates xlsx file, a 2 argument
//// indicates an xls file 
////

      /*  File inputFile = new File("C:\\Users\\julieker\\che1.xls");
        File outputFile = new File("C:\\Users\\julieker\\che1.csv");
        File inputFile2 = new File("C:\\Users\\julieker\\che1.xlsx");
        File outputFile2 = new File("C:\\Users\\julieker\\che2.csv");
        convertToXls(inputFile, outputFile);
        convertToXlsx(inputFile2, outputFile2); */

        File inputFile2 = new File(args[0]);
        File outputFile2 = new File(args[1]);
if (args[2].equals("1")) {
   convertToXlsx(inputFile2, outputFile2);
  }
else  /// xls file 
  {
     convertToXls(inputFile2, outputFile2);
        
  }
}
}