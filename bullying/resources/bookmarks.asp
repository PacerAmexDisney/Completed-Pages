<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Order Bullying Prevention Bookmarks! - National Bullying Prevention Center</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--><script type="text/javascript">
var formEmail = 'pxaxyxpxaxlx@xpxaxcxexrx.xoxrxgx'

function printWindow(){
   bV = parseInt(navigator.appVersion)
   if (bV >= 4) window.print()
}

function ValidateAndSubmit() {
	returnValue = true;
	//document.getElementById("load").className = "loading";
	UpdateSH();
	document.getElementById("quantity").value = document.getElementById("fQuantity").value;
	document.getElementById("business").value = formEmail.replace(/x/gi, "");
	document.forms["bookmarkform"].action = 'https://www.paypal.com/cgi-bin/webscr';
	
	
	if (document.getElementById("item_name").value == "none") {
		alert('You must Select which Bookmark you would like to Order');
		returnValue =  false;	
	}
	if (!isNormalInteger(document.getElementById("fQuantity").value)) {
		if (document.getElementById("fQuantity").value == 0) {
			alert('You must enter a quantity');
		} else {
			alert('You must enter a valid quantity');
		}
		returnValue =  false;	
	}
	if (document.getElementById("fZipcode").value.length != 5){
		//document.getElementById("load").className = "loadinghidden";
		if (returnValue) {alert('You must enter a valid 5 digit Zip Code');}
		returnValue = false;	
	} else {
		if (Number(document.getElementById("fZipcode").value) >= 55001 && Number(document.getElementById("fZipcode").value) <= 56763) {
				document.getElementById("tax").value = Math.round((Number(document.getElementById("shipping").value) + (Number(document.getElementById("fQuantity").value) * .01)) * .06875 * 100) / 100;
		} else {
				document.getElementById("tax").value = '0.00';
		}
	}
	//alert(document.getElementById("tax").value);
	return returnValue
	//return false
}
function isNormalInteger(str) {
    var n = ~~Number(str);
    return String(n) === str && n > 0;
}

function UpdateType(fValue){
	if (fValue == 'teen' ) {
		document.getElementById("item_name").value = 'Set of 100 TEENSAgainstBullying Bookmarks';
	} else if (fValue == 'kid') {
		document.getElementById("item_name").value = 'Set of 100 KIDSAgainstBullying Bookmarks';
	}
}

function UpdateSH() {
	var fValue = document.getElementById("fQuantity").value
	for (i = 1; i<=5; i++){
		document.getElementById("row" + i).className = "";
	}
	switch(true)
	{
	case (fValue == '') || (fValue == 0):
	document.getElementById("sh-cost").innerHTML = 'quantity needed';
	document.getElementById("quantity").value = '1';
	document.getElementById("shipping").value = '20.00';
	break;	
	case (fValue > 0) && (fValue <= 5):
	document.getElementById("row1").className = "highlightRow";
	document.getElementById("sh-cost").innerHTML = '$20.00';
	document.getElementById("shipping").value = '20.00';
	break;	
	case (fValue > 5) && (fValue <= 10):
	document.getElementById("row2").className = "highlightRow";
	document.getElementById("sh-cost").innerHTML = '$35.00';
	document.getElementById("shipping").value = '35.00';
	break;	
	case (fValue > 10) && (fValue <= 20):
	document.getElementById("row3").className = "highlightRow";
	document.getElementById("sh-cost").innerHTML = '$50.00';
	document.getElementById("shipping").value = '50.00';
	break;	
	case (fValue > 20) && (fValue <= 50):
	document.getElementById("row4").className = "highlightRow";
	document.getElementById("sh-cost").innerHTML = '$100.00';
	document.getElementById("shipping").value = '100.00';
	break;	
	case isNaN(fValue):
	document.getElementById("fQuantity").value = 0;
	break;
	default:
	//alert("Maximum of 50 sets for online orders");
	document.getElementById("fQuantity").value = 50;
	UpdateSH();
	}	
	
}

