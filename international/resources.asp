<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>International Activities</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavigation.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

<script type="text/javascript" src="../css/menu.js"></script>
<style type="text/css">
.pacerinfo a, .pacerinfo a:visited {
	color: white;
	text-decoration: none;
}
.pacerinfo a:hover, .pacerinfo a:active {
	text-decoration: underline;
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
	<div>			<!--#include virtual="/googleSearchBox.htm"-->
            <!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="../"><img src="../images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="rightBar">

<p class="rightsidebarpic">
<img border="0" src="images/boysinschool.jpg" width="250" height="173" alt="Three boys standing in a classroom" />
</p>
<p class="rightsidebarpic">
<img border="0" src="images/grandmagrandson.jpg" width="250" height="316" alt="grandmother holding grandson on front step of home" />
</p>
</div>

<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> 
/ <a href="index.asp">International Activities</a> / Other International Resources
	
	<h1>International Activities</h1>
	
</div>
</div>

    <div id="leftbar">
      <h2 style="display: none;">International Navigation Menu</h2>
      <!--#include virtual="/international/leftNavBar.html" --> 
    </div>
    <!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show --> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="int_resources";
	var showTree = "none";
	var currSubId="none";
	// any Subtree that I want to Display
	
	
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

<h2 class="nounderline"><a name="maincontent">Other International Resources</a></h2>

<p>
<br />
<a href="http://www.abilityinfo.com/ticker.html">Ability Info - International Disability News Ticker</a><br /><br />
<a href="http://cirrie.buffalo.edu/">Center for International Rehabilitation Research Information and Exchange</a><br /><br />
<a href="http://www.dredf.org/international/international.shtml">Disability Education Defense Fund</a><br /><br />
<a href="http://www.disabilityworld.org/">Disability World Web-zine</a><br /><br />
<a href="http://www.globalinclusion.org/index.htm">The Global Resource Center for Inclusive Education</a><br /><br />
<a href="http://www.mdri.org/">Mental Disability Rights International</a><br /><br />
<a href="http://www.who.int/classifications/icf/site/icftemplate.cfm">International Classification of Functioning, Disability and Health</a><br /><br />
<a href="http://www.internationaldisabilityalliance.org/">International Disability Alliance (IDA)</a><br /><br />
<a href="http://www.miusa.org/">Mobility International</a><br /><br />
<a href="http://www.nafsa.org/">NAFSA Association of International Educators</a><br /><br />
<a href="http://www.icdri.org/">The International Center for Disability Resources on the Internet</a><br /><br />
<a href="http://un.org/disabilities/default.asp?id=109">United Nations Enable</a><br /><br />
<a href="http://www.who.int/classifications/icf/en/">WHO International Classification of Functioning, Disability and Health (ICF)</a><br /><br />
<a href="http://www.wid.org/">World Institute on Disability</a><br /><br />
<a href="http://www.childsrights.org/html/index.html">www.childsrights.org</a>
</p>

<p>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</p>

</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>