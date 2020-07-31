<%-- 
    Document   : 14
    Created on : 19 Dec, 2019, 7:27:25 PM
    Author     : Shaik Fayazuddin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <%@page  import ="java.io.BufferedReader,java.util.Random,java.io.InputStreamReader,java.net.HttpURLConnection,java.net.URL,java.io.*,java.util.Scanner"
%>
    <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
  
<%
int otttp;
try {
// Construct data
Random rand = new Random();

otttp = rand.nextInt(1000);
String s = Integer.toString(otttp);
session.setAttribute("ootp",s); 
String apiKey = "apikey=" + "qbgAjg/MTKQ-bTkeWfcroxm7WV1FdZaeCSHSBibftp";
String message = "&message=" + s ;
String sender = "&sender=" + "TXTLCL";
String numbers = "&numbers=" + "9398675995";

// Send data
HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
String data = apiKey + numbers + message + sender;
conn.setDoOutput(true);
conn.setRequestMethod("POST");
conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
conn.getOutputStream().write(data.getBytes("UTF-8"));
final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
final StringBuffer stringBuffer = new StringBuffer();
String line;
while ((line = rd.readLine()) != null) {
stringBuffer.append(line);
}
rd.close();

 
} catch (Exception e) {
System.out.println("Error SMS "+e);

}


%>
<form action="otp1.jsp">
         <input name="otp" placeholder="number" type="text">  
         <input type="submit">
</form>
    </center>
    </body>
</html>
