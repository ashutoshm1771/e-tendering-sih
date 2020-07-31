<%@ page import = "java.util.*" %>
<%@ page import = "sih.*" %>
<%

bidderrecord record = new bidderrecord();
record.setBidderid((String)session.getAttribute("bid"));

bidderdbconnection dbdemo = new bidderdbconnection();
dbdemo.deletebidder(record);

response.sendRedirect("bidderReg.jsp");
%>	
