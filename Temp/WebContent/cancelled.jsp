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
		<div id="content">
		
		
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
								<div style="display:none;" id="WebCancelledTenderListshidden"><input type="hidden" name="formids" value="If_17,tenderStatus,TenderId,Keyword,captchaText,captcha,Search,If_0_22,If_19">
<input type="hidden" name="seedids" value="ZH4sIAAAAAAAAAE1QQU7DMBBMD/xkjz7EgZRyJAhQpYAQVHCMTLKhFsnasg1RuSJ+w9f6h27iVu3Fntkdz876f5uc/STJ7G/2Kzy6b10jpMKqj/GqTW8NIYUJU1Ca0DH26L02NCLLxxu+F8Y1U2tJ7BJALsTLGruOK9e0gVwUptlE6crYQlE0WrYg5+LOOMgWTKoUMiluO48gr0Sn6VPy02hZSbg4wIyra9NjyQp2eeK0I6zyUzKP4x5NiDvRBF41DiCFQ+K8Uyi57zybgVU6oGPkIROaWuN61bFicMpabBgd7EHmx1GXcVSJbXhA+mJ2j7ygrvcBTxiveD5qbxTV/D/YrKYkpfbBQ7oD6drEYY4BAAA=">
<input type="hidden" name="component" value="WebCancelledTenderLists">
<input type="hidden" name="page" value="WebCancelledTenderLists">
<input type="hidden" name="service" value="direct">
<input type="hidden" name="session" value="T">
<input type="hidden" name="submitmode" value="">
<input type="hidden" name="submitname" value="">
<input type="hidden" name="If_17" value="F">
<input type="hidden" name="If_0_22" value="F">
<input type="hidden" name="If_19" value="F">
</div><table width="100%" cellspacing="0" cellpadding="0" border="0">
									<form method="post" action="/eprocure/app" id="WebCancelledTenderLists"></form>

									<tbody><tr>
										<td>
											<!-- interface_elements -->
												<span>
														</span><table width="92%" border="0" align="center" cellpadding="0" cellspacing="0">
													<tbody><tr>
														<td>&nbsp;</td>
													</tr>
													<tr>
														<td valign="left">
															<table width="100%" cellpadding="0" cellspacing="0">
																<tbody><tr>
																	<td valign="bottom" class="pageheader" align="left">Cancelled/Retendered</td>
																	<td align="right" width="80"><a id="PageLink_15" title="Back" class="customButton_link" value="Back" href="/eprocure/app?page=Home&amp;service=page">Back</a></td>
																</tr>
															</tbody></table>
														</td>
													</tr>
													<tr>
														<td>&nbsp;</td>
													</tr>
													
													<tr>
														<td>														
															<table width="100%" cellspacing="0" cellpadding="0">
																<tbody><tr>
																	<td>
																		<table width="100%" cellspacing="0" cellpadding="0" class="list_table">
																			<tbody><tr class="list_header">
																				<td colspan="4" class="list_header">Search</td>
																				</tr><tr>
																					<td class="td_caption" width="15%" align="right">Tender Status <span class="mandatory">*</span></td>
																					<td class="td_element" width="85%">
																						<select name="tenderStatus" id="tenderStatus" style="width:150px;">
<option value="0">-Select-</option>
<option value="1">Retender</option>
<option value="2">Cancelled</option>
</select>
																					</td>																				
																				</tr>
																				<tr>
																					<td class="td_caption" width="15%" align="right">Tender ID </td>
																					<td class="td_element" width="85%">
																						<input type="text" name="TenderId" value="" id="TenderId" style="width:150px;" maxlength="30">
																					</td>
																				</tr>	
																				<tr>
																					<td class="td_caption" width="15%" align="right">Keyword </td>
																					<td class="td_element" width="85%">
																						<input type="text" name="Keyword" value="" id="Keyword" style="width:150px;" maxlength="50">
																					</td>
																				</tr>
																				<tr>
																					<td colspan="6">
																						 <table width="100%" cellspacing="0" cellpadding="0" class="list_table">
																						   <tbody><tr>
																							<td align="middle">Enter Captcha</td>
																						    <td><input type="text" name="captchaText" value="" id="captchaText" size="5" maxlength="8" style="width:200px;"></td>
																						   <td>
																								<img name="captchaImage" id="captchaImage" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMwAAAAnCAYAAABDoaezAAACMUlEQVR42u2cwW4DIQxE+f+fnh4q
