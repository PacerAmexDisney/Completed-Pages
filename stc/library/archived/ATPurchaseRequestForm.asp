<%
  Function BotCheck()
  	Dim result
	result = false
	If IsDate(Request.Form("servcheck")) Then 
		If DateAdd("n", 1, Request.Form("servcheck")) < Now() Then
			result = true
		End If
	End If
	BotCheck = result
  End Function
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Simon Technology Center Library AT Purchase Request Form</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../../css/style.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../../css/print.css" media="print" />
<script type="text/javascript" src="../../css/menu.js"></script>
<script src="../../UniversalSpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<script src="../../UniversalSpryAssets/SpryValidationTextarea.js" type="text/javascript"></script>
<script src="../../UniversalSpryAssets/SpryValidationRadio.js" type="text/javascript"></script>
<%
Dim myMail, content, strMsg, errMsg
errMsg = ""
strMsg = ""
If request.form("Submit") = "Submit" and Not BotCheck and false Then
	errmsg = "botflag"
	strmsg = "<span style=""color:red"">Error - Your post was not submitted. Your Submission was flaged by our anti-bot code.  Please fill out the full information below and submit again.</span>"
End If

if request.form("Submit") = "Submit" and errmsg = "" then
content = content & "<h1 align=""center"">Library AT Purchase Request Form</h1>" & VbCrLf
content = content & "<p>Date of request: <span style=""color: #F00""><strong>" & Trim(Request.Form("requestDate")) & "</strong></span></p>"& VbCrLf
content = content & "<p>Name: <span style=""color: #F00""><strong>" & Trim(Request.Form("name")) & "</strong></span></p>"& VbCrLf
content = content & "<p>Are you a current member of the STC  Library? <span style=""color: #F00""><strong>" & Trim(Request.Form("libraryMember")) & "</strong></span></span> - Library Member ID#: <span style=""color: #F00""><strong>" & Trim(Request.Form("memberID")) & "</strong></span></p>"& VbCrLf
content = content & "<p>If you would  like to be notified of the purchase of this product, please list your phone  number and email:</p>"& VbCrLf
content = content & "<p>Phone (optional): <span style=""color: #F00""><strong>" & Trim(Request.Form("phone")) & "</strong></span></p>"& VbCrLf
content = content & "<p>Email (optional):<span style=""color: #F00""><strong>" & Trim(Request.Form("email")) & "</strong></span></p>"& VbCrLf
content = content & "<hr />"& VbCrLf
content = content & "<p>&nbsp;</p>"& VbCrLf
content = content & "<table cellpadding=""0"" cellspacing=""0"">"& VbCrLf
content = content & "<tr><td>Name of product:</td><td><span style=""color: #F00""><strong>" & Trim(Request.Form("productName")) & "</strong></span></td></tr>"& VbCrLf
content = content & "<tr><td>Product version (if applicable):</td><td><span style=""color: #F00""><strong>" & Trim(Request.Form("productversion")) & "</strong></span></td></tr>"& VbCrLf
content = content & "<tr><td nowrap=""nowrap"">Vendor (who to purchase from):</td><td><span style=""color: #F00""><strong>" & Trim(Request.Form("vendor")) & "</strong></span></td></tr>"& VbCrLf
content = content & "<tr><td>Price:</td><td><span style=""color: #F00""><strong>" & Trim(Request.Form("price")) & "</strong></span></td></tr>"& VbCrLf
content = content & "<tr><td>Website of product &amp; purchase (optional):</td><td><span style=""color: #F00""><strong>" & Trim(Request.Form("website")) & "</strong></span></td></tr>"& VbCrLf
content = content & "<tr><td>Any additional notes:</td><td><span style=""color: #F00""><strong>" & Trim(Request.Form("additionalNotes")) & "</strong></span></td></tr>"& VbCrLf
content = content & "</table>"& VbCrLf
content = content & "<p><em>---------------------- This Response was sent from stc/library/ATPurchaseRequestForm.asp -----------------------</em></p>"
	Set myMail = CreateObject("CDO.Message")
		
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
		myMail.Configuration.Fields.Update
	myMail.From = "ATPurchaseRequestForm@pacer.org"
	myMail.Bcc = "jordan.bohm@pacer.org"
	myMail.To = "stclibrary@pacer.org"
	myMail.Subject = "STC Library AT Purchase Request Form"
	myMail.HTMLBody = content
	myMail.Send
	Set myMail = Nothing
	strMsg = "<p style='font-size: 120%; font-weight: bold; text-align: center'>Thank you for submiting your request!</p><p><a href=""index.asp"">Return to the STC Library</a></p>"
