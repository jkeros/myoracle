// File Name SendEmail.java

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
import java.io.IOException;
import java.io.*;


public class SendEmail2
{
   public static void main(String [] args)
   {    
      // Recipient's email ID needs to be mentioned.
      String to = args[0];
      String attachFiles = args[3];

      // Sender's email ID needs to be mentioned
      String from = "julieker@umich.edu";

      // Assuming you are sending email from localhost
      String host =  "192.168.249.210";

      // Get system properties
      Properties properties = System.getProperties();

      // Setup mail server
      properties.setProperty("mail.smtp.host", host);
      properties.put("mail.smtp.port", "25");
 properties.put("mail.smtp.host", host);
properties.put("mail.smtp.starttls.enable","true");
properties.put("mail.smtp.EnableSSL.enable","true");

      // Get the default Session object.
      Session session = Session.getDefaultInstance(properties);

      try{
         // Create a default MimeMessage object.
         MimeMessage message = new MimeMessage(session);

         // Set From: header field of the header.
         message.setFrom(new InternetAddress(from));

         // Set To: header field of the header.
         message.setRecipients(Message.RecipientType.TO,
                                  InternetAddress.parse(to));

         // Set Subject: header field
       //  message.setSubject("Automatic LiveHealthier CBT bio Merge");
  message.setSubject(args[1]);

         // Now set the actual message

 message.setText(args[2]);


 // creates message part
  MimeBodyPart messageBodyPart = new MimeBodyPart();
System.out.println("past mimebodypart");

        messageBodyPart.setContent(args[2], "text/html");

  System.out.println("past mimebodypart 2");


        // creates multi-part
        Multipart multipart = new MimeMultipart();
        multipart.addBodyPart(messageBodyPart);

     if ( attachFiles.length() > 0) 
     {       MimeBodyPart attachPart = new MimeBodyPart();
          try{
            attachPart.attachFile(attachFiles);
             } catch (IOException ex) {
                    ex.printStackTrace();
                }
              multipart.addBodyPart(attachPart);
  System.out.println("past mimebodypart 3");
              message.setContent(multipart);
  message.setSubject(args[1]);

         // Now set the actual message

 //message.setText(args[2]);
System.out.println("past mimebodypart 4");
      }
// message.setText("Here is a message");

         // Send message
         Transport.send(message);
         System.out.println("Sent message successfully....");
      }catch (MessagingException mex) {
         mex.printStackTrace();
      }
   }
}