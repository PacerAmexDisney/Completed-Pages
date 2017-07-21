<%
Dim regOpen, currentYear
regOpen = false
currentYear = 2017
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>EX.I.T.E. Camp</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" />

<style type="text/css">
#campSchedule caption {
	padding-bottom:1.5em;
	font-weight: bold;
}
#campSchedule td.BoRi {
	border-bottom:1px solid #CCC;
	border-right:1px solid #CCC;
}
#campSchedule td.BoLe {
	border-bottom:1px solid #CCC;
	border-left:1px solid #CCC;
}

#campSchedule td.Bo {
	border-bottom:solid 1px #CCC;
	text-align: center;
}
#campSchedule td.Le {
	border-left:solid 1px #CCC;
}
#campSchedule td.Ri {
	border-right:solid 1px #CCC;
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
	<div>
		<!-- Google CSE Search Box Begins  -->
			<form class="nav" action="http://www.pacer.org/searchresults.asp" id="cse-search-box"><a href="/contactpacer.asp">Contact PACER</a> | <a href="/help/donate.asp">Donate</a> | <label for="q">Search</label>
			   	<input type="hidden" name="cx" value="008159103446416441332:ztnv2wmj0ug" />
  				<input type="hidden" name="cof" value="FORID:11" />
 				<input type="text" name="q" id="q" size="25" />
 				<input type="submit" name="sa" value="Search" />
			</form>
			<script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=cse-search-box&amp;lang=en"></script>
		<!-- Google CSE Search Box Ends -->
		<a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>
<div id="topbar">
  <div id="breadcrumb">
<div class="printemail"></div>
	<a href="/index.asp">Home</a> / <a href="/pandr/index.asp">Programs &amp; Resources</a> / <a href="../index.asp">Simon Technology Center</a> / <a href="index.asp">EX.I.T.E.</a> / 
	
	<h1>EX.I.T.E Camp</h1>
	
	</div>

</div>

<div id="leftbar">
<h2 style="display: none;">STC - Navigation Menu</h2>
<!--#include virtual="/stc/leftNav.htm"-->
</div>

<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="projects";
	var currSubId="subproj-exc";
	// any Subtree that I want to Display
	var showTree = "stc-subproj";
	
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

<div id="sidewrap" style="float:right; padding:0 15px 15px 15px; width:325px; background:#fff; margin-right:-.5em;">
<div class="alertBox">
<div id="submenu">
<ul id="submenulist" style="padding:5px;">
	<li><a href="index.asp">Overview of EX.I.T.E.</a></li>
	<li><a class="page" href="camp.asp">EX.I.T.E. Camp Information</a></li>
	<li><a href="campphotogallery.asp">EX.I.T.E. Camp Photo Gallery</a></li>
	<li><a href="profdev.asp">EX.I.T.E. Volunteer and Professional Development Opportunities</a></li>
	<li><a href="techforgirls.asp">EX.I.T.E. Technology for Girls Workshop Series</a></li>
</ul>
</div>
</div>
<img src="/stc/exite/images/exite_2009_AandB_IMG012_300w.jpg" width="300" height="210" alt="" class="fltrt" style="clear:right;"/>
</div>
<!--BEGIN CONTENT-->

<h2 class="nounderline">EX.I.T.E. Camp <span style="font-weight:normal; font-size:.8em;">(<strong>EX</strong>ploring <strong>I</strong>nterests in <strong>T</strong>echnology and <strong>E</strong>ngineering)</span></h2>
<h3>About EXITE</h3>

<ul>
  <li>A<strong> 5-Day Camp</strong> in August for middle school girls (6th-9th grades in the fall) with disabilities.</li>
  <li><strong>It's FREE</strong>, you just need transportation and a box lunch each day.</li>
  <li>Camp runs each day from 9AM to 4PM at PACER Center in Bloomington.</li>
  <li>Do amazing experiments, make friends that will last a lifetime, discover how science, technology, engineering and math can be cool and exciting.</li>
</ul>

<h2 class="greenBar">Our Mission</h2>

<p>The mission of EX.I.T.E. Camp is to empower middle school girls in the fields of math, science, and engineering. EX.I.T.E. Camp provides a safe and supported environment for hands-on learning as well as a place to meet new friends and create lasting memories.</p>
<p>In   <%=(currentYear - 1)%>, PACER Center collaborated with community partners for the <%=(currentYear - 2003)%><sup>th</sup> consecutive year to present a camp specifically for middle school girls with disabilities. Technology experts, scientists, and engineers from Accenture, C.H. Robinson, IBM, Medtronic and 3M gathered for five days in August and generously donated their talents, resources, and insight to inspire middle school girls with disabilities.</p>
<p>The  <%=(currentYear - 1)%> EX.I.T.E. Camp was sponsored with generous donations from Boston Scientific, the Donaldson Company, the ECMC Foundation, Xcel Energy, and 3M Company. The  <%=currentYear%> EX.I.T.E. camp will bring similar experiences.</p>
<p>Please contact Tina Hanson at 952-838-9000 or <a href="mailto:stc@pacer.org">stc@pacer.org</a> for more information or questions about this program.</p>
<%If regOpen Then %>

