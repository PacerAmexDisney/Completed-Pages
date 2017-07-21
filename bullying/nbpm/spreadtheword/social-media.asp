<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center -  Social Media Sites</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--><script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.6.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
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


<div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/nbpm/">National Bullying Prevention Month</a> / <a href="/bullying/nbpm/spreadtheword/">Spread the Word</a></div>
  <div class="sidebar1">
    <!--#include virtual="/bullying/nbpm/nav.html"--> 
    <!-- end .sidebar1 --></div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="promo-socialmedia";
	var showTree = "promo-sub";
	//var currSubId="promo-overview";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "active";
	}
	if (document.getElementById(currSubId)){
		document.getElementById(currSubId).className = "active";
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

  <div class="content">
    <h1 id="maincontent" style="font-size:1.7em">National Bullying Prevention Center Social Media Sites</h1>
<p>Share information through your social network channels. It&rsquo;s free, easy, and a great way to influence change! Copy and paste the text below or modify it to fit your style. Follow our Facebook pages and pass along our PSA's to stay involved.</p>
<h2 class="hr">Facebook Sites</h2>


<p><a href="https://www.facebook.com/pages/PACERs-National-Bullying-Prevention-Center-NBPC/" target="_blank">PACER's National Bullying Prevention Center (NBPC) FB</a></p>
<p><a href="https://www.facebook.com/PACERsNationalBullyingPreventionMonth" target="_blank">National Bullying Prevention Month FB</a></p>
<p><a href="https://www.facebook.com/PACERTab" target="_blank">PACER Teens Against Bullying FB</a></p>
<h2 class="hr">YouTube</h2>
<p><a href="http://www.youtube.com/user/pacercenter" target="_blank">PACER'S Organization wide YouTube Channel</a></p>
<h2 class="hr">Twitter Site</h2>
<p><a href="http://twitter.com/#!/PACERTab" target="_blank">PACER Teens Against Bullying @PACERTAB</a></p>
<h2 class="hr">National Bullying Prevention Center PSA's</h2>
<table cellspacing="10" align="center" style="text-align:center">
<tr><td>2010 NBPC PSA</td><td>2010 Demi Lovato PSA</td><td>2009 Demi Lovato PSA</td></tr>
<tr>
<td><a href="/bullying/video/player.asp?video=32"><img src="/bullying/video/images/nbpc-2010-psa.jpg" width="200" height="200" alt="National Bulling Prevention PSA 2010" /><br />View this Video</a></td>
<td><a href="/bullying/video/player.asp?video=8"><img src="/bullying/video/images/demi-2010-psa.jpg" width="200" height="200" alt="Demi Lovato PSA from 2010" /><br />View This Video</a></td>
<td><a href="/bullying/video/player.asp?video=7"><img src="/bullying/video/images/demi-2009-psa.jpg" width="200" height="200" alt="Demi Lovato PSA 2009" /><br />View This Video</a></td>
</tr>
</table>




<br class="clearfloat" />

  <!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
