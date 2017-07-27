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
<title>PCN Login - Parent Center Network - Parent Center Documents</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" media="screen, projection" />

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
<div id="logout" class="fltrt" style="width:5em; padding-top:8px;"><a href="/publications/parentcenternetwork/log-out.asp">Log Out</a></div>
<div id="breadcrumb"><a href="http://www.pacer.org/index.asp">Home</a> / <a href="http://www.pacer.org/pandr/index.asp">Programs &amp; Resources</a> / <a href="http://www.pacer.org/publications/index.asp">Publications</a> /
	<h1>Parent Center Resources</h1>
</div>
</div>

<div id="leftbar">
<!--#include virtual="/publications/parentcenternetwork/navBar.html" -->
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="overview";
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

<div id="pagecontent"><!--BEGIN CONTENT-->
	
	<h2>Parent Center Log-In Section Overview</h2>
	<div>
		<h3><a href="/publications/ParentCenterNetwork/curricula.asp">Curricula</a></h3>
		<p> Download the PowerPoint files from the current trainings developed by the ALLIANCE National PTAC. </p>
		<h3><a href="/publications/ParentCenterNetwork/management-manual.asp">Management Manual</a></h3>
		<p> Download full chapters from the  Management Manual or access sample   documents that you can save and adapt for your Parent Center. </p>
<!--		<h3><a href="http://www.parentcenternetwork.org/national/log-in/forms-and-documents.html">Forms And Documents</a></h3>
		<ul>
			<li>Parent Center Standards for Excellence</li>
			<li>Parent Center Data Collection Forms and  Instructions</li>
		</ul>
		<h3><a href="http://www.parentcenternetwork.org/national/log-in/nptac-institute-presentations.html" target="_blank">NPTAC Institute Presentations</a></h3>
		<p>Restricted Access Materials: Access Power Point  and handouts from sessions at the Technology and Management Institutes. <em>(Do Not Distribute)</em></p>
 -->

<h3><a href="/publications/ParentCenterNetwork/webinars.asp">Archived Webinars</a></h3>
		<p>Listen and view PowerPoint’s from past webinars hosted by the Alliance National PTAC. Webinar topics include:  504 &amp; ADA Parent Center, Higher Education Opportunity Act and Students with Intellectual Disabilities, Parent Center Continuation Reports, Parent Center Performance Measures, Project STOMP, TACSEI &amp; CSEFEL Webinar on Social Emotional Intervention Resources, and Update on OSEP’s Plans for Parent Program Grants. </p>
	</div>




<div id="pageextender" style="clear:both">&nbsp;</div>


</div>

<!--END CONTENT-->

</div>


<!--#include virtual="/footer.htm"-->

</div></div>

</body>
</html>