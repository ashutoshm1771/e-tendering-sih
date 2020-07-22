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
		<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="page_border">
					  <tbody><tr> 
						<td valign="top">

								<!-- interface_elements -->
										<table align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
													<tbody>
														
														
														
														<tr>
															<td class="td_space">&nbsp;</td>
														</tr>
														
														<!-- av start -->
														
														<tr>
															<td valign="top">
																<table width="100%" height="100%" cellspacing="0" cellpadding="0" border="0">
																	<tbody><tr>
																		<td width="70%" height="100%" valign="top" bgcolor="#f8f8f8">
																			<!-- Interface -->
																			<table align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
																				<tbody>
																					
																					<tr>
																						<td class="td_column" align="right" width="40%"> Login Id <span class="mandatory">*</span></td>
																						<td class="td_element" width="60%">
																							<input type="text" name="EmailId" value="" id="EmailId" style="width: 200px;" autocomplete="off" maxlength="50"></td>
																					</tr>
																					
																					<tr>
																						<td colspan="2" class="notes" align="left"> Enter email address for login id. eg: abc@nic.com <br>(Care may be taken to enter valid e-mail ID. This information will be kept confidential. The login ID cannot be modified once registered.) </td>
																					</tr>
																					<!-- <tr>
																						<td colspan="2" class="notes">Password is minimum 8 characters and maximum 32 Characters. It is advised to use combination of alphabets & non-alphabetic characters.</td>
																					</tr>
																					<tr>
																						<td class="td_column" align="right" width="40%"> Password <span class="mandatory">*</span></td>
																						<td class="td_element" width="60%">
																							<input jwcid="password" autocomplete="off" name="txtPassword" maxlength="50" style="width: 200px;" type="text"/></td>
																					</tr>
																					<tr>
																						<td colspan="2" class="notes" align="left"> Re-type the password again</td>
																					</tr>
																					<tr>
																						<td class="td_column" align="right"> Confirm Password <span class="mandatory">*</span></td>
																						<td class="td_element">
																							<input jwcid="ConfirmPassword" autocomplete="off" name="txtConfirm" maxlength="50" style="width: 200px;" type="text"/></td>
																					</tr> -->
																					
																					<tr>
																						<td class="td_column" align="right"> Correspondence Email<span class="mandatory">*</span></td>
																						<td class="td_element"><input type="text" name="Email" value="" id="Email" style="width: 200px;" maxlength="50"></td>
																					</tr>
																					 <tr>
																						<td colspan="2" align="left" class="notes"> (Correspondence Email ID can be same as your Login ID.)</td>
																					</tr> 
																					
																					<tr>
																						<td class="td_column" align="right"> Mobile<span class="mandatory">*</span></td>
																						<td class="td_element">
																						<select name="mobileIsdCode" id="mobileIsdCode" style="width:75px;">
