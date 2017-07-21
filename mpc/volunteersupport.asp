<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Developing Volunteer Support</title>
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
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Minnesota Parent Center</a> / <a href="parentinvolvement.asp">Parental Involvement Resources</a> / Developing Volunteer Support
	
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
</script><div id="pagecontentright">

<p class="mpcresourcesnav">
<a href="familyschoolcomm.asp">Improving Family-School Communication</a> | 
<a href="familystrengths.asp">Building on Family Strengths</a> | Developing Volunteer Support | 
<a href="studentlearning.asp">Enhancing Student Learning</a> | 
<a href="decisionadvocacy.asp">Supporting Decision-making and Advocacy</a> | 
<a href="communitycollaboration.asp">Collaborating with the Community</a>
</p>

<h2 class="nounderline"><a name="maincontent">Developing Volunteer Support</a></h2>


<!--BEGIN CONTENT-->

<p>
The contributions volunteers can make to the learning experiences and academic achievement of children are endless.  All family and community members have special knowledge and skills that can be shared with young people.  A strong volunteer program offers the chance for community members to become familiar with the school while providing meaningful support to children and staff.
</p>
<h3>Resources</h3>

<h4>Links:</h4>
<ul class="mpcresources">
	<li><a href="http://www.artsmia.org/index.php?section_id=117">Art Adventure Program at Minneapolis Institute of Arts</a></li>
	<li>
	<a href="http://www.themlc.org/ABCsofReading">Free Training for Reading Tutors from Minnesota Literacy Council</a></li>
</ul>

<p style="padding-top: 1em;">
<a href="parentinvolvement.asp">&lt; Back to Parental Involvement</a>
</p>
<div id="pageextender" style="clear:both">&nbsp;</div>
<div class="MPCfooter" style="font-size: 75%;">
<em>This publication was produced in whole or in part with funds from the U.S. Department of Education, Office of Innovation and Improvement, Parental Information and Resource Center program, under Grant #84.310A.  The content herein does not necessarily reflect the views of the Department of Education, any other agency of the U.S. government, or any other source.</em>
</div>




</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>