end if
%>
<link href="../../UniversalSpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<link href="../../UniversalSpryAssets/SpryValidationTextarea.css" rel="stylesheet" type="text/css" />
<link href="../../UniversalSpryAssets/SpryValidationRadio.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="skiptocontent"> <a href="#maincontent">Skip to main content</a> </div>
<div id="wrapper">
	<div id="main">
		<div id="header">
	<div>			<!--#include virtual="/googleSearchBox.htm"-->
      <!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>
<div id="rightBar">
			<p class="pacerinfo"> <strong>PACER Center<br />952-838-9000</strong> </p>
			<p class="pacerinfo2"> Champions for Children with Disabilities </p>
			<p class="pacerinfo3"> <a href="http://www.pacer.org/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a> </p>
			<div class="stayinformed">
				<h2>Stay Informed</h2>
				Receive the latest PACER Center information on issues important to you. <a href="../../forms/index.asp">Sign up now</a>. 
			</div>
		</div>
		<div id="maincontent">
			<div id="pagetoporange">    <div id="project-social">
           <a href="http://www.simontechnologycenter.blogspot.com/" title="Simon Technology Center Blog" target="_blank"><img style="display:block; border:1px solid #ccc; margin-top:-1px; border-radius:5px;" src="/images/bloggericon_medium.png" alt="Simon Technology Center Blog" /></a> 
           <a href="https://www.pinterest.com/simontechcenter/" title="Simon Technology Center Pintrest" target="_blank"><img src="/images/pinteresticon_medium.png" alt="Simon Technology Center Pintrest" /></a> 
           
            
         <div id="sm-label" style="width:7em;">Join Us - STC :</div>
        </div>
<div id="breadcrumb"> <a href="../../index.asp">Home</a> / <a href="../../pandr/index.asp">Programs &amp; Resources</a> / <a href="../index.asp">Simon Technology Center</a> /<a href="index.asp"> Library</a> /
					<h1>Simon Technology Center</h1>
				</div>
			</div>
			<div id="pagecontent">
				<h1 align="center">Library AT Purchase Request Form</h1>
				<br />
				<p align="center">Use  the Library AT Purchase Request Form to request that the library purchase and  add a specific piece of assistive technology to the lending library inventory.  This request does not guarantee that the item will be purchased. After your  request is received, it will be added to a wish-list. </p>
				<!--BEGIN CONTENT-->
				<p style="font-weight:bold;"><%=strMsg%></p>

