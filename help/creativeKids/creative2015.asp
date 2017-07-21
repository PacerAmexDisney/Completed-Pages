<%'Response.Redirect("creative2011.asp")%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Creative Kids Card Contest 2015 - PACER Center</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/style.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />

<script type="text/javascript" src="/css/menu.js"></script>
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
Champions for Children with Disabilities</p>
<p class="pacerinfo3"><a href="http://www.pacer.org/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a>
</p>
<div id="submenu">
<h3 style="display: none;">PACER Greeting Cards Menu</h3>
<!--#include file="creativesubmenu.html"-->
<script type="text/javascript">
	var currId="c2015";
	
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
</script>

</div>
</div>

<div id="maincontent">
	
	<div id="pagetoporange">
	
	<div id="breadcrumb">
	<a href="/index.asp">Home</a> / <a href="/help/events.asp">Events</a>
/	
	<h1>Creative Kids Card contest - 2015</h1>
	
</div>
</div>


<!--BEGIN CONTENT-->

<div id="pagecontent">
<img src="/help/creativeKids/images/2015/Amanda-Creative-kids-winner.jpg" alt="" width="267" height="399" style="float: right; padding: .5em;" />
<h2 style="padding-bottom: .5em;" class="nounderline">Purchase Creative Kids Cards</h2>

<p style="font-weight: bold;">

Amanda is the grand prize winner of PACER&rsquo;s 10<sup>th</sup> Annual Creative Kids Contest!
<em><a href="/help/creativeKids/creativekidscontest.asp">(more information on the Creative Kids Contest)</a></em></p>
<%If Request.QueryString("orderStatus") <> "success" Then %>
<p><strong>Price</strong>: $10 per box</p>
<h2>Order your cards online now!</h2>
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="5F9FANPCELDPL">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>

<%Else%>
<h1>Thank you for your purchase.  Your order is being processed.</h1>
<h2>If you have any questions or issues, please contact PACER at <a href="mailto:pacer@pacer.org">pacer@pacer.org</a> or call 952-838-9000.</h2>
<%End If%>


<p>
The cards are a standard 4 ½ x 6 ¼ note card size, and <strong>include 8 cards per box</strong> with accompanying envelopes. All proceeds from the sale of the cards benefit PACER programs. </p>


<table cellspacing="10">
<tr>
<td><strong>Card Front:</strong><br /><br />
<img src="/help/creativeKids/images/2015/amanda-art.jpg" alt="Greeting Card Front" width="400" height="309" /></td>
<td>
<div id="highlight" style="line-height:1.5">
<p style="margin: 0;">
<strong>Amanda&rsquo;s Story (as seen on the back of the card):</strong><br /></p>
<p>Amanda is a nature-loving 12-year-old  who enjoys books about dinosaurs and animals of all types. She particularly  likes reptiles. Amanda often goes to the pond near her house to look for  turtles or walks along the river at Minnehaha Falls with her mom. Amanda has  Autism Spectrum Disorder (ASD) and Attention Deficit Hyperactivity Disorder  (ADHD). Her winning creation is called, &ldquo;How to Train Your Dragon.&rdquo;</p>
</div>
</td>
</tr>
</table>
<div id="pageextender" style="clear:both">&nbsp;</div>


</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>
</body>
</html>