<!-- Cookie Army -->
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Etender</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
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
			grid-template-columns: auto auto auto;
			grid-template-rows: auto auto auto auto auto;
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
			width:auto;
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
		.links
		{
			border-radius: 10px;
			padding: 5PX;
			width: 	180PX;
		}
		.g-recaptcha{
			margin-left: 5px;
			width:auto;
		}
		.datass
		{
			display: inline-block;
			color: white;
			width: 100%;
			background-color: maroon;
		}
        .home-container
		{
			display: flex;
			width: 100%;
			border: 2px solid black;
		}
		.home-container-1
		{
			display: flex;
			width: 100%;
			border: 2px dotted black;
		}
		.item-1
		{
			flex: 1;
		}
		.item-2
		{
			flex: 1;
		}
		.item-3
		{
			flex: 1;
		}
		.item-4
		{
			flex: 1;
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
        <sat><img class="logo" src="images/satya3.png" alt="goi-logo"></sat>
        <headtitle><img class="logo" src="images/topban.png" alt="goi-logo"></headtitle>
        <mapindia><img class="logo1" src="images/india2.png" alt="goi-logo"></mapindia>
    </div>
    <div class="text-center">
        <div class="container">
            <div class="jumbotron">
                <div class="text-center">
                    <h1 class="display-4">Your Tenders</h1>
                    </div>
                    <div align="right"><a class="btn btn-light btn-lg" href="empPortal.jsp" role="button">Back</a></div>
                    <hr class="my-4">
                    <div class="card">
                        <div class="card-header">
                            List View
                        </div>
                        <div class="home-container">
                            <div class="flex item-1"> Tender Title</div>
                            <div class="flex item-2"> Reference No</div>
                            <div class="flex item-3"> Closing Date</div>
                            <div class="flex item-4"> Bid Opening Date</div>
                        </div>
                        <div class="card-body">
                            <p class="card-text">
                                <%	
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/sih","root","tulasidevi@11");
                                    Statement st = con.createStatement();
                                    ResultSet rs;
                                    rs = st.executeQuery("select * from tenderdetails ");
                                    while(rs.next())
                                    {
                                    out.print
                                    (
                                            "<div class='home-container-1'>"+
                                                    "<div class='flex item-1'><a href='viewTenderdetail.jsp'>"+rs.getString(1)+"</a></div>"+
                                                    "<div class='flex item-2'>"+rs.getString(2)+"</div>"+
                                                    "<div class='flex item-3'>"+rs.getString(3)+"</div>"+
                                                    "<div class='flex item-4'>"+rs.getString(4)+"</div>"+
                                                "</div>"
                                        );
                                    }
                                    
                                %>
                            </p>
                        </div>
            </div>
        </div>
    </div>

</body>
</html>