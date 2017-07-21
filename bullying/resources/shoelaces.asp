<%
Dim soldOut
	soldOut = true
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Orange Shoelaces Order Form - National Bullying Prevention Center</title>
<!-- for Facebook -- images 600x315/1200x630 -->             
<meta property="og:title" content="Orange Shoelaces Order Form" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/bullying/resources/images/shoelace-fb.jpg" />
<meta property="og:url" content="http://www.pacer.org/bullying/resources/shoelaces.asp" />
<meta property="og:description" content="Want an inexpensive, creative way to wear orange? These a one-size-fits-all, orange shoelaces are a cost effective way for students to show their support of bullying prevention on Unity Day or throughout the year!" />
<meta name="description" content="Want an inexpensive, creative way to wear orange? These a one-size-fits-all, orange shoelaces are a cost effective way for students to show their support of bullying prevention on Unity Day or throughout the year!"  />




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
		   document.getElementById("fQuantity").value = "1";
		   UpdateSH();
      });
</script>



<!--#include virtual="/bullying/dynamic-head-items.html"-->

<script type="text/javascript">
var formEmail = 'pxaxyxpxaxlx@xpxaxcxexrx.xoxrxgx';

function ValidateAndSubmit() {
	returnValue = true;
	//document.getElementById("load").className = "loading";
	document.getElementById("quantity").value = document.getElementById("fQuantity").value;
	document.getElementById("business").value = formEmail.replace(/x/gi, "");
	document.forms["shoelaceform"].action = 'https://www.paypal.com/cgi-bin/webscr';
	
	
	if (!isNormalInteger(document.getElementById("fQuantity").value)) {
		if (document.getElementById("fQuantity").value == 0) {
			alert('You must enter a quantity');
		} else {
			alert('You must enter a valid quantity');
		}
		returnValue =  false;	
	}
	if (Number(document.getElementById("fQuantity").value) > 10) {
			alert('Maximum of 10 packages per customer.');
			document.getElementById("fQuantity").value = 10;
			UpdateSH();
		returnValue =  false;	
	}
	return returnValue
	//return false
}
function isNormalInteger(str) {
    var n = ~~Number(str);
    return String(n) === str && n > 0;
}
function UpdateSH() {
	var fValue = document.getElementById("fQuantity").value;
	if (isNormalInteger(fValue) && fValue <= 10) {
		var shCost = 20 + ((Math.max(1,fValue) - 1) * 5);
		$('#sh-cost').html('$' + shCost + '.00');
		$('#shipping').val(shCost);
	} else {
		$('#sh-cost').html('Not a Valid Quantity');
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
#shoelaceform {
	width:400px;
	margin:20px auto;
	font-size:.9em;
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
.topSection {
	width:795px;
	margin:10px auto;
	font-size:.8em;
	font-style:italic;
	color:666;
}
.topSection img {
	margin:0px 10px;
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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/resources/">Resources</a> /</div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/resources/nav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="shoelaces";
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
  
  <div id="sharing_wrapper">
		  <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>
 				<div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>
		</div>
    <h1 id="maincontent" style="font-size:24px;">Orange Shoelaces</h1>
    <p>Want an inexpensive, creative  way to wear orange? These one-size-fits-all, orange shoelaces are a cost  effective way for students to show their support of bullying prevention on <a href="/bullying/nbpm/unity-day.asp">Unity Day</a> or  throughout the year! </p>
<div class="topSection">
  <p>Ideas for creatively displaying the laces. Laces will be shipped in a plastic bag with 50 pairs in each bag. &mdash; Click to Enlarge</p>
<a class="group1" href="/bullying/resources/images/shoelace5.jpg"><img src="/bullying/resources/images/shoelace5-thumb.jpg" alt="Shoelace Display 1" height="133" title="Laced Up and Ready to Go"  /></a>
<a class="group1" href="/bullying/resources/images/shoelace1.jpg"><img src="/bullying/resources/images/shoelace1-thumb.jpg" alt="Shoelace Display 2" width="179" height="133" title="Wrap a Custom Card"  /></a>
<a class="group1" href="/bullying/resources/images/shoelace3.jpg"><img src="/bullying/resources/images/shoelace3-thumb.jpg" alt="Shoelace Display 3" height="133" title="Use a Free Teens or Kids Bookmark"  /></a>
<a class="group1" href="/bullying/resources/images/shoelace4.jpg"><img src="/bullying/resources/images/shoelace4-thumb.jpg" alt="Shoelace Display 4" height="133" title="Create a custom display card"  /></a>
</div>

<h1 class="centered">Sold Out for 2016</h1>
<p>Check out our <a href="/bullying/resources/posters.asp">Unity Day Posters</a> &amp; <a href="/bullying/resources/bookmarks.asp">Bookmarks</a> too!</p>

<%If Not soldOut Then%>

<h2 class="hr">Shoelace Order Information <span style="color:#666; font-size:15px; text-shadow:none">- (Free + Shipping &amp; Handling)</span></h2>
<a class="group1" href="/bullying/resources/images/shoelace-package.jpg"><img style="margin-right:30px;" src="/bullying/resources/images/shoelace-package-thumb.jpg" alt="Shoelace Package" class="fltrt" title="Shoelace Package" /></a>

<p><strong>Pricing</strong></p>
    <ul>
      <li>Free <br />
      <li> $20 Shipping &amp; Handling <span style="font-size:.8em;">
      <br />( add $5 shipping and handling for each additional package after the 1<sup>st</sup>)</span></li>
    </ul>
    <p><strong>Details</strong></p>
    <ul>
      <li>Laces are orange in color</li>
      <li>Each package contains 50 pairs (100 laces total)</li>
      <li>Maximum  of 10 packages (500 pairs).</li>
    </ul>
    <p><strong>To order:</strong></p>
    <ul>
      <li><strong>Can be shipped only to U.S. addresses</strong></li>
      <li>Please allow two weeks from date of order for delivery</li>
      <li>Place your order through PayPal below</li>
      <li>All orders are final, no refunds</li>
    </ul>
  <hr />


<form name="shoelaceform" id="shoelaceform" action="" method="post" onsubmit="return ValidateAndSubmit()" target="_blank">
    <input type="hidden" name="cmd" value="_xclick">
      
    <input type="hidden" name="cpp_payflow_color" value="f15c32">
    <input type="hidden" name="cpp_logo_image" value="https://d41dbb9e14dc223b71c7-c87d6988475aa6717b3fcf892bd5435d.ssl.cf1.rackcdn.com/Images/NBPC-Logo_paypal.png">
    
    <input type="hidden" name="currency_code" value="USD">
    <input type="hidden" name="amount" value="0.01">
    <input type="hidden" name="return" value="http://www.pacer.org/bullying/resources/shoelace-confirmation.asp">
    
    <input type="hidden" name="item_name" id="item_name" value="50 Pack of Orange Shoelaces">
    <input type="hidden" name="quantity" id="quantity" value="1">
    <input type="hidden" name="shipping" id="shipping" value="15.00">
    <input type="hidden" name="business" id="business" value="">
    <input type="hidden" name="tax" id="tax" value="0.00" />


    <h2>Order Form</h2>
      
    <h3 style="display:inline">
      <label for="fQuantity"># of Packages (50 pair): </label></h3><input onblur="UpdateSH()" onkeyup="UpdateSH()" name="fQuantity" id="fQuantity" type="text" value="1" size="10" maxlength="3" tabindex="30" />
      <div id="shipinginfo" style="margin-left:15px;">
        Shipping and Handling charge: <span id="sh-cost" style="font-weight:bold">$15.00</span>
      </div>
        <div id="payButton" style="padding-top:30px; margin-left:15px;">
            <script type="text/javascript">
                document.writeln('<input type="image" src="/images/orderonline.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!" tabindex="100" />');
            </script><noscript><h3>Javascript is required to create an online order</h3><p>- please turn on javascript and refresh this page</p></noscript>
        </div>
<div id="load" class="loadinghidden">Loading ... </div>
<p>&nbsp;</p>
<img alt="" border="0" src="https://www.paypalobjects.com/WEBSCR-640-20110429-1/en_US/i/scr/pixel.gif" width="1" height="1">

              <em>* - paypal does not allow $0.00 items so a $0.01 charge is applied for each package.</em></li>
		<br />

</form>
<%End If%>

    <br class="clearfloat" />
    
  <!-- end .content --></div>

  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
