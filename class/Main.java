import java.io.*;

public class Main {
/* This is a java stored procedure to store the password for sqlldr in the class and execute the sqlldr routine for the dataload.  
  The first argument is the control file portion.   The second argument is the log file portion.  The third argument 
is the data portion.  The fourth argument is the bad file portion.   */ 

       public static void main(String args[]) {

         try
    {
      String sqlldrCmd = "SQLLDR  julieker[hmrc_loader]/hmrc$$julie1015@dware_oracle " + args[0] + " " + args[1] + " " + args[2] + " " + args[3] + " " ;

      System.out.println("SQLLDR Started" + sqlldrCmd);
      Runtime rt = Runtime.getRuntime();
      Process proc = rt.exec(sqlldrCmd);
      System.out.println("SQLLDR Ended");
    }
    catch (Exception e)
    {
    e.printStackTrace();
    }
  }
}


