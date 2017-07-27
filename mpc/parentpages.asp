<%Response.Redirect("/mpc/")%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Minnesota Parent Center, MN PIRC</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/leftnavnoright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />
<style>
#pagecontentright ul li {
	padding-bottom:1.5em;
}
</style>
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
<a href="index.asp"><img border="0" src="piweek/PIRClogowebheader.gif" width="473" height="104" alt="Minnesota Parent Center, MN PIRC, MN Parental Information and Resource Center, a project of PACER" class="logoImg" /></a>
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
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Minnesota Parent Center</a> / Parent Pages
	
	<h1 class="nounderline" style="margin-bottom: 0; padding-bottom: 0;">Minnesota Parent Center, MN PIRC</h1>
	<p style="margin: 0; padding: 0; text-transform: uppercase; font-size: 150%; font-weight: bold;">A Project of PACER Center</p>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">MPC Navigation Menu</h2>
<!--#include virtual="/mpc/leftNavBar.html" -->
</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="mpc_parentpages";
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

<!--BEGIN CONTENT-->



<p id="maincontentlink">
Parent Pages is a quarterly newsletter for parents published by the Minnesota Parent Center.
<br />
<a href="parentpagessignup.asp">Sign up to receive MPC Parent Pages &gt;&gt;&gt;</a></p>
<h2 class="screenReaderText">Minnesota Parent Center Pages</h2>
<img src="images/parentPagesLogo.gif" width="500" height="83" alt="" />
<ul class="nobullet">
	  <!-- #################################### volume8 ############################################## -->
    <li>
        <h3>Boost Your Child&rsquo;s Learning Over the Summer with These Ideas<br />
		<span style="font-size:85%;"><em><a href="/mpc/pdf/MPC Newsletter-June 2011.pdf" target="_blank">June 2011, Volume 8 Parent Pages</a></em> <a href="pdf/MPC_December_09_Newsletter.pdf"><img border="0" src="../images/pdficon_small.gif" width="15" height="15" style="margin: 0; padding: 0; border: none;" alt="pdf icon" /></a></span></h3>
	</li>
	  <!-- #################################### volume7 ############################################## -->
    <li>
        <h3>Paving the Path to Higher Education for Your Child<br />
		<span style="font-size:85%;"><em><a href="pdf/MPC Newsletter-January 2011.pdf" target="_blank">January 2011, Volume 7 Parent Pages</a></em> <a href="pdf/MPC_December_09_Newsletter.pdf"><img border="0" src="../images/pdficon_small.gif" width="15" height="15" style="margin: 0; padding: 0; border: none;" alt="pdf icon" /></a></span></h3>
	</li>
	  <!-- #################################### volume6 ############################################## -->
    <li>
        <h3>Help Your Child Learn with After&ndash;school and Summer Programs<br />
		<span style="font-size:85%;"><em><a href="pdf/MPC Newsletter-July 2010.pdf" target="_blank">July 2010, Volume 6 Parent Pages</a></em> <a href="pdf/MPC_December_09_Newsletter.pdf"><img border="0" src="../images/pdficon_small.gif" width="15" height="15" style="margin: 0; padding: 0; border: none;" alt="pdf icon" /></a></span></h3>
	</li>
      <!-- #################################### volume5 ############################################## -->
	<li> 
        <h3>A Parent&rsquo;s Vision and High Expectations are Powerful<br />
		<span style="font-size:85%;"><em><a href="pdf/MPC Newsletter-April 10.pdf" target="_blank">April 2010, Volume 5 Parent Pages</a></em> <a href="pdf/MPC_December_09_Newsletter.pdf"><img border="0" src="../images/pdficon_small.gif" width="15" height="15" style="margin: 0; padding: 0; border: none;" alt="pdf icon" /></a></span></h3>
	</li>
	  <!-- #################################### volume4 ############################################## -->
    <li>
        <h3>How to Choose the Best Public School Option for Your Child<br />
		<span style="font-size:85%;"><em><a href="pdf/MPC_December_09_Newsletter.pdf" target="_blank">December 2009, Volume 4 Parent Pages</a></em> <a href="pdf/MPC_December_09_Newsletter.pdf"><img border="0" src="../images/pdficon_small.gif" width="15" height="15" style="margin: 0; padding: 0; border: none;" alt="pdf icon" /></a></span></h3>
	</li>
      <!-- #################################### volume3 ############################################## -->
    <li>	
        <h3>Minnesota's Standardized Test &mdash;MCA-II: Use the Results to Help Your Child Succeed in School<br /><span style="font-size:85%;"><em><a href="pdf/MPC_July_09_Newsletter.pdf" target="_blank">July 2009, Volume 3 Parent Pages</a></em> </span><a href="pdf/MPC_December_09_Newsletter.pdf"><img border="0" src="../images/pdficon_small.gif" width="15" height="15" style="margin: 0; padding: 0; border: none;" alt="pdf icon" /></a></h3>
	</li>
      <!-- #################################### volume2 ####################################  -->
    <li>	
        <h3>Help Your Child Meet Academic Standards<br /><span style="font-size:85%;"><em><a href="pdf/MPC newsletter-Jan09.pdf" target="_blank">January 2009, Volume 2 Parent Pages</a></em> <a href="pdf/MPC newsletter-Jan09.pdf">
    	  <!--<a href="#paragraph1" onclick="showHideDoc('para1', 'para1_container');">(click here to read text version)</a>-->
    	</a></span><a href="pdf/MPC newsletter-Jan09.pdf"><img border="0" src="../images/pdficon_small.gif" width="15" height="15" style="margin: 0; padding: 0; border: none;" alt="pdf icon" /></a></h3>    
    </li>
    <li><!-- #################################### volume1 #################################### -->
		<h3>Preparing for Parent-Teacher Conferences<br />
		  <span style="font-size:.85em;"><em><a href="pdf/MPC newsletter-Oct 08.pdf" target="_blank">October 2008, Volume 1 Parent Pages</a></em></span> <a href="pdf/MPC newsletter-Jan09.pdf"><img border="0" src="../images/pdficon_small.gif" width="15" height="15" style="margin: 0; padding: 0; border: none;" alt="pdf icon" /></a></h3>
        
</li>
    </ul>
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