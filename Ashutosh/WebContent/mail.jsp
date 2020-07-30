<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.util.Properties,javax.mail.*,javax.mail.internet.*,java.util.Random " %>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Tender</title>
    </head>
    <body>
        <%!
void send(final String from,final String password,String to,String sub,String msg)
{
//Get properties object
Properties props = new Properties();
props.put("mail.smtp.host", "smtp.gmail.com");
props.put("mail.smtp.socketFactory.port", "465");
props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.port", "465");
//get Session
Session session = Session.getInstance(props,
new javax.mail.Authenticator() {
protected PasswordAuthentication getPasswordAuthentication() {
return new PasswordAuthentication(from,password);
}
});
//compose message
try {
MimeMessage message = new MimeMessage(session);
message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
message.setSubject(sub);
message.setText(msg);
//send message
Transport.send(message);
System.out.println("message sent successfully");
} catch (MessagingException e) {throw new RuntimeException(e);}
}
//change from, password and to
/*String randd()
{   Random rand = new Random();
    int ranint = rand.nextInt();
    String str1 = Integer.toString(ranint);
    return str1;
}*/
%>
<%  String randno = (String)session.getAttribute("otp");
	String userid=(String)session.getAttribute("uid");
    send("emailAddress","password--",userid,"OTP verfication","your OTP is : "+randno);
    response.sendRedirect("otpenter.jsp");%>
    </body>
</html>