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

class ExcelToCSVNonSchool2 {

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
String chkSchool;
String pasteValue ; // Value without "=
cellInc = 1;
rowInc = 1;

String colEliminate ;


try 
{
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
                                }      
                            }
                switch (cell.getCellType()) 
                {
                
                case Cell.CELL_TYPE_BOOLEAN:
                           if (rowInc == 3) 
                                  {
                                    System.out.println("Type boolean...");
                                   }
                        cellValue.append(cell.getBooleanCellValue() + ",");
                        break;
                
                
                
                case Cell.CELL_TYPE_STRING:
                               if (rowInc == 3) 
                                  {
                                    System.out.println("Type String...");
                                   }

                          
                          pasteValue = cell.getStringCellValue();
                          pasteValue = pasteValue.replace("\"","");
                          pasteValue = pasteValue.replace("=","");
                         if (rowInc == 3) 
                         {
                          System.out.println("Here is pasteValue:" + pasteValue); 
                         }
                          cellValue.append("\"" +  pasteValue + "\"" + ",");
                      
                        break;
                   
                 case Cell.CELL_TYPE_NUMERIC:
                                    if (rowInc == 3) 
                                  {
                                    System.out.println("Type numeric...");
                                   }
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
 				  if (rowInc == 3) 
                                  {
                                    System.out.println("Here is numeric cell value:" + cell.getNumericCellValue()); 
                                   }
                        }
                         
                        break;

                case Cell.CELL_TYPE_BLANK:
                             if (rowInc == 3) 
                                  {
                                    System.out.println("Type blank...");
                                   }
                        cellValue.append("" + ",");
                                   
                        break;
                        
                default:
                           if (rowInc == 3) 
                                  {
                                    System.out.println("Type default...:" + cell.getStringCellValue());
                                   }   

                          pasteValue = cell.getStringCellValue();
                          pasteValue = pasteValue.replace("\"","");
                          pasteValue = pasteValue.replace("=","");
                    
                          cellValue.append("\"" +  pasteValue + "\"" + ",");


   
                        

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
{
// For storing data into CSV files
StringBuffer cellValue = new StringBuffer();
int currentCell;
int previousCell;
int cellInc;
int rowInc;
String sNumber;
int wNumber;
String chkSchool;

cellInc = 1;
rowInc = 1;
try 
{
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
        while (cellIterator.hasNext()) 
        {
////// iterate by cell
        
                
                cell = cellIterator.next();

                currentCell = cell.getColumnIndex();

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
                                }      
                            }
                switch (cell.getCellType()) 
                {
                
                case Cell.CELL_TYPE_BOOLEAN:
                   
                        cellValue.append(cell.getBooleanCellValue() + ",");
                        break;
                
                
                
                case Cell.CELL_TYPE_STRING:
                      
                        cellValue.append("\"" + cell.getStringCellValue() + "\"" + ",");
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
             
                   previousCell = currentCell;
                cellInc++;
        }


  cellValue.append("\n");
   rowInc++;

        }

fos.write(cellValue.toString().getBytes());

fos.close();

}
catch (FileNotFoundException e) 
{
    System.err.println("Exception" + e.getMessage());
} 
catch (IOException e) 
{
        System.err.println("Exception" + e.getMessage());
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