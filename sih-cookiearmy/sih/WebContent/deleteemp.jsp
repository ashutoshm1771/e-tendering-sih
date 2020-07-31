<%@ page import = "java.util.*" %>
<%@ page import = "sih.*" %>
<%

emprecord record = new emprecord();
record.setEmpid((String)session.getAttribute("eid"));

dbconnection dbdemo = new dbconnection();
dbdemo.deleteEmp(record);

response.sendRedirect("empReg.jsp");
%>	
