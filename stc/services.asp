<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Simon Technology Center Services</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/leftnavnoright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

<script type="text/javascript" src="../css/menu.js"></script>
<style>
	a .fa-file-pdf-o, a .fa-external-link {
  top: 0.6em;
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

<div id="maincontent">

<div id="pagetoporange">
	<div id="breadcrumb">
		<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs</a> / <a href="index.asp">Simon Technology Center</a> / Services
		
		<h1>Simon Technology Center</h1>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">STC - Navigation Menu</h2><!--#include virtual="/stc/leftNav.htm"-->
</div>

<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="services";
	var currSubId="none";
	// any Subtree that I want to Display
	var showTree = "stc-subservice";
	
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

<h2 class="nounderline"><a name="maincontent">Services</a></h2>

<!--BEGIN CONTENT-->

<table id="projects">
<tr>
	<td>
	<a href="consultations/index.asp">
	<img src="images/consult.jpg" width="150" height="115" alt="STC conducting a consultation with a teen boy and his mother" style="float: left; padding-right: .5em;" /></a>
	<a href="consultations/index.asp">Technology Consultations</a><br />
	Children and adults with disabilities have the opportunity to try a variety of software and assistive technology devices. STC staff assist parents, their children, and professionals attending the session to experiment with software and hardware. Together, they find ways the individual can benefit from technology.
	</td>
	<td>
	<a href="individualtrainings.asp">
	<img src="images/IndividualTraining3.jpg" width="150" height="180" alt="STC staff providing training for a parent" style="float: right; padding-left: .5em;" /></a>
	<a href="individualtrainings.asp">Individualized Training Sessions</a><br />
	Individualized training sessions provide consumers, families, and professionals with focused training on newly purchased software programs.
	</td>
</tr>
<tr>
	<td>
	<a href="library/index.asp">
	<img src="images/older-student.jpg" width="150" height="104" alt="display case in the STC library" style="float: left; padding-right: .5em;" /></a>
	<a href="library/index.asp">STC Library</a><br />
	The Library offers Minnesota families and professionals the opportunity to preview educational and disability-specific software and assistive technology devices for children and young adults.
	</td>
	<td>
	<a href="super/index.asp">
	<img src="images/super.jpg" width="150" height="115" alt="boy riding an accessible bike" style="float: right; padding-left: .5em;" /></a><span style="color:red">NEW! -</span> <span class="fa fa-facebook-square"></span> <a href="https://www.facebook.com/groups/863267887136492/" target="_blank">Facebook Buy &amp; Sell Group - MN Special Needs Equipment for Sale<br /> <span class="fa fa-external-link"></span></a> <br />
	<p>Find equipment and assistive technology after its initial use. Items such as, communication devices, walkers, adaptive switches and toys, motorized cars (that can be adapted), adapted keyboards, etc.</p></td>
</tr>
<tr>
	<td>
	<a href="workshop.asp">
	<img src="images/training.jpg" width="150" height="115" alt="STC staff presenting a workshop at a conference" style="float: left; padding-right: .5em;" /></a>
	<a href="workshop.asp">In-Services and Workshops</a><br />
	The STC provides free, public workshops for parents and professionals on a variety of technology-related topics. Corporations, professional organizations, and parent groups can also request customized in-services (available for a small fee).
	</td>
	<td>&nbsp;
	
	</td>
</tr>
</table>
<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>