<option value="0">-Select-</option>
<option value="1">ABW (297)</option>
<option value="2">AFG (93)</option>
<option value="3">AGO (244)</option>
<option value="4">ALB (355)</option>
<option value="5">AND (376)</option>
<option value="6">ANT (599)</option>
<option value="7">ARE (971)</option>
<option value="8">ARG (54)</option>
<option value="9">ARM (374)</option>
<option value="10">ATA (672)</option>
<option value="11">AUS (61)</option>
<option value="12">AUT (43)</option>
<option value="13">AZE (994)</option>
<option value="14">BDI (257)</option>
<option value="15">BEL (32)</option>
<option value="16">BEN (229)</option>
<option value="17">BFA (226)</option>
<option value="18">BGD (880)</option>
<option value="19">BGR (359)</option>
<option value="20">BHR (973)</option>
<option value="21">BIH (387)</option>
<option value="22">BLR (375)</option>
<option value="23">BLZ (501)</option>
<option value="24">BOL (591)</option>
<option value="25">BRA (55)</option>
<option value="26">BRN (673)</option>
<option value="27">BTN (975)</option>
<option value="28">BWA (267)</option>
<option value="29">CAF (236)</option>
<option value="30">CAN (1)</option>
<option value="31">CCK (672)</option>
<option value="32">CHE (41)</option>
<option value="33">CHL (56)</option>
<option value="34">CHN (86)</option>
<option value="35">CIV (225)</option>
<option value="36">CMR (237)</option>
<option value="37">COG (242)</option>
<option value="38">COK (682)</option>
<option value="39">COL (57)</option>
<option value="40">COM (269)</option>
<option value="41">CPV (238)</option>
<option value="42">CRI (506)</option>
<option value="43">CUB (53)</option>
<option value="44">CXR (61)</option>
<option value="45">CYP (357)</option>
<option value="46">CZE (420)</option>
<option value="47">DEU (49)</option>
<option value="48">DJI (253)</option>
<option value="49">DNK (45)</option>
<option value="50">DZA (213)</option>
<option value="51">ECU (593)</option>
<option value="52">EGY (20)</option>
<option value="53">ERI (291)</option>
<option value="54">ESH (212)</option>
<option value="55">ESP (34)</option>
<option value="56">EST (372)</option>
<option value="57">ETH (251)</option>
<option value="58">FIN (358)</option>
<option value="59">FJI (679)</option>
<option value="60">FLK (500)</option>
<option value="61">FRA (33)</option>
<option value="62">FRO (298)</option>
<option value="63">GAB (241)</option>
<option value="64">GBR (44)</option>
<option value="65">GEO (995)</option>
<option value="66">GHA (233)</option>
<option value="67">GIB (350)</option>
<option value="68">GIN (224)</option>
<option value="69">GLP (590)</option>
<option value="70">GMB (220)</option>
<option value="71">GNB (245)</option>
<option value="72">GNQ (240)</option>
<option value="73">GRC (30)</option>
<option value="74">GRL (299)</option>
<option value="75">GTM (502)</option>
<option value="76">GUF (594)</option>
<option value="77">GUY (592)</option>
<option value="78">HKG (852)</option>
<option value="79">HND (504)</option>
<option value="80">HRV (385)</option>
<option value="81">HTI (509)</option>
<option value="82">HUN (36)</option>
<option value="83">IDN (62)</option>
<option value="84">IND (91)</option>
<option value="85">IOT (246)</option>
<option value="86">IRL (353)</option>
<option value="87">IRN (98)</option>
<option value="88">IRQ (964)</option>
<option value="89">ISL (354)</option>
<option value="90">ISR (972)</option>
<option value="91">ITA (39)</option>
<option value="92">JOR (962)</option>
<option value="93">JPN (81)</option>
<option value="94">KAZ (7)</option>
<option value="95">KEN (254)</option>
<option value="96">KGZ (996)</option>
<option value="97">KHM (855)</option>
<option value="98">KIR (686)</option>
<option value="99">KOR (82)</option>
<option value="100">KWT (965)</option>
<option value="101">LBN (961)</option>
<option value="102">LBR (231)</option>
<option value="103">LBY (218)</option>
<option value="104">LIE (423)</option>
<option value="105">LKA (94)</option>
<option value="106">LSO (266)</option>
<option value="107">LTU (370)</option>
<option value="108">LUX (352)</option>
<option value="109">LVA (371)</option>
<option value="110">MAC (853)</option>
<option value="111">MAR (212)</option>
<option value="112">MCO (377)</option>
<option value="113">MDG (261)</option>
<option value="114">MDV (960)</option>
<option value="115">MEX (52)</option>
<option value="116">MHL (692)</option>
<option value="117">MKD (389)</option>
<option value="118">MLI (223)</option>
<option value="119">MLT (356)</option>
<option value="120">MMR (95)</option>
<option value="121">MNE (382)</option>
<option value="122">MNG (976)</option>
<option value="123">MOZ (258)</option>
<option value="124">MRT (222)</option>
<option value="125">MTQ (596)</option>
<option value="126">MUS (230)</option>
<option value="127">MWI (265)</option>
<option value="128">MYS (60)</option>
<option value="129">MYT (269)</option>
<option value="130">NAM (264)</option>
<option value="131">NCL (687)</option>
<option value="132">NER (227)</option>
<option value="133">NGA (234)</option>
<option value="134">NIC (505)</option>
<option value="135">NIU (683)</option>
<option value="136">NLD (31)</option>
<option value="137">NOR (47)</option>
<option value="138">NPL (977)</option>
<option value="139">NRU (674)</option>
<option value="140">NZL (64)</option>
<option value="141">OMN (968)</option>
<option value="142">PAK (92)</option>
<option value="143">PAN (507)</option>
<option value="144">PCN (64)</option>
<option value="145">PER (51)</option>
<option value="146">PHL (63)</option>
<option value="147">PLW (680)</option>
<option value="148">PNG (675)</option>
<option value="149">POL (48)</option>
<option value="150">PRT (351)</option>
<option value="151">PRY (595)</option>
<option value="152">PYF (689)</option>
<option value="153">QAT (974)</option>
<option value="154">REU (262)</option>
<option value="155">ROM (40)</option>
<option value="156">RUS (70)</option>
<option value="157">RWA (250)</option>
<option value="158">SAU (966)</option>
<option value="159">SDN (249)</option>
<option value="160">SEN (221)</option>
<option value="161">SGP (65)</option>
<option value="162">SHN (290)</option>
<option value="163">SJM (47)</option>
<option value="164">SLB (677)</option>
<option value="165">SLE (232)</option>
<option value="166">SLV (503)</option>
<option value="167">SMR (378)</option>
<option value="168">SOM (252)</option>
<option value="169">SPM (508)</option>
<option value="170">SRB (381)</option>
<option value="171">STP (239)</option>
<option value="172">SUR (597)</option>
<option value="173">SVK (421)</option>
<option value="174">SVN (386)</option>
<option value="175">SWE (46)</option>
<option value="176">SWZ (268)</option>
<option value="177">SYC (248)</option>
<option value="178">SYR (963)</option>
<option value="179">TCD (235)</option>
<option value="180">TGO (228)</option>
<option value="181">THA (66)</option>
<option value="182">TJK (992)</option>
<option value="183">TKL (690)</option>
<option value="184">TKM (993)</option>
<option value="185">TLS (670)</option>
<option value="186">TON (676)</option>
<option value="187">TUN (216)</option>
<option value="188">TUR (90)</option>
<option value="189">TUV (688)</option>
<option value="190">TWN (886)</option>
<option value="191">TZA (255)</option>
<option value="192">UGA (256)</option>
<option value="193">UKR (380)</option>
<option value="194">URY (598)</option>
<option value="195">USA (1)</option>
<option value="196">UZB (998)</option>
<option value="197">VEN (58)</option>
<option value="198">VNM (84)</option>
<option value="199">VUT (678)</option>
<option value="200">WLF (681)</option>
<option value="201">WSM (684)</option>
<option value="202">XKX (383)</option>
<option value="203">YEM (967)</option>
<option value="204">ZAF (27)</option>
<option value="205">ZMB (260)</option>
<option value="206">ZWE (263)</option>
</select>&nbsp;&nbsp;
																						<input type="text" name="Mobile" value="" id="Mobile" style="width: 115px;" maxlength="15" onkeypress="return numbersonly(this, event)"></td>
																					</tr>	
																				</tbody>
																			</table>	
																			<!-- End : Interface -->
																		</td>
																		 <td width="30%" valign="top">
																			<table cellspacing="0" cellpadding="0" class="policy_box">
																				<tbody><tr>
																					<td class="policy_head">Email ID and Mobile No Policy</td>
																				</tr>
																				<tr>
																					<td class="policy_data">
																						Email and mobile must comply following requisites,
																						<ol>
																							<li>As <b>Mobile</b> and <b>Email</b> are the modes of correspondence, ensure that mobile no and email id provided are correct.</li>
																							<li>The verification codes are valid for <b>900</b> seconds from the time <b>Send Verification Code</b> is clicked.</li>
																							
																							
																						</ol>
																						 								
																					</td>
																					
																					
																					
																						
																				</tr>
																			</tbody></table>
																		</td>
																	</tr>
																	<tr>
																		<td colspan="2">&nbsp;</td>
																	</tr>
																	<tr>
																		<td valign="top">
																			<table border="0" cellpadding="0" cellspacing="0" width="100%">
																				<tbody>
																					<tr>
																						<td width="16">
																							<img src="images/fleft.png" height="22" width="16"></td>
																						<td background="images/ftopbg.png">
																							<table border="0" cellpadding="0" cellspacing="0" width="150">
																								<tbody>
																									<tr>
																										<td class="frame_name">Company Details </td>
																									</tr>
																								</tbody>
																							</table>
																						</td>
																						<td width="16"><img src="images/frgt.png" height="22" width="16"></td>
																					</tr>
																					
																					<tr>
																						<td background="images/fleftbg.png" width="16">&nbsp;</td>
																						<td bgcolor="#f8f8f8" valign="top">
																							<span id="bidderType">
																											</span><table align="center" border="0" cellpadding="3" cellspacing="2" width="100%">
																								<tbody>
																									<tr>
																										<td class="td_column" align="right" width="40%"> Company Name <span class="mandatory">*</span></td>
																										<td class="td_element" width="60%"> 
																											<input type="text" name="CompanyName" value="" id="CompanyName" style="width: 200px;" maxlength="250">
																										</td>
																									</tr>
																									
																								 <tr>
																									<td class="td_column" width="40%" align="right" colspan="1"> Preferential Bidder: </td>
																									<td class="td_element" width="60%" valign="top">
																										<input type="checkbox" name="privilegeYes" id="privilegeYes" class="sans_style" onclick="javascript: setMultiCurrencyCheckBox(this, 1);">
																									<label for="privilegeYes">Yes </label></td>
																				   				 </tr>
																				   				 
																				   				 <tr>
																				   				 	<td align="center" colspan="2">
																				   				 		<div id="multiCu" style="display: none;">
																											<table align="center" border="0" cellpadding="1" cellspacing="0" width="100%">
																												<tbody><tr>
																													<td class="td_column" align="right" width="40%">Preference Category<span class="mandatory">*</span></td>
																													<td class="td_element"><select name="privilegeType" id="privilegeType" style="width:200px;">
