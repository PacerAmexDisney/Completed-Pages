<%Response.Redirect("/mpc/")%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Minnesota Parent Center: Making Schools Better:  Parent Leadership and Decision Making</title>
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
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Minnesota Parent Center</a> / <a href="parentinvolvement.asp">Parental Involvement</a> / 
	
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
	var currSubId="piResources-msb";
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

<h2 class="nounderline"><a name="maincontent">Making Schools Better:  Parent Leadership and Decision Making</a></h2>


<!--BEGIN CONTENT-->

<p>
Parents work in many ways to help make schools better. Parents ask questions, create connections, reach out to each other, and tap community resources in ways schools cannot do alone.
</p>
<p>
Parents may be involved in school decision making because of federal or state mandate, such as on Title I teams, and they may be involved in a variety of local activities that are specific to each school, such as site councils, PTAs, and parent advisory councils. Decision Making Resources:
</p>

<ul>
	<li><a href="http://www.cyfc.umn.edu/" target="_blank">Children, Youth, and Family Consortium at University of Minnesota</a></li>
	<li><a href="http://www.parentsunited.org/Events.html" target="_blank">Events about education issues from Parents United for Public Schools</a></li>
	<li><a href="http://education.state.mn.us/MDE/Accountability_Programs/No_Child_Left_Behind_Programs/Parent_Involvement/index.html" target="_blank">Parent Involvement at Minnesota Department of Education</a></li>
</ul>

<p>
Schools that are knowledgeable about resources in the community and committed to helping connect families to those resources have a stronger foundation for building relationships that lead to greater academic achievement for students. Collaborating with the Community Resources:
</p>
<ul class="mpcresources">
	<li><a href="http://www.ptotoday.com/sfn/SFN_homepage_leader.html" target="_blank">Free Planning Kits for Family Nights from PTO Today</a></li>
	<li><a href="http://www.csos.jhu.edu/p2000/index.htm" target="_blank">National Network of Partnership Schools</a></li>
	<li><a href="http://www.communityschools.org/" target="_blank">Toolkit and Resources from Coalition for Community Schools</a></li>
	<li><a href="http://www.extension.umn.edu/Community/" target="_blank">Info-U at University of Minnesota Extension</a></li>
</ul>

<p>
<br />
<a href="parentinvolvement.asp">&lt; Back to Parent Involvement Resources</a>
</p>
<div id="pageextender" style="clear:both">&nbsp;</div>
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