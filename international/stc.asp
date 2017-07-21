<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>International Activities: International Web Site</title>
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
h5 {
	background-color: #eee;
	padding: .4em .5em .4em .2em;
}
ul.treemenu li {
	font-size: 95%;
	margin-left: .5em;
}
</style>

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
<a href="../"><img src="../images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="rightBar">

<p class="pacerinfo">
<br />
<strong><a href="intlguestbook.asp">International Guest Book</a></strong>
</p>
<p class="pacerinfo3">
<br />
<a href="intlguestbook.asp">Sign it &gt;&gt;&gt;</a>
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
/ <a href="index.asp">International Activities</a> / Simon Technology Center
	
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
	var currId="int_index";
	var showTree = "int_sub";
	var currSubId="int_stc";
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

<a name="maincontentlink"></a><h2><a href="../stc/index.asp">Simon Technology Center</a></h2>
<p>
<img border="0" src="images/STCvisit.jpg" width="250" height="188" style="float: right; padding: 0 0 .5em .5em;" alt="International visitors meeting with Simon Technology Center staff, learning about assistive technology" />The Simon Technology Center (STC) is dedicated to making the benefits of technology more accessible to children and adults with disabilities. Through a collaborated effort involving parents, professionals, and consumers, the STC can provide numerous services for your family, as well as resources and informative answers to your questions. Since 1987, the Simon Technology Center has helped many children and adults, with a variety of disabilities, use assistive technology to enhance learning, work and independence. 
</p>

<p>
Questions? Please register in our <a href="intlguestbook.asp">guest book </a>and fill out the section "Can we assist you in some way?" Someone from PACER will contact you!
</p>

<h3>International Guests</h3>
<p>
Afghanistan<br />
China<br />
Cyprus<br />
Greece<br />
Guatemala<br />
Japan<br />
Russia<br />
Sweden<br />
Turkey<br />
Uzbekistan
</p>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>