<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Creative Kids Custom Greeting Card Online Form</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/style.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/standardFormLayout.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />

<script type="text/javascript" src="../../css/menu.js"></script>
<script src="../../UniversalSpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<script src="../../UniversalSpryAssets/SpryValidationSelect.js" type="text/javascript"></script>
<script src="../../UniversalSpryAssets/SpryValidationCheckbox.js" type="text/javascript"></script>
<script src="/css/standardFormLayout.js" type="text/javascript"></script>
<script type="text/javascript">
var numberOfCards = 0;
var imprintedEnvelopes = false;

//Table of priceing
var regularPricing = new Array(170,380,600,1000,1885);
var imprintedPricing = new Array(70,75,80,90,90);
var shippingPricing = new Array(10,11,12,14,16);
var mnTax = .069;

function addEnvelopes(envelopeValue){
	//alert(envelopeValue);
	imprintedEnvelopes = envelopeValue;
	updateSummary();
}
function setNumberOfCards(number) {
	numberOfCards = number;
	updateSummary();
}
function updateSummary() {
	var arraySelector;
	var totalPrice = 0;
	if (numberOfCards > 0){
		switch(numberOfCards) 
		{
		case "100":
			arraySelector = 0;
			break;
		case "250":
			arraySelector = 1;
			break;
		case "500":
			arraySelector = 2;
			break;
		case "1000":
			arraySelector = 3;
			break;
		case "2000":
			arraySelector = 4;
			break;
		}
		document.getElementById("summary_quantity").innerHTML = numberOfCards + " Cards";
		document.getElementById("form_quantity").value = numberOfCards;
		
		
		document.getElementById("summary_price").innerHTML = "$" + regularPricing[arraySelector];
		document.getElementById("form_price").value = regularPricing[arraySelector];
		
		totalPrice += regularPricing[arraySelector];
		
		if (imprintedEnvelopes) {
			document.getElementById("summary_imprinted").innerHTML = "$" + imprintedPricing[arraySelector];
			document.getElementById("form_imprinted").value = imprintedPricing[arraySelector];
			totalPrice += imprintedPricing[arraySelector];
		} else {
			document.getElementById("summary_imprinted").innerHTML = "$0";
			document.getElementById("form_imprinted").value = "0";
		}
		
		document.getElementById("summary_shipping").innerHTML = "$" + shippingPricing[arraySelector];
		document.getElementById("form_shipping").value = shippingPricing[arraySelector];
		totalPrice += shippingPricing[arraySelector];
		
		if (document.getElementById("contact_state").value == "MN") {
			document.getElementById("summary_tax").innerHTML = "$" + Math.round(totalPrice * mnTax * 100)/100;
			document.getElementById("form_tax").value = Math.round(totalPrice * mnTax * 100)/100;
			totalPrice += Math.round(totalPrice * mnTax * 100)/100;
		} else {
			
			document.getElementById("summary_tax").innerHTML = "$0";
			document.getElementById("form_tax").value = "0";
		}
		document.getElementById("summary_total").innerHTML = "$" + totalPrice;
		document.getElementById("form_total").value = totalPrice;
		
		//make the table visible by removing the class .hidden
		document.getElementById("costSummary").className = ""
	} else {
		document.getElementById("costSummary").className = "hidden"
	}	
}



</script>
<link href="../../UniversalSpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<link href="../../UniversalSpryAssets/SpryValidationSelect.css" rel="stylesheet" type="text/css" />
<link href="../../UniversalSpryAssets/SpryValidationCheckbox.css" rel="stylesheet" type="text/css" />

<!--[if lte IE 7]>
<style>
 #wrapper {
	 width:1100px;
	 max-width:none;
	 min-width:none;
 }
 #formContainer {
 	 width:450px;
	 max-width:none;
	 min-width:none;
 }
</style>

<![endif]-->
<style type="text/css">
<!--
#costSummary table {
	text-align: left;
}
#costSummary th {
	width:150px;
	text-align: right;
}
#costSummary td {
	padding-left: 30px;
}
-->
</style>
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
<a href="../../"><img src="../../images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
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
<!--#include file="creativesubmenu.html"-->
<script type="text/javascript">
	var currId="none";
	
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
</script>