</script>
<style type="text/css">
.loadinghidden{
	display:none;
}
.loading {
	width:10em;
	float:right;
	font-size:1.5em;
	color:#C63;
	text-align: center;
	margin: 30px;
}
#bookmarkform {
	font-size:.9em;
	margin:5px;
	padding:10px;
	border:solid 2px #999;
	border-radius:5px;
	background:#FFC url(/images/paypal_logo_sml.gif) no-repeat 98% 2%;

}
#shTable,  #shTable td, #shTable th{
	background:#fff;	
}
#shTable tr.highlightRow td {
	background-color:#FF9;	
}

</style>


</head>

<body class="threecol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>
 
  <!--#include virtual="/bullying/dynamic-header.html"--> 
  <!--#include virtual="/bullying/topnav.html"--> 
  
  <script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/resources/">Resources</a> /</div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/resources/nav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="bookmarks";
	var showTree = "resources-sub";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "active";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "submenu") {
			if (subTrees[i].id != showTree) {
				subTrees[i].className = "submenuhidden";
			}
		}
	}
</script> 
  </div>
  <!-- ###################### END Navigation ############################## -->
  
  <div class="content"> 
    <h1 id="maincontent" style="font-size:24px;">Order Bullying Prevention Bookmarks! <br /><em style="color:#666; font-size:.8em; text-shadow:none;">See order form below</em></h1>
<%
'<div class="alertBox">
'<h2>Sorry, Our Bookmarks are Temporarily Out of Stock—Check Back June 2011</h2>
'</div>
%>

<p>Promote bullying prevention in your school year round by giving each student a special bookmark.</p>
<p class="hr">The <span style="font-size:1.1em; font-weight:bold">&ldquo;KidsAgainstBullying&rdquo; bookmark</span> for <strong>elementary  school students</strong> invites students to take the &ldquo;Be A Kid Against Bullying&rdquo;  pledge. The other side features the characters from the Club Crew.</p>
<div class="centered">
	<img src="/bullying/resources/images/kab-bookmarks.jpg" width="595" height="313" alt="" /></div>
<p style="padding-top:10px;text-align:center"><a href="/bullying/resources/pdf/KAB-Bookmarks.pdf" target="_blank">View a PDF of the &ldquo;Kids Against Bullying&rdquo; bookmark</a></p>

<!--<table cellspacing="10"><tr>
<td><img src="/bullying/images/bookmark-kab-2010.jpg" width="400" height="129" alt="" /></td>
<td align="center"><a href="/bullying/pdf/KAB_Bookmark_Image10.pdf" target="_blank">View a PDF of the<br />
&ldquo;Kids Against Bullying&rdquo; bookmark</a></td>
</tr></table>-->

<p class="hr">The <span style="font-size:1.1em; font-weight:bold">&ldquo;TeensAgainstBullying&rdquo; bookmark</span> <strong>&nbsp;for middle  and high school students</strong> invites students to &ldquo;Be A Champion Against  Bullying&rdquo;! The other side features eight different teen images.</p>
<%
'<h3 class="centered">Temporarily Out Of Stock - Check back Summer 2012</h3>
%>
<div class="centered"><img src="/bullying/images/bookmarkset-tab-2015.jpg" width="595" height="313" alt="" /></div>



<h2 class="hr">Bookmark Order Information <span style="color:#666; font-size:15px; text-shadow:none">- (Free + Shipping &amp; Handling)</span></h2>

<ul>
  <li>Bookmarks are shipped in packages of 100 each. 
	<ul>
		<li>The TeensAgainstBullying packages will contain  approximately 100 bookmarks of random quantities of each of the 8 images
        </li>
    </ul>
  </li>
  <li>Please allow two weeks from date of order for delivery</li>
  <li>There is  a separate S&amp;H charge for TeensAgainstBullying and KidsAgainstBullying  bookmarks.</li>
  <li>Place your order through PayPal below.</li>
  <li>All orders are final, no refunds.</li>
  </ul>
<hr />
<form name="bookmarkform" id="bookmarkform" action="" method="post" onsubmit="return ValidateAndSubmit()" target="_blank">
    <input type="hidden" name="cmd" value="_xclick">
      
    <input type="hidden" name="cpp_payflow_color" value="f15c32">
    <input type="hidden" name="cpp_logo_image" value="https://d41dbb9e14dc223b71c7-c87d6988475aa6717b3fcf892bd5435d.ssl.cf1.rackcdn.com/Images/NBPC-Logo_paypal.png">
    
    <input type="hidden" name="currency_code" value="USD">
    <input type="hidden" name="amount" value="0.01">
    <input type="hidden" name="return" value="http://www.pacer.org/bullying/resources/bookmark-confirmation.asp">
    
    <input type="hidden" name="item_name" id="item_name" value="none">
    <input type="hidden" name="quantity" id="quantity" value="1">
    <input type="hidden" name="shipping" id="shipping" value="20.00">
    <input type="hidden" name="business" id="business" value="">
    <input type="hidden" name="tax" id="tax" value="0.00" />
