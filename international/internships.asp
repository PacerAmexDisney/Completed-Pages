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
/ <a href="index.asp">International Activities</a> / Parent Advocacy Strategies and Services
	
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
	var currSubId="int_intern";
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

<a name="maincontentlink"></a><h2>PACER Internships</h2>
<p>
PACER has welcomed professionals from foreign countries for periods of study and internship. The two- to six-month customized programs, often held in conjunction with a university, have provided these individuals with opportunities to observe and participate in daily activities at PACER. 
They take part in workshops, presentations, parent meetings, and public policy issues that are relevant for families of children with disabilities in the U.S. PACER appreciates and learns from the perspectives brought by visitors from many places in the world.
</p>
<p style="font-size: 80%; float: right; padding: 0 0 .5em 1em; width: 150px;">
<img border="0" src="images/geetha.jpg" width="150" height="200" alt="Geetha Mukundan, PhD" /><br />Geetha Mukundan, Ph.D.,<br />Fulbright Professor at PACER
</p>
<p>
<strong>September 2006 to March 2007</strong> - The Associate Director at the Institute for Hearing Handicapped, 
in Mumbai, <strong>India</strong>, was a Fulbright Professor at PACER and the University of Minnesota Institute on Community Integration.  Purpose: To learn about parent center organizations 
in order to create parent centers in India.
</p>
<p>
<strong>Summer 2005 and Summer 2006</strong> - A Ph.D. candidate at the University of Minnesota who was a special education teacher from <strong>India,</strong> 
<a href="india/internlink.asp">participated in a summer internship</a> both in 2005 and 2006. Purpose: To learn about PACER services for families 
in order to encourage parent involvement in education in India.
</p>

<p>
<strong>Summer 2002</strong> - A special education and government official from <strong>Cameroon</strong> studied at 
the University of Minnesota for her Ph.D. Purpose: To learn how PACER involves families in education of their children with disabilities, 
in order to create parent programs in Cameroon.
</p>

<p>
Questions? Please register in our <a href="intlguestbook.asp">guest book</a> and fill out the section "Can we assist you in some way?" Someone from PACER will contact you!
</p>

</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>