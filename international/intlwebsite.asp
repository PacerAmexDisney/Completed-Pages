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

<p class="pacerinfo">
<br />
<strong><a href="intlguestbook.asp">International Guest Book</a></strong>
</p>
<p class="pacerinfo3">
<br />
<a href="intlguestbook.asp">Sign it &gt;&gt;&gt;</a>
</p>
<p class="rightsidebarpic">
<img border="0" src="images/malaysianfamily2.jpg" width="250" height="171" alt="Family in Malaysia showing parents and five children" />
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
/ <a href="index.asp">International Activities</a> / New International Web site
	
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
	var currSubId="int_web";
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

<h2 class="nounderline"><a name="maincontent">International PACER Web site</a></h2>
<h3>The development of a new international PACER Web site for parents of 
children with disabilities</h3>
<p>
Parents and family members from countries around the globe will be able to 
access and share a wide range information including national and international 
resources, policy development, success stories, and current challenges. When 
complete, the site 
will share stories from U.S. parent advocates and lessons learned on this 
country&#8217;s journey from institutionalization and discrimination to informed 
choice, individualized services, and consumer self-advocacy. Parent advocates 
and professionals from other countries can also share insights into the 
disability experience, challenges, and advocacy movements of their own 
countries.
</p>

<p>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</p>

</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>