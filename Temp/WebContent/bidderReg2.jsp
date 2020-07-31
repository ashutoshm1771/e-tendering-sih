<%@ page import = "java.util.*" %>
<%@ page import = "sih.*" %>
<%@ page import= "java.math.BigInteger,java.nio.charset.StandardCharsets,java.security.MessageDigest,java.security.NoSuchAlgorithmException"%>
<%!
 
  String s1;
// Java program to calculate SHA hash value  
public static byte[] getSHA(String input) throws NoSuchAlgorithmException 
    {  
        // Static getInstance method is called with hashing SHA  
        MessageDigest md = MessageDigest.getInstance("SHA-256");  
  
        // digest() method called  
        // to calculate message digest of an input  
        // and return array of byte 
        return md.digest(input.getBytes(StandardCharsets.UTF_8));  
    } 
    
    public static String toHexString (byte[] hash) 
    { 
        // Convert byte array into signum representation  
        BigInteger number = new BigInteger(1, hash);  
  
        // Convert message digest into hex value  
        StringBuilder hexString = new StringBuilder(number.toString(16));  
  
        // Pad with leading zeros 
        while (hexString.length() < 32)  
        {  
            hexString.insert(0, '0');  
        }  
  
        return hexString.toString();  
} 

%>   
 <% 
try 
        { 
            
            s1=toHexString(getSHA((String)request.getParameter("bpass")));
  out.println(s1);
              
        } 
        // For specifying wrong message digest algorithms  
        catch (NoSuchAlgorithmException e) {  
            System.out.println("Exception thrown for incorrect algorithm: " + e);  
        }  

%>



<%
session.setAttribute("bid", request.getParameter("bid"));
session.setAttribute("bphno", request.getParameter("bphno"));
bidderrecord record = new bidderrecord();
record.setBidderid(request.getParameter("bid"));
record.setBname(request.getParameter("bname"));
record.setBadhar(request.getParameter("badharno"));
record.setBpan(request.getParameter("bpanno"));
record.setBphno(request.getParameter("bphno"));
record.setBemail(request.getParameter("bemail"));
record.setBpass(s1);
record.setBstate(request.getParameter("bstate"));
record.setBdist(request.getParameter("bdist"));
record.setBpincode(request.getParameter("bpincode"));

bidderdbconnection dbdemo = new bidderdbconnection();
dbdemo.insertbidder(record);
response.sendRedirect("bidderRegOtp.jsp");
%>	