<option value="0">-Select-</option>
<option value="1">MSME</option>
<option value="2">Make in India</option>
</select></td>
																												</tr>
																												<tr>
																													<td colspan="2" class="notes" align="left">If you have selected MSME or Startup Company in Preference Category, visit MSME or Startup India icon under My Accounts--&gt; Privileges menu and complete registration process.</td>
																												</tr>
																											</tbody></table>																											
																										</div>
																				   				 	</td>
																				   				 </tr>
																									
																									<tr>
																										<td class="td_column" align="right"> Registration Number <span class="mandatory">*</span></td>
																										<td class="td_element"><input type="text" name="RegNumber" value="" id="RegNumber" style="width: 200px;" maxlength="50"></td>
																									</tr>
																									
																									<tr>
																										<td class="td_column" align="right">Registered Address<span class="mandatory">*</span></td>
																										<td class="td_element"><textarea name="RegisteredAddress" id="RegisteredAddress" maxlength="250" style="width: 200px;" rows="3" cols="30"></textarea></td>
																									</tr>
																									<tr>
																										<td class="td_column" align="right">Name of Partners / Directors</td>
																										<td class="td_element"><textarea name="CorporateAddress" id="CorporateAddress" maxlength="250" style="width: 200px;" rows="3" cols="30"></textarea></td>
																									</tr>
																									<tr>
																										<td></td>
																									</tr>
																								
																									
																									
																									
																									 <tr>
																										 <td width="40%" class="td_column" align="right">BidderType<span class="mandatory">*</span></td>
																												<td width="60%" class="td_element" valign="top">
																												<input type="radio" name="bidderType" id="bidderTypeIndian" checked="checked" value="0" onclick="tapestry.byId('bidderType').onChange(0);" onchange="indianForeignBidderEnable();" class="sans_style">Indian 
																												<input type="radio" name="bidderType" id="bidderTypeForeign" value="1" onclick="tapestry.byId('bidderType').onChange(1);" onchange="indianForeignBidderEnable();" class="sans_style">Foreign</td>
																											 
																										 </tr>
																										 <tr>
																											<td class="td_column" align="right">City <span class="mandatory">*</span></td>
																											<td class="td_element"><input type="text" name="city" value="" id="city" style="width: 200px;" maxlength="100"></td>
																										</tr>
																										
																										<tr>
																										<td colspan="2" align="center">
																											<div id="IndianBidderDetails">
																												<table align="center" border="0" cellpadding="1" cellspacing="0" width="100%">
																													<tbody><tr>
																														<td class="td_column" align="right" width="40%">State<span class="mandatory">*</span></td>
																														<td class="td_element"><select name="StatesName" id="StatesName" style="width:200px;">
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
</select></td>
																													</tr>
																												</tbody></table>
																											</div>
																										</td>
																										</tr>
																										<tr>
																											<td colspan="2" align="center">
																												<div id="ForeignBidderDetails" style="display:none">
																													<table align="center" border="0" cellpadding="1" cellspacing="0" width="100%">
																														<tbody><tr>
																															<td class="td_column" align="right" width="40%">Country<span class="mandatory">*</span></td>
																															<td class="td_element"><select name="Country" id="Country" style="width:200px;">