<h1>Temporarily Unavailable</h1>
<%
if false and (request.form("Submit") <> "Submit" Or errmsg <> "") then
%>
				<form action="ATPurchaseRequestForm.asp" method="post" style="background:#E0E0E0; padding:10px">
					<p>
						<span id="sprytextfield1">
						<input name="requestDate" type="hidden" id="requestDate" value="<%=Date()%>" />
						
						<input type="hidden" name="servcheck" value="<%=Now()%>" />
						<span class="textfieldRequiredMsg">A value is required.</span></span> 
						
						<span id="sprytextfield2">
						<label for="name">Name:</label>
						<input type="text" name="name" id="name" tabindex="20" size="40" />
						<span class="textfieldRequiredMsg">A value is required.</span></span>
					</p>
					<p>Are you a current member of the STC  Library?</p>
					<p> 
						<span id="spryradio1">
						<input type="radio" name="libraryMember" value="Yes" id="libraryMember_0" tabindex="30" />
						<label for="libraryMember_0">Yes</label>
						<input type="radio" name="libraryMember" value="No" id="libraryMember_1" tabindex="40" />
						<label for="libraryMember_1">No</label>
						<span class="radioRequiredMsg"> Please make a selection. </span> </span> 
						
						<span id="sprytextfield3">
						<label for="memberID"> : Library Member ID#:</label>
						<input type="text" name="memberID" id="memberID" tabindex="45" size="30" />
						</span> </p>
					<p>If you would  like to be notified of the purchase of this product, please list your phone  number and email:</p>
					<p><span id="sprytextfield4">
						<label for="phone">Phone (optional):</label>
						<input type="text" name="phone" id="phone" tabindex="50" />
						</span> </p>
					<p> <span id="sprytextfield5">
						<label for="email">Email (optional):&nbsp;</label>
						<input type="text" name="email" id="email" tabindex="60" size="40" />
						<span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></p>
					<hr />
					<p>&nbsp;</p>
					<table width="100%" cellspacing="0" cellpadding="0">
						<tr>
							<td><label for="productName">Name of product:</label></td>
							<td><p><span id="sprytextfield6">
									<input type="text" name="productName" id="productName" tabindex="70" size="50"/>
									<span class="textfieldRequiredMsg">A value is required.</span></span></p></td>
						</tr>
						<tr>
							<td><label for="productversion">Product version (if applicable):</label></td>
							<td><p><span id="sprytextfield7">
									<input type="text" name="productversion" id="productversion" tabindex="80" size="75" />
									</span></p></td>
						</tr>
						<tr>
							<td nowrap="nowrap"><label for="vendor">Vendor (who to purchase from):</label></td>
							<td><p><span id="sprytextfield8">
									<input type="text" name="vendor" id="vendor" tabindex="90" size="75" />
									</span></p></td>
						</tr>
						<tr>
							<td><label for="price">Price:</label></td>
							<td><p><span id="sprytextfield9">
									<input type="text" name="price" id="price" tabindex="100" />
									<span class="textfieldRequiredMsg">A value is required.</span></span></p></td>
						</tr>
						<tr>
							<td><label for="website">Website of product & purchase (optional):</label></td>
							<td><p><span id="sprytextarea1">
									<textarea name="website" id="website" cols="60" rows="2" tabindex="110"></textarea>
									</span></p></td>
						</tr>
						<tr>
							<td><label for="additionalNotes">Any additional notes:</label></td>
							<td><p><span id="sprytextarea2">
									<textarea name="additionalNotes" id="additionalNotes" cols="60" rows="5" tabindex="120"></textarea>
									</span> </p></td>
						</tr>
					</table>
					<p align="center">
						<input type="submit" value="Submit" name="Submit" tabindex="210">
						&nbsp;
						<input type="reset" value="Reset" name="Reset" tabindex="220">
					</p>
				</form>
				<%
end if
%>
			</div>
			<!--END CONTENT-->
		</div>
	</div>
	<!--#include virtual="/footer.htm"-->
</div>
<script type="text/javascript">
<!--
var spryradio1 = new Spry.Widget.ValidationRadio("spryradio1", {validateOn:["blur"]});
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1", "none", {validateOn:["blur"]});
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2", "none", {validateOn:["blur"]});
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3", "none", {isRequired:false});
var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4", "none", {isRequired:false});
var sprytextfield5 = new Spry.Widget.ValidationTextField("sprytextfield5", "email", {isRequired:false});
var sprytextfield6 = new Spry.Widget.ValidationTextField("sprytextfield6", "none", {validateOn:["blur"]});
var sprytextfield7 = new Spry.Widget.ValidationTextField("sprytextfield7", "none", {isRequired:false});
var sprytextfield8 = new Spry.Widget.ValidationTextField("sprytextfield8", "none", {isRequired:false});
var sprytextfield9 = new Spry.Widget.ValidationTextField("sprytextfield9", "none", {validateOn:["blur"]});
var sprytextarea1 = new Spry.Widget.ValidationTextarea("sprytextarea1", {isRequired:false});
var sprytextarea2 = new Spry.Widget.ValidationTextarea("sprytextarea2", {isRequired:false});

//-->
</script>
</body>
</html>