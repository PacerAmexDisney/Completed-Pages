<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Simon Technology Center Library Feedback Survey</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/style.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />

<script type="text/javascript" src="/css/menu.js"></script>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationCheckbox.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationRadio.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationTextarea.js" type="text/javascript"></script>
<%
Function ValidateForm()
  	Dim isBot
	isBot = false
	If IsDate(Request.Form("servcheck")) Then 
		If DateAdd("n", 1, Request.Form("servcheck")) > Now() Then
			isBot = true
		End If
	End If
	If isBot Then
		ValidateForm = False
		strMsg = strMsg & "<h1 style=""color:red;"">Anti-Bot measures have flagged your submission. Please use your browser back button and Re-Submit your information.</h1>" & VbCrLf
	else
		ValidateForm = True	
	End If
End Function



Dim myMail, content, strMsg
strMsg = ""
if request.form("Submit") = "Submit" and ValidateForm and false Then
content = content & "<h1 align=""center"">Library Item Evaluation</h1>"
content = content & "<h2><strong>Item Name / Title:</strong> <span style=""color: #F00; font-weight:bold""> " & request.form("itemName") & "</span></h2>" & vbCrLf
content = content & "<p><strong>Are you a (please check all that apply)</strong></p>"& vbCrLf
content = content & "<table>"& vbCrLf
content = content & "<tr><td><span style=""color: #F00; font-weight:bold""> "
if (request.form("parent") = "on") then 
	content = content & "X"
end if
content = content & "</span></td><td>Parent/relative of a child with a disability</td></tr>"& vbCrLf
content = content & "<tr><td><span style=""color: #F00; font-weight:bold""> "
if (request.form("individual") = "on") then 
	content = content & "X"
end if
content = content & "</span></td><td>Individual with a disability</td></tr>"& vbCrLf
content = content & "<tr><td><span style=""color: #F00; font-weight:bold""> "
if (request.form("professional") = "on") then 
	content = content & "X"
end if
content = content & "</span></td><td>Professional</td></tr>"& vbCrLf
content = content & "<tr><td><span style=""color: #F00; font-weight:bold""> "
if (request.form("other") = "on") then 
	content = content & "X - "
end if
content = content & request.Form("otherText") & "</span></td><td>Other</td></tr>"& vbCrLf
content = content & "</table>"& vbCrLf
content = content & "<p><strong>How old is the person using the device or software program?</strong> - <span style=""color: #F00""> " & request.form("childAge") & "</span></p>"& vbCrLf
content = content & "<p><strong>What is the child/adult's primary disability?</strong> - <span style=""color: #F00""> " & request.form("childDisability") & "</span></p>"& vbCrLf
content = content & "<p><strong>Was it easy to adjust the program to an appropriate skill level (if applicable)?</strong> - <span style=""color: #F00""> " & request.form("programAdjustment") & "</span></p>"& vbCrLf
content = content & "<p><strong>Did the device/software have educational value?</strong> - <span style=""color: #F00""> " & request.form("educationalValue") & "</span></p>"& vbCrLf
content = content & "<p><strong>Computer Operating System:</strong> - <span style=""color: #F00""> " & request.form("operatingSystem") & "</span></p>"& vbCrLf
content = content & "<p><strong>Would you recommend this device/software to other parents/teachers?</strong> - <span style=""color: #F00""> " & request.form("recommendOthers") & "</span> 1-Not Recomend 5-Highly Recommend</p>"& vbCrLf
content = content & "<p><strong>Please explain why:</strong> - <span style=""color: #F00""> " & request.form("explainRecommend") & "</span></p>"& vbCrLf
content = content & "<p><strong>Was the person able to use the item independantly, or did he/she need assistance? </strong>- <span style=""color: #F00""> " & request.form("independentUse") & "</span> 1-Needed Assistance 5-Independent</p>"& vbCrLf
content = content & "<p><strong>Other comments you would like to share with others about this device/software?</strong> - <span style=""color: #F00""> " & request.form("otherComments") & "</span></p>"& vbCrLf
content = content & "<p><em>---------------------- This Response was sent from stc/library/itemEvalform.asp -----------------------</em></p>"
	Set myMail = CreateObject("CDO.Message")
		
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
		myMail.Configuration.Fields.Update
	myMail.From = "LibraryItemEvalForm@pacer.org"
	myMail.Bcc = "jordan.bohm@pacer.org"
	myMail.To = "stclibrary@pacer.org"
	myMail.Subject = "STC Library Online Item Evaluation Survey "
	myMail.HTMLBody = content
	myMail.Send
	Set myMail = Nothing
	strMsg = "<p style='font-size: 120%; font-weight: bold; text-align: center'>Thank you for taking the time to fill out this evaluation!</p><p><a href=""index.asp"">Return to the STC Library</a></p>"
end if
%>

