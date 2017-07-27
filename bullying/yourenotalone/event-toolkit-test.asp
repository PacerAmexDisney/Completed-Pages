<!DOCTYPE html 
   PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Holding an Event - NBPC</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link href="/bullying/wewillgen/css/style.css" rel="stylesheet" type="text/css" />
<link href="/js/colorbox/colorbox.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/bullying/css/scrolling.css"/>

<!--#include virtual="/bullying/dynamic-head-items.html"-->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.7.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>

<script type="text/javascript" src="/js/jquery.sticky.js"></script>
<script src="/js/colorbox/jquery.colorbox-min.js" type="text/javascript"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#secondarynav").sticky({ topSpacing:0 });
		$('.dash').attr('aria-hidden','true');
		
		//----------color box pop up window----------		
		$(".group1").colorbox({rel:'group1'});			
	});
</script>

<script type="text/javascript">
var formEmail = 'pxaxyxpxaxlx@xpxaxcxexrx.xoxrxgx'

function ValidateAndSubmit() {
	returnValue = true;
	//document.getElementById("load").className = "loading";
	document.getElementById("quantity").value = document.getElementById("fQuantity").value;
	document.getElementById("business").value = formEmail.replace(/x/gi, "");
	document.forms["orderform"].action = 'https://www.paypal.com/cgi-bin/webscr';
	
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
				document.getElementById("tax").value = Math.round(document.getElementById("fQuantity").value * 50 * .06875 * 100) / 100;
		} else {
				document.getElementById("tax").value = '0.00';
		}
	}
	return returnValue
}
function isNormalInteger(str) {
    var n = ~~Number(str);
    return String(n) === str && n > 0;
}
</script>


<style type="text/css">
h2 { 
	margin-bottom: .5em; 
}

/*.toolkit-materials img{
	float:left;
	padding:10px 20px 30px 20px;
}
*/

.toolkit-materials {
	margin: 0 auto;
	width: 600px;
}
.toolkit-materials img {
	/*box-shadow: 0px 0px 3px #333;*/
	margin-bottom: 5px;
}
.toolkit-materials p {
	width: 150px;
	margin: 0;
	padding: 0;
	text-align: center;
}
.toolkit-materials .toolkit-thumb {
	float: left;
	width: 150px;
	text-align: center;	
	margin: 20px;
}
#orderform {
	margin:20px auto;
	width:405px;
	border:3px solid #C85024;
	border-radius:5px;
	background:#fff url(/images/paypal_logo_sml.gif) no-repeat 97% 4%;
}
#orderform h3 {
	width:13em;
	background:none;
}
#orderQuestions {
	padding:10px;
	margin:10px;
	border:1px solid #ccc;
	text-align:center;
}

</style>
</head>

<body class="subpage">

