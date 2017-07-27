<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Supporting Decision-making and Advocacy</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/leftnavnoright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

<script type="text/javascript" src="../css/menu.js"></script>
</head>

<body>
<div id="skiptocontent">
<a href="#maincontentlink">Skip to main content</a>
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
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Minnesota Parent Center</a> / <a href="parentinvolvement.asp">Parental Involvement Resources</a> / Supporting Decision-making and Advocacy
	
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
<a href="familyschoolcomm.asp">Improving Family-School Communication</a> | 
<a href="familystrengths.asp">Building on Family Strengths</a> | 
<a href="volunteersupport.asp">Developing Volunteer Support</a> | 
<a href="studentlearning.asp">Enhancing Student Learning</a> | Supporting Decision-making and Advocacy | 
<a href="communitycollaboration.asp">Collaborating with the Community</a>
</p>

<h2 class="nounderline"><a name="maincontentlink">Supporting Decision-making and Advocacy</a></h2>


<!--BEGIN CONTENT-->

<p>
Parents may be involved in school policy-making because of federal or state mandate, such as on Title I teams, and they may be involved in a variety of local activities that are specific to each school, such as site councils and parent advisory councils.  Parents may be involved in school policy at the school level, in district-wide activities, at the Minnesota legislature, or with federal education policy.   Parents have unique insights into children&#8217;s needs and definite ideas about the directions education should take.  Because schools exist as a service to parents and families, parents have the right to be represented in policy-making decisions, and are often willing to contribute their time, energy, and talents.
</p>
<h3>Resources</h3>

<h4>Links:</h4>
<ul>
	<li><a href="http://www.cyfc.umn.edu/welcome.html">Children youth and Family Consortium at University of Minnesota</a></li>
	<li><a href="http://www.parentsunited.org/Events.html">Events about education issues from Parents United for Public Schools</a></li>
	<li><a href="http://education.state.mn.us/MDE/Accountability_Programs/No_Child_Left_Behind_Programs/Parent_Involvement/index.html">Parent Involvement at Minnesota Department of Education</a></li>
</ul>

<p style="padding-top: 1em;">
<a href="parentinvolvement.asp">&lt; Back to Parental Involvement</a>
</p>

<p style="padding-top: 1em;">&nbsp;</p>

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