<%
Dim closeDate, nextYear, SoldOutEnglish10pk, SoldOutSpanish10pk, SoldOutEnglish, SoldOutSpanish

closeDate = DateAdd("d", -7, cDate("10-19-2016 1:00 PM"))

nextYear = DatePart("yyyy", closeDate) + 1

SoldOutEnglish = False
SoldOutSpanish = True
SoldOutEnglish10pk = False
SoldOutSpanish10pk = True

mainSurvey = "https://www.surveymonkey.com/r/2FCM687"
englishSurvey = "https://www.surveymonkey.com/r/Y37S39V"
spanishSurvey = "https://www.surveymonkey.com/r/YB2FHYD"

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Order Unity Day Posters - National Bullying Prevention Center</title>

<!-- for Facebook -->  
<meta property="fb:app_id" content="271376943231875" />  
<meta property="og:title" content="Order Unity Day Posters - PACER's National Bullying Prevention Center" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/bullying/resources/images/unity-day-poster-fb.jpg" />
<meta property="og:url" content="http://www.pacer.org/bullying/resources/posters.asp" />
<meta property="og:description" content="Promote Unity Day by displaying this poster in your school, home, or community." />
<meta name="description" content="Promote Unity Day by displaying this poster in your school, home, or community." />

<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />

<link href="/js/colorbox1.5.9/colorbox.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script src="/js/colorbox1.5.9/jquery.colorbox-min.js" type="text/javascript"></script>

<script type="text/javascript">
     $(document).ready(function(){
           $(".group1").colorbox({rel:'group1'});
      });
</script>




<!--#include virtual="/bullying/dynamic-head-items.html"-->
<style type="text/css">
.content {
	background-image:none;
}
.poster {
	float: right;
    width: 300px;
    height: 448px;
    margin-right: 50px;	
	text-align:center;
}
.poster img {
	margin:0px;
	padding:0px;
}
.posterOrderSingleLeft {
	background:url(/bullying/resources/images/UnityDay_poster_order.jpg)  65px 0px no-repeat;
	height:140px;
}
.posterOrderSingleCenter {
	background:url(/bullying/resources/images/UnityDay_poster_order.jpg) center no-repeat;
	width:150px;
}
.posterOrderMultipleCenter {
	background:url(/bullying/resources/images/UnityDay_poster_order_fan.jpg) center no-repeat;
	width:150px;

}
</style> 

</head>

<body class="twocol">
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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/resources/">Resources</a> /
  
      		<div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>
			<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>

  </div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/resources/nav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="unity-day-posters";
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
    <h1 id="maincontent" style="font-size:1.7em">
    
    <%If DateDiff("n", Now, closeDate) > 0 Then%>
    Unity Day Posters 
    	<%If Not (SoldOutEnglish And SoldOutSpanish And SoldOutEnglish10pk And SoldOutSpanish10pk) Then%>
    		- Orders Now Open
      <%End If%>
    <%Else%>
    Orders for <%=nextYear%> Unity Poster to open late summer!
    <%End If%>
    </h1>
    

<%
'    <h2 class="centered">Orders for the 2015 Unity Day Poster will open late summer 2015.</h2>
'<p>2015 UNITY DAY - Wednesday, October 21<br />
'  <strong>Online orders will open in late summer 2015!</strong></p>
'  <p>Be sure to check out all of the other ways that you can participate <a href="/bullying/nbpm/unity-day.asp">Unity Day 2015</a></p>

'<div class="alertBox">
'<h2>Sorry, Our Posters are Temporarily Out of Stock — Check Back June 2011</h2>
'</div>
%>

<div class="poster">
<img class="fltrt" src="/bullying/resources/images/UnityDayPoster.jpg" width="300" height="450" style="margin-left:15px; border:1px solid black; text-align:center" alt="Unity Day Poster"/>
<br />
<a class="group1" style="font-size:.8em;" href="/bullying/resources/images/UnityDayPoster_sp.jpg">View the Spanish Version</a> </div>

<p>Promote Unity Day by displaying this poster in your school, home, or community. <strong>See below to order.</strong></p>

<p><strong>Pricing</strong></p>
<p>One poster = shipped at no charge<br />
Ten posters = $10 to cover shipping and handling</p>

<p><strong>Details</strong></p>
<ul>
<li>Dimensions: 24” x 36”</li>
<!--<li>Available in English and Spanish</li>-->
<li>Quantities are limited</li>
<li>Posters are folded and shipped flat.</li>
</ul> 
 
<p><strong>To order:</strong></p>
<ul>
<li>Determine language and quantity</li>
<li>Select “Order Poster”</li>
<li>Enter contact information</li>
<li>Payment information required for 10 pack</li>
<li><strong>Posters can be shipped only to U.S. addresses.</strong></li>
</ul>




<%If DateDiff("n", Now, closeDate) > 0 Then
'----------------------------- DATE/TIME TO CLOSE ONLINE SALES -------------------------------
%>
<hr />
<h2>Order Posters</h2>