<option value="0">-Select-</option>
<option value="1">Afghanistan</option>
<option value="2">Albania</option>
<option value="3">Algeria</option>
<option value="4">Andorra</option>
<option value="5">Angola</option>
<option value="6">Antarctica</option>
<option value="7">Argentina</option>
<option value="8">Armenia</option>
<option value="9">Aruba</option>
<option value="10">Australia</option>
<option value="11">Austria</option>
<option value="12">Azerbaijan</option>
<option value="13">Bahrain</option>
<option value="14">Bangladesh</option>
<option value="15">Belarus</option>
<option value="16">Belgium</option>
<option value="17">Belize</option>
<option value="18">Benin</option>
<option value="19">Bhutan</option>
<option value="20">Bolivia</option>
<option value="21">Bosnia and Herzegovina</option>
<option value="22">Botswana</option>
<option value="23">Brazil</option>
<option value="24">British lndian Ocean Territory</option>
<option value="25">Brunei Darussalam</option>
<option value="26">Bulgaria</option>
<option value="27">Burkina Faso</option>
<option value="28">Burundi</option>
<option value="29">Cambodia</option>
<option value="30">Cameroon</option>
<option value="31">Canada</option>
<option value="32">Cape Verde</option>
<option value="33">Central African Republic</option>
<option value="34">Chad</option>
<option value="35">Chile</option>
<option value="36">China</option>
<option value="37">Christmas Island</option>
<option value="38">Cocos (Keeling) Islands</option>
<option value="39">Colombia</option>
<option value="40">Comoros</option>
<option value="41">Congo</option>
<option value="42">Cook Islands</option>
<option value="43">Costa Rica</option>
<option value="44">Croatia (Hrvatska)</option>
<option value="45">Cuba</option>
<option value="46">Cyprus</option>
<option value="47">Czech Republic</option>
<option value="48">Denmark</option>
<option value="49">Djibouti</option>
<option value="50">East Timor</option>
<option value="51">Ecuador</option>
<option value="52">Egypt</option>
<option value="53">El Salvador</option>
<option value="54">Equatorial Guinea</option>
<option value="55">Eritrea</option>
<option value="56">Estonia</option>
<option value="57">Ethiopia</option>
<option value="58">Falkland Islands (Malvinas)</option>
<option value="59">Faroe Islands</option>
<option value="60">Fiji</option>
<option value="61">Finland</option>
<option value="62">France</option>
<option value="63">French Guiana</option>
<option value="64">French Polynesia</option>
<option value="65">Gabon</option>
<option value="66">Gambia</option>
<option value="67">Georgia</option>
<option value="68">Germany</option>
<option value="69">Ghana</option>
<option value="70">Gibraltar</option>
<option value="71">Greece</option>
<option value="72">Greenland</option>
<option value="73">Guadeloupe</option>
<option value="74">Guatemala</option>
<option value="75">Guinea</option>
<option value="76">Guinea-Bissau</option>
<option value="77">Guyana</option>
<option value="78">Haiti</option>
<option value="79">Honduras</option>
<option value="80">Hong Kong</option>
<option value="81">Hungary</option>
<option value="82">Iceland</option>
<option value="83">India</option>
<option value="84">Indonesia</option>
<option value="85">Iran (Islamic Republic of)</option>
<option value="86">Iraq</option>
<option value="87">Ireland</option>
<option value="88">Israel</option>
<option value="89">Italy</option>
<option value="90">Ivory Coast</option>
<option value="91">Japan</option>
<option value="92">Jordan</option>
<option value="93">Kazakhstan</option>
<option value="94">Kenya</option>
<option value="95">Kiribati</option>
<option value="96">Korea  Republic of</option>
<option value="97">Kosovo</option>
<option value="98">Kuwait</option>
<option value="99">Kyrgyzstan</option>
<option value="100">Latvia</option>
<option value="101">Lebanon</option>
<option value="102">Lesotho</option>
<option value="103">Liberia</option>
<option value="104">Libyan Arab Jamahiriya</option>
<option value="105">Liechtenstein</option>
<option value="106">Lithuania</option>
<option value="107">Luxembourg</option>
<option value="108">Macau</option>
<option value="109">Macedonia</option>
<option value="110">Madagascar</option>
<option value="111">Malawi</option>
<option value="112">Malaysia</option>
<option value="113">Maldives</option>
<option value="114">Mali</option>
<option value="115">Malta</option>
<option value="116">Marshall Islands</option>
<option value="117">Martinique</option>
<option value="118">Mauritania</option>
<option value="119">Mauritius</option>
<option value="120">Mayotte</option>
<option value="121">Mexico</option>
<option value="122">Monaco</option>
<option value="123">Mongolia</option>
<option value="124">Montenegro</option>
<option value="125">Morocco</option>
<option value="126">Mozambique</option>
<option value="127">Myanmar</option>
<option value="128">Namibia</option>
<option value="129">Nauru</option>
<option value="130">Nepal</option>
<option value="131">Netherlands</option>
<option value="132">Netherlands Antilles</option>
<option value="133">New Caledonia</option>
<option value="134">New Zealand</option>
<option value="135">Nicaragua</option>
<option value="136">Niger</option>
<option value="137">Nigeria</option>
<option value="138">Niue</option>
<option value="139">Norway</option>
<option value="140">Oman</option>
<option value="141">Pakistan</option>
<option value="142">Palau</option>
<option value="143">Panama</option>
<option value="144">Papua New Guinea</option>
<option value="145">Paraguay</option>
<option value="146">Peru</option>
<option value="147">Philippines</option>
<option value="148">Pitcairn</option>
<option value="149">Poland</option>
<option value="150">Portugal</option>
<option value="151">Qatar</option>
<option value="152">Reunion</option>
<option value="153">Romania</option>
<option value="154">Russian Federation</option>
<option value="155">Rwanda</option>
<option value="156">Saint Helena</option>
<option value="157">Saint Pierre and Miquelon</option>
<option value="158">Samoa</option>
<option value="159">San Marino</option>
<option value="160">Sao Tome and Principe</option>
<option value="161">Saudi Arabia</option>
<option value="162">Senegal</option>
<option value="163">Serbia</option>
<option value="164">Seychelles</option>
<option value="165">Sierra Leone</option>
<option value="166">Singapore</option>
<option value="167">Slovakia</option>
<option value="168">Slovenia</option>
<option value="169">Solomon Islands</option>
<option value="170">Somalia</option>
<option value="171">South Africa</option>
<option value="172">Spain</option>
<option value="173">Sri Lanka</option>
<option value="174">Sudan</option>
<option value="175">Suriname</option>
<option value="176">Svalbard</option>
<option value="177">Swaziland</option>
<option value="178">Sweden</option>
<option value="179">Switzerland</option>
<option value="180">Syria</option>
<option value="181">Taiwan</option>
<option value="182">Tajikistan</option>
<option value="183">Tanzania</option>
<option value="184">Thailand</option>
<option value="185">Togo</option>
<option value="186">Tokelau</option>
<option value="187">Tonga</option>
<option value="188">Tunisia</option>
<option value="189">Turkey</option>
<option value="190">Turkmenistan</option>
<option value="191">Tuvalu</option>
<option value="192">Uganda</option>
<option value="193">Ukraine</option>
<option value="194">United Arab Emirates</option>
<option value="195">United Kingdom</option>
<option value="196">United States</option>
<option value="197">Uruguay</option>
<option value="198">Uzbekistan</option>
<option value="199">Vanuatu</option>
<option value="200">Venezuela</option>
<option value="201">Vietnam</option>
<option value="202">Wallis and Futuna</option>
<option value="203">Western Sahara</option>
<option value="204">Yemen</option>
<option value="205">Zambia</option>
<option value="206">Zimbabwe</option>
</select></td>
																														</tr>
																													</tbody></table>
																												</div>
																											</td>
																										</tr>
																										<tr>
																										<td class="td_column" align="right"> Postal Code<span class="mandatory">*</span></td>
																										<td class="td_element"><input type="text" name="PostalCode" value="" id="PostalCode" style="width: 200px;" maxlength="10"></td>
																									</tr>
																									<tr>
																									<td colspan="2" align="center">
																											<div id="IndianBidderDetailsPan">
																												<table align="center" border="0" cellpadding="1" cellspacing="0" width="100%">
																													<tbody><tr>
																														<td class="td_column" align="right" width="40%"> PAN/TAN Number <span class="mandatory">*</span></td>
																														<td class="td_element"><input type="text" name="PanNumber" value="" id="PanNumber" style="width: 200px;text-transform:uppercase;" maxlength="10"></td>
																													</tr>
																													<tr>
																														<td class="notes" colspan="2">PAN/TAN number must have 10 characters. For eg: AESTG2458A</td>
																													</tr>
																													<tr>
																													<td class="notes" colspan="2">For Bidders who do not have PAN/TAN number may enter TEMPZ9999Z as the PAN/TAN number.</td>
																													</tr>
																												</tbody></table>
																											</div>
																										</td>
																										</tr>
																									<tr>
																										<td class="td_column" align="right"> Establishment Year</td>
																										<td class="td_element">
																											<select name="EstablishYear" id="EstablishYear" style="width: 200px;">
