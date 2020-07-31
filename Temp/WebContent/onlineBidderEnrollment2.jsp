<%@ page import = "java.util.*" %>
<%@ page import = "sih.*" %>
<%

bidderenrollrecord record = new bidderenrollrecord();
record.setRegno(request.getParameter("regno"));
record.setComname(request.getParameter("cname"));
record.setPbidder(request.getParameter("privilegeYes"));
record.setPcategory(request.getParameter("pcate"));
record.setEyear(request.getParameter("estdyear"));
record.setNatureofb(request.getParameter("compnature"));
record.setLegalstatus(request.getParameter("legalstatus"));
record.setComcat(request.getParameter("comcat"));
record.setNpd(request.getParameter("nameOfPartners"));
record.setBiddertype(request.getParameter("bidderType"));
record.setCountry(request.getParameter("ccountry"));
record.setSc(request.getParameter("cscity"));
record.setPostalcode(request.getParameter("cpostalcode"));
record.setCstate(request.getParameter("cstate"));
record.setCcity(request.getParameter("ccity"));
record.setCpcode(request.getParameter("cpincode"));
record.setCdist(request.getParameter("cdist"));
record.setCpan(request.getParameter("cpanno"));


record.setMobile(request.getParameter("ccphno"));
record.setCname(request.getParameter("ccname"));
record.setDob(request.getParameter("ccdob"));
record.setDesignation(request.getParameter("disignation"));
record.setCsign(request.getParameter("ccphno"));

bidderenrolldbconnection dbdemo = new bidderenrolldbconnection();
dbdemo.insertEnrolledBidder(record);
%>	
<%
String site=new String("index.jsp");
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", site);
%>
