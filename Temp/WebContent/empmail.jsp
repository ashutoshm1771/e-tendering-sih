<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import ="java.util.*, javax.mail.*, javax.mail.internet.*,java.util.Random" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
 String USER_NAME = "siddanitulasi";  // GMail user name (just the part before "@gmail.com")
 String PASSWORD = "tulasi@11"; // GMail password

 String RECIPIENT = (String)session.getAttribute("eemail");
 
 String from = USER_NAME;
 String pass = PASSWORD;
 String to[] = { RECIPIENT }; // list of recipient email addresses
 String subject = "OTP";
 Random rand = new Random();
 int randint = rand.nextInt();
	
 String randno = Integer.toString(randint);
 String body = (String)randno;

 session.setAttribute("ootp",body);
 
 
 Properties props = System.getProperties();
 String host = "smtp.gmail.com";

   props.put("mail.smtp.starttls.enable", "true");

   props.put("mail.smtp.ssl.trust", host);
   props.put("mail.smtp.user", from);
   props.put("mail.smtp.password", pass);
   props.put("mail.smtp.port", "587");
   props.put("mail.smtp.auth", "true");


   Session session1 = Session.getDefaultInstance(props);
   MimeMessage message = new MimeMessage(session1);

   try {


       message.setFrom(new InternetAddress(from));
       InternetAddress[] toAddress = new InternetAddress[to.length];

       // To get the array of addresses
       for( int i = 0; i < to.length; i++ ) {
           toAddress[i] = new InternetAddress(to[i]);
       }

       for( int i = 0; i < toAddress.length; i++) {
           message.addRecipient(Message.RecipientType.TO, toAddress[i]);
       }



       message.setSubject(subject);
       message.setContent(body,"text/html");


       Transport transport = session1.getTransport("smtp");


       transport.connect(host, from, pass);
       transport.sendMessage(message, message.getAllRecipients());
       transport.close();

   }
   catch (AddressException ae) {
	   out.print(ae);
       ae.printStackTrace();
   }
   catch (MessagingException me) {
	   out.print(me);
       me.printStackTrace();
   }

 response.sendRedirect("otpenter.jsp");
%>




</body>
</html>