<option value="0">2020</option>
<option value="1">2019</option>
<option value="2">2018</option>
<option value="3">2017</option>
<option value="4">2016</option>
<option value="5">2015</option>
<option value="6">2014</option>
<option value="7">2013</option>
<option value="8">2012</option>
<option value="9">2011</option>
<option value="10">2010</option>
<option value="11">2009</option>
<option value="12">2008</option>
<option value="13">2007</option>
<option value="14">2006</option>
<option value="15">2005</option>
<option value="16">2004</option>
<option value="17">2003</option>
<option value="18">2002</option>
<option value="19">2001</option>
<option value="20">2000</option>
<option value="21">1999</option>
<option value="22">1998</option>
<option value="23">1997</option>
<option value="24">1996</option>
<option value="25">1995</option>
<option value="26">1994</option>
<option value="27">1993</option>
<option value="28">1992</option>
<option value="29">1991</option>
<option value="30">1990</option>
<option value="31">1989</option>
<option value="32">1988</option>
<option value="33">1987</option>
<option value="34">1986</option>
<option value="35">1985</option>
<option value="36">1984</option>
<option value="37">1983</option>
<option value="38">1982</option>
<option value="39">1981</option>
<option value="40">1980</option>
<option value="41">1979</option>
<option value="42">1978</option>
<option value="43">1977</option>
<option value="44">1976</option>
<option value="45">1975</option>
<option value="46">1974</option>
<option value="47">1973</option>
<option value="48">1972</option>
<option value="49">1971</option>
<option value="50">1970</option>
<option value="51">1969</option>
<option value="52">1968</option>
<option value="53">1967</option>
<option value="54">1966</option>
<option value="55">1965</option>
<option value="56">1964</option>
<option value="57">1963</option>
<option value="58">1962</option>
<option value="59">1961</option>
<option value="60">1960</option>
<option value="61">1959</option>
<option value="62">1958</option>
<option value="63">1957</option>
<option value="64">1956</option>
<option value="65">1955</option>
<option value="66">1954</option>
<option value="67">1953</option>
<option value="68">1952</option>
<option value="69">1951</option>
<option value="70">1950</option>
<option value="71">1949</option>
<option value="72">1948</option>
<option value="73">1947</option>
<option value="74">1946</option>
<option value="75">1945</option>
<option value="76">1944</option>
<option value="77">1943</option>
<option value="78">1942</option>
<option value="79">1941</option>
<option value="80">1940</option>
<option value="81">1939</option>
<option value="82">1938</option>
<option value="83">1937</option>
<option value="84">1936</option>
<option value="85">1935</option>
<option value="86">1934</option>
<option value="87">1933</option>
<option value="88">1932</option>
<option value="89">1931</option>
<option value="90">1930</option>
<option value="91">1929</option>
<option value="92">1928</option>
<option value="93">1927</option>
<option value="94">1926</option>
<option value="95">1925</option>
<option value="96">1924</option>
<option value="97">1923</option>
<option value="98">1922</option>
<option value="99">1921</option>
<option value="100">1920</option>
<option value="101">1919</option>
<option value="102">1918</option>
<option value="103">1917</option>
<option value="104">1916</option>
<option value="105">1915</option>
<option value="106">1914</option>
<option value="107">1913</option>
<option value="108">1912</option>
<option value="109">1911</option>
<option value="110">1910</option>
<option value="111">1909</option>
<option value="112">1908</option>
<option value="113">1907</option>
<option value="114">1906</option>
<option value="115">1905</option>
<option value="116">1904</option>
<option value="117">1903</option>
<option value="118">1902</option>
<option value="119">1901</option>
<option value="120">1900</option>
<option value="121">1899</option>
<option value="122">1898</option>
<option value="123">1897</option>
<option value="124">1896</option>
<option value="125">1895</option>
<option value="126">1894</option>
<option value="127">1893</option>
<option value="128">1892</option>
<option value="129">1891</option>
<option value="130">1890</option>
<option value="131">1889</option>
<option value="132">1888</option>
<option value="133">1887</option>
<option value="134">1886</option>
<option value="135">1885</option>
<option value="136">1884</option>
<option value="137">1883</option>
<option value="138">1882</option>
<option value="139">1881</option>
<option value="140">1880</option>
<option value="141">1879</option>
<option value="142">1878</option>
<option value="143">1877</option>
<option value="144">1876</option>
<option value="145">1875</option>
<option value="146">1874</option>
<option value="147">1873</option>
<option value="148">1872</option>
<option value="149">1871</option>
<option value="150">1870</option>
<option value="151">1869</option>
<option value="152">1868</option>
<option value="153">1867</option>
<option value="154">1866</option>
<option value="155">1865</option>
<option value="156">1864</option>
<option value="157">1863</option>
<option value="158">1862</option>
<option value="159">1861</option>
<option value="160">1860</option>
<option value="161">1859</option>
<option value="162">1858</option>
<option value="163">1857</option>
<option value="164">1856</option>
<option value="165">1855</option>
<option value="166">1854</option>
<option value="167">1853</option>
<option value="168">1852</option>
<option value="169">1851</option>
<option value="170">1850</option>
</select>
																										</td>
																									</tr>
																									
																									<tr>
																										<td class="td_column" align="right"> Nature of Business<span class="mandatory">*</span></td>
																										<td class="td_element"><input type="text" name="BusinessNatures" value="" id="BusinessNatures" style="width: 200px;" maxlength="50"></td>
																									</tr>
																									<tr>
																										<td class="td_column" align="right"> Legal Status<span class="mandatory">*</span></td>
																										<td class="td_element">
																											<select name="LegalStatus" id="LegalStatus" style="width: 200px;">
<option value="0">-Select-</option>
<option value="1">Limited Company</option>
<option value="2">Undertaking</option>
<option value="3">Jointventure</option>
<option value="4">Partnership</option>
<option value="5">Others</option>
</select>
																										</td>
																									</tr>
																									<tr>
																										<td class="td_column" align="right"> Company Category <span class="mandatory">*</span></td>
																										<td class="td_element">
																											<select name="BidderCategory" id="BidderCategory" style="width: 200px;">