<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<link href="SpryAssets/SpryValidationCheckbox.css" rel="stylesheet" type="text/css" />
<link href="SpryAssets/SpryValidationRadio.css" rel="stylesheet" type="text/css" />
<link href="SpryAssets/SpryValidationTextarea.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="skiptocontent">
<a href="#maincontent">Skip to main content</a>
</div>

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

<p class="pacerinfo">
<strong>PACER Center<br />
952-838-9000</strong>
</p>
<p class="pacerinfo2">
Champions for Children with Disabilities
</p>
<p class="pacerinfo3">
<a href="http://www.pacer.org/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a>
</p>
<div class="stayinformed">
<h2>Stay Informed</h2>
Receive the latest PACER Center information on issues important to you. 
<a href="/forms/index.asp">Sign up now</a>.
</div>
</div>

<div id="maincontent">

	<div id="pagetoporange">
	<div class="printemail">
<p>
<a href="https://www.facebook.com/simontechnologycenter" target="_blank">Join the STC Facebook Page</a> | 
<img src="/css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>
		
		</p>
	</div>
	<div id="breadcrumb">
	<a href="/index.asp">Home</a> / <a href="/pandr/index.asp">Programs &amp; Resources</a> / <a href="../index.asp">Simon Technology Center</a> /<a href="index.asp"> Library</a> / Item Evaluation Form
    <h1>Simon Technology Center</h1>
	
</div>
</div>

<div id="pagecontent">

<h2 class="nounderline"><a name="maincontent">STC Library Item Evaluation Form</a></h2>
<p><em>The PACER Simon Technology Center wants to serve you better by providing a collection of reviews from people like you, parents and professionals. Your input is important! Please return completed review(s) when you return the item to the STC Library. </em></p>


<!--BEGIN CONTENT-->

<%=strMsg%>

<h1>Temporarily Unavailable</h1>
<%
if false and (request.form("Submit") <> "Submit") then
%>
		<form action="itemEvalform.asp" method="post">
		<input type="hidden" name="servcheck" value="<%=Now()%>" />

		<p><span id="sprytextfield_itemname">
		<label for="itemName">Item Name / Title: </label>
		<input name="itemName" type="text" id="itemName" tabindex="10" size="100" maxlength="200" />
		<span class="textfieldRequiredMsg">A value is required.</span></span>		</p>
		<p>Are you a (please check all that apply)<br />
		</p>
		<table id="ValidCheckboxPersonType">
			<tr>
      <td><input type="checkbox" name="parent" id="parent" tabindex="10" />
        <label for="parent">Parent/relative of a child with a disability</label>
      </td>
    </tr>
    <tr>
      <td><input type="checkbox" name="individual" id="individual" tabindex="10" />
        <label for="individual">Individual with a disability</label>
      </td>
    </tr>
    <tr>
      <td><input type="checkbox" name="professional" id="professional" tabindex="10" />
        <label for="professional">Professional</label>
      </td>
    </tr>
    <tr>
      <td><input type="checkbox" name="other" id="other" tabindex="10" />
        <label for="other">Other</label> <input name="otherText" type="text" id="otherText" size="45" />
      </td>
    </tr>
    <tr>
      <td style="width:100%;"><span class="checkboxRequiredMsg">Please make a selection.</span>&nbsp; </td>
    </tr>
  </table>
		<p><span id="sprytextfield_childAge">
		<label for="childAge">How old is the person using the device or software program? </label>
		<input name="childAge" type="text" id="childAge" size="5" maxlength="2" tabindex="10" />
		(years) <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></p>
		<p><span id="sprytextfield_childDisability">
			<label for="childDisability">What is the child/adult's primary disability? </label>
			<input name="childDisability" type="text" id="childDisability" size="60" maxlength="300" tabindex="20" />
			<span class="textfieldRequiredMsg">A value is required.</span></span></p>
		<p>Was it easy to adjust the program to an appropriate skill level (if applicable) ?<br />

		<span id="spryradio_Adjustable">
			<label>
				<input type="radio" name="programAdjustment" value="yes" id="programAdjustment_0" onclick="spryradio1.validate()" tabindex="30" />
				Yes</label>
			<br />
			<label>
				<input type="radio" name="programAdjustment" value="no" id="programAdjustment_1" onclick="spryradio1.validate()" tabindex="40"  />
				No</label>
			<br />
			<label>
				<input type="radio" name="programAdjustment" value="na" id="programAdjustment_2" onclick="spryradio1.validate()" tabindex="50"  />
				Not Applicable</label>
			<br />
			<span class="radioRequiredMsg">Please make a selection.</span></span></p>
			<p>Did the device/software have educational value?<br />
			<span id="spryradioEducational">
				<label>
					<input type="radio" name="educationalValue" value="yes" id="educationalValue_0" onclick="spryradio2.validate()" tabindex="60"  />
					Yes</label>
				<br />
				<label>
					<input type="radio" name="educationalValue" value="no" id="educationalValue_1" onclick="spryradio2.validate()" tabindex="70"  />
					No</label>
				<br />
				<span class="radioRequiredMsg">Please make a selection.</span></span></p>
				<p><span id="sprytextfield_OS">
					<label for="operatingSystem">Computer Operating System: </label>
					<input name="operatingSystem" type="text" id="operatingSystem" size="30" maxlength="100" tabindex="80" />
					<span class="textfieldRequiredMsg">A value is required.</span></span></p>
				<hr />
				<p>Would you recommend this device/software to other parents/teachers?
				<span id="spryradio_recommend">
					<table><tr><td colspan="3" align="left">Do Not Recommend</td><td colspan="2" align="right">Highly Recommend</td></tr>
					<tr><td width="100">
					<label>
						<input type="radio" name="recommendOthers" value="1" id="recommendOthers_0" onclick="spryradio3.validate()" tabindex="90"  />
						1</label></td>
					<td width="100">
					<label>
						<input type="radio" name="recommendOthers" value="2" id="recommendOthers_1" onclick="spryradio3.validate()" tabindex="100"  />
						2</label>
					</td><td width="100">
					<label>
						<input type="radio" name="recommendOthers" value="3" id="recommendOthers_2" onclick="spryradio3.validate()" tabindex="110"  />
						3</label>
					</td><td width="100">
					<label>
						<input type="radio" name="recommendOthers" value="4" id="recommendOthers_3" onclick="spryradio3.validate()"  tabindex="120" />
						4</label>
					</td><td width="100">
					<label>
						<input type="radio" name="recommendOthers" value="5" id="recommendOthers_4" onclick="spryradio3.validate()" tabindex="130"  />
						5</label>
					</td></tr></table>
					
					
					<span class="radioRequiredMsg">Please make a selection.</span></span></p>
