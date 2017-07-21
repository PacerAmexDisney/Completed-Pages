<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>PACER Puppets: Help Make a Difference</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/leftnavigation.css" media="screen, projection" />
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
<a href="../"><img src="../images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="rightBar" style="width: 250px; height: 204px">

<div class="stayinformed" style="margin-top: 0; padding: 0;">
<img style="margin: 0; padding: 0; border: none;" src="images/classroom.jpg" width="250" height="143" alt="puppet show being performed at a school" />
<p style="padding: .4em; margin: 0; text-align: center; font-size: 90%;">
Want to learn more? Contact <a href="mailto:puppets@pacer.org">puppets@pacer.org</a>
</p>
</div>
<div class="stayinformed">
<h2>Here is what PACER volunteer puppeteers are saying:</h2>
<p>
<em>&quot;I have loved doing the shows. It has been fun and helps keep me connected to the energy and thinking of youth.&quot;</em><br /><br />
<em>&quot;Being a puppeteer has been more rewarding than I expected. It's great to be a part of a program that has such an important message.&quot;</em>
</p>
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
	
	<h1>PACER Puppets</h1>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">PACER Puppets Navigation Menu</h2>
<!--#include virtual="/puppets/leftNav.htm"-->
</div>

<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="volunteer";
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

<h2 class="nounderline">Help Make a Difference</h2>


<!--BEGIN CONTENT-->

<h3>Do you live in the Minneapolis/St. Paul Metro area?<br />
Become a Puppeteer with PACER!</h3>

<p><strong>Join the PACER Puppet Team and Help Children Learn about Bullying  Prevention and Disability Awareness. Make a difference!</strong></p>
<ul>
  <li>Kids Against Bullying is an entertaining puppet program that  helps young children learn about bullying prevention.</li>
  <li>COUNT ME IN&reg; teaches disability awareness and promotes inclusion. </li>
</ul>
<p>As a  volunteer, you&rsquo;ll:</p>
<ul>
	<li>Attend a training to learn puppet and presentation  skills;</li>
	<li>work with a fun team;</li>
	<li>present programs at metro schools  two to three times per month;</li>
	<li>help young children understand the  importance of preventing bullying.</li>
</ul>
	<p>All you need is a car, time during the school day, and a  desire to help young children.	</p>
	<p>To register or learn more, call PACER at 952-838-9000  or</p>
	<p><a href="pdf/VolunteerApplication.pdf" target="_blank">Download the PACER Puppet volunteer form</a><img border="0" src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /></p>
	
    
    <p>&nbsp;</p><div id="pageextender" style="clear:both">&nbsp;</div>



</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>