<option value="0">-Select-</option>
<option value="1">Micro Unit as per MSME</option>
<option value="2">Small Unit as per MSME</option>
<option value="3">Medium Unit as per MSME</option>
<option value="4">Ancillary Unit</option>
<option value="5">Project Affected Person of this Company</option>
<option value="6">SSI</option>
<option value="7">Others</option>
</select>
																										</td>
																									</tr>
																									
																									
																																															
																								</tbody>
																							</table>
																						</td>
																						<td background="images/frgtbg.png" width="16">&nbsp;</td>
																					</tr>
																					
																					<tr>
																						<td width="8"><img src="images/fleftbot.png" height="10" width="16"></td>
																						<td background="images/fbotbg.png"><img src="images/spacer.png" height="1" width="1"></td>
																						<td width="16"><img src="images/frgtbot.png" height="10" width="16"></td>
																					</tr>
																				</tbody>
																			</table>
																		</td>
																		<td>
																			&nbsp;
																		</td>
																	</tr>														
																	<!-- Company Details --> 										
																		
																	<tr>
																		<td colspan="2">&nbsp;</td>
																	</tr>
																	
																	
																	<!-- Contact Details -->
																	<tr>
																		<td valign="top">
																			<table border="0" cellpadding="0" cellspacing="0" width="100%">
																				<tbody>
																					<tr>
																						<td width="16">
																							<img src="images/fleft.png" height="22" width="16"></td>
																						<td background="images/ftopbg.png">
																							<table border="0" cellpadding="0" cellspacing="0" width="150">
																								<tbody>
																									<tr>
																										<td class="frame_name">Contact Details</td>
																									</tr>
																								</tbody>
																							</table>
																						</td>
																						<td width="16"><img src="images/frgt.png" height="22" width="16"></td>
																					</tr>
																					
																					<tr>
																						<td background="images/fleftbg.png" width="16">&nbsp;</td>
																						<td bgcolor="#f8f8f8" valign="top">
																							<table align="center" border="0" cellpadding="3" cellspacing="2" width="100%">
																								<tbody>
																									<tr>
																										<td colspan="2" class="notes" align="left"> Enter Company's Contact Person Details</td>
																									</tr>																																												
																									<tr>
																										<td class="td_column" align="right" width="40%"> Title <span class="mandatory">*</span></td>
																										<td class="td_element" width="60%">
																											<select name="title" id="title" style="width:200px;">
<option value="0">-Select-</option>
<option value="1">Mrs</option>
<option value="2">Mr</option>
<option value="3">Ms</option>
<option value="4">Dr</option>
<option value="5">Sri</option>
</select>
																										</td>
																									</tr>
																									<tr>
																										<td class="td_column" align="right"> Contact Name<span class="mandatory">*</span></td>
																										<td class="td_element"><input type="text" name="ContactName" value="" id="ContactName" style="width: 200px;" maxlength="250"></td>
																									</tr>
																									<tr>
																										<td class="td_column" align="right">Date Of Birth (DD/MM/YYYY)<span class="mandatory">*</span></td>
																										<td class="td_element"><input type="text" name="dateOfBirth" value="" title="dd/MM/yyyy" id="dateOfBirth" readonly="readonly" style="width: 200px;">&nbsp;<a href="javascript:calendar_dateOfBirth.toggle(tapestry.byId(&quot;dateOfBirth&quot;));"><img src="/eprocure/app?service=asset&amp;path=%2Forg%2Fapache%2Ftapestry%2Fform%2FDatePickerIcon.png" alt="Click on icon to choose a date/time value." border="0" class="datePickerImg"></a></td>
																									</tr>
																									<!-- <tr>
																										<td class="td_column" align="right"> Correspondence Email<span class="mandatory">*</span></td>
																										<td class="td_element"><input jwcid="Email" maxlength="50" name="Email" id="Email" style="width: 200px;" type="text"/></td>
																									</tr>
																									<tr>
																										<td>&nbsp;</td>
																										<td align="left" class="page_notes"> (Correspondence Email ID can be same as your Login ID. All the mail correspondence will be sent only to the Correspondence Email ID.)</td>
																									</tr>	 -->																										
																									<tr>
																										<td class="td_column" align="right"> Designation</td>
																										<td class="td_element"><input type="text" name="Designation" value="" id="Designation" style="width: 200px;" maxlength="50"></td>
																									</tr>																											
																									<tr>
																										<td colspan="2" align="center" class="notes">Phone Details eg: +91 044 22272449</td>
																									</tr>
																									<tr>
																										<td class="td_column" align="right"> Phone<span class="mandatory">*</span></td>
																										<td class="td_element"><select name="phoneIsdCode" id="phoneIsdCode" style="width:75px;">