</div>
</div>

<div id="maincontent">
	
	<div id="pagetoporange">
	<div class="printemail">
		<p>
		<img src="../../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>
		
		</p>
	</div>
	<div id="breadcrumb">
	<a href="../../index.asp">Home</a> / <a href="../index.asp">Get Involved</a> / <a href="../events.asp">Special Events</a> / <a href="index.asp">Creative Kids Cards</a> /	
<h1>Order Your Creative Kids Custom Greeting Card Online</h1>
	
</div>
</div>


<!--BEGIN CONTENT-->

<div id="pagecontent">
<noscript>
	<h1 style="color:#F00"> ALERT: Javascript is required to complete this form. -- Your Browser does not currently have Javascipt Enabled.</h1>
</noscript>
<%
Dim myMail, content, strMsg
strMsg = ""
if request.form("submitButton") = "Submit" And request.form("form_nobot") = "" then

content = content & "<h1>Creative Kids Custom Greeting Order</h1> " & VbCrLf
content = content & "<p>Company Name: " & Trim(Request.Form("contact_companyname")) & "<br />" & VbCrLf
content = content & "First and Last name: " & Trim(Request.Form("contact_name")) & "<br />" & VbCrLf
content = content & "Address: <br />" & VbCrLf
content = content & "" & Trim(Request.Form("contact_address")) & "<br />" & VbCrLf
content = content & " " & Trim(Request.Form("contact_city")) & " " & Trim(Request.Form("contact_state")) & ", " & Trim(Request.Form("contact_zip")) & "</p>" & VbCrLf
content = content & "<p>Phone: " & Trim(Request.Form("contact_phone")) & "<br />" & VbCrLf
content = content & "Email: <a href=""mailto:" & Trim(Request.Form("contact_email")) & """>" & Trim(Request.Form("contact_email")) & "</a></p>" & VbCrLf
content = content & "<p>Quantity:<strong style=""color: #F00""> " & Trim(Request.Form("quantity_cardnumber")) & " Cards</strong><br />" & VbCrLf
dim email_envelopes
if Request.Form("quantity_envelopes") = "on" Then
	email_envelopes = "YES"
else
	email_envelopes = "NO"
end if
content = content & "Imprinted Envelopes: <strong style=""color: #F00"">" & email_envelopes & "</strong></p>" & VbCrLf
content = content & "<p>Quoted Price: <strong style=""color: #F00"">$" & Trim(Request.Form("form_total")) & "</strong></p>" & VbCrLf
content = content & "<p>Price: $" & Trim(Request.Form("form_price")) & "<br />" & VbCrLf
content = content & "  Envelopes: $" & Trim(Request.Form("form_imprinted")) & "<br />" & VbCrLf
content = content & "  Shipping: $" & Trim(Request.Form("form_shipping")) & "<br />" & VbCrLf
content = content & "Tax: $" & Trim(Request.Form("form_tax")) & "</p>" & VbCrLf
content = content & "<p>Font: <strong style=""color: #F00"">" & Trim(Request.Form("message_fontchoice")) & "</strong></p>" & VbCrLf
content = content & "<p>Company Name To Use on Card: <strong style=""color: #F00"">" & Trim(Request.Form("message_company")) & "</strong><br />" & VbCrLf
content = content & "  Line1: <strong style=""color: #F00"">" & Trim(Request.Form("message_line1")) & "</strong><br />" & VbCrLf
content = content & "Line2: <strong style=""color: #F00"">" & Trim(Request.Form("message_line2")) & "</strong><br />" & VbCrLf
content = content & "Line3: <strong style=""color: #F00"">" & Trim(Request.Form("message_line3")) & "</strong><br />" & VbCrLf
content = content & "Line4: <strong style=""color: #F00"">" & Trim(Request.Form("message_line4")) & "</strong></p>" & VbCrLf
content = content & "<p>Optional Alternate Address to ship the cards too:<br />" & VbCrLf
content = content & "  Name: <strong style=""color: #F00"">" & Trim(Request.Form("shipping_name")) & "</strong><br />" & VbCrLf
content = content & " Address: <strong style=""color: #F00"">" & Trim(Request.Form("shipping_address")) & "</strong><br />" & VbCrLf
content = content & "  City, state, zip: " & VbCrLf
content = content & "<strong style=""color: #F00"">" & Trim(Request.Form("shipping_city")) & "</strong></p>" & VbCrLf
content = content & "<hr />" & VbCrLf
content = content & "<p>This message was sent from the online form at: <a href=""http://www.pacer.org/help/creativeKids/creativecustomform.asp"">http://www.pacer.org/help/creativeKids/creativecustomform.asp</a></p>" & VbCrLf

	Set myMail = CreateObject("CDO.Message")
		
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
		myMail.Configuration.Fields.Update
	myMail.From = "CreativeKidsCustomOrderForm@pacer.org"
	myMail.Bcc = "jordan.bohm@pacer.org"
	myMail.To = "kelly.lorenz@pacer.org"
	'myMail.To = "jordan.bohm@pacer.org"
	myMail.Subject = "Custom Creative Kids Card Order"
	myMail.HTMLBody = content
	myMail.Send
	Set myMail = Nothing

	Response.Write("<h1 style=""color:orange"">Order Sent</h1>")

Elseif request.form("form_nobot") <> "" then
	Response.Write("<h1 style=""color:orange"">Your order was not sent due to Spam Bot Prevention Code.</h1>")
	Response.Write("<p>If you are not a spam bot and continue to have problems, please contact us at 952-838-9000</p>")
end if
%>
<div id="cardandpricing" style="float:right; width:300px; margin-left:10px">
<img src="images/2010/2010CreativeCard-lrg.jpg" width="300" alt="Snowman card picture" style="padding-bottom:10px; background-color:#FFF" />
<p><strong>Pricing Information:</strong></p>
<table width="300px" border="1" cellspacing="0" cellpadding="5">
  <tr>
    <th width="99" valign="top"><strong>Number of Cards*</strong></th>
    <th width="99" valign="top"><strong>Price with Envelopes**</strong></th>
    <th width="100" valign="top"><strong>Price with Imprinted Envelopes**</strong></th>
  </tr>
  <tr>
    <td valign="top">100 (minimum order)</td>
    <td valign="top">$170</td>
    <td valign="top">$240</td>
  </tr>
  <tr>
    <td valign="top">250</td>
    <td valign="top">$380</td>
    <td valign="top">$455</td>
  </tr>
  <tr>
    <td valign="top">500</td>
    <td valign="top">$600</td>
    <td valign="top">$680</td>
  </tr>
  <tr>
    <td valign="top">1,000</td>
    <td valign="top">$1,000</td>
    <td valign="top">$1,090</td>
  </tr>
  <tr>
    <td valign="top">2,000</td>
    <td valign="top">$1,885</td>
    <td valign="top">$1,975</td>
  </tr>
</table>
<p><strong>* </strong><em>Need  a different quantity? E-mail <a href="mailto:Kelly.Lorenz@PACER.org">Kelly.Lorenz@PACER.org</a></em><br />
  <strong>** </strong><em>Plus Shipping and sales tax for MN residence</em></p>
  <p>Inside Greeting Example (<a href="images/postcardMessage.jpg">click to Enlarge</a>)</p>
  <a href="images/postcardMessage.jpg"><img src="images/postcardMessage_sml.gif" width="300" height="228" alt="Seasons Greetings! Warmest Wishes to You and Yours " style="border:solid 1px #333"/></a>
  <p>Example of Imprinted Envelopes (<a href="images/postcardEnvelope.jpg">click to Enlarge</a>)</p>
  <a href="images/postcardEnvelope.jpg"><img src="images/postcardEnvelope_sml.gif" width="300" height="213" alt="" /></a>
  </div>


<% 
regOpen = cDate("9/30/2010")
If date <= regOpen And Request.Form("submitButton") <> "Submit" Then
'Display the Order Form
%>


<div id="formContainer"style="margin: 0; padding:0">
<form action="creativecustomform.asp" method="post" enctype="application/x-www-form-urlencoded" name="mainForm" lang="en" id="mainForm" onsubmit="return validateonsubmit(this);" >
<span class="nobot"><label for="form_nobot">Leave this Field Blank</label> <input name="form_nobot" type="text" /></span>

<div id="introtext" style="line-height:1.5; font-size:1.2em; margin-bottom:25px">
  <p>Delight your colleagues, clients, friends, and family with these charming cards. Created by a child with a disability, they are sure to spread winter cheer and let recipients know you support PACER.<br />
    Featuring the artist&rsquo;s bio and photo on the back, these full-color cards measure 4 &frac34;&rdquo; x 6 &frac14;,&rdquo; are printed on glossy card stock, and come with white envelopes.</p>
  <p><strong>Order Deadline: September 30, 2010</strong> Cards will be  shipped in early November.</p>
</div>

<fieldset>
<legend>Contact Information</legend>

<div class="fm-req"><label>Company Name</label><input name="contact_companyname" type="text" size="50" maxlength="50" tabindex="10" /></div>
<div class="fm-req">
<span id="spry_contact_name">
<label for="contact_name">* First and last name</label>
<input type="text" name="contact_name" id="contact_name" tabindex="20" size="50" maxlength="50" />
<span class="textfieldRequiredMsg">- required</span></span></div>

<div class="fm-req">
<span id="sprytextfield2">
<label for="contact_address">* Address</label>
<input type="text" name="contact_address" id="contact_address" tabindex="30" />
<span class="textfieldRequiredMsg">- required</span></span></div>

<div class="fm-req">
<span id="sprytextfield3">
<label for="contact_city">* City</label>
<input type="text" name="contact_city" id="contact_city" tabindex="40" />
<span class="textfieldRequiredMsg">- required</span></span></div>

<div class="fm-req">
<label for="contact_state">* State</label>
<select name="contact_state" id="contact_state" tabindex="42" onchange="updateSummary()">
<option value="MN">Minnesota</option> 
<option value="AL">Alabama</option> 
<option value="AK">Alaska</option> 
<option value="AZ">Arizona</option> 
<option value="AR">Arkansas</option> 
<option value="CA">California</option> 
<option value="CO">Colorado</option> 
<option value="CT">Connecticut</option> 
<option value="DE">Delaware</option> 
<option value="DC">District Of Columbia</option> 
<option value="FL">Florida</option> 
<option value="GA">Georgia</option> 
<option value="HI">Hawaii</option> 
<option value="ID">Idaho</option> 
<option value="IL">Illinois</option> 
<option value="IN">Indiana</option> 
<option value="IA">Iowa</option> 
<option value="KS">Kansas</option> 
<option value="KY">Kentucky</option> 
<option value="LA">Louisiana</option> 
<option value="ME">Maine</option> 
<option value="MD">Maryland</option> 
<option value="MA">Massachusetts</option> 
<option value="MI">Michigan</option> 
<option value="MN">Minnesota</option> 
<option value="MS">Mississippi</option> 
<option value="MO">Missouri</option> 
<option value="MT">Montana</option> 
<option value="NE">Nebraska</option> 
<option value="NV">Nevada</option> 
<option value="NH">New Hampshire</option> 
<option value="NJ">New Jersey</option> 
<option value="NM">New Mexico</option> 
<option value="NY">New York</option> 
<option value="NC">North Carolina</option> 
<option value="ND">North Dakota</option> 
<option value="OH">Ohio</option> 
<option value="OK">Oklahoma</option> 
<option value="OR">Oregon</option> 
<option value="PA">Pennsylvania</option> 
<option value="RI">Rhode Island</option> 
<option value="SC">South Carolina</option> 
<option value="SD">South Dakota</option> 
<option value="TN">Tennessee</option> 
<option value="TX">Texas</option> 
<option value="UT">Utah</option> 
<option value="VT">Vermont</option> 
<option value="VA">Virginia</option> 
<option value="WA">Washington</option> 
<option value="WV">West Virginia</option> 
<option value="WI">Wisconsin</option> 
<option value="WY">Wyoming</option>
</select>
</div>
<div class="fm-req">
  <span id="sprytextfield6">
  <label for="contact_zip">* Zip</label>
  <input type="text" name="contact_zip" id="contact_zip" tabindex="44" />
  <span class="textfieldRequiredMsg">- required</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span>
</div>

<div class="fm-req">
  <span id="sprytextfield4">
  <label for="contact_phone">* Phone Number</label>
<input type="text" name="contact_phone" id="contact_phone" tabindex="50" />
<span class="textfieldRequiredMsg">- required</span></span></div>

<div class="fm-req">
<span id="sprytextfield5">
<label for="contact_email">* Email</label>
<input type="text" name="contact_email" id="contact_email" tabindex="60" />
<span class="textfieldRequiredMsg">- required</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></div>

</fieldset>

<fieldset>
<legend>Quantity</legend>
<div class="fm-multi">
<div class="fm-req">
<span id="spryselect1">
<label for="quantity_cardnumber">Select the number of Cards you would like</label>
<select name="quantity_cardnumber" id="quantity_cardnumber" tabindex="70" onchange="setNumberOfCards(this.value)">
<option value=""></option>
<option value="100">100 cards</option>
<option value="250">250 cards</option>
<option value="500">500 cards</option>
<option value="1000">1,000 cards</option>
<option value="2000">2,000 cards</option>
</select>
<span class="selectRequiredMsg">- required</span></span>
</div>
</div>
<div class="fm-check">
  <input type="checkbox" name="quantity_envelopes" id="quantity_envelopes" tabindex="80" onclick="addEnvelopes(this.checked)" />
  <label for="quantity_envelopes">Yes, I would like to include Imprinted Envelopes</label>
</div>

<div class="hr"><hr /></div>
<input name="form_quantity" id="form_quantity" type="hidden" value="" />
<input name="form_price" id="form_price" type="hidden" value="" />
<input name="form_imprinted" id="form_imprinted" type="hidden" value="" />
<input name="form_shipping" id="form_shipping" type="hidden" value="" />
<input name="form_tax" id="form_tax" type="hidden" value="" />
<input name="form_total" id="form_total" type="hidden" value="" />
<div id="costSummary"><h3>Summary:</h3>
	<table width="470" cellspacing="5" cellpadding="5">
  <caption>
    Pricing Information
  </caption>
  <tr>
    <th scope="row">Quantity of Cards</th>
    <td id="summary_quantity" style="text-align:center">0</td>
  </tr>
  <tr>
    <th scope="row">Price of Cards</th>
    <td id="summary_price">$0</td>
  </tr>
  <tr>
    <th scope="row">Imprinted Envelopes</th>
    <td id="summary_imprinted">$0</td>
  </tr>
  <tr>
    <th scope="row">Shipping</th>
    <td id="summary_shipping">$0</td>
  </tr>
  <tr>
    <th scope="row">MN Sales Tax</th>
    <td id="summary_tax">$0</td>
  </tr>
  <tr>
    <th style="font-weight:bold; font-size:1.1em; border-top:solid 1px #666" scope="row">Total</th>
    <td style="font-weight:bold; font-size:1.1em; border-top:solid 1px #666" id="summary_total">$0</td>
  </tr>
</table>

</div>
<script type="text/javascript">
document.getElementById("costSummary").className = "hidden"
</script>

</fieldset>

<fieldset>
<legend>Provide Your Custom Greeting</legend>
<p>4 lines, 33 &ldquo;character&rdquo; maximum and your Company Name as you would like it to appear on the card.</p>

<div class="fm-multi">
<div class="fm-req">
Select a Font option:<br />
  <label>
    <input type="radio" name="message_fontchoice" value="Book Antiqua" id="message_fontchoice_0" checked="checked" />
    <img src="images/bookantiqua.gif" width="140" height="39" alt="Book Antiqua" /></label>
  <label>
    <input type="radio" name="message_fontchoice" value="Edwardian Script" id="message_fontchoice_1" />
    <img src="images/edwardian.gif" width="140" height="40" alt="Edwardian Script" /></label>
  <label>
    <input type="radio" name="message_fontchoice" value="Garamond" id="message_fontchoice_2" />
    <img src="images/garmond.gif" width="140" height="40" alt="Garamond" /></label>
  <label>
    <input type="radio" name="message_fontchoice" value="Monotype Corsiva" id="message_fontchoice_3" />
    <img src="images/corsiva.gif" width="140" height="40" alt="Monotype Corsiva" /></label>
</div>
</div>


<div class="hr"><hr /></div>

<div class="fm-req"><label for="message_company">Company Name:</label><input name="message_company" type="text" maxlength="33" /></div>
<div class="fm-req"><label for="message_line1">Line 1:</label><input name="message_line1" type="text" maxlength="33" /></div>
<div class="fm-req"><label for="message_line2">Line 2:</label><input name="message_line2" type="text" maxlength="33" /></div>
<div class="fm-req"><label for="message_line3">Line 3:</label><input name="message_line3" type="text" maxlength="33" /></div>
<div class="fm-req"><label for="message_line4">Line 4:</label><input name="message_line4" type="text" maxlength="33" /></div>

</fieldset>

<fieldset>
<legend>Alternate Shipping Address</legend> 
<p>I would like the cards shipped to a different address: (optional)</p>
<div class="fm-opt"><label for="shipping_name">Name:</label><input name="shipping_name" type="text" size="50" maxlength="150" /></div>
<div class="fm-opt"><label for="shipping_address">Address</label><input name="shipping_address" type="text" size="50" maxlength="150" /></div>
<div class="fm-opt"><label for="shipping_city">City, State, Zip</label><input name="shipping_city" type="text" size="50" maxlength="150" /></div>
</fieldset>
<p style="font-size:1.2em"><strong>Once your order is submitted, you will be contacted by PACER to submit payment and to confirm your order. Thank you!</strong></p>
<p><strong>Order Deadline: September 30, 2010</strong> Cards will be  shipped in early November.</p>
<div id="fm-submit">
  <input type="submit" name="submitButton" id="submitButton" value="Submit" />
  <div style="color:red" id="errorMsg">&nbsp;</div>
</div>
</form>
</div>
<script type="text/javascript">
<!--
var sprytextfield1 = new Spry.Widget.ValidationTextField("spry_contact_name", "none", {validateOn:["blur"]});
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2", "none", {validateOn:["blur"]});
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3", "none", {validateOn:["blur"]});
var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4", "none", {validateOn:["blur"]});
var sprytextfield5 = new Spry.Widget.ValidationTextField("sprytextfield5", "email", {validateOn:["blur"]});
var spryselect1 = new Spry.Widget.ValidationSelect("spryselect1", {validateOn:["blur", "change"]});
var sprytextfield6 = new Spry.Widget.ValidationTextField("sprytextfield6", "zip_code", {validateOn:["blur"]});
//-->
</script>
<% ElseIf Request.Form("submitButton") = "Submit" Then ' the page has been send so display the thank you message %>

<h2>Thank You for your order.</h2>
<p>We will be contacting you for payment information and to confirm your order soon.  If you have any questions or concerns please contact <a href="mailto:Kelly.Lorenz@PACER.org">Kelly.Lorenz@PACER.org</a> or call us at 952-838-9000.</p>

<% Else 'the registration is not open so display alternative page %>

<h2>There are no Custom Creative Kids Cards availible to be ordered.</h2>
<p>Please check back after the next <a href="creativekidscontest.asp">Creative Kids Contest</a>.</p>
<p>Also, feel free to check out our <a href="index.asp">In Stock Creative Kids Cards</a> that are still availible for purchase.</p>

<%end if%>




<p>&nbsp;</p>
<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>
</body>
</html>