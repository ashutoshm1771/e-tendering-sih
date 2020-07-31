<%-- 
    Document   : log
    Created on : Oct 21, 2013, 9:41:40 AM
    Author     : sys
--%>
<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import= "java.math.BigInteger,java.nio.charset.StandardCharsets,java.security.MessageDigest,java.security.NoSuchAlgorithmException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
            
            pwd=toHexString(getSHA((String)request.getParameter("password")));
  out.println(pwd);
              
        } 
        // For specifying wrong message digest algorithms  
        catch (NoSuchAlgorithmException e) {  
            System.out.println("Exception thrown for incorrect algorithm: " + e);  
        }  


%>







       <%     
       
       Statement st=con.createStatement();
       String username=request.getParameter("username");
      // String password=request.getParameter("password");
       session.setAttribute("username",username);
       ResultSet rs=st.executeQuery("select bidderid,bpass from bidder where bidderid='"+username+"'");
       
       if(rs.next())
       {
       String r1=rs.getString(1);
       String s1=rs.getString(2);
      
           if((r1.equals(username)&&s1.equals(pwd)))
               {session.setAttribute("username",username);
                response.sendRedirect("tenderlist.jsp");
               }   
           else
        	   response.sendRedirect("error.jsp");
       }
       else 
       {
    	   ResultSet rs1=st.executeQuery("select empid,pass from govtemp where empid='"+username+"'");
    	   if(rs1.next())
    	   {
	    	   String r2=rs1.getString(1);
	           String s2=rs1.getString(2);
	           if(r2.equals(username)&&(s2.equals(pwd)))
	           {
	        	   session.setAttribute("username",username);
	               response.sendRedirect("empPortal.jsp");
	           }
	           else
	           {
	        	   response.sendRedirect("error.jsp");
	           }
    	   }
    	   else
    	   {
    		   response.sendRedirect("error.jsp");
    	   }
             
       }
     
       %>               
     </body>
</html>
