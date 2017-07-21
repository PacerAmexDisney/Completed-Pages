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
<!--#include virtual="/publications/parentcenternetwork/navBar.html" -->
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="curricula";
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

<div id="pagecontentright">

<!--BEGIN CONTENT-->

<h2>Bullying Prevention - Everyone's Responsibility: What Parents Can Do</h2>
  <h4>Training Curriculum</h4>
  <p><a href="/publications/ParentCenterNetwork/assets/curricula/BullyingPrevention/BullyingPrevention_PPT_WhatParentsCanDo.pptx">PowerPoint (with embedded videos)</a></strong> (.pptx - 149MB)</p>
  <p><a href="/publications/ParentCenterNetwork/assets/curricula/BullyingPrevention/BullyingPrevention_PPT_WhatParentsCanDo_NoVideo.pptx"><strong>PowerPoint (without videos)</strong></a> | <a href="/publications/ParentCenterNetwork/assets/curricula/BullyingPrevention/BullyingPrevention_PPT_WhatParentsCanDo_Spanish_NoVideo.pptx">Spanish version (without videos)</a> (.pptx - 5.13 MB)</p>
  <p>
  <a href="/publications/ParentCenterNetwork/assets/curricula/BullyingPrevention/BullyingPrevention_WhatParentsCanDo_TrainersManual.pdf"><strong>Trainer's Manual/Presenter Notes</strong></a> (.pdf - 2.06MB)</p>
  <p>
  <a href="/publications/ParentCenterNetwork/assets/curricula/BullyingPrevention/SampleEvaluation_BullyingPrevention_WhatParentsCanDo.doc"><strong>Sample Evaluation Form</strong></a> (.doc - 40KB)</p>
  <h4>Handouts</h4>
  <p><a href="/publications/ParentCenterNetwork/assets/curricula/BullyingPrevention/Handouts_BullyingPrevention_WhatParentsCanDo/Bullying and Harassment of Students with Diabilities_BP-18.pdf">Bullying and Harassment of Students with Disabilities</a></strong> (.pdf - 213KB)</p>
  <p>
  <a href="/publications/ParentCenterNetwork/assets/curricula/BullyingPrevention/Handouts_BullyingPrevention_WhatParentsCanDo/Common%20Views%20and%20Myths%20about%20Bullying_BP-1.pdf"><strong>Common Views and Myths about Bullying</strong></a> (.pdf - 105KB)</p>
  <p>
  <a href="/publications/ParentCenterNetwork/assets/curricula/BullyingPrevention/Handouts_BullyingPrevention_WhatParentsCanDo/Drama%20Is%20Happening%20to%20You_BP-17.pdf"><strong>Drama: Is it Happening to You? Advice to Teens who are Experiencing Bullying</strong></a> (.pdf - 135KB)</p>
  <p>
  <a href="/publications/ParentCenterNetwork/assets/curricula/BullyingPrevention/Handouts_BullyingPrevention_WhatParentsCanDo/Help%20Your%20Child%20Recognize%20the%20Signs%20of%20Bullying_BP-2.pdf"><strong>Help Your Child Recognize the Signs of Bullying</strong></a> (.pdf - 90KB)</p>
  <p>
  <a href="/publications/ParentCenterNetwork/assets/curricula/BullyingPrevention/Handouts_BullyingPrevention_WhatParentsCanDo/Is%20Your%20Child%20Being%20Bullied%20In%20Cyberspace_bp-13.pdf"><strong>Is Your Child Being Bullied in Cyberspace</strong></a> (.pdf - 120KB)</p>
  <p>
  <a href="/publications/ParentCenterNetwork/assets/curricula/BullyingPrevention/Handouts_BullyingPrevention_WhatParentsCanDo/Notifying%20the%20School%20About%20Bullying%20Incident_BP-19.pdf"><strong>Notifying the School About a Bullying Incident - Using a Template Letter</strong></a> (.pdf - 101KB)</p>
  <p>
  <a href="/publications/ParentCenterNetwork/assets/curricula/BullyingPrevention/Handouts_BullyingPrevention_WhatParentsCanDo/Steps%20To%20Take%20If%20Your%20Child%20Is%20Being%20Bullied%20At%20School_BP-15.pdf"><strong>Steps to Take if Your Child is Being Bullied at School</strong></a> (.pdf - 93KB)</p>
  <p>
  <a href="/publications/ParentCenterNetwork/assets/curricula/BullyingPrevention/Handouts_BullyingPrevention_WhatParentsCanDo/StudentActionPlan_Unknown.pdf"><strong>Student Action Plan Against Bullying</strong></a> (.pdf - 784KB)</p>
  <p>
  <a href="/publications/ParentCenterNetwork/assets/curricula/BullyingPrevention/Handouts_BullyingPrevention_WhatParentsCanDo/Telling%20Classmates%20About%20Your%20Child's%20Disability_PHP-c101.pdf"><strong>Telling Classmates About Your Child's Disability May Foster Acceptance</strong></a> (.pdf - 69KB)</p>
  <p>
  <a href="/publications/ParentCenterNetwork/assets/curricula/BullyingPrevention/Handouts_BullyingPrevention_WhatParentsCanDo/The%20Individualized%20Education%20Program_BP-4.pdf"><strong>The Individualized Education Program and Bullying</strong></a> (.pdf - 63KB)</p>
  <p>
  <a href="/publications/ParentCenterNetwork/assets/curricula/BullyingPrevention/Handouts_BullyingPrevention_WhatParentsCanDo/Tips%20for%20Teens_php-c149.pdf"><strong>Tips for Teens: Use Your IEP Meeting to Learn How to Advocate for Yourself</strong></a> (.pdf - 112KB)</p>
  <p>
  <a href="/publications/ParentCenterNetwork/assets/curricula/BullyingPrevention/Handouts_BullyingPrevention_WhatParentsCanDo/Use%20Positive%20Strategies%20to%20Protect%20Your%20Child_BP-16.pdf"><strong>Use Positive Strategies to Protect Your Child with Disabilities from Bullying</strong></a> (.pdf - 97KB)</p>
  <p>
  <a href="/publications/ParentCenterNetwork/assets/curricula/BullyingPrevention/Handouts_BullyingPrevention_WhatParentsCanDo/What%20if%20Your%20Child%20IS%20the%20Bully_PHP-c109.pdf"><strong>What if Your Child IS the Bully?</strong></a> (.pdf - 76KB)</p>

<!--END CONTENT-->
<div id="pageextender" style="clear:both">&nbsp;</div>


</div>

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>