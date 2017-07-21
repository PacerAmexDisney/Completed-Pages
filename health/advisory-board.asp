<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Parent-to-Parent Family-to-Family Health Information Center</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/leftnavigation.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />
<script language="javascript" type="text/javascript">
<!--
function popUpMedia(url) {
	newwindow=window.open(url,'Audio Track','height=150,width=500');
	wleft = (screen.width - 500) / 2;
	htop = (screen.height - 150) / 2;
	newwindow.moveTo(wleft,htop);
	if (window.focus) {newwindow.focus()}
	return false;
}

// -->
</script>

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
<a href="../"><img src="../images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="rightBar"><img src="images/eye-doctor.jpg" width="250" height="250" alt="" />
<br /><br />
</div>



</div>

<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / 
	
	<h1>Health Information Center</h1>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">Health Navigation Menu</h2>
<!--#include virtual="/health/leftNav.htm" -->
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

<h2 class="nounderline">PACER Center&rsquo;s Dental and Medical Advisory Board Members</h2>
<ul class="nobullet" style="font-weight:bold; font-size:1.2em">
      <li>Andy Barnes, MD</li>
      <li>Kendra J. Bjoraker, PhD, LP</li>
      <li>Barb Dalbec, RN, PHN</li>
      <li>Karl Eckberg, MD</li>
	  <li>Barry Garfinkel, MD</li>
	  <li>Linda Goldman Cherwitz, MD, PACER Center, Health Advocate</li>
	  <li>Paula Goldberg, PACER Center, Executive Director</li>
	  <li>Mark Greenwood, DDS</li>
      <li>Nathan Herr, MD</li>
      <li>Maggie Kappelman, MD</li>
      <li>Mary Kautto, MA, BSN, RN</li>
      <li>Pat Lang, PACER Center, Program Coordinator Health Information Center </li>
      <li>Barb Lundeen, RN, PHN, MA</li>
      <li>Wendy Ringer, PACER Center, Health Information Center</li>
      <li>Daniel Saltzman, MD</li>
      <li>Barb Sisco, MSEd</li>
      <li>Cheryl Smoot, RN, PHN, MPH</li>
      <li>Read Sulik, MD</li>
      <li>Nicole Williams, MD</li>
      <li>Karen Wills, MD</li>
      <li>Laurel Wills, MD</li>
      <li>Joseph Wooley, MD</li>
      <li>Ericka Yoney, RN, LSN</li>
</ul>


<p>
For more information about the  Health Information Center, please contact <a href="mailto:wendy.ringer@pacer.org">Wendy Ringer</a>: (952)838-9000 Voice; (952)838-0190 TTY.
</p>
<p>&nbsp;</p>

<%
'<p style="border-top: solid 1px black; text-align: left; font-style:italic">Funding for PACER's Health Information Center comes in part from the Medica Foundation with its generous support of the Medical Prevention and Health Care Literacy Project for Children with Disabilities and Special Health Care Needs.</p>
%>


<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

<!--END CONTENT-->

</div>


<!--#include virtual="/footer.htm"-->
</div>


</body>
</html>