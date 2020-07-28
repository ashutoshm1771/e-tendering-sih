<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Digilocker</title>
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
			margin-left: 20px;
			width:auto;
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
		<headtitle><img class="logo" src="digilockerLogo.png" alt="goi-logo"></headtitle>
		<mapindia><img class="logo1" src="images/india2.png" alt="goi-logo"></mapindia>
	</div>
<div class="main-body">

<!--Main starts from here-->	
	<main>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/---","root","");
            Statement st = con.createStatement();
            String userid=(String)session.getAttribute("did");
            Statement st = con.createStatement();
			ResultSet rs;
			rs = st.executeQuery("select  from  ");
        %>
			<div class="jumbotron">
                <h1 class="display-4">Your Uploaded Documents</h1><br>
                <div align="right"><a class="btn btn-light btn-lg" href="digiPortal.jsp" role="button">Back</a></div>
                <br>
                <hr class="my-4">
                <div class="card">
                    <div class="home-container">
						<div class="flex item-2"> Document Name</div>
                    </div>
					<form method="post" action="___.jsp">
                        <div class="card-body">
							<%
							while(rs.next())
                            {
                                out.print
                                (
                                    "<div class='home-container-1'>"+
										"<div align='left'><input type='checkbox' name='yes' class='form-check-input' id='exampleCheck1'></div><div align='left'>"+rs.getString(1)+"</div>"+
									"</div>"
                                );
							}
							%>
							<div class='home-container-1'>
								<div class='flex item-1'>
									<div align='left'><input type='checkbox' name='yes' class='form-check-input' id='exampleCheck1'></div><div align='left'>podey</div>
								</div>
							</div>
						</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
							</form>
                        </div>
                </div>
			</div>
	</main>
</div>
</div>
</body>
</html>