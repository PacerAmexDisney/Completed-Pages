<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Collaborating with the Community</title>
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
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Minnesota Parent Center</a> / <a href="parentinvolvement.asp">Parental Involvement Resources</a> / Collaborating with the Community
	
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
<a href="studentlearning.asp">Enhancing Student Learning</a> | 
<a href="decisionadvocacy.asp">Supporting Decision-making and Advocacy</a> | Collaborating with the Community
</p>

<h2 class="nounderline"><a name="maincontentlink">Collaborating with the Community</a></h2>


<!--BEGIN CONTENT-->

<p>
Schools are often overwhelmed by pressure to improve achievement for a diverse population of students, and may not actively pursue partnerships with other community organizations.  The school can take the initiative by opening its doors to the existing community network of services and encouraging full participation from families in the planning and implementation of cooperative efforts.  Schools that do not have a mechanism for helping students connect with needed services may send a message that the school is not concerned with families.  Family survival issues cannot be ignored by the school if partnerships with the community are to be effective.  Schools that are knowledgeable about resources in the community and committed to helping connect families to those resources have a stronger foundation for building relationships that lead to greater academic achievement for students.  
</p>
<h3>Resources</h3>

<h4>Links:</h4>
<ul class="mpcresources">
	<li><a href="http://www.ptotoday.com/sfn/SFN_homepage_leader.html">Free Planning Kits for Family Nights from PTO Today</a></li>
	<li><a href="http://www.csos.jhu.edu/p2000/index.htm">National Network of Partnership Schools</a></li>
	<li><a href="http://www.communityschools.org/index.php">Toolkit and Resources from Coalition for Community Schools</a></li>
</ul>

<p style="padding-top: 1em;">
<a href="parentinvolvement.asp">&lt; Back to Parental Involvement</a>
</p>
<div id="pageextender" style="clear:both">&nbsp;</div>
<p style="padding-top: 1em;">&nbsp;</p>

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