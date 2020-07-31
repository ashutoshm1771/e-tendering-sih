<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Etender</title>
	<link rel="stylesheet" type="text/css" href="nicgep_web_style.css">
	<link rel="stylesheet" type="text/css" href="dialog_box.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<script language="text/javascript">
	function viewRecord(id){
		var f=document.form;
		f.method="post";
		f.action='tenderletter.jsp?id='+id;
		f.submit();
		
	}
	</script>

<script type="text/javascript">
	var onloadCallback = function() {
	  grecaptcha.render('html_element', {
		'sitekey' : '6Lenzu0UAAAAANwru86INC1KaBKQ-llAVyRItx-s'
	  });
	};
  </script>
	<style type="text/css">
		.header{
			display: grid;
			grid-template: "sat headtitle mapindia";
			height: 100%;
			padding: 2px;
			color:black;
			font-size: 2em;
		}
		main{
			margin-left: 10px;
		}
		.logo
		{
			height: 100px;
		}
		.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}
		
		.logo1
		{
			height: 100px;
			float:right;
		}
		.main-body{
			margin-top:10px;
			display: grid;
			grid-template:"aside main login";
			grid-gap:20px;
		}
		.form-group{
			margin-left: 15px;
		}
		input[type=email],input[type=password]
		 	{
			width: 80%;
			padding: 12px 20px;
			margin: 8px 0;
			box-sizing: border-box;
			}
		aside{
			background-color:#e8e8e8;
			width:100%;
		}
		.dropdown-content a:hover {background-color: #f1f1f1}
.dropdown:hover .dropdown-content {
  display: block;
}
.dropdown {
  position: relative;
  display: inline-block;
}
.dropdown:hover .dropbtn {
  background-color:#e8e8e8;
}
.dropbtn {
  background-color: None;
  color: black;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}
		login{
			justify-content: end;
		}
		.login-form{
			background-color: #e8e8e8;
			width: 60%;
			margin-left: 10px;
			margin-right: 10px;
			float: center;
		}
		.tid{
			font-size: 15px;
			}
		.links
		{
			border-radius: 10px;
			padding: 5PX;
			width: 	200PX;
		}
		.g-recaptcha{
			margin-left: 5px;
			width:auto;
		}
		.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}
		
		@media only screen and (max-width: 600px) 
		{
			body{
				font-size: 2em;
			}
			.main-body{
			margin-top:10px;
			display: grid;
			grid-template:"	main main"
							"aside aside"
							"login login";
			grid-gap:20px;
		}
		}
	</style>
	
		
	
	
	
</head>
<body>
<div class="header">
	<sat><img class="logo" src="satya3.png" alt="goi-logo"></sat>
	<headtitle><img class="logo" src="topban.png" alt="goi-logo"></headtitle>
	<mapindia><img class="logo1" src="india2.png" alt="goi-logo"></mapindia>
	<br>
	<div align="right"><a class="btn btn-light btn-lg" href="index.jsp" role="button">
          <span class="glyphicon glyphicon-log-out"></span> Log out
        </a></div>
</div>
<div class="main-body">
<!--Aside starts from here-->	
	<aside>
		<input type="button" class="links" value="Home" onclick="window.location.href = 'index.jsp';"></button><br>
		<input type="button" class="links" value="MIS Reports" onclick="window.location.href = 'mislogin.jsp';"></button><br>
		<input type="button" class="links" value="Tender By Location" onclick="window.location.href = 'tenderByLocation.jsp';"></button><br>
		<input type="button" class="links" value="Tender By Organisation" onclick="window.location.href = 'tenderByOrg.jsp';"></button><br>
		<input type="button" class="links" value="Tender By Classification" onclick="window.location.href = 'tenderByClass.jsp';"></button><br>
		<input type="button" class="links" value="Tenders in Archive" onclick="window.location.href = 'tendersInArchive.jsp';"></button><br>
		<input type="button" class="links" value="Announcements" onclick="window.location.href = 'announcement.jsp';"></button><br>
		<input type="button" class="links" value="Cancelled/Retendered" onclick="window.location.href = 'cancelled.jsp';"></button><br>
    	<input type="button" class="links" value="Debarment List" onclick="window.location.href = 'debarment.jsp';"></button><br>
	</aside>
	

<!--Main starts from here-->	
	<main>
	
	<br>
	<div align="center">
	
	<h2>AVAILABLE TENDERS</h2></div><br>
			<table border="0" bgcolor="#f7f7f7" cellpadding="0" width="100%" cellspacing="1" id="table" class="list_table">
			
			
			
	
																	<tbody><tr class="list_header">																		
																		<td width="10%" class='tid'>SL.No</td>
																		<td width="20%" align="center" class='tid'>TENDER NO</td>
																		<td width="40%" align="center" style="white-space: nowrap;" class='tid'>LASTDATE TO RESPOND</td>
																		<td width="30%" align="center" class='tid' style="white-space: nowrap;">OPERATION</td>																																														
																	</tr>																												
																	
															<% 	
															session.getAttribute("username");
																	Class.forName("com.mysql.jdbc.Driver");
							Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/sih","root","tulasidevi@11");
							Statement st = con.createStatement();
							ResultSet rs;
							rs = st.executeQuery("select * from tenderdetails ");
							int a=1;
							while(rs.next())
							{
								session.setAttribute("refer",rs.getString(2) );
								%>
								<tr>
								<td width="10%" class='tid'><%=a %></td>
								<td width="20%" align="center" class='tid'><%=rs.getString(2) %></td>
								<td width="40%" align="center" class='tid'><%=rs.getString(3) %></td>
								<td width="30%" align="center" class='tid'>
								<div class="dropdown">  <button class="dropbtn" >PROCEED HERE</button><div class="dropdown-content">
					      <a href="tenderletter.jsp?id=<%=rs.getString(2) %>" >View tender letter</a> 
							<a href="tenderletter.jsp">View tender letter</a>
							    <a href="tenderresponse.jsp">Respond to Tender</a>
								</div></div></td></tr>
								

                            <% 
                           
							/* out.print
							(
									
									"<tr ><td width=\"10%\" class='tid'>"+  a   +"</td>	"+
										"<td width=\"20%\" align=\"center\" class='tid'>"+rs.getString(2)+"</td> "+
										"<td width=\"40%\" align=\"center\" class='tid'>"+rs.getString(3)+"</td>" +
										"<td  width=\"30%\" align=\"center\" class='tid'><div class=\"dropdown\">  <button class=\"dropbtn\" >PROCEED HERE</button><div class=\"dropdown-content\">"+
									"<a href=\"tenderletter.jsp\">View tender letter</a>"+
									"<a href=\"tenderresponse.jsp\">Respond to Tender</a>"+
									"</div></div></td></tr>"
									
								);*/
								
							a=a+1;
							}
							
							con.close();

%>
																
</tbody></table>
	</main>

</div>
</div>
</body>
</html>