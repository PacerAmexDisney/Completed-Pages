<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Schedule a Show - PACER Center</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" />


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
<a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="topbar">
<div id="breadcrumb"><a href="/">Home</a> / <a href="/pandr/">Programs </a> /
	<h1>PACER Puppets</h1>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">PACER Puppets Navigation Menu</h2>
<!--#include virtual="/puppets/leftNav.htm"-->
</div>

<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="schedule";
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

<div id="maincontent">

<div id="pagecontent">
<img class="fltrt" border="0" src="images/show-2014.jpg" width="250" height="140" alt="" />
<h2 class="nounderline">Schedule a Show</h2>


<!--BEGIN CONTENT-->

<p>COUNT ME IN&reg; and KIDS AGAINST BULLYING programs are<strong> performed in the metro areas of Minneapolis and St. Paul, Minnesota</strong> by PACER volunteers. If you are interested in scheduling a show at your school, please choose a program and complete a show request form. You may either complete the online request form or download the form to complete and return to PACER Center Puppet Program via mail or fax (952-838-0199).</p>
<h4 class="greenBar">COUNT ME IN&reg; Disability Awareness Puppet Shows</h4>
<p>Pre/K COUNT ME IN&reg;show for ages 4 and 5 (no students younger than 4, please)</p>
<ul>
  <li>30-35 minutes in length</li>
  <li>60 students maximum per show</li>
  <li>Cost $75 per show
  
  	<ul>
  		<li class="pdficonlist"><a href="pdf/CMIPreKForm.pdf" target="_blank">Downloadable form - Preschool/Kindergarten  <span class="fa fa-external-link" aria-hidden="true"></span></a></li>
  		<li><a href="https://www.surveymonkey.com/s/2LDQTPN" target="_blank">Online form - Preschool/Kindergarten  <span class="fa fa-external-link" aria-hidden="true"></span></a></li>
	  </ul>

	</li>
</ul>
<hr />
<p>Elementary COUNT ME IN&reg; show for grades 1-4:</p>
<ul>
  <li>45-60 minutes in length</li>
  <li>80-100 students maximum per show</li>
  <li>Cost $100 per show
  
  <ul>
  <li class="pdficonlist"><a href="pdf/CMIElementaryForm.pdf" target="_blank">Downloadable form - Elementary  <span class="fa fa-external-link" aria-hidden="true"></span></a></li>
  <li> <a href="https://www.surveymonkey.com/s/TFR3LXR" target="_blank">Online form - Elementary  <span class="fa fa-external-link" aria-hidden="true"></span></a></li>
	  </ul>
</li>
</ul>
<h4 class="greenBar">KIDS AGAINST BULLYING Puppet Show</h4>
<p>KIDS AGAINST BULLYING Puppet Show for students in grades 1-3:</p>
<ul>
  <li>35 minutes in length</li>
  <li>50 students or two classrooms maximum per show</li>
  <li>Cost $100 per show
  
  <ul>
  <li class="pdficonlist"><a href="pdf/KABletterandform.pdf" target="_blank">Downloadable form - Kids Against Bullying  <span class="fa fa-external-link" aria-hidden="true"></span></a></li>
  <li><a href="https://www.surveymonkey.com/s/Y56LCS5" target="_blank">Online form - Kids Against Bullying  <span class="fa fa-external-link" aria-hidden="true"></span></a></li>
	  </ul>
</li>
</ul>
<p style="margin-top: 80px;">Please contact Lynn or Adam at 952-838-9000 or <a href="mailto:puppets@pacer.org">puppets@pacer.org</a> if you have any questions. </p>

<p><!--<a href="LPAForm.pdf">LET'S PREVENT ABUSE</a><img border="0" src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" />
--></p>
<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>