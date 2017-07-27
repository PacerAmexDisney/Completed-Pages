<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Housing Project: Resources</title>
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

<div id="rightBar">

<div class="rightsidebarpic" style="margin: 0; padding-bottom: 0; padding-top: .5em; background-color: white;">
<a href="../publications/transition.asp">
<img src="images/housingbook.jpg" width="250" height="273" alt="Book: Housing - Where Will Our Children Live When They Grow Up?" style="border: none; text-align: center;" /></a><br />
</div>
<div class="stayinformed" style="margin: 0;">
<strong><a href="../publications/transition.asp">Housing: Where Will Our Children Live When They Grow Up?</a></strong><br /><br />
<img border="0" src="../publications/images/star.png" width="16" height="13" style="border: none;" alt="star" />$8 | 10+ copies, $6 each | PHP-a26
</div>
</div>

<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Housing Project</a> / Resources
	
	<h1>Housing Project</h1>
	
</div>
</div>

<div id="leftbar">
<!--#include virtual="/housing/leftNav.html" -->

</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="org";
	var currSubId="none";
	// any Subtree that I want to Display
	var showTree = "org-sub";
	
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

<h2 class="nounderline"><a name="maincontent">Housing Organization Lists</a></h2>


<!--BEGIN CONTENT-->

<p style="padding-bottom: 2em;">
PACER has collected a variety of resources to help parents and young adults locate housing as they transition from high school to school, employment, and independent living. 
</p>



        <h3>Housing &amp; Services</h3>
        <ul>
            <li><a href="/housing/organizations.asp?page=Individualized-Services" title="Services provided to the person in which the provider does not own the housing.">Individualized Services</a></li>
            <li><a href="/housing/organizations.asp?page=Residential-Services" title="Services provided to the person in which the provider does own the housing.">Residential Services</a></li>
		</ul>
        
        <h3>Information Resource &amp; Referral</h3>
        <ul>
            <li><a href="/housing/organizations.asp?page=Foreclosure">Foreclosure and Eviction</a></li>
            <li><a href="/housing/organizations.asp?page=Financing">Financing</a></li>
            <li><a href="/housing/organizations.asp?page=MN-Housing-Rights">MN Housing Rights and Legal Issues</a></li>
            <li><a href="/housing/organizations.asp?page=Remodeling-Accessibility">Remodeling and Accessibility</a></li>
        </ul>
        
        <h3>Organizations By Locale</h3>
        <ul>
            <li><a href="/housing/organizations.asp?page=MN-Organizations">Minnesota Organizations</a></li>
            <li><a href="/housing/organizations.asp?page=National-Housing">National Organizations</a></li>
    	</ul>
    



<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>