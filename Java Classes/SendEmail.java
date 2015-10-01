// File Name SendEmail.java

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

public class SendEmail
{
   public static void main(String [] args)
   {    
      // Recipient's email ID needs to be mentioned.
      String to = args[0];

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

// message.setText("Here is a message");

         // Send message
         Transport.send(message);
         System.out.println("Sent message successfully....");
      }catch (MessagingException mex) {
         mex.printStackTrace();
      }
   }
}