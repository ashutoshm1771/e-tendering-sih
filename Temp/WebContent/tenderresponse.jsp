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
			grid-template:" aside main login";
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
			background-color:white;
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
<!--Aside starts from here-->	
	
<aside></aside>
<!--Main starts from here-->	
<div class="jumbotron">
	<div align="text-center"><h2>RESPONSE TO TENDER</h2></div>
			<td class="page_content" valign="top">
							<!-- Page content starts here -->
	<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
		<tbody><tr>
			<td valign="top" height="100%">
				<!-- Page Content -->
					<!-- Content Area -->
					<table width="100%" cellspacing="0" cellpadding="0" border="0" height="100%">
						<tbody><tr>
							<td class="page_content" height="100%" valign="top">
								<table width="100%" cellspacing="0" cellpadding="0" border="0">
									<tbody><tr>
										<td>
											<!-- interface_elements -->
												<table width="92%" border="0" align="center" cellpadding="0" cellspacing="0">
													
													<tbody><tr>
														<td>&nbsp;</td>
													</tr>
													<tr>
														<td valign="left">
															<table width="100%" cellpadding="0" cellspacing="0">
																<tbody><tr>
																	<td valign="bottom" class="pageheader" align="left">Tender Status</td>
																	<td align="right" width="80"><a id="PageLink_14" title="Back" class="customButton_link" value="Back" href="tenderslist.jsp">Back</a></td>
																</tr>
															</tbody></table>
														</td>
													</tr>
																																						
													<tr>
														<td align="center" class="td_space">
															
														</td>
													</tr>
													
													<tr>
														<td>														
															<table width="100%" cellspacing="0" cellpadding="0">
																<tbody><tr>
																	<td>
						
																				<td colspan="6" class="list_header">Respond to tender</td>
																																					
																				</tr><tr>
																					<td class="td_caption" width="15%">Enter Quotation Ref.No:<span class="mandatory">#</span></td>
																						<td class="td_caption" width="50%" colspan="3">
																							<input type="text" name="quotationRefNo" value="" id="qutationRefNo" style="width:150px;" maxlength="30">
																						</td>				
																					<tr>
																					<td class="td_caption" width="15%">Currency in which you are quoting:<span class="mandatory">#</span></td>
																						<td class="td_caption" width="50%" colspan="3">
																							<input type="text" name="currency" value="" id="currency" style="width:150px;" maxlength="30">
																						</td>
																					</tr>
																																						<tr>																									
																				<td>&nbsp;</td>
																			</tr>
																			<tr class="list_header">
																				<td colspan="6" class="list_header">ITEM CODE</td>
                                                                                   </tr><tr>  
                                                                                   		
                                                                          															
																					</tr>																	
																					
																					<tr colspan="6">
																						<td class="td_caption" width="15%">RATE:<span class="mandatory">#</span></td>
																						<td class="td_caption" width="50%" colspan="3">
																							<input type="text" name="quotationRefNo" value="" id="qutationRefNo" style="width:150px;" maxlength="30">
																						</td>																																																										
																					</tr>
																					<tr>
																						<td class="td_caption" width="15%">GRAND TOTAL:<span class="mandatory">#</span></td>
																						<td class="td_caption" width="50%" colspan="3">
																							<input type="text" name="quotationRefNo" value="" id="qutationRefNo" style="width:150px;" maxlength="30">
																						</td>
																						
																																							<tr>																									
																				<td>&nbsp;</td>
																			</tr>	
																			<tr class="list_header">
																				<td colspan="6" class="list_header">REMARKS</td>
																					</tr><tr>
																						<td class="td_caption" width="15%" align="right">WRITE REMARKS <span class="mandatory">*</span></td>
																						<td class="td_caption" width="85%" colspan="5">
																							<input type="text" name="tenderId" value="" id="tenderId" style="width:150px;" maxlength="30">
																						</td>
																					</tr>
																			
																			<tr>																									
																				<td>&nbsp;</td>
																			</tr>	
																			<td>&nbsp;</td>
																			</tr>	
																			<tr class="list_header">
																				<td colspan="6" class="list_header">TERMS AND CONDITIONS</td>
																					</tr><tr>
																						<td class="notes" colspan="6" align="left">100% Payment will be made in advance through TT/International Demand Draft along with the order</span></td>
																						<td class="td_caption" width="60%" colspan="5">
																							
																						</td>
																						<tr>

																						<td colspan="6" class="list_header">UPLOAD DOCUMENTS</td>
																					</tr><tr>
																						<td class="td_caption" width="25%" align="right">UPLOAD FILES IN DIGILOCKER <span class="mandatory">*</span></td>
																						<td class="td_caption" width="75%" colspan="5">
																						<p><a href="JavaScript:newPopup('digilocker/index.jsp');">Click Here</a></p>
																					<!--  		<a onclick="window.open(\"digilocker/index.jsp\")" class="button">CLICK HERE</a>   -->
																						</td>
																						</tr>
																			 				</tbody></table>
																				</td>
																			 </tr>
																			
																			
																			<tr>
																				<td colspan="6" class="notes">Read the terms and conditions carefully and upload the documents .
																				</td>
																			</tr>
																			<tr>
																				
																			</tr>																				
																		</tbody></table>
																	</td>
																</tr>
															</tbody></table>															
														</td>
													</tr>		
													<tr>
														<td>&nbsp;</td>
													</tr>
													
																					
													<tr> 
													  <td>
															
													  </td>
													</tr>
														
													<tr>
														<td>&nbsp;</td>
													</tr>													
											  </tbody></table>
											  <!-- END: interface_elements -->
										</td>
									</tr>
								</tbody></table>
							</td>
						</tr>								
					</tbody></table>
					<!-- End : Content Area -->
			</td>
		</tr>
	</tbody></table>
</form>	

							<!-- Page content ends here -->	
							</td>
</div>
</div>
<login></login>
<script type="text/javascript">
		// Popup window code
		function newPopup(url) {
			popupWindow = window.open(
				url,'popUpWindow','height=800,width=1000,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
		}
		</script>
</body>
</html>