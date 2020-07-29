<!-- Cookie Army -->
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
<script src="js/cities.js"></script>
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

<div class="datass">
28th APril,2020
</div>
	
      <div class="jumbotron"><br>
      <h1 class="display-4" id="header" align="center">Publish A Tender</h1> 
      <div align="right"><a class="btn btn-light btn-lg" href="empPortal.jsp" role="button">Back</a></div>
      <br>
      <hr class="my-4">
      <h3 class="display-6" id="header" align="left">Tender Information</h3><br>
            <form method="post" action="---.jsp">
                <div class="container">
                    <div class="row">
                        <div class="col-sm">
                                 <div class="form-group">
                                     <label for="exampleInputName1">Tender Title*</label>
                                      <input type="text" class="form-control" name="title" id="exampleInputName1" aria-describedby="nameHelp"  placeholder="Enter the tender title" required>
                                      <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                                  </div>
                         </div>
                      </div>
                 </div>
                 <div class="container">
                    <div class="row">
                        <div class="col-sm">
                             <div class="form-group">
                              <label for="exampleInputPoy1">Tender Start Date*</label>
                              <input type="number" class="form-control" name="tstartDate" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="Starting Date of the Tender" required>
                               <small id="emailHelp" class="form-text text-muted">Format - DD/MM/YYYY </small>
                              </div>
                         </div>
                         <div class="col-sm">              
                               <div class="form-group">
                                      <label for="exampleInputPoy1">Tender Closing Date*</label>
                                      <input type="text" class="form-control" name="tcloseDate" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="Closing Date of the Tender" required>
                                       <small id="emailHelp" class="form-text text-muted">Format - DD/MM/YYYY </small> 
                                </div>
                         </div>
                      </div>
                 </div>
                 <hr class="my-4">
        <h3 class="display-6" id="header" align="left">Tender Location</h3><br>
                 <div class="container">
                    <div class="row">
                        <div class="col-sm">
                             <div class="form-group">
                              <label for="exampleInputPoy1">State*</label>
                                <select onchange="print_city('state', this.selectedIndex);" id="sts" name ="tstate" class="form-control" required></select><br>
                                <label for="exampleInputPoy1">City*</label>
                                <select id ="state" name="tcity" class="form-control" required></select>
                                <script language="javascript">print_state("sts");</script>
                         </div>
                      </div>
                 </div>
                </div>
             <div class="container">
              <div class="row">
                  <div class="col-sm">
                           <div class="form-group">
                               <label for="exampleInputName1">Postal Code*</label>
                                <input type="text" class="form-control" name="tpostalCode" id="exampleInputName1" aria-describedby="nameHelp"  placeholder="PIN Code" required>
                                <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                            </div>
                   </div>
                   <div class="col-sm">
                      <div class="form-group">
                        <label for="exampleInputPoy1">District*</label>
                        <input type="text" class="form-control" name="bdist" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="District" required>
                      </div>
                   </div> 
                   
                </div>
           </div>
             <hr class="my-4">
             <br>

               <div class="text-center">
              <button type="submit" class="btn btn-primary">Publish Tender</button>
              </div>
                
            </form>
          </div>
</body>
</html>
