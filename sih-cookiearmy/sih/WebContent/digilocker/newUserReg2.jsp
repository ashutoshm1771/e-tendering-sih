<%@ page import = "java.util.*" %>
<%@ page import = "sih.*" %>
<%@ page import= "java.math.BigInteger,java.nio.charset.StandardCharsets,java.security.MessageDigest,java.security.NoSuchAlgorithmException"%>
<%!
 
  String pwd;
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
            
            pwd=toHexString(getSHA((String)request.getParameter("spass")));
              
        } 
        // For specifying wrong message digest algorithms  
        catch (NoSuchAlgorithmException e) {  
            System.out.println("Exception thrown for incorrect algorithm: " + e);  
        }  

%>

<%

digilockerloginrecord record = new digilockerloginrecord();
record.setFname(request.getParameter("dname"));
record.setUserid(request.getParameter("did"));
record.setDpass(pwd);

digilockerlogindbconnection dbdemo = new digilockerlogindbconnection();
dbdemo.insertdigilockeruser(record);
%>	
<%@ include file="digiPortal.jsp"%>