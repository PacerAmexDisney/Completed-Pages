<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/mpc/"
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Minnesota Parent Center: Parental Involvement - Help Children Learn: Volunteering and Learning at Home</title>
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
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Minnesota Parent Center</a> / <a href="parentinvolvement.asp">Parental Involvement</a> / Help Children Learn: Volunteering and Learning at Home
	
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
	var currSubId="piResources-hcl";
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

<h2 class="nounderline"><a name="maincontent">Help Children Learn: Volunteering and Learning at Home</a></h2>


<!--BEGIN CONTENT-->

<p>
Parents and community members can help increase student achievement. Many schools and community organizations have developed programs and resources to engage families in school-based and home-based support for children&#8217;s learning. 
</p>
<p>
A strong volunteer program offers the chance for families and community members to become familiar with the school while providing meaningful support to children and staff. Volunteering Resources:
</p>

<ul>
	<li><a href="http://www.artsmia.org/index.php?section_id=117">Art Adventure Program at Minneapolis Institute of Arts</a></li>
	<li><a href="http://www.themlc.org/ABCsofReading">Free Training for Reading Tutors from Minnesota Literacy Council</a></li>
	<li><a href="http://www.famlit.org/site/c.gtJWJdMQIsE/b.2042219/k.6C32/Engaging_Volunteers_Tutors__Learners.htm">Planning for Volunteers - Guidebook</a></li>
</ul>

<p>
Parents want to know what is being taught and what takes place in the classroom; they can reinforce it at home if they are provided with adequate support. Learning at Home Resources:
</p>
<ul>
	<li><a href="http://www.colorincolorado.org/">Bilingual and English Language Learners Resource from ¡Colorín Colorado!</a></li>
	<li><a href="http://www.medtronic.com/foundation/downloads/science-matters.pdf">Free Family Science Guide from Medtronic</a> <img border="0" src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /></li>
	<li><a href="http://www.getreadyforcollege.org/">Get Ready for College from MN Office of Higher Education</a></li>
	<li><a href="http://www.state.mn.us/portal/mn/jsp/content.do?id=-536881315&amp;agency=NorthStar">Minnesota North Star Kids' Page from Minnesota State Government Online</a></li>
	<li><a href="http://www.mnlearnloop.informns.k12.mn.us/index.html">Minnesota Learning Loop Resources from TIES</a></li>
	<li><a href="http://www.smm.org/explore/">Online Activities from Science Museum of Minnesota</a></li>
	<li><a href="http://www.dnr.state.mn.us/plt/index.html">Project Learning Tree from MN Department of Natural Resources</a></li>
	<li><a href="http://soundlearning.publicradio.org/">Sound Learning from Minnesota Public Radio</a></li>
	<li><a href="http://www.unitedwaytwincities.org/ourimpact/successby6_priorities.cfm">Success by 6 Program from United Way</a></li>
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