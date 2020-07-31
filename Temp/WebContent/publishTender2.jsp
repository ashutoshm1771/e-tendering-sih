<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<%@ include file="connection.jsp" %>
<%@ page import = "sih.*" %>
<%
Blob blob1 = con.createBlob();
blob1.setBytes(1, request.getParameter("tdetails").getBytes());
tenderdetailsrecord record = new tenderdetailsrecord();
record.setTendertitle(request.getParameter("title"));
record.setTdetails(blob1);
record.setClosingdate(request.getParameter("tcloseDate"));
record.setBiddingopeningdate(request.getParameter("bOpenDate"));
record.setLocation(request.getParameter("bcity"));
record.setExpectedcost(request.getParameter("tcost"));
record.setClassification(request.getParameter("tclass"));
record.setPublishcompany(request.getParameter("tcomp"));
record.setReferenceno(request.getParameter("did"));
record.setStartdate(request.getParameter("tstartDate"));


tenderdetailsdbconnection dbdemo = new tenderdetailsdbconnection();
dbdemo.inserttenderdetails(record);
%>	
<%
String site=new String("empPortal.jsp");
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", site);
%>