<option value="0">-Select-</option>
<option value="1">ABW (297)</option>
<option value="2">AFG (93)</option>
<option value="3">AGO (244)</option>
<option value="4">ALB (355)</option>
<option value="5">AND (376)</option>
<option value="6">ANT (599)</option>
<option value="7">ARE (971)</option>
<option value="8">ARG (54)</option>
<option value="9">ARM (374)</option>
<option value="10">ATA (672)</option>
<option value="11">AUS (61)</option>
<option value="12">AUT (43)</option>
<option value="13">AZE (994)</option>
<option value="14">BDI (257)</option>
<option value="15">BEL (32)</option>
<option value="16">BEN (229)</option>
<option value="17">BFA (226)</option>
<option value="18">BGD (880)</option>
<option value="19">BGR (359)</option>
<option value="20">BHR (973)</option>
<option value="21">BIH (387)</option>
<option value="22">BLR (375)</option>
<option value="23">BLZ (501)</option>
<option value="24">BOL (591)</option>
<option value="25">BRA (55)</option>
<option value="26">BRN (673)</option>
<option value="27">BTN (975)</option>
<option value="28">BWA (267)</option>
<option value="29">CAF (236)</option>
<option value="30">CAN (1)</option>
<option value="31">CCK (672)</option>
<option value="32">CHE (41)</option>
<option value="33">CHL (56)</option>
<option value="34">CHN (86)</option>
<option value="35">CIV (225)</option>
<option value="36">CMR (237)</option>
<option value="37">COG (242)</option>
<option value="38">COK (682)</option>
<option value="39">COL (57)</option>
<option value="40">COM (269)</option>
<option value="41">CPV (238)</option>
<option value="42">CRI (506)</option>
<option value="43">CUB (53)</option>
<option value="44">CXR (61)</option>
<option value="45">CYP (357)</option>
<option value="46">CZE (420)</option>
<option value="47">DEU (49)</option>
<option value="48">DJI (253)</option>
<option value="49">DNK (45)</option>
<option value="50">DZA (213)</option>
<option value="51">ECU (593)</option>
<option value="52">EGY (20)</option>
<option value="53">ERI (291)</option>
<option value="54">ESH (212)</option>
<option value="55">ESP (34)</option>
<option value="56">EST (372)</option>
<option value="57">ETH (251)</option>
<option value="58">FIN (358)</option>
<option value="59">FJI (679)</option>
<option value="60">FLK (500)</option>
<option value="61">FRA (33)</option>
<option value="62">FRO (298)</option>
<option value="63">GAB (241)</option>
<option value="64">GBR (44)</option>
<option value="65">GEO (995)</option>
<option value="66">GHA (233)</option>
<option value="67">GIB (350)</option>
<option value="68">GIN (224)</option>
<option value="69">GLP (590)</option>
<option value="70">GMB (220)</option>
<option value="71">GNB (245)</option>
<option value="72">GNQ (240)</option>
<option value="73">GRC (30)</option>
<option value="74">GRL (299)</option>
<option value="75">GTM (502)</option>
<option value="76">GUF (594)</option>
<option value="77">GUY (592)</option>
<option value="78">HKG (852)</option>
<option value="79">HND (504)</option>
<option value="80">HRV (385)</option>
<option value="81">HTI (509)</option>
<option value="82">HUN (36)</option>
<option value="83">IDN (62)</option>
<option value="84">IND (91)</option>
<option value="85">IOT (246)</option>
<option value="86">IRL (353)</option>
<option value="87">IRN (98)</option>
<option value="88">IRQ (964)</option>
<option value="89">ISL (354)</option>
<option value="90">ISR (972)</option>
<option value="91">ITA (39)</option>
<option value="92">JOR (962)</option>
<option value="93">JPN (81)</option>
<option value="94">KAZ (7)</option>
<option value="95">KEN (254)</option>
<option value="96">KGZ (996)</option>
<option value="97">KHM (855)</option>
<option value="98">KIR (686)</option>
<option value="99">KOR (82)</option>
<option value="100">KWT (965)</option>
<option value="101">LBN (961)</option>
<option value="102">LBR (231)</option>
<option value="103">LBY (218)</option>
<option value="104">LIE (423)</option>
<option value="105">LKA (94)</option>
<option value="106">LSO (266)</option>
<option value="107">LTU (370)</option>
<option value="108">LUX (352)</option>
<option value="109">LVA (371)</option>
<option value="110">MAC (853)</option>
<option value="111">MAR (212)</option>
<option value="112">MCO (377)</option>
<option value="113">MDG (261)</option>
<option value="114">MDV (960)</option>
<option value="115">MEX (52)</option>
<option value="116">MHL (692)</option>
<option value="117">MKD (389)</option>
<option value="118">MLI (223)</option>
<option value="119">MLT (356)</option>
<option value="120">MMR (95)</option>
<option value="121">MNE (382)</option>
<option value="122">MNG (976)</option>
<option value="123">MOZ (258)</option>
<option value="124">MRT (222)</option>
<option value="125">MTQ (596)</option>
<option value="126">MUS (230)</option>
<option value="127">MWI (265)</option>
<option value="128">MYS (60)</option>
<option value="129">MYT (269)</option>
<option value="130">NAM (264)</option>
<option value="131">NCL (687)</option>
<option value="132">NER (227)</option>
<option value="133">NGA (234)</option>
<option value="134">NIC (505)</option>
<option value="135">NIU (683)</option>
<option value="136">NLD (31)</option>
<option value="137">NOR (47)</option>
<option value="138">NPL (977)</option>
<option value="139">NRU (674)</option>
<option value="140">NZL (64)</option>
<option value="141">OMN (968)</option>
<option value="142">PAK (92)</option>
<option value="143">PAN (507)</option>
<option value="144">PCN (64)</option>
<option value="145">PER (51)</option>
<option value="146">PHL (63)</option>
<option value="147">PLW (680)</option>
<option value="148">PNG (675)</option>
<option value="149">POL (48)</option>
<option value="150">PRT (351)</option>
<option value="151">PRY (595)</option>
<option value="152">PYF (689)</option>
<option value="153">QAT (974)</option>
<option value="154">REU (262)</option>
<option value="155">ROM (40)</option>
<option value="156">RUS (70)</option>
<option value="157">RWA (250)</option>
<option value="158">SAU (966)</option>
<option value="159">SDN (249)</option>
<option value="160">SEN (221)</option>
<option value="161">SGP (65)</option>
<option value="162">SHN (290)</option>
<option value="163">SJM (47)</option>
<option value="164">SLB (677)</option>
<option value="165">SLE (232)</option>
<option value="166">SLV (503)</option>
<option value="167">SMR (378)</option>
<option value="168">SOM (252)</option>
<option value="169">SPM (508)</option>
<option value="170">SRB (381)</option>
<option value="171">STP (239)</option>
<option value="172">SUR (597)</option>
<option value="173">SVK (421)</option>
<option value="174">SVN (386)</option>
<option value="175">SWE (46)</option>
<option value="176">SWZ (268)</option>
<option value="177">SYC (248)</option>
<option value="178">SYR (963)</option>
<option value="179">TCD (235)</option>
<option value="180">TGO (228)</option>
<option value="181">THA (66)</option>
<option value="182">TJK (992)</option>
<option value="183">TKL (690)</option>
<option value="184">TKM (993)</option>
<option value="185">TLS (670)</option>
<option value="186">TON (676)</option>
<option value="187">TUN (216)</option>
<option value="188">TUR (90)</option>
<option value="189">TUV (688)</option>
<option value="190">TWN (886)</option>
<option value="191">TZA (255)</option>
<option value="192">UGA (256)</option>
<option value="193">UKR (380)</option>
<option value="194">URY (598)</option>
<option value="195">USA (1)</option>
<option value="196">UZB (998)</option>
<option value="197">VEN (58)</option>
<option value="198">VNM (84)</option>
<option value="199">VUT (678)</option>
<option value="200">WLF (681)</option>
<option value="201">WSM (684)</option>
<option value="202">XKX (383)</option>
<option value="203">YEM (967)</option>
<option value="204">ZAF (27)</option>
<option value="205">ZMB (260)</option>
<option value="206">ZWE (263)</option>
</select>&nbsp;
																										<input type="text" name="PhoneStdCode" value="" id="PhoneStdCode" style="width: 43px;" maxlength="5" onkeypress="return numbersonly(this, event)">&nbsp;
																										<input type="text" name="Phone" value="" id="Phone" style="width: 100px;" maxlength="20" onkeypress="return numbersonly(this, event)"></td>
																									</tr>	
																									<!-- <tr>
																										<td class="td_column" align="right"> Mobile<span class="mandatory">*</span></td>
																										<td class="td_element"><input jwcid="Mobile" onKeyPress="return numbersonly(this, event)" name="Mobile" id="Mobile" style="width: 200px;" type="text" maxlength="15"/></td>
																									</tr> -->																			
																								</tbody>
																							</table>
																						</td>
																						<td background="images/frgtbg.png" width="16">&nbsp;</td>
																					</tr>
																					
																					<tr>
																						<td width="8"><img src="images/fleftbot.png" height="10" width="16"></td>
																						<td background="images/fbotbg.png"><img src="images/spacer.png" height="1" width="1"></td>
																						<td width="16"><img src="images/frgtbot.png" height="10" width="16"></td>
																					</tr>
																				</tbody>
																			</table>
																		</td>
																		<td>
																			&nbsp;
																		</td>
																	</tr>	
																	
																	<!-- End: Contact details --> 
																	
																	<tr>
																		<td colspan="2">&nbsp;</td>
																	</tr>
																	
																	
																	<!-- Bidder Pre Registration Details -->
																	<tr>
																		<td valign="top">
																			<table border="0" cellpadding="0" cellspacing="0" width="100%">
																				<tbody>
																					<tr>
																						<td background="images/fleftbg.png" width="16">&nbsp;</td>
																						<td bgcolor="#f8f8f8" valign="top">																							
																							<table align="center" border="0" cellpadding="3" cellspacing="2" width="100%">
																								<!-- <tr>
																									<td colspan="2" align="left" class="notes">Please fill the Captcha.</td>
																								</tr> -->
																								<!-- 	<tr>
																									<td colspan="2" class="td_column" align="left"><span jwcid="captchaQuestion"  class="text3bold" readonly="true" cols="60"/></td>																							
																								</tr> -->
																								
																								<tbody><tr>
										
																												<td align="middle">Enter Captcha</td>
																												<td><input type="text" name="captchaText" value="" id="captchaText" size="5" maxlength="8" style="width:75px;"></td>
																											   <td>
																													<img name="captchaImage" id="captchaImage" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMwAAAAnCAYAAABDoaezAAACC0lEQVR42u2cyXaAIAxF/f+fThdd
