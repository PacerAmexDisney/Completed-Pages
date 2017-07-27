<%
If Session("pcnLogin") <> "Valid" Then
	Session("pcnEntranceURL") = Request.ServerVariables("URL")
	Response.Redirect("/publications/ParentCenterNetwork/index-login.asp")
End If
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Parent Center Resources</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />
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




<div id="pagetoporange">
<div id="logout" class="fltrt" style="width:5em; padding-top:8px;"><a href="/publications/parentcenternetwork/log-out.asp">Log Out</a></div>
<div id="breadcrumb"><a href="http://www.pacer.org/index.asp">Home</a> / <a href="http://www.pacer.org/pandr/index.asp">Programs &amp; Resources</a> / <a href="http://www.pacer.org/publications/index.asp">Publications</a> /
	<h1>Parent Center Resources</h1>
</div>
</div>

<div id="leftbar">
<!--#include virtual="/publications/ParentCenterNetwork/navBar.html" -->
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="pdfdownload";
	var currSubId="none";
	// any Subtree that I want to Display
	var showTree = "manual-sub";
	
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

<div id="pagecontentright">

<!--BEGIN CONTENT-->

<h2>Management Manual PDF Download</h2>
<div class="alertBox" style="width:300px;">
<ul>
	<li class="pdficonlist"><a href="/publications/ParentCenterNetwork/assets/manual/pdf/MM2012-All.pdf" target="_blank">Complete Manual PDF download</a> - 3.3 MB
</li>
<li><a href="/publications/ParentCenterNetwork/management-manual/management-manual-sample-docs.asp">Management Manual Sample Documents</a></li>
</ul>
</div>
<ul>
  <li class="pdficonlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/pdf/MM2012 Title Page and Index.pdf">Title Page and Table of Contents</a></li>
  <li class="pdficonlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/pdf/MM2012 Introduction.pdf">Introduction</a></li>
  <li class="pdficonlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/pdf/MM2012 Chapter 1.pdf">Chapter 1 - Board of Directors</a></li>
  <li class="pdficonlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/pdf/MM2012 Chapter 2.pdf">Chapter 2 - Staff and Personnel Development</a></li>
  <li class="pdficonlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/pdf/MM2012 Chapter 3.pdf">Chapter 3 - Financial Management</a></li>
  <li class="pdficonlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/pdf/MM2012 Chapter 4.pdf">Chapter 4 - Office and Work Environment</a></li>
  <li class="pdficonlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/pdf/MM2012 Chapter 5.pdf">Chapter 5 - Program Development, Monitoring, and Reporting</a></li>
  <li class="pdficonlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/pdf/MM2012 Chapter 6.pdf">Chapter 6 - Reporting to the U.S. Department of Education</a></li>
  <li class="pdficonlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/pdf/MM2012 Chapter 7.pdf">Chapter 7 - Outreach and PR</a></li>
  <li class="pdficonlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/pdf/MM2012 Chapter 8.pdf">Chapter 8 - Development and Fundraising</a></li>
  <li class="pdficonlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/pdf/MM2012 Chapter 9.pdf">Chapter 9 - Technology Topics</a></li>
  <li class="pdficonlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/pdf/MM2012 Appendix.pdf">Appendix</a></li>
  <li class="pdficonlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/pdf/pcguidetoedgar.pdf">Parent Center's Guide to EDGAR</a></li>
  <li class="pdficonlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/pdf/PCStandards.pdf">Parent Center Standards of Excellence</a></li>
</ul>

<!--END CONTENT-->
<div id="pageextender" style="clear:both">&nbsp;</div>


</div>

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>