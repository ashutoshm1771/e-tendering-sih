<!-- Cookie Army -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Etender</title>
	<link rel="stylesheet" type="text/css" href="nicgep_web_style.css">
	<link rel="stylesheet" type="text/css" href="dialog_box.css">
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
	<headtitle><img class="logo" src="images/etendering.png" alt="goi-logo"></headtitle>
	<mapindia><img class="logo1" src="images/india2.png" alt="goi-logo"></mapindia>
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
		<table width="92%" border="0" align="center" cellpadding="0" cellspacing="0">
													
													<tbody><tr>
														<td>&nbsp;</td>
													</tr>
													<tr>
														<td valign="left">
															<table width="100%" cellpadding="0" cellspacing="0">
																<tbody><tr>
																	<td valign="bottom" class="pageheader" align="left">Announcements</td>
																	<td align="right" width="80"><a id="PageLink_15" title="Back" class="customButton_link" value="Back" href="/eprocure/app?page=Home&amp;service=page">Back</a></td>
																</tr>
															</tbody></table>
														</td>
													</tr>
													<tr>																									
														<td>&nbsp;</td>
													</tr>
													
													<tr>
														<td class="td_space list_header">The eTender related announcements are published below.</td>
													</tr>
													<tr>
														<td>&nbsp;</td>
													</tr>
													
													<tr> 
													  <td>
															<span id="If_16">
																			</span><table width="100%" cellpadding="0" cellspacing="0">
																<tbody><tr>
																	<td class="td_space note">No. of Announcements : <b>2</b></td>
																</tr>
																
																		<!-- List -->
																		<tr>
																				<td bgcolor="#757575">
																					

<table border="0" bgcolor="#f7f7f7" cellpadding="0" width="100%" cellspacing="1" id="announceView" class="list_table">
	
																					
																						<tbody><tr class="list_header">
																							<td width="7%">S.No</td>
																							<td width="83%">Subject / Content</td>
																							<td width="10%">View</td>
																							
																						</tr>
																						


	<tr id="informal_1">
		
																							<td align="left">1.</td>
																							<td align="left"><b>Alert! Government warns against large-scale phishing attack</b><br>																												
																							&nbsp;The phishing mails may purportedly from Govt of India authorities [spoofing ncovid19[at]gov[dot]in or similar] who are tasked to oversee the disbursement of the fiscal aid for dispensing government-funded Covid-19 support initiatives. Advisory: Always type the Full Qualified Domain Name in the address bar of respective eProcurement Site. Check the Domain and SSL Certificate before accessing the service over eProcurment Instances. Don’t use any email links to open e-procurement Sites and don’t share any credentials details with anyone else. Close your browser properly and thus ensure that the Session is closed properly. Do not open any emails from untrsted sources. Never reveal any critical information through mails.</td>
																							<td align="left">&nbsp;
																								
																							</td>
																							</tr><tr>
																								<td>&nbsp;</td>
																							</tr>
																						
	

	<tr id="informal_2">
		
																							<td align="left">2.</td>
																							<td align="left"><b>Facility of 2 of 2  Bid Openers</b><br>																												
																							&nbsp;In view of the covid19 lock down, the facility of 2 of 2 Bid Openers  will be available till 31st July 2020. The facility is extended based on requests received from various users.</td>
																							<td align="left">&nbsp;
																								
																							</td>
																							</tr><tr>
																								<td>&nbsp;</td>
																							</tr>
																						
	



		
																						
																					
</tbody></table>


																				</td>
																			</tr>
																		

																		
																			
																		<!-- End : List -->
																	
															</tbody></table>
													  </td>
													</tr>
													<tr>
														<td>&nbsp;</td>
													</tr>
											  </tbody></table>
			</main>

</div>
</div>
</body>
</html>