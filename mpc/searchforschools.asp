<%Response.Redirect("/mpc/")%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Minnesota Parent Center: Search For Schools</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/leftnavnoright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

<script type="text/javascript" src="../css/menu.js"></script>
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
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="../mpc/index.asp">Minnesota Parent Center</a>
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
	var currId="mpc_sfs";
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
<div id="pagecontentright">

<h2 class="nounderline" id="maincontentlink">Search For Schools</h2>
<a href="http://mnparentcenter.ilivehere.info/resources"><img align="right" src="images/iLiveHere-SchoolSearch.gif" width="300" height="193" alt="I Live Here Online School Search Resource" style="border:solid 1px #666" /></a>



<!--BEGIN CONTENT-->

<p>Learn more about specific schools  and locate schools near you with Minnesota Parent Center's online resource - <a href="http://mnparentcenter.ilivehere.info/resources/">ILiveHere</a>.</p>

<p>With just a click or two you can find  the state's report card on a school.  </p>
<p>	<strong>The report card includes:</strong></p>
<ul>
	<li> information  on the school's Title 1 status</li>
<li>if the school is making adequate yearly  progress</li>
<li>which area it needs to improve</li>
<li>the quality of its teachers</li>
<li>the school's extracurricular  offerings</li>
<li> if it is considered a safe school</li>
<li>and more</li>
</ul>

<h2><a href="http://mnparentcenter.ilivehere.info/resources">Go to the ILIVEHERE Resource</a></h2>
<hr />
<a href="http://www.pacer.org/mpc/pdf/MPC_December_09_Newsletter.pdf"><img src="images/parentPagesPaper.gif" alt="Parent Pages Newsletter - December 2009, Volume 4" width="500" height="86" align="top" style="margin-bottom:0px; padding-bottom:0px; margin-left:5px" /></a>
<p style="font-size:1.1em; margin-left:15px; margin-top:0px; padding-top:0px"><a href="http://www.pacer.org/mpc/pdf/MPC_December_09_Newsletter.pdf" target="_blank"> <strong>How to Choose the Best Public School Option for Your Child</strong></a> <span style="font-size:.8em">(pdf)</span>
<hr />

<h2>Additional Information</h2>
<p>Minnesota is a place where all parents have meaningful public school choices for   their children. Approximately thirty percent of Minnesota's K-12 public school   students access some form of school choice.  Students have a wide array of   options through Open Enrollment, Charter Schools, Magnet Schools, Online   Learning or State-Approved Alternative Programs.  Minneapolis students are   offered additional opportunities through The Choice is Yours Program, which   provides transportation to qualifying students to Minneapolis public school   choice options or several suburban districts.</p>
<p><a href="http://education.state.mn.us/MDE/Academic_Excellence/School_Choice/index.html" target="_blank">Minnesota Department of Education School Choice Programs</a></p>
<div id="pageextender" style="clear:both">&nbsp;</div>

<div class="MPCfooter" style="font-size: 75%;">
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