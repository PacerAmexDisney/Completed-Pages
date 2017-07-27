<%
Dim regOpen 
	regOpen = True
	If DateDiff("n", Now, cDate("2-24-2017 2:00 PM")) < 0 Then 'Closed After Date
		regOpen = False
	End If
	
	If Request.QueryString("test") = "true" Then
		regOpen = True
	End If

%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="robots" content="noindex" />

<title>PACER Center - Creative Kids Contest Registration</title>

<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/style.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />
<link href="/SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<link href="/SpryAssets/SpryValidationRadio.css" rel="stylesheet" type="text/css" />
<link href="/SpryAssets/SpryValidationSelect.css" rel="stylesheet" type="text/css" />
<link href="/SpryAssets/SpryValidationTextarea.css" rel="stylesheet" type="text/css" />
<script src="/SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<script src="/SpryAssets/SpryValidationRadio.js" type="text/javascript"></script>
<script src="/SpryAssets/SpryValidationSelect.js" type="text/javascript"></script>
<script src="/SpryAssets/SpryValidationTextarea.js" type="text/javascript"></script>

<style type="text/css">
#registercreativekids{
	margin-bottom:20px;
}
#registercreativekids label {
	display:block;
	font-weight:bold;
	text-align:right;
	width:180px;
	float:left;
}
#registercreativekids input, #registercreativekids textarea, #registercreativekids select {
	float:left;
	font-size:12px;
	padding:4px 2px;
	border:solid 1px #aacfe4;
	margin:2px 0 20px 10px;
}
#registercreativekids div.formItemGroup {
	width:100%;
	clear:left;
}
#registercreativekids span.textfieldRequiredMsg, #registercreativekids span.textareaRequiredMsg, #registercreativekids span.selectRequiredMsg, #registercreativekids span.selectRequiredMsg, #registercreativekids span.radioRequiredMsg, #registercreativekids span.textfieldMinCharsMsg, #registercreativekids span.textfieldInvalidFormatMsg{
	float:left;
	clear:none;
	color:red;
	margin-left:7px;
}
#registercreativekids span.inlineRadioField, #registercreativekids span.inlineRadioField label {
	clear:none;
	float:left;
	width:auto;
}
#registercreativekids span.inlineRadioField{
	width:20em;
}
#registercreativekids #submit{
	width:20em;
	margin-left:189px;
	display:block;
}
#registercreativekids h3 {
	clear:left;
	font-size:1.3em;
	color:#00C;
	padding:10px 0px;
}
#registercreativekids p{
	clear:left;
}
</style>

</head>

<body>
<div id="skiptocontent">
<a href="#pagecontent">Skip to main content</a>
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
Champions for Children with Disabilities</p>
<p class="pacerinfo3"><a href="http://www.pacer.org/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a>
</p>
<div id="submenu">
<h3 style="display: none;">PACER Greeting Cards Menu</h3>
<!--#include virtual="/help/creativeKids/creativesubmenu.html" -->
<script type="text/javascript">
	var currId="none";
	
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
</script>

</div><br />
<img src="images/creativeKid1.jpg" alt="" name="image1" width="250" height="333" style="margin:0px" />
</div>

<div id="maincontent">
	
	<div id="pagetoporange">
	
	<div id="breadcrumb">
	<a href="/index.asp">Home</a>/ <a href="/help/events.asp">Events</a> /  <a href="/help/creativeKids/creativekidscontest.asp">Creative Kids Contest</a> /
<h1>Creative Kids, a PACER Contest</h1>
</div>
</div>


<!--BEGIN CONTENT-->

<div id="pagecontent">
<p><a href="/help/creativeKids/creativekidscontest.asp">&lt;&lt;&lt; Back to Creative Kids Event Page</a></p>
	<h2 class="center">Creative Kids Event Registration</h2>
