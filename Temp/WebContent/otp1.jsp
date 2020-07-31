<%-- 
    Document   : 15
    Created on : 19 Dec, 2019, 7:38:12 PM
    Author     : Shaik Fayazuddin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String p=(String)request.getParameter("otp");
           String n =(String)session.getAttribute("ootp"); 
             if(p.equals(n))
             {
            	 String site=new String("index.jsp");
            	 response.setStatus(response.SC_MOVED_TEMPORARILY);
            	 response.setHeader("Location", site);
             }
             else
             {
            	 String site=new String("deleteBidder.jsp");
            	 response.setStatus(response.SC_MOVED_TEMPORARILY);
            	 response.setHeader("Location", site);
             }
            %>
    </body>
</html>
