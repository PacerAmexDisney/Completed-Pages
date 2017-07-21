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
	padding: .4em .3em .4em .2em;
	background-color: #eee;
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
</div>

<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> 
/ <a href="index.asp">International Activities</a> / PACER Puppets
	
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
	var currSubId="int_puppets";
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

<h2 class="nounderline"><a name="maincontent" href="../puppets/index.asp">Puppet Program</a></h2>
<p>
In 1979, the PACER Puppets, a multicultural cast representing children with 
various disabilities, were introduced to classrooms of kindergarten through 
fourth-graders. The puppets, each a unique work of handcrafted art, were created 
as an innovative teaching tool to educate children about their peers with 
disabilities and assist schools in efforts to implement programs of inclusion.
<a href="../puppets/index.asp">Learn more about the PACER Puppet Program</a>.
</p>
<div style="float: right; padding: 0 0 .5em 1em; background-color:#FFF; margin:0px">
<img border="0" src="images/puppetsengland3.jpg" width="183" height="234" alt="Visitor from England laughing and holding a puppet" />
</div>
<h5>Trinidad and Tobago:</h5>
<p>December 2009 - Caribbean Kids and Families Therapy Organization (CKFTO) purchased <a href="../puppets/count.asp">COUNT ME IN</a> puppet set. PACER staff visited Trinidad in January 2010 to present a training for 15 prospective puppeteers.</p>
<h5>Australia:</h5>
<p>January 2002 - Bundaberg Area Sexual Assault Services in Queensland purchased 
<a href="../puppets/lpa.asp">LET'S PREVENT ABUSE</a> Puppet set.
</p>
<h5>Japan:</h5>
<p>
January 2006 - University of Toyoma purchased <a href="../puppets/count.asp">
COUNT ME IN</a> puppet set.
</p>
<h5>United Kingdom:</h5>
<p>
February 2006 - Wakefield, England Special-Abilities (parents and adults with 
disabilities), a nonprofit organization serving families of children with 
disabilities, 
<a href="articles/puppetstoengland.asp">visited PACER</a> for puppet training and to learn about PACER's methods of helping families.
</p>

<!--<p>
Questions? Please register in our <a href="intlguestbook.asp">guest book</a> and fill out the section "Can we assist you in some way?" Someone from PACER will contact you!
</p>
-->
<p>
<a href="../puppets/purchase.asp">
<strong>More information about purchasing PACER Puppets</strong>
</a>
</p>

</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>