<p><span id="sprytextarea_ExplainRecommend">
	<label for="explainRecommend">Please explain why: </label><br />
	<textarea name="explainRecommend" id="explainRecommend" cols="90" rows="5" tabindex="140"></textarea>
</span>
	</p>
				<p>Was the person able to use the item independently, or did he/she need assistance?
				<span id="spryradio_independent">
					<table><tr><td colspan="3" align="left">Needed assistance</td><td colspan="2" align="right">Independent &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
					<tr><td width="100">
					<label>
						<input type="radio" name="independentUse" value="1" id="independentUse_0" onclick="spryradio4.validate()" tabindex="150"  />
						1</label></td>
					<td width="100">
					<label>
						<input type="radio" name="independentUse" value="2" id="independentUse_1" onclick="spryradio4.validate()" tabindex="160"  />
						2</label>
					</td><td width="100">
					<label>
						<input type="radio" name="independentUse" value="3" id="independentUse_2" onclick="spryradio4.validate()" tabindex="170"  />
						3</label>
					</td><td width="100">
					<label>
						<input type="radio" name="independentUse" value="4" id="independentUse_3" onclick="spryradio4.validate()" tabindex="180"  />
						4</label>
					</td><td width="100">
					<label>
						<input type="radio" name="independentUse" value="5" id="independentUse_4" onclick="spryradio4.validate()" tabindex="190"  />
						5</label>
					</td></tr></table>
					
					
					<span class="radioRequiredMsg">Please make a selection.</span></span></p>
<p><span id="sprytextarea_otherComments">
	<label for="otherComments">Other comments you would like to share with others about this device/software?</label><br />
	<textarea name="otherComments" id="otherComments" cols="90" rows="5" tabindex="200"></textarea>
</span></p>
<p align="center">
	<input type="reset" value="Reset" name="Reset" tabindex="210">&nbsp;<input type="submit" value="Submit" name="Submit" tabindex="220">
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
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield_itemname", "none", {validateOn:["blur", "change"]});
var ValidCheckbox4 = new Spry.Widget.ValidationCheckbox("ValidCheckboxPersonType", {validateOn:["change", "blur"]});
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield_childAge", "integer", {validateOn:["blur"]});
var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield_childDisability", "none", {validateOn:["blur", "change"]});
var spryradio1 = new Spry.Widget.ValidationRadio("spryradio_Adjustable");
var spryradio2 = new Spry.Widget.ValidationRadio("spryradioEducational");
var sprytextfield5 = new Spry.Widget.ValidationTextField("sprytextfield_OS", "none", {isRequired:false});
var spryradio3 = new Spry.Widget.ValidationRadio("spryradio_recommend");
var spryradio4 = new Spry.Widget.ValidationRadio("spryradio_independent");
var sprytextarea1 = new Spry.Widget.ValidationTextarea("sprytextarea_ExplainRecommend", {isRequired:false});
var sprytextarea2 = new Spry.Widget.ValidationTextarea("sprytextarea_otherComments", {isRequired:false});

//-->
</script>
</body>
</html>