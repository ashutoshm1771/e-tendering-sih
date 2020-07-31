
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.Statement"%>

<%@include file="connection.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
 
    <head>
<title>Online voteing System</title>
        


 
  <%
    String id=(String)session.getAttribute("id");
    %>
 
   
    <marquee><h3>Welcome <%=id%></h3></marquee>

<link href="css/home.css" rel="stylesheet" type="text/css">

    
    
    
    <div class="back_image">
        
        
        
        <div class="reg" style="margin-left: 500px;">
            <form action="vote.jsp" method="post">
            <h3 style="margin-left: 0px; margin-bottom: -20px;margin-top: 15px;">Enter Your Register Voter card Number</h3>
           
            <br>
             <input name="voter_card_number"  placeholder="Enter your Voter Card Number" type="text">
             <br>
             <br>
             <select style="height: 35px; width: 310px;" name="parties">
             <%
                 Statement st=con.createStatement();
                 ResultSet rs=st.executeQuery("select * from PARTY");
                 while(rs.next())
                 {
                 %>
             
  <option value="#">Select Your Party</option>
  <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
 
  
</select>
  <%
                 }%>
            <br>
            <br>
             <input value="Vote"   type="submit"  class="btn" style="padding-bottom: 40px; width: 150px; margin-left: 70px;"> 
            
         
            
           </form>  
        </div>
        
  
    </div>
   
    
   
    

</body>

</html>
