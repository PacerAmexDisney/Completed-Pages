<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Dispute Resolution Project - Links</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/leftnavigation.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

<script type="text/javascript" src="../css/menu.js"></script>
<script type="text/javascript">
<!--
function wopen(url, name, w, h)
{
// Fudge factors for window decoration space.
 // In my tests these work well on all platforms & browsers.
w += 32;
h += 96;
 var win = window.open(url,
  name, 
  'width=' + w + ', height=' + h + ', ' +
  'location=no, menubar=no, ' +
  'status=no, toolbar=no, scrollbars=yes, resizable=yes');
 win.resizeTo(w, h);
 win.focus();
}
// -->
</script> 

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

<div id="rightBar" style="width: 250px;">
			<p class="pacerinfo"> <strong>PACER Center<br />
				952-838-9000</strong> </p>
			<p class="pacerinfo2"> Champions for Children with Disabilities </p>
			<p class="pacerinfo3"> <a href="http://www.pacer.org/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a> </p>
			
			<div class="stayinformed" align="center">More information can be found under <a href="../publications/disputeresolution.asp">Dispute Resolution Publications </a></div>
			<p class="rightsidebarpic"> <img src="images/grad.jpg" width="250" height="375" alt="student smiling with graduation robe on and diploma in hand" /></p>
</div>


<div id="topbar">
<div id="breadcrumb"> <a href="../index.asp" title="PACER's home page">Home</a> / <a href="../pandr/index.asp" title="PACER's programs and resources">Programs &amp; Resources</a> /
					<h1>Dispute Resolution Project</h1>
				</div>
</div>

<div id="leftbar">
<!--#include file="navBar.html" -->
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="DR_links";
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

</div>

<div id="maincontent">

<div id="pagecontent">

<!--BEGIN CONTENT-->

<h2 class="nounderline">Links</h2>

				<ul>
				  <li><a href="http://education.state.mn.us/MDE/dse/sped/mon/" target="_blank">Minnesota Department of Education, Compliance  and Assistance <span class="fa fa-external-link"></span></a></li>
					<li><a href="http://www.directionservice.org/cadre/idea" target="_blank">CADRE (Consortium for Appropriate Dispute Resolution in  Special Education  <span class="fa fa-external-link"></span></a></li>
					<li><strong>Minnesota Special Education Laws </strong>
<ul>
              <li><a href="http://www.revisor.mn.gov/rules/?id=3525" target="_blank">Minnesota Administrative Rules  <span class="fa fa-external-link"></span></a></li>
                            <li><a href="https://www.revisor.mn.gov/statutes/?id=125A" target="_blank">Minnesota Statutes ext  <span class="fa fa-external-link"></span></a></li>
                      </ul>
                  </li>
					<li><a href="http://www.fape.org/" target="_blank">Families  and Advocate Partnership for Education ext <span class="fa fa-external-link"></span></a></li>
					<li><a href="http://www.ed.gov/about/offices/list/ocr" target="_blank">Office  of Civil Rights (O.C.R.) ext <span class="fa fa-external-link"></span></a></li>
					<li><a href="http://www2.ed.gov/about/landing.jhtml?src=gu" target="_blank">Office  of Special Education ext <span class="fa fa-external-link"></span></a></li>
					<li><a href="http://idea.ed.gov/" target="_blank">Individuals  with Disabilities Education Act (I.D.E.A.) ext <span class="fa fa-external-link"></span></a></li>
				</ul>
<div id="pageextender" style="clear:both">&nbsp;</div>


</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>