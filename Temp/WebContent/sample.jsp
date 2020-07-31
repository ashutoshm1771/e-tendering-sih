<!-- Cookie Army -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page  import ="java.io.BufferedReader,java.util.Random,java.io.InputStreamReader,java.net.HttpURLConnection,java.net.URL,java.io.*,java.util.Scanner"
%>
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
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>

<script>

var a;
function verify(){

 
if(document.getElementById("OTPenter").value == a){
document.getElementById("demo1").innerHTML ="success";

}
else{
document.getElementById("demo1").innerHTML ="fail";
window.location = "sample.jsp";
}

}

function myFunction() {
	const x =Math.floor((Math.random() * 1000) + 1);
	a=x;
	
	var url = 'https://api.textlocal.in/send/?apikey=qbgAjg/MTKQ-bTkeWfcroxm7WV1FdZaeCSHSBibftp&numbers='+document.getElementById("myInput").value+'&sender=TXTLCL&message='+encodeURIComponent(x);

	 

    // Make a request for a user with a given ID

    axios.get(url)

    .then(function (response) {

    // handle success

    console.log("------ SMS Gateway Response ------");

    console.log(response.data);

    })

   .catch(function (error) {

     handle error

     console.log(error);

    })

    .finally(function () {

     always executed

    });   
	



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
	<sat><img class="logo" src="satya3.png" alt="goi-logo"></sat>
	<headtitle><img class="logo" src="topban.png" alt="goi-logo"></headtitle>
	<mapindia><img class="logo1" src="india2.png" alt="goi-logo"></mapindia>
</div>

<div class="datass">
28th APril,2020
</div>
	<div class="main-body">
<!--Aside starts from here-->	
	<aside>
		<input type="button" class="links" value="Home" onclick="window.location.href = 'index.jsp';"></button><br>
		<input type="button" class="links" value="MIS Reports" onclick="window.location.href = 'misReports.jsp';"></button><br>
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
      <div class="jumbotron"><br>
      <h1 class="display-4" id="header" align="center">Bidder Registration</h1> 
      <div align="right"><a class="btn btn-light btn-lg" href="newUserReg.jsp" role="button">Back</a></div>
      <br>
      <hr class="my-4">
      <h3 class="display-6" id="header" align="left">Personal Information</h3><br>
            <form method="post" action="bidderReg2.jsp">
                <div class="container">
                    <div class="row">
                        <div class="col-sm">
                                 <div class="form-group">
                                     <label for="exampleInputName1">Full Name*</label>
                                      <input type="text" class="form-control" name="bname" id="exampleInputName1" aria-describedby="nameHelp"  placeholder="Enter your full name" required>
                                      <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                                  </div>
                         </div>
                         <div class="col-sm">
                                 <div class="form-group">
                                      <label for="exampleInputReg1">Aadhar number*</label>
                                      <input type="text" class="form-control" name="badharno" id="exampleInputReg1"  aria-describedby="regHelp"  placeholder="Enter your Aadhar number" required>
                                      <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                                 </div>
                         </div>
                      </div>
                 </div>
                 <div class="container">
                  <div class="row">
                      <div class="col-sm">
                           <div class="form-group">
                            <label for="exampleInputPoy1">Phone ISD Code*</label>
                            <input type="number" class="form-control" name="bisdcode" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="Phone ISD Code" required>
                             <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your contact number with anyone else.</small> -->
                            </div>
                       </div>
                       <div class="col-sm">              
                             <div class="form-group">
                                    <label for="exampleInputPoy1">Phone Number*</label>
                                    <div class="form-row">
                                    <input type="text" class="form-control" name="bphno" id="myInput"  aria-describedby="poyHelp"  placeholder="Phone Number" required>
                                     <small id="emailHelp" class="form-text text-muted">We'll never share your contact number with anyone else.</small>
                                     <button onclick="myFunction()">Get OTP</button>
                                     <input type="text" id = "OTPenter"><br>
                                     <button onclick="verify()">Try it</button>
                                     <p id="demo1"></p>
                                    </div>
                
                                     
                                     <!-- Phone number verification code starts here -->
                                  
                                     
                                     <% /*
int otttp;
try {
// Construct data
Random rand = new Random();

otttp = rand.nextInt(1000);
String s = Integer.toString(otttp);
session.setAttribute("ootp",s); 
String apiKey = "apikey=" + "qbgAjg/MTKQ-bTkeWfcroxm7WV1FdZaeCSHSBibftp";
String message = "&message=" + s ;
String sender = "&sender=" + "TXTLCL";
String numbers = "&numbers=" + "9398675995";

// Send data
HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
String data = apiKey + numbers + message + sender;
conn.setDoOutput(true);
conn.setRequestMethod("POST");
conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
conn.getOutputStream().write(data.getBytes("UTF-8"));
final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
final StringBuffer stringBuffer = new StringBuffer();
String line;
while ((line = rd.readLine()) != null) {
stringBuffer.append(line);
}
rd.close();

 
} catch (Exception e) {
System.out.println("Error SMS "+e);

}
*/

%>
                                     
                                     
                                     
                              </div>
                       </div>
                    </div>
               </div>
               <div class="container">
                  <div class="row">
                    <div class="col-sm">
                             <div class="form-group">
                                   <label for="exampleInputmail1">Email Id*</label>
                                   <input type="email" class="form-control" name="bemail" id="exampleInputDes1" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" aria-describedby="phoneHelp"  placeholder="Eg : johndoe@gmail.com" required>
                                   <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                            </div>
                     </div>
                     <div class="col-sm">
                           <div class="form-group">
                               <label for="exampleInputName1">PAN Card Number*</label>
                                <input type="text" class="form-control" name="bpanno" id="exampleInputName1" aria-describedby="nameHelp"  placeholder="Permanent Account Number" required>
                                <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                            </div>
                   </div>
              
                  </div>
             </div>
            
             <hr class="my-4">
             <h3 class="display-6" id="header" align="left">Address</h3><br>
              <div class="container">
                    <div class="row">
                        <div class="col-sm">
                             <div class="form-group">
                              <label for="exampleInputPoy1">State*</label>
                                <select class="form-control" name="bstate" id="exampleFormControlSelect2">
                                <option value="0">-Select-</option>
                                <option value="1">Andaman and Nicobar (UT)</option>
                                <option value="2">Andhra Pradesh</option>
                                <option value="3">Andhra Pradesh (Before Division)</option>
                                <option value="4">Arunachal Pradesh</option>
                                <option value="5">Assam</option>
                                <option value="6">Bihar</option>
                                <option value="7">Chandigarh (UT)</option>
                                <option value="8">Chhattishgarh</option>
                                <option value="9">Dadra and Nagar Haveli (UT)</option>
                                <option value="10">Daman and Diu (UT)</option>
                                <option value="11">Delhi</option>
                                <option value="12">Goa</option>
                                <option value="13">Gujarat</option>
                                <option value="14">Haryana</option>
                                <option value="15">Himachal Pradesh</option>
                                <option value="16">Jammu and Kashmir</option>
                                <option value="17">Jharkhand</option>
                                <option value="18">Karnataka</option>
                                <option value="19">Kerala</option>
                                <option value="20">Ladakh (UT)</option>
                                <option value="21">Lakshadweep (UT)</option>
                                <option value="22">Madhya Pradesh</option>
                                <option value="23">Maharashtra</option>
                                <option value="24">Manipur</option>
                                <option value="25">Meghalaya</option>
                                <option value="26">Mizoram</option>
                                <option value="27">Nagaland</option>
                                <option value="28">Orissa</option>
                                <option value="29">Pondicherry (UT)</option>
                                <option value="30">Punjab</option>
                                <option value="31">Rajasthan</option>
                                <option value="32">Sikkim</option>
                                <option value="33">Tamil Nadu</option>
                                <option value="34">Telangana</option>
                                <option value="35">Tripura</option>
                                <option value="36">Uttaranchal</option>
                                <option value="37">Uttar Pradesh</option>
                                <option value="38">West Bengal</option>
                            </select>
                                <script language="javascript">print_state("sts");</script>
                         </div>
                      </div>
                 </div>
                </div>
                <div class="container">
                  <div class="row">
                      <div class="col-sm">
                           <div class="form-group">
                            <label for="exampleInputPoy1">Pin Code*</label>
                            <input type="number" class="form-control" name="bpincode" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="Pin Code" required>
                             <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your contact number with anyone else.</small> -->
                            </div>
                       </div>
                       <div class="col-sm">              
                             <div class="form-group">
                                    <label for="exampleInputPoy1">District*</label>
                                    <input type="text" class="form-control" name="bdist" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="District" required>
                                     <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your contact number with anyone else.</small> -->
                              </div>
                       </div>
                    </div>
               </div>
               <hr class="my-4">
               <h3 class="display-6" id="header" align="left">Login Details</h3><br>
              <div class="container">
                <div class="form-group">
                    <label for="exampleInputlink1">Login ID*</label>
                    <input type="text" class="form-control" id="exampleInputlink1" name="bid" aria-describedby="linkHelp"  placeholder="Choose a Login ID">
                    <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                </div>
              </div>
              <div class="container">
                    <div class="row">
                        <div class="col-sm">
                                 <div class="form-group">
                                       <label for="exampleInputPasswrd1">Password*</label>
                                       <input type="password" class="form-control" name="bpass" id="exampleInputPasswrd1"  placeholder="Enter your password" required>
                                  </div>
                         </div>
                         <div class="col-sm">
                                 <div class="form-group">
                                       <label for="exampleInputCPasswrd1">Confirm Password*</label>
                                       <input type="password" class="form-control" name="bcpass" id="exampleInputCPasswrd1" placeholder="Enter your confirm password" required>
                                 </div>
                         </div>
                      </div>
                 </div>
             <br>
               <div class="text-center">
              <button type="submit" class="btn btn-primary">Register as a bidder</button>
              </div>
                
            </form>
          </div>
	</main>
<!--Login starts from here-->	
		
</div>
</div>
</body>
</html>