<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<div class="container">
	
	<!--#include virtual="/bullying/dynamic-header.html"--> 
	<!--#include virtual="/bullying/topnav.html"-->
	
	<div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/yourenotalone/">PACER's You're Not Alone</a> /</div>
	<div class="content">
	<div id="secondarynav" style="border-top:solid 1px #ccc" class="whitenav" role="navigation"> <a href="/bullying/"><img id="navlogo" src="/bullying/images/styles/navLogo.png" width="40" height="40" alt="NBPC Homepage" /></a>
		<ul class="justifiedlist">
			<li id="spynav-1"><a href="/bullying/yourenotalone/#youre-not-alone">PACER's You're Not Alone</a></li>
			<li class="dash"></li>
			<li id="spynav-2"><a href="/bullying/yourenotalone/classroom-toolkit.asp">Classroom Toolkit</a></li>
			<li class="dash"></li>
			<li id="spynav-3"><a href="/bullying/yourenotalone/event-toolkit.asp">Event Toolkit</a></li>
			<li class="dash"></li>
			<li id="spynav-4"><a href="/bullying/yourenotalone/#be-there">Ways to Be There</a></li>
			<li class="dash"></li>
			<li id="spynav-5"><a href="/bullying/yourenotalone/#gallery">Gallery</a></li>
		</ul>
	</div>
		<div class="contentrow row-orange row-shadow">

			<div class="singlecolumn">
				<a id="pageBack" href="/bullying/yourenotalone/">Back to you're not alone</a>
				<h1 style="font-size:30px; line-height:40px; text-shadow:0px 0px 5px #000">Hold an Event</h1>
				<div class="horizontaldots"></div>
				<p>Goals:</p>
				<ul>
					<li> Provide a creative opportunity to start the conversation about bullying, the impact, and the importance of creating safe and supportive environments.</li>
					<li>Educate students, adults and community members with ideas on how they can be supportive of individuals who have experienced bullying or who might be vulnerable to hurt or harm.</li>
					<li>Build a culture in which students who have experienced bullying know that when they reach out for help that there will be someone there to help.</li>
				</ul>
				<p>Order the &quot;You're Not Alone, We're Here for You&quot; event toolkit designed to help you hold an awareness raising event to unite against bullying and unite together to provide community, support, and hope for those who have experienced bullying.</p>
				<p>The toolkit can be used in coordination with a bullying prevention event in the school or community, such as a "Run, Walk, Roll Against Bullying," school open house, or parent teacher conferences.</p>
				<p>It can also be used as a stand-alone activity to raise awareness of the importance of creating supportive, caring environments in which everyone feels like they belong. Ideas include setting up a table at school during lunch, at a local business (ask them to partner), or at a community gathering such as a health fair or open market.</p>
					
    <div class="toolkit-materials"> 
        <div class="toolkit-thumb"><a class="group1" href="/bullying/yourenotalone/images/yna-poster.jpg" title="You're Not Alone Poster"><img src="/bullying/yourenotalone/images/yna-poster-thumb.png" width="102" height="150" alt="" /></a><p>Poster</p></div>
        <div class="toolkit-thumb"><a class="group1" href="/bullying/yourenotalone/images/yna-button.png" title="You're Not Alone Button"><img src="/bullying/yourenotalone/images/yna-button-thumb.png" width="150" height="150" alt="" /></a><p>Button</p></div>
        <div class="toolkit-thumb"><a class="group1" href="/bullying/yourenotalone/images/yna-handout.jpg" title="You're Not Alone Handouts"><img src="/bullying/yourenotalone/images/yna-handout-thumb.png" width="113" height="150" alt="" /></a><p>Handout</p></div>
	</div>					
				
				<p style="clear:left">The toolkit has materials for 50 participants. Materials include:</p>
					<ul>
						<li><strong>Idea guide:</strong> Step-by-step information on how to use the toolkit resources</li>
						<li><strong>Poster:</strong> High impact, colorful visual to display at the event as a reminder on what it means to be there for others (Two posters - 24 inches by 36 inches) <a href="/bullying/yourenotalone/images/YNAPoster-example.jpg" target="_blank">See an example</a></li>
						<li><strong>Buttons:</strong> Participant take-away item with the campaign message and call to action (50 round buttons that are 3 inches in diameter.) <a href="/bullying/yourenotalone/images/YNAsticker-example.png" target="_blank">See an example</a></li>
						<li><strong>Shoelaces:</strong> Participant take-away item which sends a message that by wearing orange, they are supportive of the cause (50 pairs of orange shoelaces.)</li>
						<li><strong>Pledge:</strong> A fill-in-the-blank form in which participants can add their name to show their support. (One form that can be duplicated.) <a href="/bullying/yourenotalone/images/Pledge-example.jpg" target="_blank">See an example</a></li>
						<li><strong>Handouts:</strong> Informational four-page booklets with information for adults, community members, and kids and teens on ways to &quot;be there.&quot;
(Set of three handouts with 50 copies of each, total of 150 handouts.)							
	<ul>
							<li>Note: A powerpoint presentation of the handout content can be downloaded and displayed electronically at no cost. </li>
							<li style="list-style-type: none;"><img src="/images/pdficon_small.gif" width="15" height="15" alt="" /> <a href="/bullying/yourenotalone/pdf/As A Kid or Teen.pdf" target="_blank">Ways to Be There: As a Kid or Teen </a></li>
							<li style="list-style-type: none;"><img src="/images/pdficon_small.gif" width="15" height="15" alt="" /> <a href="/bullying/yourenotalone/pdf/As an Adult.pdf" target="_blank">Ways to Be There: As a Adult </a></li>
							<li style="list-style-type: none;"><img src="/images/pdficon_small.gif" width="15" height="15" alt="" /> <a href="/bullying/yourenotalone/pdf/As A Community.pdf" target="_blank">Ways to Be There: As a Community </a></li>
							</ul>
						</li>
					</ul>
				<p><strong>Additional resource – included at no charge</strong></p>
				<ul>
				<li style="clear:left"><strong>Flyers:</strong> Colorful, informative 8 ½ x 11 (2-sided) flyer that outlines the creative resources, outreach activities, and opportunities available from PACER’s National Bullying Prevention Center. (50 flyers) <a href="http://www.pacer.org/bullying/pdf/NBPC-flyer.pdf" target="_blank">See an example</a></li>
				</ul>
				<ul>
				<li style="clear:left"><strong>Bookmarks:</strong> A creative way to encourage elementary school students to “Be A Kid Against Bullying” and middle and high school students to “Be a Champion Against Bullying”. (100 bookmarks of each of the two versions) <a href="http://www.pacer.org/bullying/resources/bookmarks.asp" target="_blank">See an example</a></li>
				</ul>
				<p><strong>Additional resource – available at a separate charge</strong></p>
				<ul>

							
