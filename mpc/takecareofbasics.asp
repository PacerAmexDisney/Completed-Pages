<%Response.Redirect("/mpc/")%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Minnesota Parent Center: Parental Involvement - Take Care of the Basics</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/leftnavnoright.css" media="screen, projection" />
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
<a href="/mpc/"><img border="0" src="piweek/PIRClogowebheader.gif" width="473" height="104" alt="Minnesota Parent Center, MN PIRC, MN Parental Information and Resource Center, a project of PACER" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="maincontent">

<div id="pagetoporange">
	<div class="printemail">
		<p>
		<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>
		
		</p>
	</div>
	<div id="breadcrumb">
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Minnesota Parent Center</a> / <a href="parentinvolvement.asp">Parental Involvement</a> / Take Care of the Basics
	
	<h1>Minnesota Parent Center</h1>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">MPC Navigation Menu</h2>
<!--#include virtual="/mpc/leftNavBar.html" -->
</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="mpc_piResources";
	var currSubId="piResources-tcob";
	// any Subtree that I want to Display
	var showTree = "piResources-sub";
	
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
</script><div id="pagecontentright">

<h2 class="nounderline"><a name="maincontent">Take Care of the Basics: Parenting and Communicating</a></h2>


<!--BEGIN CONTENT-->

<p>
Most parents and educators believe that it is important for families to be involved in their children&#8217;s schools. All parents and all educators have &#8220;basic responsibilities&#8221; for parental involvement that they do every day: parenting and communicating. 
</p>
<p>
Schools can play an important role in providing parents access to information about methods and strategies for becoming more effective parents. Parenting Resources:
</p>

<ul>
  <li><a href="http://www.casel.org/downloads/parentpacketLSS.pdf">Ideas and tools for parents - Social Emotional Learning</a> <img border="0" src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /></li>
	<li><a href="http://www.extension.umn.edu/Family/">Info-U at University of Minnesota Extension</a></li>
	<li><a href="http://access.minnesota.publicradio.org/features/9710_family/index.shtml">Minnesota Family Strength Project at Minnesota Public Radio</a></li>
	<li><a href="http://www.parentsknow.state.mn.us/">Minnesota Parents Know from MN Department of Education</a></li>
	<li><a href="http://mvparents.com/">MVParents from Search Institute</a></li>
	<li><a href="http://www.tcet.unt.edu/pteconnect/?module=Parenting">Parent Teacher Education Connection - Parenting module</a></li>
</ul>

<p>Improving family-school communication is the foundation for successful parental involvement in schools. Communication Resources:</p>

<ul>
	<li><a href="http://content.scholastic.com/browse/collection.jsp?id=35">Building strong relationsihps with Parents - for educators</a></li>
	<li><a href="http://www.pbs.org/ampu/crosscult.html">Common cross-cultural communication challenges - Guidelines</a></li>
	<li><a href="http://www.pbs.org/wholechild/parents/f-s.html">Establishing Strong Family School Communication from PBS</a></li>
	<li><a href="http://www.directionservice.org/cadre/pdf/children_strategy_4.pdf">Family-friendly communication - strategy guide</a> <img border="0" src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /></li>
	<li><a href="http://www.hfrp.org/publications-resources/browse-our-publications/home-school-communication-what-s-all-the-commotion">Home-School Communication - teacher workshop</a></li>
	<li><a href="http://www.colorincolorado.org/educators/reachingout">Ideas for connecting with ELL families - Reaching Out</a></li>
	<li><a href="http://www2.scholastic.com/browse/collection.jsp?id=107">Parent communication strategies - for teachers</a></li>
	<li><a href="http://www.pbs.org/parents/goingtoschool/parent_teacher.html">The Parent Teacher Partnership from PBS</a></li>
</ul>

<p>
<br />
<a href="parentinvolvement.asp">< Back to Parent Involvement Resources</a>
</p>

<div class="MPCfooter">
<em>This publication was produced in whole or in part with funds from the U.S. Department of Education, Office of Innovation and Improvement, Parental Information and Resource Center program, under Grant #84.310A.  The content herein does not necessarily reflect the views of the Department of Education, any other agency of the U.S. government, or any other source.</em>
</div>

</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>