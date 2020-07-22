<!-- Cookie Army -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Etender</title>
	<link rel="stylesheet" type="text/css" href="dialog_box.css">
	<link rel="stylesheet" type="text/css" href="nicgep_web_style.css">
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
	<sat><img class="logo" src="satya3.png" alt="goi-logo"></sat>
	<headtitle><img class="logo" src="etendering.png" alt="goi-logo"></headtitle>
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
	</aside>

<!--Main starts from here-->	
		<main>
		<form method="post" action="/eprocure/app" id="FrontEndDebarmentList">
<div style="display:none;" id="FrontEndDebarmentListhidden"><input type="hidden" name="formids" value="tokenSecret,typeSearch,tabByClosingToday,LinkSubmit_0,LinkSubmit_1,LinkSubmit_2,LinkSubmit_3,If_17,If_0_22,If_19,If_21,If_23,If_25">
<input type="hidden" name="seedids" value="ZH4sIAAAAAAAAAE1QQU7DMBBMD/zERx/qlJRyJKJFlQJCgOAYucmmtUh2LdsQlRviO3yNP7CJW7UXe2Y9np3d37/k4itJJj+Tb+nBfZoKxFRavR2uijpLCBhGjEEbBMfYg/eGcECWjzfY5OTq8WmN7BKEWsjnHbQtV25wLzKZU72P0heyucZotG6EmssVOZEumJRTkSq5bD0IdS1bg++Kv0bLUonLI0y5uqMOClawyyOnHWCZnZN5bPdAIc6EI3g10AslHSDnHUOpw8sT9awyARwjL1JpsCHX6ZYVvdPWQs3oaC9Udmp1FVsV0IR7wA9md8ADmuoQ8IzxiDO5crzMJda3sNGu4/0WxvOO/wHh/mp+jAEAAA==">
<input type="hidden" name="component" value="FrontEndDebarmentList">
<input type="hidden" name="page" value="FrontEndDebarmentList">
<input type="hidden" name="service" value="direct">
<input type="hidden" name="session" value="T">
<input type="hidden" name="submitmode" value="">
<input type="hidden" name="submitname" value="">
<input type="hidden" name="tokenSecret" id="tokenSecret" value="SK1T3SvMn18072020162318">
<input type="hidden" name="If_17" value="F">
<input type="hidden" name="If_0_22" value="F">
<input type="hidden" name="If_19" value="F">
<input type="hidden" name="If_21" value="F">
<input type="hidden" name="If_23" value="F">
<input type="hidden" name="If_25" value="F">
</div>
	<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
		<tbody><tr> 
			<td valign="top" class="page_content">
				<!-- interface_elements -->				
				<table align="center" border="0" cellpadding="0" cellspacing="0" width="92%">
					
					
						<tbody>
							<tr valign="middle">
								<td class="text3" height="20">
									<span>
											
											<span>
												</span></span><table width="100%" cellspacing="0" cellpadding="0" class="list">
										<tbody><tr>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td valign="left">
												<table>
													<tbody><tr>
														<td valign="bottom" class="pageheader">Debarment List</td>
													</tr>
												</tbody></table>
											</td>
										</tr>
										<tr>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td>&nbsp;</td>
										</tr>																				
										
										<tr valign="middle">
											<td class="text3" height="20">
												<table width="100%" cellspacing="0" cellpadding="0" class="list">
													<tbody><tr> 
														<td width="16"><img src="images/fleft.png" width="16" height="22"></td>
														<td background="images/ftopbg.png">
															<table width="240" height="22" border="0" cellpadding="0" cellspacing="1" bgcolor="DCDCDC">
																<tbody><tr> 
																	<td bgcolor="#FFFFFF" class="text1bold">&nbsp;&nbsp;<b>Debarment List</b></td>
																</tr>
															</tbody></table>
														</td>
														<td width="10"><img src="images/frgt.png" width="16" height="22"></td>
													</tr>
													<tr> 
														<td width="10" background="images/fleftbg.png">&nbsp;</td>
														<td valign="top" bgcolor="F8F8F8" class="td_space">
										
														<!-- Information Grid -->
														<table width="100%" border="0" cellspacing="1" cellpadding="1">	
															<tbody><tr>
																<td>
																	<table width="100%" cellspacing="0" cellpadding="0" class="list">
																		<tbody><tr>
																			<td>&nbsp;</td>
																		</tr>
																		<tr align="left">
																			<td class="textbold2" align="left">&nbsp;Search By &nbsp;&nbsp;&nbsp;&nbsp;
																			<select name="typeSearch" id="typeSearch" style="width:200px; height:20px;" onchange="enableClickEvent();">
<option value="0" selected="selected">Login ID</option>
<option value="1">PAN Number</option>
</select></td>
																		</tr>
																												
																	</tbody></table>
																</td>
															</tr>
															
														</tbody></table>
														</td>
														<td width="16" background="images/frgtbg.png">&nbsp;</td>
													</tr>
													<tr> 
													   <td width="8"><img src="images/fleftbot.png" width="16" height="10"></td>
													   <td background="images/fbotbg.png"><img src="images/spacer.png" width="1" height="1"></td>
													   <td width="16"><img src="images/frgtbot.png" width="16" height="10"></td>
													</tr>
												</tbody></table>
											</td>
										</tr>
										<tr>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td>&nbsp;</td>
										</tr>
										<tr align="center">
											<td> 
												<table width="100%">
													<tbody><tr>
														<td align="left">
															<div id="tabsJ">
																<ul>
																	<li><a href="javascript:tapestry.form.submit('FrontEndDebarmentList', 'tabByClosingToday');" id="tabByClosingToday"><span>Product Category</span></a></li>
																	<li><a href="javascript:tapestry.form.submit('FrontEndDebarmentList', 'LinkSubmit_0');" id="LinkSubmit_0"><span>Tender Category</span></a></li>
																	<li><a href="javascript:tapestry.form.submit('FrontEndDebarmentList', 'LinkSubmit_1');" id="LinkSubmit_1"><span>Organisation</span></a></li>
																	<li><a href="javascript:tapestry.form.submit('FrontEndDebarmentList', 'LinkSubmit_2');" id="LinkSubmit_2"><span>Against Portal</span></a></li>
																	<li><a href="javascript:tapestry.form.submit('FrontEndDebarmentList', 'LinkSubmit_3');" id="LinkSubmit_3"><span>Search</span></a></li>   
																</ul>
															</div>
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
														<span>
															</span><table width="100%" cellspacing="1" cellpadding="0" class="list_table">
															<tbody><tr class="list_header">
															<td width="5%">S.No</td>
															<td width="15%">Bidder Name</td>
															<td width="15%">Login ID</td>
															
															<td width="15%">Product Category</td>
															
															<td width="15%">Start Date</td>
															<td width="15%">End Date</td>
															
															</tr>
															<tr>
																<td align="center" colspan="7" class="td_space">
																	<span class="error">No Records found.</span>
																</td>
															</tr>
														</tbody></table>
													</td>
												</tr>
												<tr>
													<td class="list_footer">&nbsp;</td>
												</tr>
											
										
									</tbody></table>
								</td>
							</tr>
						</tbody>
					
				</table>
				<!-- END: interface_elements -->
			</td>
		</tr>
	</tbody></table>
	</form>
			</main>

</div>
</div>
</body>
</html>