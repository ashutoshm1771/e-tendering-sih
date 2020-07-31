<%@ page import = "java.util.*" %>
<%@ page import = "sih.*" %>
<%

bidderenrollrecord record = new bidderenrollrecord();
record.setRegno((String)session.getAttribute("regno"));

bidderenrolldbconnection dbdemo = new bidderenrolldbconnection();
dbdemo.deletebidderenroll(record);

response.sendRedirect("onlineBidderEnrollment.jsp");
%>	
