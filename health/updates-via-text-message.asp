<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Health Information Center Text Updates - PACER Center</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavigation.css" />
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
<a href="../"><img src="../images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
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
<p class="stayinformed">
<em>As a parent of a child with a chronic illness, information is essential because it provides me with education I need to make decisions for my child's care. Access to this information is vital because it helps me navigate the health care system and achieve the best care possible for my child.</em><br /><br />
- Carolyn G.
</p>
</div>

<div id="topbar">
<div id="breadcrumb"><a href="/">Home</a> / <a href="/pandr/p">Programs </a> / <a href="/health/"> Health Information Center</a> / 
	
	<h1> Health Information Center</h1>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">Health Navigation Menu</h2>
<!--#include virtual="/health/leftNav.htm" -->
</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="text";
	var currSubId="none";
	// any Subtree that I want to Display
	var showTree = "none";
	
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
	if (document.getElementById(currSubId)){
		document.getElementById(currSubId).className = "page";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "treemenu") {
			//Any additional subTrees that you want to skip should be added here. like this (subTrees[i] != subTree1 || subTrees[i] != subTree2)
			if (subTrees[i].id != showTree) {
				subTrees[i].className = "treemenuhidden";
			}
		}
	}
</script>
<div id="maincontent">

<div id="pagecontent">

<h2 class="nounderline">Health Updates Via Text Message</h2>

<img class="fltrt" src="/health/images/cellphone-nextto-laptop-263w.jpg" width="263" height="176" alt="" />
<!--BEGIN CONTENT-->
<p>  People can sign up to  receive updates via text message! This new PACER service provides families  &nbsp;and others with specific information  from PACER programs including notice of upcoming workshops, reminders, short  tips and ideas, and new PACER resources. Your plan&rsquo;s text messaging rates will  apply. </p>
<p>&nbsp;</p>
<p><strong>For updates from PACER&rsquo;s  Health Information Center:</strong></p>
<h1> text &ldquo;Health&rdquo; to 51555
</h1>

	<p style="margin-top: 50px; font-size: .8em;">By subscribing you agree to the <a target="_blank" href="https://www.mobilecause.com/constituent-terms-new">terms and conditions</a> for <a target="_blank" href="https://www.mobilecause.com">messaging and mobile giving</a>.              Text help for <strong>HELP</strong> or <strong>STOP</strong> to cancel to 51555. Standard message and data rates may apply. </p>
<%
'<div style="width: 350px; margin: auto; margin-top: 50px;">

'<a href="//www.mobilecause.com/feature/subscription-widget" id="powered-by-mobilecause">Mobile messaging powered by Mobilecause</a><script>!function(d,s){var s=d.createElement("script"),h=(document.head||d.getElementsByTagName('head')[0]);s.src="https://app.mobilecause.com/public/messaging_widgets/civoeo/source";h.appendChild(s);}(document);</script>
'	</div>


'<p>You can also subscribe to this service here:</p>
'<div style="border:1px solid #999; background:#D2D2D2; width:350px; min-height:100px; margin-bottom:20px;">
'<script language="javascript" src="http://client.mobilecause.com/lists/5996/subscriptions/web.js?height=300&amp;width=300" type="text/javascript"></script>
'</div>
%>
<!--END CONTENT-->
<div id="pageextender" style="clear:both">&nbsp;</div>
</div>
</div>
</div>
<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>