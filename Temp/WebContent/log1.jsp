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
           String username=request.getParameter("username");
           String password=request.getParameter("password");
         
               if(username.equals("admin")&&password.equals("admin"))
                   {
                session.setAttribute("username",username);
                response.sendRedirect("adminpage.jsp");
                  }
             
           else
               {
                   response.sendRedirect("error.jsp");
               }         
       %>               
     </body>
</html>
