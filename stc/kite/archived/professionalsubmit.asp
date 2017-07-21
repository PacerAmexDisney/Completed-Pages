<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Project KITE Application: Teacher/Service Provider</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../../css/leftnavigation.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../../css/print.css" media="print" />

<script type="text/javascript" src="../../css/menu.js"></script>

<%
Dim myMail, content
if request.form("submit")="Submit" then

	content = content & "Name:" & request.form("name") & vbCrLf & vbCrLf
	content = content & "Date:" & request.form("date")  & vbCrLf & vbCrLf
	content = content & "School/facility name:" & request.form("schoolName") & vbCrLf & vbCrLf
	content = content & "Title:" & request.form("title") & vbCrLf & vbCrLf
	content = content & "Student's Name:" & request.form("studentName") & vbCrLf & vbCrLf
	content = content & "Grade/Year in School:" & request.form("grade") & vbCrLf & vbCrLf
	content = content & "Please describe the child's disability:" & vbCrLf
	content = content & request.form("childDisability") & vbCrLf & vbCrLf
	content = content & "Please describe the child's strengths:" & vbCrLf 
	content = content & request.form("childStrengths")& vbCrLf& vbCrLf
	content = content & "Tell us about your computer skills." & vbCrLf 
	content = content & "How familiar are you with computers? " & request.form("familiarComp") & vbCrLf & vbCrLf
	content = content & "What type of computer(s) have you used? " & request.form("computersUsed") & vbCrLf & vbCrLf
	content = content & "What software programs have you used? " & request.form("softwareUsed") & vbCrLf & vbCrLf
	content = content & "What type of computer do you have access to:" & vbCrLf
	content = content & "at work? " & request.form("computerAtWork") & vbCrLf & vbCrLf
	content = content & "at home? " & request.form("computerAtHome") & vbCrLf & vbCrLf
	content = content & "Are you familiar with assistive technology (AT) devices or software? " & request.form("familiarAT") & vbCrLf & vbCrLf
	content = content & "What assistive technology devices or software have you used with your child? " & request.form("assistiveTech") & vbCrLf & vbCrLf
	content = content & "Please describe AT devices or software that you wish to learn more about in Project KITE trainings:" & vbCrLf & vbCrLf
	content = content & request.form("atDevicesToLearn") & vbCrLf & vbCrLf
	content = content & "Please tell us about the children with whom you work." & vbCrLf
	content = content & "How many children with disabilities do you work with on a weekly basis and what are their disabilities?" & vbCrLf
	content = content & request.form("workWith") & vbCrLf
	content = content & "What are the ages of the children you work with?" & request.form("ageOfChildren")
	content = content & "What is your cultural background? " & request.form("culturalBackground") & "&nbsp;" & request.form("culturalBackgroundOther") & vbCrLf & vbCrLf
	content = content & "What is your income level? " & request.form("incomeLevel") & vbCrLf & vbCrLf
	content = content & "In which geographical area do you live? " & request.form("geographicalArea") & vbCrLf
	content = content & request.form("geographicalAreaOther") & vbCrLf & vbCrLf
	content = content & "Would you be a potential resource person for others?" & vbCrLf
	content = content & request.form("resource") & vbCrLf
	content = content & "How many professionals?: " & request.form("numberProfessionals") & vbCrLf
	content = content & "How many parents?: " & request.form("numberParents") & vbCrLf
	content = content & "Please write a few lines about why you wish to attend this training and the skills you hope to acquire through Project KITE." & vbCrLf & vbCrLf
	content = content & request.form("wishToAttend") & vbCrLf & vbCrLf
	content = content & "I am interested in participating in Project KITE and will agree to attend the training sessions and to work with the team for the benefit of my child." & vbCrLf & vbCrLf
	content = content & "Address: " & request.form("address") & vbCrLf
	content = content & "Phone (h) " & request.form("hPhone") & vbCrLf
	content = content & "Phone (w) " & request.form("wPhone") & vbCrLf
	content = content & "E-mail (h) " & request.form("hEmail") & vbCrLf
	content = content & "E-mail (w) " & request.form("wEmail") & vbCrLf & vbCrLf

	Set myMail = CreateObject("CDO.Message")
		
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
		myMail.Configuration.Fields.Update
	myMail.From = "stc@pacer.org"
	myMail.To = "stc@pacer.org"
'	myMail.To = "stephanie.rosso@pacer.org"
	myMail.Subject = "KITE Parent Application"
	myMail.TEXTBody = content
	myMail.Send
	Set myMail = Nothing
end if
%>
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
<div id="rightBar">

<p style="padding: 0; margin: 0;">
<img src="images/KITE-4.jpg" width="250" height="188" alt="KITE participants looking at communication boards and books at a workshop" />
</p>

</div>

<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<a href="https://www.facebook.com/simontechnologycenter" target="_blank">Join the STC Facebook Page</a> | 
<img src="../../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="../../index.asp">Home</a> / <a href="../../pandr/index.asp">Programs &amp; Resources</a> / 
	<a href="../index.asp">Simon Technology Center</a> / <a href="index.asp">Project KITE</a> / Teacher/Service Provider Participation Form
	
	<h1>Project KITE</h1>
	
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
	var currSubId="subproj-pk";
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

<!--BEGIN CONTENT-->

<h1>
Thank you for submitting your application.
</h1>
<p>
<a href="./">KITE Home Page</a>
</p>

<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>