<img src="/help/images/creativeLogo.gif" alt="" width="124" height="161" style="float: right; padding: 0 .5em .5em .5em;" />
<%If regOpen Then%>
<form action="creativekidseventsend.asp" method="post" name="registercreativekids" id="registercreativekids">
	<input type="hidden" name="servcheck" value="<%=Now()%>" />
	<h3>Adult Registration Information</h3>
	<p><em> Note: An adult must stay with the child during the event.</em></p>
	
	<div class="formItemGroup">
	<span id="sprytextfield1">
	<label for="fName">*Name: </label>
	<input name="fName" type="text" id="fName" tabindex="10" size="30" />
	<span class="textfieldRequiredMsg">A value is required.</span></span>
	</div>
	
	<div class="formItemGroup">
	<span id="sprytextfield2">
	<label for="fAddress1">*Address: </label>
	<input name="fAddress1" type="text" id="fAddress1" tabindex="20" size="40" />
	<span class="textfieldRequiredMsg">A value is required.</span></span>
	</div>
	
	<div class="formItemGroup">
	<span id="sprytextfield3">
	<label for="fAddress2">Address 2: </label>
	<input name="fAddress2" type="text" id="fAddress2" tabindex="30" size="40" />
	</span>
	</div>
	
	<div class="formItemGroup">
	<span id="sprytextfield4">
	<label for="fCity">*City: </label>
	<input name="fCity" type="text" id="fCity" tabindex="40" size="30" />
	<span class="textfieldRequiredMsg">A value is required.</span></span>
	</div>
	
	<div class="formItemGroup">
	<span id="sprytextfield5">
	<label for="fState">*State: </label>
	<input name="fState" type="text" id="fState" tabindex="50" size="5" maxlength="2" />
	<span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldMinCharsMsg">Minimum number of characters not met.</span></span>
	</div>
	
	<div class="formItemGroup">
	<span id="sprytextfield6">
	<label for="fZip">*Zip: </label>
	<input name="fZip" type="text" id="fZip" tabindex="60" size="10" maxlength="5" />
	<span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid Zip Code Format.</span></span>
	</div>
	
		
	<div class="formItemGroup">
	<span id="sprytextfield7">
	<label for="fPhone">*Phone</label>
	<input type="text" name="fPhone" id="fPhone" tabindex="70" />
	<span class="textfieldRequiredMsg">A value is required.</span></span>
	<span id="spryradio1" class="inlineRadioField">
	<label>
		<input type="radio" name="phoneType" value="Home" id="phoneType_0" tabindex="80" />
		Home</label>
	<label>
		<input type="radio" name="phoneType" value="Work" id="phoneType_1" tabindex="90" />
		Work</label>
	<label>
		<input type="radio" name="phoneType" value="Cell" id="phoneType_2" tabindex="100" />
		Cell</label>
	<span class="radioRequiredMsg">Please make a selection.</span></span>
	</div>	
	
	<div class="formItemGroup">
	<span id="sprytextfield8">
	<label for="fEmail">*Email: </label>
	<input name="fEmail" type="text" id="fEmail" tabindex="110" size="40" />
	<span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid Email Address Format.</span></span>
	</div>
	
	<div class="formItemGroup">
	<span id="spryselect1">
	<label for="fPersonType">*Which best describes you?</label>
	<select name="fPersonType" id="fPersonType" tabindex="120">
		<option value="Parent">Parent</option>
		<option value="Professional">Professional</option>
		<option value="Relative">Relative</option>
		<option value="Other">Other</option>
	</select>
	<span class="selectRequiredMsg">Please select an item.</span></span>
	</div>

	<h3>Child Information</h3>
	
	<div class="formItemGroup">
	<span id="sprytextfield9">
	<label for="fNumChild">*How many children will be attending with you?</label>
	<input name="fNumChild" type="text" id="fNumChild" tabindex="130" size="5" maxlength="2" />
	<span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Numbers Only</span></span> 
	</div>
	
	<div class="formItemGroup"></div>
	
	<p><em>All kids are welcome to create artwork. However, Creative Kids with  disabilities ages 4 to 17 are eligible for the contest.</em></p>
	
	<div class="formItemGroup">
	<span id="sprytextarea2">
		<label for="fEligibility">*Names of children 
that will be attending:<br />
			<em style="display:block; margin-left:-99999px; width:300px;">(name ,age and disability for each eligible child)</em><br />
		</label>
		<span id="eligibilityInfo" style="margin-left:191px; width:440px; text-align:center; font-style:italic; display:block">(full name ,birthdate and disability if applicable for each  child)</span>
		<textarea name="fEligibility" id="fEligibility" cols="65" rows="5" tabindex="140"></textarea>
		<span class="textareaRequiredMsg">A value is required.</span></span>
	</div>
		
	<div class="formItemGroup">

		<button type="submit" name="submit" id="submit" value="Submit Registration Information">Submit Registration Information</button>
	</div>	
</form>	

<%Else%>

<h3>Registration is currently closed for the Creative Kids Event</h3>

<%End If%>








<div id="pageextender" style="clear:both">&nbsp;</div>

<!--END CONTENT-->
</div>
</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>
<script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1", "none", {validateOn:["blur"]});
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2", "none", {validateOn:["blur"]});
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3", "none", {validateOn:["blur"], isRequired:false});
var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4", "none", {validateOn:["blur"]});
var sprytextfield5 = new Spry.Widget.ValidationTextField("sprytextfield5", "none", {validateOn:["blur"], minChars:2});
var sprytextfield6 = new Spry.Widget.ValidationTextField("sprytextfield6", "zip_code", {validateOn:["blur"]});
var sprytextfield7 = new Spry.Widget.ValidationTextField("sprytextfield7", "none", {validateOn:["blur"], hint:"xxx-xxx-xxxx"});
var spryradio1 = new Spry.Widget.ValidationRadio("spryradio1", {validateOn:["blur"]});
var sprytextfield8 = new Spry.Widget.ValidationTextField("sprytextfield8", "email", {validateOn:["blur"]});
var spryselect1 = new Spry.Widget.ValidationSelect("spryselect1", {validateOn:["blur"]});
var sprytextfield9 = new Spry.Widget.ValidationTextField("sprytextfield9", "integer", {validateOn:["blur"]});
var sprytextarea2 = new Spry.Widget.ValidationTextarea("sprytextarea2", {validateOn:["blur"]});
</script>
</body>
</html>