<h2 class="greenBar">Apply Now - Application Deadline: extended to July 10<sup>th</sup> 2017.</h2>
<ul>
	<li>Microsoft Word Application - <a href="/stc/exite/docs/EXITE-Camp-Application.doc" target="_blank"><i class="fa fa-file-word-o"></i> Complete this application and send back as an email attachment.  <span class="fa fa-external-link"></span></a></li>
    
    <li>Printable PDF Application - <a href="/stc/exite/pdf/EXITE-Camp-Application.pdf" target="_blank"> <span class="fa fa-file-pdf-o"></span> Print, complete, and mail the camp application.  <span class="fa fa-external-link"></span></a></li>
    
</ul>
<%Else%>
<hr />
<p style="font-size:1.3em;">For information about registration for the 2017 EX.I.T.E. Camp, please contact Tina Hanson at 952-838-9000 or <a href="mailto:stc@pacer.org">stc@pacer.org</a>.</p>
<%End If%>
 
<!--<p style="font-size:1.1em; font-weight:bold"><span style="color:red">Deadline Extended! Apply Now! </span>- there are still a few spots remaining for this years EXITE camp. Spots are filling fast.</p>
<p>Applications for the 2012 camp  are currently available and due by<strong> May 1, 2012</strong>. Please contact Tina Hanson at  952-838-9000 or <a href="mailto:meghan.kunz@pacer.org">meghan.kunz@pacer.org</a> &nbsp;for more information or questions about this program. </p>
-->
<!--<p>Applications coming soon!</p>-->






<table id="campSchedule" cellspacing="0" cellpadding="15" align="center" style="margin-top:50px;">
	<caption>
		EXITE Camp Schedule  <%=currentYear%>
	</caption>
	<tr>
		<td class="BoRi">Thursday, Aug. 3</td>
		<td class="Bo">Opening Ceremony</td>
		<td class="BoLe">4 to 5 p.m.</td>
	</tr>
	<tr>
		<td class="BoRi">Monday, Aug. 7 2017</td>
		<td class="Bo">Camp Day</td>
		<td class="BoLe">9 a.m. to 4 p.m.</td>
	</tr>
	<tr>
		<td class="BoRi">Wednesday, Aug. 9</td>
		<td class="Bo">Camp Day</td>
		<td class="BoLe">9 a.m. to 4 p.m.</td>
	</tr>
	<tr>
		<td class="BoRi">Friday, Aug. 11</td>
		<td class="Bo">Camp Day</td>
		<td class="BoLe">9 a.m. to 4 p.m.</td>
	</tr>
	<tr>
		<td class="BoRi">Tuesday, Aug. 15</td>
		<td class="Bo">Camp Day</td>
		<td class="BoLe">9 a.m. to 4 p.m.</td>
	</tr>
	<tr>
		<td class="BoRi">Thursday, Aug. 17</td>
		<td class="Bo">Camp Day</td>
		<td class="BoLe">9 a.m. to 4 p.m.</td>
	</tr>
	<tr>
		<td class="Ri">Thursday, Aug. 17</td>
		<td align="center">Closing Ceremony</td>
		<td class="Le">4 to 5:30 p.m.</td>
	</tr>
</table>
<!--
<p><br />
Applications for the 2010 EX.I.T.E. camp are available and accepted until<strong> May 1, 2010.</strong><br />
<br />
<a href="/workshops/flyer/EXITE2009.pdf">view the camp flyer </a> <img src="/images/pdficon_small.gif" alt="PDF"><br />

</p>
<p><strong>Mail To:</strong></p>
<p>Tina Hanson<br />
	PACER Center, Inc.<br />
	8161 Normandale Blvd.<br />
	Bloomington, MN 55437<br />
	or<br />
	Email Applications to 
	<a href="mailto:stc@pacer.org">stc@pacer.org</a></p>
<p>
	For more information, please contact Tina Hanson at 952-838-9000 or 
	<a href="mailto:stc@pacer.org">stc@pacer.org</a>. 
</p>
-->
<div id="pageextender" style="clear:both">&nbsp;</div>


</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer2.htm"-->

</div>

</body>
</html>