<%If date > DateAdd("d", -14, closeDate) And date < closeDate Then%>
	<p class="centered date">Orders close on <%=FormatDateTime(closeDate, vbLongDate)%></p>
<%End If%>

<table align="center" cellpadding="10" cellspacing="0" style="margin-bottom:40px;">

<%
If Not (SoldOutEnglish Or SoldOutSpanish) Then
%>
<tr>
<td colspan="3" align="center" valign="top" class="posterOrderSingleLeft">
<p><strong>Single Poster</strong><br />(Get a Free English and/or Spanish Poster)</p>
	<a href="<%=mainSurvey%>"><img src="/bullying/images/button-order-poster.png" alt="Order Single English Unity Day Poster" width="108" height="29" /></a>
</td>
</tr>

<%
Else
%>

<tr>
<td align="center" valign="top">

<p><strong>Single Poster  - English Version</strong></p>
<p>Free</p>

<%If SoldOutEnglish Then%>
<p><strong>Sold Out</strong></p>
<%Else%>
	<a href="<%=englishSurvey%>"><img src="/bullying/images/button-order-poster.png" alt="Order Single English Unity Day Poster" width="108" height="29" /></a>
<%End If%>
</td>

<td class="posterOrderSingleCenter">&nbsp;</td>

<td align="center" valign="top">
<p><strong>Single Poster  - Spanish Version</strong></p>
<p>Free</p>
<%If SoldOutSpanish Then%>
	<p><strong>Sold Out</strong></p>
<%Else%>
	<a href="<%=spanishSurvey%>"><img src="/bullying/images/button-order-poster.png" alt="Order Single Spanish Unity Day Poster" width="108" height="29" /></a>
<%End If%>
</td>
</tr>

<%End If%>

<tr>
<td align="center" valign="top">
<div style="position:relative">
    <img id="payPalLogo" style="position:absolute; left:-130px; top:90px;" src="/images/paypal_logo_sml.gif" alt="Secure Payment with PayPal" />
    <p><strong>Poster 10pk - English Version</strong></p>
    <p>$10 shipping</p>

	<%
    If SoldOutEnglish10pk Then
    %>
    <p><strong>Sold Out</strong></p>
    <%
    Else
    %>
    <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
    <input type="hidden" name="cmd" value="_s-xclick" />
    
    <input type="hidden" name="cpp_payflow_color" value="f15c32" />
    <input type="hidden" name="cpp_logo_image" value="https://d41dbb9e14dc223b71c7-c87d6988475aa6717b3fcf892bd5435d.ssl.cf1.rackcdn.com/Images/NBPC-Logo_paypal.png" />
    
    <input type="hidden" name="hosted_button_id" value="YHS3MDMY9HZFA" />
    <input type="image" src="http://www.pacer.org/bullying/images/button-order-poster.png" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!" />
    <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1" />
    </form>
    <%
    End If
    %>
</div>
</td>

<td class="posterOrderMultipleCenter">&nbsp;</td>


<td align="center" valign="top">


<p><strong>Poster 10pk - Spanish Version</strong></p>
<p>$10 Shipping</p>
<%
If SoldOutSpanish10pk Then
%>
<p><strong>Sold Out</strong></p>
<%
Else
%>
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick" />

<input type="hidden" name="cpp_payflow_color" value="f15c32" />
<input type="hidden" name="cpp_logo_image" value="https://d41dbb9e14dc223b71c7-c87d6988475aa6717b3fcf892bd5435d.ssl.cf1.rackcdn.com/Images/NBPC-Logo_paypal.png" />

<input type="hidden" name="hosted_button_id" value="AN3PX9B7WQYLU" />
<input type="image" src="http://www.pacer.org/bullying/images/button-order-poster.png" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!" />
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1" />
</form>

<%
End If
%>
</td></tr>


<%If Not (SoldOutEnglish10pk Or SoldOutSpanish10pk) Then%>
    <tr>
    <td colspan="3" align="center">
    <p><strong>For multiple 10pk requests please email <a href="mailto:PosterOrders@pacer.org?subject=Poster Order Request">PosterOrders@pacer.org</a></strong></p>
    </td>
    </tr>
<%End If%>

</table>

<%
Else
'POSTER ORDERS ARE CLOSED PUT ALTERNATIVE MESSAGING
%>

<div style="font-size:1.4em; font-weight:bold; text-align:center; margin:50px;">Poster Orders to open late summer
<!--
 will open summer <%=nextYear%>.
-->

</div>



 
 
 
 
<!-- <h2>Ideas for Unity Day <%=nextYear%>!</h2>
<p>Visit the Unity Day section to learn how you can celebrate in your community or school, including</p>
<ul>
  <li>Promotion</li>
  <li>Stories</li>
  <li>Ideas</li>
  <li>Dance</li>
  <li>Frequently Asked Questions</li>
</ul>
<p><a href="http://www.pacer.org/bullying/nbpm/unity-day.asp">Unity Day <%=nextYear%> &gt;&gt;&gt;</a></p>
-->

<%End If%>


    <br class="clearfloat" />
    
  <!-- end .content --></div>
    
    
    
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
