<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Building on Family Strengths</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/leftnavnoright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

<script type="text/javascript" src="../css/menu.js"></script>
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
<a href="/mpc/"><img border="0" src="piweek/PIRClogowebheader.gif" width="473" height="104" alt="Minnesota Parent Center, MN PIRC, MN Parental Information and Resource Center, a project of PACER" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<!--<div id="rightBar">
<div class="stayinformed" style="margin-top: 0;">
<h2>MPC Translations</h2>
<a href="handouts.asp#hmong">Hmoob</a> and <a href="handouts.asp#spanish">Español</a>
</div>
</div>-->

<div id="maincontent">

	<div id="pagetoporange">
	<div id="breadcrumb">
	<div class="printemail">
		<p>
		<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>
		
		</p>
	</div>
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Minnesota Parent Center</a> / <a href="parentinvolvement.asp">Parental Involvement Resources</a> / Building on Family Strengths
	
	<h1>Minnesota Parent Center</h1>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">MPC Navigation Menu</h2>
<!--#include virtual="/mpc/leftNavBar.html" -->
</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="mpc_piResources";
	var currSubId="none";
	// any Subtree that I want to Display
	var showTree = "piResources-sub";
	
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
</script><div id="pagecontentright">

<p class="mpcresourcesnav">
<a href="familyschoolcomm.asp">Improving Family-School Communication</a> | Building on Family Strengths | 
<a href="volunteersupport.asp">Developing Volunteer Support</a> | 
<a href="studentlearning.asp">Enhancing Student Learning</a> | 
<a href="decisionadvocacy.asp">Supporting Decision-making and Advocacy</a> | 
<a href="communitycollaboration.asp">Collaborating with the Community</a>
</p>

<h2 class="nounderline"><a name="maincontent">Building on Family Strengths</a></h2>


<!--BEGIN CONTENT-->

<p>
Students, schools, and parents all benefit from strong families with home environments that support children&#8217;s growth and learning.  It is important for schools to recognize that those environments will not all look the same, and that there is not a &#8220;right&#8221; way to parent.  The school can play an important role in providing parents access to information about methods and strategies for becoming more effective parents.
</p>
<h3>Resources</h3>
<h4><img border="0" src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" />&nbsp;Handouts:</h4>

<ul>
	<li><a href="pdf/MPC30.pdf">Disciplining Young Children</a> (MPC-30)</li>
	<li><a href="pdf/MPC46.pdf">How to Have a Better Relationship with your Teen</a> (MPC-46)</li>
	<li><a href="pdf/MPC16.pdf">Trouble at School</a> (MPC-16)</li>
</ul>

<h4>Links:</h4>
<ul class="mpcresources">
	<li><a href="http://www.family.samhsa.gov/">Family Guide from US Department of Health and Human Services</a></li>
	<li><a href="http://www.extension.umn.edu/info-u/">Info-U at University of 
	Minnesota Extension</a></li>
	<li>
	<a href="http://access.minnesota.publicradio.org/features/9710_family/index.shtml">Minnesota Family Strength Project at Minnesota Public Radio</a></li>
	<li><a href="http://www.parentsknow.state.mn.us/">Minnesota Parents Know 
	from MN Department of Education</a></li>
	<li><a href="http://mvparents.com/">MVParents from Search Institute</a></li>
</ul>

<p style="padding-top: 1em;">
<a href="parentinvolvement.asp">&lt; Back to Parental Involvement</a>
</p>

<div class="MPCfooter" style="font-size: 75%;">
<em>This publication was produced in whole or in part with funds from the U.S. Department of Education, Office of Innovation and Improvement, Parental Information and Resource Center program, under Grant #84.310A.  The content herein does not necessarily reflect the views of the Department of Education, any other agency of the U.S. government, or any other source.</em>
</div>

<div id="pageextender" style="clear:both">&nbsp;</div>


</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>