tbUthgwvct857hQCyZUw6HUhhNyy4CvKhuh2dfRPhb+6ywGYpiCZVFYnPADze5Ps8zoDGNVgMDFo
JgFjtWB+ASat7s1Cw6nebaRKapcFjTownSlrSd0Ac5Y9mcAopappdRcMmY+hWrTpR7mKKVCgTWbC
wKzaZtPrngCMOXJWpUl2kG1jgFEedScAU+LQb/ebzQTm35fLhIUR9dRyq+4/Hq5Zpguw7QYWgGmy
qTruAGYtNStJx8RSMkVgzACmfw7zxL5g+8MXEl6+V+X27RtTskhYLKNTEmxPB+Z6FzCSK3SOe9dj
NHknOyStKwQmzLlVG5dqR3eqR9wnfgpJA6d0enDdyx2kfjRG2XdH7PQDTE7/XACzlwrF9c9end5d
dZVVs25Qu9+i6nOY1ODd9JMrzicBk2jvr/erbexOn/RXnHLfOBoTBoyMAGYcMLd9y7JyYGc22OsF
pnzkTQy0rLakvowmAuPtaNceDcCMAyatLTvPu58VAEZ6RCQlEwza4cCMDBiAyZl0P3kpAgzAHA/M
6g46k/6i3L56GRxgWoLWvbEMMAAjD8xdeZufCW8d8S/9RFn9EB8p2bt+gjHuBxwAI1FfagpS2a7j
frMEMACTGbxdIzG/wz1bMmf7EEIIIYQQQgghhBC6FStY+APhIPyBsxECGIQC9QGbS3DkFOSYAQAA
AABJRU5ErkJggg==">
																											   &nbsp; &nbsp;
																												<button type="button" name="captcha" id="captcha" style="border:0px; background-color:transparent;"><img src="images/refresh_new.png" border="0"> Refresh</button>
																												
																											   </td>
																											   
																								</tr>
																								
																								
																							</tbody></table>
																						</td>
																						<td background="images/frgtbg.png" width="16">&nbsp;</td>
																					</tr>
																					
																					<tr>
																						<td width="8"><img src="images/fleftbot.png" height="10" width="16"></td>
																						<td background="images/fbotbg.png"><img src="images/spacer.png" height="1" width="1"></td>
																						<td width="16"><img src="images/frgtbot.png" height="10" width="16"></td>
																					</tr>
																				</tbody>
																			</table>
																		</td>
																		<td>
																			&nbsp;
																		</td>
																	</tr>
																	<tr>
																		<td colspan="2">&nbsp;</td>
																	</tr>
																	
																	<tr>
																		<td height="50"><div align="right"> 																
																			<input type="submit" name="Back" id="Back" border="0" title="Back" value="Back" class="customButton">
																			&nbsp;&nbsp;<input type="submit" name="Submit" id="Submit" border="none" onclick="return ValidateFields();" alt="Submit Details" title="Submit" value="Submit" class="customButton"></div>
																		</td>
																		<td>
																			&nbsp;
																		</td>
																	</tr>
																</tbody></table>
															</td>
														</tr>
														<!-- av end -->
															
										</tbody>
									</table>								
								<!-- END: interface_elements -->
						  </td>
					  </tr>
					</tbody></table>
			</main>
<!--Login starts from here-->	
		<login>
			<form class="login-form">
				<div class="card-header">Login</div>
				<div class="form-group">
					<label for="exampleInputEmail1">Email address</label>
					<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
					<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
				</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label>
						<input type="password" class="form-control" id="exampleInputPassword1">
					</div>
							<div class="g-recaptcha" data-sitekey="6Lenzu0UAAAAANwru86INC1KaBKQ-llAVyRItx-s"></div><br>
							&nbsp &nbsp
							<button type="submit" class="btn btn-primary">Login</button>
							<br><br>
							</form>
		</login>
</div>
</div>
</body>
</html>