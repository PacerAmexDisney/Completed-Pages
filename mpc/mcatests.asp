<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Minnesota Parent Center: MCA Statewide Tests</title>
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

<div id="maincontent">

<div id="pagetoporange">
	<div class="printemail">
		<p>
		<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>
		
		</p>
	</div>
	<div id="breadcrumb">
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Minnesota Parent Center</a> / MCA Statewide Tests
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
	var currId="mpc_mcatest";
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
<div id="pagecontentright">

<h2 class="nounderline">MCA Statewide Tests</h2>


<!--BEGIN CONTENT-->

<p>
The Minnesota Comprehensive Assessments (MCAs) are the state tests that help districts measure student progress toward Minnesota's academic standards. These tests are requirements of No Child Left Behind (NCLB). Reading and mathematics tests are given in grades 3-8, 10 and 11. Science tests are given in grades 5 and 8 and once in high school, depending on when students complete classes in life sciences.
</p>

<ul style="margin-top:0;padding-top:0;">
	<li class="pdficonlist"><a href="pdf/mca/A_Parents_Guide.pdf">A Parents&#8217; Guide to School Testing: What you need to know</a></li>
	<li class="pdficonlist"><a href="pdf/mca/MCA_Parent_Brochure.pdf">MCA Parent Brochure</a></li>
	<li class="pdficonlist"><a href="pdf/mca/MCA_Test_Prep_Suggestions.pdf">MCA Test Preparation Suggestions</a></li>
</ul>
<h4>
  Learn more about MCAs and children with disabilities
</h4>
<ul style="margin-top:0;padding-top:0;">
	<li class="pdficonlist"><a href="pdf/mca/What_Parents_Need_to_Know.pdf">What Parents Need to Know about Accommodations for Statewide Assessments</a></li>
	<li class="pdficonlist"><a href="pdf/mca/AlternateAssessments.pdf">Alternate Assessments</a></li>
</ul>
<div class="MPCfooter">
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