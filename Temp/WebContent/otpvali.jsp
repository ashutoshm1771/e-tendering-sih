<%@ page import ="java.sql.*" %>
<%
    String userid =(String)session.getAttribute("uid");
	String kind=(String)session.getAttribute("kind");
    String ot1=request.getParameter("otp");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/sih","root","tulasidevi@11");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select otp from otp where userid='" + userid + "'");
    if(rs.next())
    {    String otpdb=rs.getString(1);
        if(ot1.equals(otpdb))
        {    PreparedStatement ps=con.prepareStatement("delete from otp where userid='" + userid + "'");
            ps.executeUpdate();
            if(kind.equals("emp"))
            response.sendRedirect("empPortal.jsp");
            else 
            response.sendRedirect("bidderPortal.jsp");
            	
        }
        else
        {
            out.println("<a href=resendotp.jsp><button>resendotp</button></a>");
        }
    }
    
%>