VW3VbQIM9tjMSNyixBg/rwFvxrCsNgI+R+Av/hpXeZs09yj/4WGcDjBsjBOBDY5Na34xMNrAEIIh
FZhvQwaYLaCrAHPCRpDmf8p/5CyqFKAy9iAry3YBBrG2PWa2GbsmPkt5wkT7lx2zWzZVAAaXAcMK
0GxgTq0fowxtCwwSgEEcMH8uaKIt1wCzbJcyMAgEhpXZF7L4j88r7qnYNkHAHgNTFxh6WdUUmK95
G5jJYD55kLDij+ByI/yybsIn3PLHwKzbFAXMik9OAgPR9UgA5pqSbDojvsr8nYFRhCbhGPffmEkt
EdWAeSeITwMz65foi7nqwAwDExvA3YF5B5rINet0cbljD5Qe/dACBqs37af9kgFP59aY0QGYoQHM
2/7J7laOPH5X6G9LtUcBmKwsvtKnlQnMSuAoBGirJ57ShnIIApNVLjIDKXvTr3QIUbpbGUWAeWVr
hXssA9PglGzm5SIDE5hFLwBmFAcmpUbeaYFZvFQN6wMzMPrAbN3oVwDmyV8Gpj8w9EY2A6O1X2gK
DNAImLCskv2dkce43vRrACP7uDUwqcem3Nd5vYcxMK+gyTrpItmjCAz1FW46MCq3uULAUP7ZZRCh
zG5F6QgMDEx9YIbIetxQkhmYoO+M9EPWGnQFptKWZKumtizLwFiWZVmWZRFLIpdR1rXleHdgboC7
6hydeL0opefoALYsA2M5oGrP02AaGM+zrB8/AAYhNSAv/K5gAAAAAElFTkSuQmCC" class="image_style">
																						   &nbsp; &nbsp;
																							<button type="button" name="captcha" id="captcha" style="border:0px; background-color:transparent;"><img src="refresh_new.png" border="0"> Refresh</button>
																						   
																						   </td>
																						   </tr>																			
																						</tbody></table>
																					</td>
																				 </tr>	
																				
																																		
																			<tr>																									
																				<td>&nbsp;</td>
																			</tr>
																			<tr>
																				<td colspan="4" class="notes">Keyword finds the match in Tender title and Tender reference number </td>
																			</tr>
																			<tr><td>&nbsp;</td></tr>
																			<tr>
																				<td class="td_element" colspan="4" align="right"> 
																					<a id="clear" title="Clear" class="customButton_link" value="Clear" href="/eprocure/app?component=clear&amp;page=WebCancelledTenderLists&amp;service=direct&amp;session=T">Clear</a>
																					<input type="submit" name="Search" id="Search" border="0" onclick="return checkIf();" title="Search" value="Search" class="customButton">
																				</td>
																			</tr>																				
																		</tbody></table>
																	</td>
																</tr>
															</tbody></table>															
														</td>
													</tr>		
													<tr>
														<td class="td_space">&nbsp;</td>
													</tr>																
													
													
													<tr>
														<td>&nbsp;</td>
													</tr>
													
													<tr>
															<td>
																<table width="100%" cellspacing="0" cellpadding="0" class="list_table">
																	<tbody><tr class="list_header">
																		<td width="5%">S.No</td>
																		<td width="15%">e-Published Date</td>
																		<td width="15%">Bid Submission Closing Date</td>
																		<td width="15%">Tender Opening Date</td>
																		<td width="25%">Title and Ref.No./Tender ID</td>
																		<td width="25%">Organisation Chain</td>
																	</tr>
																	<tr>
																		<td>&nbsp;</td>
																	</tr>		
																	<tr>
																		<td align="center" colspan="6" class="td_space">
																			<span class="error">No Cancelled/Retender found.</span>
																		</td>
																	</tr>
																<tr>
																	<td>&nbsp;</td>
																</tr>
																</tbody></table>
															</td>
														</tr>
														<tr>
															<td class="list_footer">&nbsp;</td>
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

							<!-- Page content ends here -->	
							</td>
			</main>

</div>
</div>
</div>
</body>
</html>