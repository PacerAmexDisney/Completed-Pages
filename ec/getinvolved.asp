<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Early Childhood - Project Overview</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavigation.css" media="screen, projection" />
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

<div class="stayinformed" style="margin-top: 0;">
<h2>Related PACER Projects</h2>
<a href="/puppets/count.asp">Count Me In</a><br />
<a href="/stc/kite/">Project KITE</a>
</div>
<p class="volunteer" style="text-align: center; margin-top: .5em;">
<a href="/publications/earlyChildhood.asp">Families are Important: An Early Childhood Curriculum</a><br />
The family's role in early childhood.<br />
<a href="/publications/earlyChildhood.asp">
<img src="/publications/images/pubimages/famimportant.jpg" width="100" height="100" style="padding: .5em;" alt="Publication cover: Families are Important: An Early Childhood Curriculum" /></a>
</p>

<div class="stayinformed" style="margin-top:40px;">

<h2>NEW! - Early Childhood text alerts available</h2>
<p>People can sign up to  receive free updates via text message! This new PACER service provides families  &nbsp;and others with specific information  from PACER programs including notice of upcoming workshops, reminders, short  tips and ideas, and new PACER resources. Your plan&rsquo;s text messaging rates will  apply.<a href="/ec/updates-via-text-message.asp"> Read More &gt;&gt;&gt;</a>

</div>


</div>

<div id="topbar">
<div id="breadcrumb">

	<a href="/" title="PACER's home page">Home</a> / <a href="/pandr/" title="PACER's programs and resources">Programs &amp; Resources</a> / 
	
	<h1>Early Childhood Family Information and Resources Project </h1>
	
</div>
</div>

<div id="leftbar">
<!--#include virtual="/ec/leftNav.htm" -->
</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="overview";
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

<!--BEGIN CONTENT-->

<h2 class="nounderline">Get involved</h2>

<p>There are many  ways that parents can be involved in the special education process. First as an  advocate for their own child&nbsp; and then perhaps later a parent may choose  to take on a leadership role in their local school district, at the regional &nbsp;level  or at the state level. Find out how to be involved in these types of leadership positions or ways in  which to have your voice heard at the local, regional or state level.</p>

<p>
	<!--END CONTENT-->
</p>
<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

</div>

</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>