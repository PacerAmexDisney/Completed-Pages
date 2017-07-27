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
  <p class="pacerinfo"> <strong>PACER Center<br />
    952-838-9000</strong> </p>
  <p class="pacerinfo2"> Champions for Children with Disabilities </p>
  <p class="pacerinfo3"> <a href="http://www.pacer.org/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a> </p>
  <p class="stayinformed"> <em>As a parent of a child with a chronic illness, information is essential because it provides me with education I need to make decisions for my child's care. Access to this information is vital because it helps me navigate the health care system and achieve the best care possible for my child.</em><br />
    <br />
    - Carolyn G. </p>
<div class="sidebarwithimage">
<img src="/ec/images/girlonBike.gif" width="250" alt="" /><img src="/ec/images/Baby-holding-hands.jpg" width="200" height="200" alt="" /><img src="/ec/images/toddler-close-up_200w.jpg" width="200" height="200" alt="" /><img src="/ec/images/familyrunning.jpg" width="250" alt="" />
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
	var currId="text";
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

<h2 class="nounderline">Heading</h2>
<p>Content</p>

<!--END CONTENT-->
<div id="pageextender" style="clear:both">&nbsp;</div>

</div>

</div>

</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>