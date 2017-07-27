<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/parent/"
%>








<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>What's New</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/leftnavigation.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

<script type="text/javascript" src="../css/menu.js"></script>
<script type="text/javascript">
<!--
function wopen(url, name, w, h)
{
// Fudge factors for window decoration space.
 // In my tests these work well on all platforms & browsers.
w += 32;
h += 96;
 var win = window.open(url,
  name, 
  'width=' + w + ', height=' + h + ', ' +
  'location=no, menubar=no, ' +
  'status=no, toolbar=no, scrollbars=no, resizable=no');
 win.resizeTo(w, h);
 win.focus();
}
// -->
</script> 

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
Champions for Children with Disabilities</p>
<p class="pacerinfo3"><a href="http://www.pacer.org/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a>
</p>
<div class="stayinformed">
<h2>Stay Informed</h2>
Receive the latest PACER Center information on issues important to you. 
<a href="../forms/index.asp">Sign up now</a>.
</div>
<div class="stayinformed">
<p style="text-align: center;">
<img src="../images/motherson.jpg" alt="mom holding her son" width="133" height="200" />
</p>
<h2 style="margin-bottom: 0; padding-bottom: 0;">Collaborative Projects</h2>
<p>PACER Center  worked collaboratively with several school districts on parent training  projects under grants through the Minnesota Department of Education. The  districts were District 196 (Rosemount, Apple Valley, Eagan), Bloomington, and  Burnsville. For more information or to receive a copy of lessons learned from  these projects, please contact Jody Manning at PACER Center, 952-838-9000 or  1-800-537-2237.</p>
<p style="padding-bottom: 0;">&nbsp;</p>
</div>
</div>

<div id="topbar">
<div id="breadcrumb">

	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="/parent/">Parent Special Education Information</a> / What's New
	
	<h1>Parent Special Education Information</h1>
<p style="font-size:90%;padding:0;margin:0;">PACER is the Minnesota Parent Training and Information Center, funded by the U.S. Department of Education's Office of Special Education Programs.</p>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">Parents Helping Parents Navigation Menu</h2>
<!--#include virtual="/parent/leftNav.html" -->
</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="parent_news";
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

<h2 class="nounderline">News</h2>


<!--BEGIN CONTENT-->


<h3>New Resources</h3>
<p><a href="http://www.pacer.org/parent/top10-parent-concerns.asp" target="_blank">Top Ten Topics: Parents' Concerns and Matching Resources</a><br />
The statement that “knowledge is power” is especially true for parents who want to be effective advocates for their children with disabilities. To make sure parents have the information they need most, PACER conducted a survey, and nearly a thousand people responded. Given a list of choices, parents of children from each age group indicated their top three concerns. This PACER ACTion Sheet provides a selection of helpful information to address each topic from a variety of national and statewide organizations. As Albert Einstein said, “Know where to find the information and how to use it — that's the secret of success.” 
<p><a href="http://www.pacer.org/parent/php/php-c198.pdf">Top 10 Tips: Ideas to Improve Parent-to- Professional Communication</a></p>
<h3>Upcoming PACER Workshops</h3>
<p><a href="/workshops/" >See a list of upcoming PACER workshops here</a>.</p>

<h3>Information and Resources on Minnesota Statewide Assessment</h3>
<p><a href="/statewideassessment/">PACER Statewide Assessment Project</a></p>
<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>