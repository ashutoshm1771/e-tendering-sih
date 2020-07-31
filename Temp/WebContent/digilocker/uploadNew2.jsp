<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<%@ include file="connection.jsp" %>
<%@ page import = "sih.*" %>
<%
Blob blob = con.createBlob();
blob.setBytes(1, request.getParameter("doc").getBytes());
digilockerrecord record = new digilockerrecord();
record.setDocname(request.getParameter("did"));
record.setDoc(blob);
record.setUserid((String)session.getAttribute("username1"));


digilockerdbconnection dbdemo = new digilockerdbconnection();
dbdemo.insertdigilockerdoc(record);
%>	
<%
String site=new String("digiPortal.jsp");
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", site);
%>