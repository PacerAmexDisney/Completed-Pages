<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Simon Technology Center Library</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavigation.css" media="screen, projection" />
<style type="text/css">
.slogo {
	display:none;
}
</style>
</head>
<body>
<div id="skiptocontent">
<a href="#maincontent">Skip to main content</a>
</div>

<div id="wrapper">

<div id="main">

<div id="header">
<div><!--#include virtual="/googleSearchBox.htm"--><!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="rightBar">


<p class="stayinformed" style="border-left: solid 1px #f93; border-top: solid 1px #f93; border-bottom: solid 1px #f93;">
<a href="../atfinder/">View the STC Library Catalog Online</a>
</p>
<p class="stayinformed" style="border-left: solid 1px #f93; border-top: solid 1px #f93; border-bottom: solid 1px #f93;"><a href="/stc/library/archived/STC-iOS-App-Inventory-List.pdf" target="_blank">View the STC Library  iOS App Inventory</a></p>
<div class="rightsidebarpic">
<img src="../images/Library.jpg" width="250" height="180" alt="Mother and daughter looking through software in the STC library" />
</div>
</div>

<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<a href="https://www.facebook.com/simontechnologycenter" target="_blank">Join the STC Facebook Page</a> | 
<img src="/css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="/index.asp">Home</a> / <a href="/pandr/index.asp">Programs &amp; Resources</a> / <a href="../index.asp">Simon Technology Center</a> / Library
	
	<h1>Simon Technology Center</h1>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">STC - Navigation Menu</h2>
<!--#include virtual="/stc/leftNav.htm"-->
</div>

<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="services";
	var currSubId="subservice-lib";
	// any Subtree that I want to Display
	var showTree = "stc-subservice";
	
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


<div id="surveyMonkeyInfo"></div><script src="https://www.surveymonkey.com/jsEmbed.aspx?sm=tPbmRVJvuWqqQW0IKdIM7Q_3d_3d"> </script>





<!--END CONTENT-->
<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>