<h3>
  Which Bookmark would you like to order?</h3>

<table cellpadding="10" cellspacing="20">

<tr><td align="center">  
  

  <label style="font-size:1.2em">
    <input type="radio" name="fType" value="teen" id="type_0" onclick="UpdateType('teen')" tabindex="10" />
   <strong>TeensAgainstBullying</strong></label>

</td><td align="center">  
  <label style="font-size:1.2em">
    <input type="radio" name="fType" value="kid" id="type_1" onclick="UpdateType('kid')" tabindex="20" />
    <strong>KidsAgainstBullying</strong></label>
</td></tr>

<tr><td><img width="200" height="65" src="/bullying/images/bookmark-tab-mini-2011.jpg" alt=""  /></td><td><img width="200" height="65" src="/bullying/images/bookmark-kab-mini-2011.jpg" alt=""  /></td></tr>

</table>
<h3 style="display:inline">
  <label for="fQuantity"># of Sets (100 bookmarks per set): </label></h3><input onblur="UpdateSH()" onkeyup="UpdateSH()" name="fQuantity" id="fQuantity" type="text" value="1" size="10" maxlength="3" tabindex="30" /> 
<em>( online orders are limited to 50 sets)</em></p>
<p><em>* - paypal does not allow $0.00 items so a $0.01 charge is applied for each bookmark set.</em></p>
<p><label for="fZipcode">Please enter your Zip Code: </label><input type="text" id="fZipcode" name="fZipcode" size="8" maxlength="5" /></p>



<div id="shipinginfo" style="width:550px;">
Shipping and Handling charge: <span id="sh-cost" style="font-weight:bold">$20.00</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<script type="text/javascript">
document.writeln('<input type="image" src="/images/orderonline.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!" tabindex="100" />');
</script><noscript><h3>Javascript is required to create an online order</h3><p>- please turn on javascript and refresh this page</p></noscript>
</div>


<div id="load" class="loadinghidden">Loading ... </div>

<table id="shTable" cellpadding="10" cellspacing="10" style="padding:10px; margin:30px" border="1">
<tr>
  <th>Quantity <em>(sets of 100 bookmarks)</em></th><th>S&amp;H Charge</th></tr>
<tr id="row1" class="highlightRow">
  <td>1 - 5 sets</td>
  <td>$20.00</td></tr>
<tr id="row2">
  <td>6 - 10 sets</td>
  <td>$35.00</td>
</tr>
<tr id="row3">
  <td>11 - 20 sets</td>
  <td>$50.00</td>
</tr>
<tr id="row4">
  <td>21 - 50 sets</td>
  <td>$100.00</td>
</tr>
<tr id="row5">
  <td>Greater than 50 sets</td>
  <td>Call</td>
</tr>
<tr>
  <td>International Orders</td>
  <td>Call</td>
</tr>
<tr>
  <td colspan="2">
Phone number: <strong>952.838.9000</strong></td>
</table>
<p>&nbsp;</p>
<img alt="" border="0" src="https://www.paypalobjects.com/WEBSCR-640-20110429-1/en_US/i/scr/pixel.gif" width="1" height="1">
</form>


    <br class="clearfloat" />
    
    <!-- end .content --></div>
    <div class="sidebar2">
<img src="/bullying/images/bookmark-tab-front-2015.jpg" width="200" height="618" alt="" /><br />
<img src="/bullying/images/bookmark-tab-back-2015.jpg" width="200" height="618" alt="" />  
<div id="NextStep" style="margin-top:20px; border:3px solid #772828; padding:5px; text-align:center">
<h2><strong>NEXT STEP</strong></h2>
<a href="/bullying/getinvolved/partners/champions.asp">BECOME A CHAMPION  AGAINST BULLYING </a> <br />
<br />
  List your school or organization  and bullying prevention activities

</div>  
  </div>
    
    
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
