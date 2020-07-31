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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            
           Statement st=con.createStatement();
           String bidderid=request.getParameter("username");
           String password=request.getParameter("password");
           session.setAttribute("bidderid",bidderid);
           ResultSet rs=st.executeQuery("select bidderid,bpass from bidder where bidderid='"+bidderid+"'");
           if(rs.next())
               {
               String r=rs.getString(1);
               String s=rs.getString(2);
              
                   if(r.equals(bidderid)&&s.equals(password))
                       {%>
                       <jsp:forward page="index.jsp"/>
                       <%
                       }
                 
                   
                   
               
           else
               {%>
               <jsp:forward page="error.jsp"/>
               <%
               }
           
               }
             
       %>
       
                   
     </body>
</html>
