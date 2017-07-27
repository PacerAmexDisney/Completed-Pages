<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>PACER Puppets: Count Me In</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/leftnavigation.css" media="screen, projection" />
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
<a href="../"><img src="../images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="rightBar">

<div class="stayinformed" style="margin-top: 0;">
<em>&quot;The program has the right amount of sensitivity and humor. I really think this showed students that they have things in common with people with disabilities.&quot;</em><br />
- A Minnesota teacher
</div>
<p class="rightsidebarpic">
<img border="0" src="images/cmi_puppets2.jpg" width="250" height="266" alt="puppets on a playground" />
</p>

<p class="rightsidebarpic">
<img border="0" src="images/Puppets-at-Picnic.jpg" width="250" height="172" alt="puppets at a picnic table" />
</p>
<div class="stayinformed">
<p style="padding: .4em; margin: 0; text-align: center; font-size: 90%;">
Want to learn more? Contact <a href="mailto:puppets@pacer.org">puppets@pacer.org</a>
</p>
</div>
</div>

<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> /
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
	var currId="count";
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

<h2 class="nounderline"><a name="maincontent">COUNT ME IN®</a></h2>


<!--BEGIN CONTENT-->

<p>
The COUNT ME IN puppet program is designed to help children and adults learn about disabilities and chronic illnesses in an effort to bridge the gap between typical students and those with disabilities.  This program, originated in 1979, has reached over 350,000 children and adults and continues to teach the message that all children want to play and learn to the best of their abilities.
</p>
<p>
COUNT ME IN features six endearing, child-size, multicultural puppets that portray children with disabilities.  These puppets have proven to be effective communicators of the message of understanding and acceptance, helping to dispel fears, myths and misconceptions about persons with disabilities.
</p>

<p>
The preschool/kindergarten program is designed for 4-6 year olds and includes:
</p>
<ul>
	<li><a href="cast.asp#gina">Gina</a>, who is blind and uses a cane</li>
	<li><a href="cast.asp#jay">Jay</a>, who is deaf or hard of hearing</li>
	<li><a href="cast.asp#sally">Sally</a>, who has spina bifida and uses a wheelchair</li>
</ul>
<p>
The elementary core program is geared to 1st - 4th grade and includes:
</p>
<ul>
	<li><a href="cast.asp#gina">Gina</a>, who is blind</li>
	<li><a href="cast.asp#jay">Jay</a>, who is deaf or hard of hearing</li>
	<li><a href="cast.asp#sally">Sally</a>, who has cerebral palsy and uses a wheelchair</li>
	<li><a href="cast.asp#corey">Corey</a>, who has Down syndrome</li>
</ul>
<p>
Additional puppets and scripts which may be available include:
</p>
<ul>
	<li><a href="cast.asp#ben">Ben</a> - ADHD</li>
	<li><a href="cast.asp#bridget">Bridget</a> - juvenile rheumatoid arthritis</li>
	<li><a href="cast.asp#carmen">Carmen</a> - epilepsy</li>
	<li><a href="cast.asp#connor">Connor</a> - Tourette syndrome</li>
	<li><a href="cast.asp#danny">Danny</a> - muscular dystrophy</li>
	<li><a href="cast.asp#eric">Eric</a> - diabetes</li>
	<li><a href="cast.asp#max">Max</a> - autism</li>
	<li><a href="cast.asp#mitch">Mitch</a> - learning disabilities</li>
</ul>

<!--#include virtual="/puppets/trademark.htm"-->


<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>