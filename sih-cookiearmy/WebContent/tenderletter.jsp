<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Etender</title>
	<link rel="stylesheet" type="text/css" href="nicgep_web_style.css">
	<link rel="stylesheet" type="text/css" href="dialog_box.css">
	<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&display=swap" rel="stylesheet">	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
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
			margin-left: 5px;
			width:auto;
		}
		
		.tid{
			font-size: 15px;
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
<div class="main-body">

<td align="right" width="80"><a  title="Back" class="customButton_link" value="Back" href="index.jsp"></a></td>
<!--Main starts from here-->
<div class="card" align="center">
<div align="center"><h2>COMPANY NAME</h2></div><div align="right"><H5>TENDER NO: </H5> </div>
<div align="center">LOCATION</div><div align="right"><H5>DATE: </H5> </div><br>
		<main>
			<table width="100%" cellspacing="0" cellpadding="0" border="0">
			<form method="post" action="/eprocure/app" id="TendersByOrganisationForm"></form>

									<tbody><tr>
										<td>
											<!-- interface_elements -->
												<span id="If_0_22">	
														</span><table width="92%" border="0" align="center" cellpadding="0" cellspacing="0">
													<tbody><tr>
														<td>&nbsp;</td>
													</tr>
													<tr>
														<td valign="left">
															<table width="100%" cellpadding="0" cellspacing="0">
																<tbody><tr>
																	<td valign="bottom" class="pageheader" align="left"><h3>Tender Letter</h3></td>
																	
																	
																</tr>
															</tbody></table><br><br>
															
															<h6><p>M/s,Mr.??here keep user name variable??</p>
															<p>??keep company name variable??</p>
															<p>??city variable??</p><br>
															<p>Dear sir/madam,</p><br>
															<p>Please send us your best offer giving all terms and conditions in detail for items mentioned here below.</p>
															<p>Your Offer must reach us on or before ??keep deadline date and time varaibles here?? positively.</p>
															 
															</h6>
															
														</td>
													</tr>
													<tr>																									
														<td>&nbsp;</td>
													</tr>
													<tr>
														<td>&nbsp;</td>
													</tr>
													
													<tr>
														<td>
															
														
														
														</td>
													</tr>	
													<tr><td>&nbsp;</td></tr>
												
												
													
																								
													
													<tr>
															<td >
															<table border="0" bgcolor="#f7f7f7" cellpadding="0" width="100%" cellspacing="1" id="table" class="list_table">
	
																	<tbody><tr class="list_header">																		
																		<td width="5%" class='tid'>SL.No</td>
																		<td width="15%" align="center" class='tid'>ITEM_CODE</td>
																		<td width="40%" align="center" style="white-space: nowrap;" class='tid'>ITEM_DESCRIPTION</td>
																		<td width="40%" align="center" class='tid' style="white-space: nowrap;">QUANTITY</td>																																														
																	</tr>																												
																	




	          <tr >
			
																		<td width="5%" class='tid'>??SERIAL.NO VARI??</td>																	        																												
       																	<td width="15%" align="center" class='tid'>??ITEM_CODE??</td> 
       																	<td width="40%" align="center" class='tid'>??ITEM_DESCRIPTION??</td> 
       																	<td  width="40%" align="center" class='tid'>??QUANTITY VARIABLE??</td> 
       																	
       																	      																	         																	
       																	     																																													       																								
       																
	</tr>


																	<tr>																		
																	</tr>
																
</tbody></table>
<br>
<table id="tid" bgcolor="#f7f7f7" cellspacing="1" class="list_table" id="table" width="100%">
<tr><td class='tid'>TRANSIT INSURANCE  </td>              <td class='tid'>As per the tender document</td></tr>
<tr><td class='tid'>Delivery payment  </td>            <td class='tid'>   As per the tender document</td></tr>
<tr><td class='tid'>ITEM CODE       </td>                  <td class='tid'> As per the tender document</td></tr>
<tr><td class='tid'>C/e Building Construction</td>         <td class='tid'>  As per the tender document</td></tr>
<tr><td class='tid'>Acceptance/Warranty payment</td>       <td class='tid'>  As per the tender document</td></tr>
<tr><td class='tid'>TERMS OF PAYMENT         </td>         <td class='tid'>  As per the tender document</td></tr>
<tr><td class='tid'>eye test terms and conditions </td>    <td class='tid'>  As per the tender document</td></tr>
<tr><td class='tid'>Technical detail          </td>        <td class='tid'>  As per the tender document</td></tr>
<tr><td class='tid'>Terms and Conditions     </td>         <td class='tid'>  As per the tender document</td></tr>
<tr><td class='tid'>Specific tetris puns    </td>          <td class='tid'>  As per the tender document</td></tr></table>


															</td>
														</tr>
													
													
													<tr>
														<td>&nbsp;</td>
													</tr>
											  </tbody></table>
<table align="center" border="0" bgcolor="#f7f7f7" cellpadding="0" width="92%" cellspacing="1" id="table" class="list_table">
	
																	<tbody><tr class="list_header">																		
																		<td width="5%" class='tid'>SL.No</td>
																		<td width="15%" align="center" class='tid'>Document</td>
																		<td width="40%" align="center" style="white-space: nowrap;" class='tid'>SIZE</td>
																		<td width="40%" align="center" style="white-space: nowrap;" class='tid'>Uploaded Date</td>																																														
																	</tr>																												
																	




	          <tr >
			
																		<td class='tid'  width="5%">??SERIAL.NO VARI??</td>																	        																												
       																	<td class='tid' align="center">   
       																	<a id="DirectLink" class="link2" href="Digilocker.jsp">     																	 
       																	  <h6>Doc.doc</h6>
       																	  </a>
       																	 </td> 
       																	<td  class='tid' width="40%" align="center">??size variable??</td> 
       																	<td   class='tid' width="40%" align="center">??date variable??</td> 
       																	
       																	      																	         																	
       																	     																																													       																								
       																
	</tr>


																	<tr>																		
																	</tr>
																
</tbody></table>
<table width="100%" cellpadding="0" cellspacing="0">
																<tbody><tr>
																<div align="center">
													
	<button background-color:#4CAF50; border:"0"; onclick="window.print()">Print<img src="print.png" width="20" height="20" border="0"></button> &nbsp;<a id="PageLink_14" title="CLOSE" class="customButton_link" value="CLOSE" href="index.jsp"><B>CLOSE</B></a></td>
																	</div>
																</tr>
															</tbody></table><br><br>
											  <!-- END: interface_elements -->
										</td>
									</tr>
									
								</tbody></table>
								
	</main>
</div>
</div>
</div>
</body>
</html>