<li style="clear:left"><strong>Banner:</strong> For display at the event. Made of vinyl; 6 feet long by 3 feet high with grommets in all corners. Printed with the campaign message and call to action, &quot;You're Not Alone, We're Here for You&quot; and &quot;Together Against Bullying.&quot; Banners can be ordered and paid for directly through BIG PRINT, Inc. To order, email <a href="mailto:tim@bigprintinc.com">tim@bigprintinc.com</a>. Banners are $90, plus shipping and handling, and must be paid at time of order.</li>
</ul>
						<div class="toolkit-materials" style="margin-top:30px;"> 
       						<div class="toolkit-thumb" style="float:none; margin:0 100px;"><a class="group1" href="/bullying/yourenotalone/images/YNA-banner.jpg" title="You're Not Alone Poster"><img src="/bullying/yourenotalone/images/YNA-banner-thumb.jpg" width="400" height="200" alt="" /></a><p style="width:425px">Banner</p>
							</div>
						</div>

				
			</div>
		</div>
		<div class="contentrow row-whitepurple">
			<div class="singlecolumn">
            
                <table style="margin:10px auto;">
                <tr><td>
				<h3 style="text-align:center">Event Toolkit Order Information</h3>
				<ul>
					<li>$75 charge <strong>per kit,</strong> includes standard shipping &amp; handling</li>
					<li>Please allow two weeks from date of order for delivery</li>
					<li>Place your order through the PayPal Order Form below</li>
					<li>All orders are final, no refunds</li>
					<li>Toolkits can be shipped only to U.S. addresses</li>
					</ul>
                </td>
                <td><!--Product Image--></td>
                </tr></table>
<hr />
<form name="orderform" id="orderform" action="" method="post" onsubmit="return ValidateAndSubmit()" target="_blank">
  	<input type="hidden" name="cmd" value="_xclick" />
  	
    <input type="hidden" name="cpp_payflow_color" value="f15c32" />
  	<input type="hidden" name="cpp_logo_image" value="https://d41dbb9e14dc223b71c7-c87d6988475aa6717b3fcf892bd5435d.ssl.cf1.rackcdn.com/Images/NBPC-Logo_paypal.png" />
   

    <input type="hidden" name="currency_code" value="USD" />
    <input type="hidden" name="amount" value="75.00" />
    <input type="hidden" name="return" value="http://www.pacer.org/bullying/yourenotalone/event-toolkit-confirmation.asp" />
    
    <input type="hidden" name="item_name" id="item_name" value="You're Not Alone - Event Toolkit" />
    <input type="hidden" name="quantity" id="quantity" value="0" />
	<input type="hidden" name="shipping" id="shipping" value="0.00" />
    <input type="hidden" name="business" id="business" value="" />
    <input type="hidden" name="tax" id="tax" value="0.00" />
<h3>
  Event Toolkit Order Form</h3>

<h3 style="display:inline">
<label for="fQuantity"># of kits: </label></h3><input style="margin-right:20px;" name="fQuantity" id="fQuantity" type="text" value="1" size="10" maxlength="3" tabindex="10" /> 
<p style="margin-top:10px;"><label for="fZipcode">Please enter your Zip Code: </label><input type="text" id="fZipcode" name="fZipcode" size="8" maxlength="5" /></p>
<p>
<script type="text/javascript">
//<![CDATA[
document.writeln('<input type="image" src="/images/orderonline.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!" tabindex="20" />');
//]]>

</script>
</p>
<noscript><h3>Javascript is required to create an online order</h3><p>- please turn on javascript and refresh this page</p></noscript>
<div id="orderQuestions">Questions? email <a href="mailto:bullying411@pacer.org">bullying411@pacer.org</a></div>
</form>
            </div>
		</div>
		
		<!-- end .content --> 
		<br class="clearfloat" />
	</div>
	
	<!--#include virtual="/bullying/yourenotalone/footer.html"--> 
	<!-- end .container --></div>
</body>
</html>
