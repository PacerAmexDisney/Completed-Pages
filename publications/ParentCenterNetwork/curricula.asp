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
<title>Parent Center Resources - Curricula</title>
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
<!--#include file="navBar.html" -->
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

<h2>Curricula</h2>
<h4><a href="/publications/ParentCenterNetwork/curricula/bullyingprevention.asp">Bullying Prevention: Everyone's Responsibility - What Parents Can Do</a></h4>
<h4>Diversity Inclusion</h4>
<ul>
<li><a href="/publications/ParentCenterNetwork/assets/curricula/TheTimeIsNow-DiversityInclusion.ppt">The Time is Now: Diversity Inclusion for Parent Centers and Advocates</a> (.ppt - 3MB)</li>
</ul>
<h4>Families are Important: An Early Childhood Curriculum</h4>
<ul>
  <li>New - <a href="/publications/ParentCenterNetwork/assets/curricula/FamiliesAreImportantUpdatedRegsOct2012.pptx">Families are Important: An Early Childhood Curriculum (Updated for 2011 Part C Regulations)</a> (.ppt - 34.4MB)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/Las-Familias-son-Importantes!-Spanish-Dec13.pptx">Families are Important: An Early Childhood Curriculum (Spanish)</a> (2013 edition) (.ppt - 35MB)</li>
</ul>
<h4>IDEA 2004</h4>
<ul>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/IDEA2004update.ppt">IDEA 2004 for Families and Advocates: Updated for Final Regulations</a> (.ppt - 11.19MB)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/IDEA2004TrainingofTrainers.ppt">IDEA 2004: Selected Highlights (Train the Trainers) (English)</a> (.ppt - 59.43MB)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/IDEA2004ForFamiliesandAdovocates-sp.ppt">IDEA 2004 for Families and Advocates-Pending Final Regulations (Spanish)</a> (.ppt - 5.8MB)</li>
</ul>

<h4>I Wish I Knew Then What I Know Now</h4>
<ul>
<li><a href="/publications/ParentCenterNetwork/assets/curricula/IWishIKnewThen.pptx" target="_blank">I Wish I Knew Then… PowerPoint (English)</a> (.ppt - 41MB)</li>
<li><a href="/publications/ParentCenterNetwork/assets/curricula/IWishIKnewThenSpanish.pptx">I Wish I Knew Then… PowerPoint (Spanish)</a> (.ppt - 41MB)</li>
<li><a href="/publications/ParentCenterNetwork/assets/curricula/IWishIKnewThentrainersmanual.pdf">I Wish I Knew Then… Trainer’s Manual</a> (.pdf - 3.5MB)</li>
<li><a href="http://www.youtube.com/watch?v=6Sm2wjGpVU0&amp;feature=youtu.be" target="_blank">I Wish I Knew Then… Video Overview</a> (YouTube)</li>
</ul>

<h4>Parent and Professional Collaboration: A Cultural Perspective</h4>
<ul>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/ParentandProfessionalCollaboration-Curriculum.ppt">Parent and Professional Collaboration: A Cultural Perspective (English)</a> (.ppt - 1.28MB)</li>
</ul>
<h4>Positive Behavioral Interventions</h4>
<ul>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/PBIandIDEA2004.ppt">Positive Behavioral Interventions and IDEA 2004</a> (.ppt - 2.07MB)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/PBIandIDEASpanish.ppt">Positive Behavioral Interventions and IDEA 2004 (Spanish) </a>(.ppt - 2.02MB)</li>
</ul>
<h4>Section 504, the Americans with Disabilities Act Amendments Act (ADAAA), &amp; Students with Disabilities: From Early Childhood to Young Adulthood</h4>
  <p><strong><em>PowerPoint Presentations - English</em></strong></p>
<ul>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-PowerPoint-Presentations/Section-504-ADAAA-and-Students-with-Disabilities.pptx">Section 504, the Americans with Disabilities Act Amendments Act (ADAAA), &amp; Students with Disabilities</a> (.pptx - 10.24MB)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-PowerPoint-Presentations/ADAAA-and-Child-Care.pptx">Child Care and the ADAAA</a> (.pptx - 3.76MB)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-PowerPoint-Presentations/K12-504-and-ADAAA.pptx">Section 504 and the ADAAA: How Changes in the Law Impact Your Child with a Disability or Special Health Care Need (K12)</a> (.pptx - 8.23MB)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-PowerPoint-Presentations/504-and-ADAAA-After-High-School.pptx">Section 504 and the ADAAA: After High School</a> (.pptx - 4.15MB)</li>
</ul>
<p><strong><em>PowerPoint Presentations - Spanish</em></strong></p>
<ul>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-PowerPoint-Presentations/504EC-YA_Spanish.pptx">Section 504, the Americans with Disabilities Act Amendments Act (ADAAA), &amp; Students with Disabilities</a> (Spanish) (.pptx - 10.5MB)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-PowerPoint-Presentations/504ChildCare_Spanish.pptx">Child Care and the ADAAA</a> (Spanish) (.pptx - 4.2MB)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-PowerPoint-Presentations/504K12_Spanish.pptx">Section 504 and the ADAAA: How Changes in the Law Impact Your Child with a Disability or Special Health Care Need (K12)</a> (Spanish) (.pptx - 6.8MB)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-PowerPoint-Presentations/504AfterHS_Spanish.pptx">Section 504 and the ADAAA: After High School</a> (Spanish) (.pptx - 4.3MB)</li>
</ul>
<p><strong><em>Trainer&rsquo;s Manuals</em></strong></p>
<ul>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-Trainer-Manuals/Section-504-ADAAA-and-Students-with-Disabilities.pdf">Section 504, the Americans with Disabilities Act Amendments Act (ADAAA), &amp; Students with Disabilities</a> (.pdf - 15.15MB)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-Trainer-Manuals/ADAAA-and-Child-Care.pdf">Child Care and the ADAAA</a> (.pdf - 4.38MB)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-Trainer-Manuals/K12-504-and-ADAAA.pdf">Section 504 and the ADAAA: How Changes in the Law Impact Your Child with a Disability or Special Health Care Need (K12)</a> (.pdf - 4.38MB)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-Trainer-Manuals/504-and-ADAAA-after-High-School.pdf">Section 504 and the ADAAA: After High School</a> (.pdf - 6.41MB)</li>
</ul>
<p><strong><em>Handouts</em></strong></p>
<ul>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-Handouts/Commonly-Asked-Questions-about-Child-Care-Centers-and-the-ADA.pdf">Commonly Asked Questions about Child Care and the ADA</a> (.pdf)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-Handouts/Dear-Colleague-Letter-Office-for-Civil-Rights-on-ADAAA.pdf">Dear Colleague Letter – Office for Civil Rights on ADAAA</a> (.pdf)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-Handouts/FAQ-About-Section-504-and-the-Education-of-Children-with-Disabilities.pdf">FAQ About Section 504 and the Education of Children with Disabilities</a> (.pdf)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-Handouts/Guide-to-Services-for-Students-with-Disabilities--IDEA-ADA-and-504.pdf">Guide to Services for Students with Disabilities – IDEA, ADA, &amp; 504</a> (.pdf)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-Handouts/Questions-and-Answers-on-the-ADA-Amendments-Act-of-2008.pdf">Questions and Answers on the ADA Amendments Act of 2008 for Students with Disabilities Attending Public Elementary and Secondary Schools</a> (.pdf)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-Handouts/Section-504-and-ADAAA-Additional-Resources.pdf">Section 504 &amp; ADAAA Curricula Additional Resources</a> (.pdf)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-Handouts/Section-504-and-ADAAA-Curricula-References.pdf">Section 504 &amp; ADAAA Curricula References</a> (.pdf)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-Handouts/Section-504-and-ADAAA-Scenarios-for-Audience.pdf">Section 504 &amp; ADAAA Scenarios for Audience</a> (.pdf)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-Handouts/Students-with-Disabilities-Preparing-for-Postsecondary-Education.pdf">Students with Disabilities Preparing for Postsecondary Education</a> (.pdf)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/504-ADAAA-Handouts/Teaching-Adult-Learners.pdf">Teaching Adult Learners</a> (.pdf - 1.54MB)</li>
</ul>
<h4>Serving on Local Special Education Committees</h4>
<ul>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/ServingonLocalSpecialEducationCommittees.ppt">Serving on Local Special Education Committees </a>(.ppt - 4.83MB)</li>
</ul>
<h4>Special Education: What Do I Need To Know</h4>
<ul>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/SpecEd-WhatDoINeedtoKnow-English.ppt">Special Education: What Do I Need To Know (English) </a>(.ppt - 2.14MB)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/SpecEd-WhatDoINeedtoKnow-Spanish.ppt">Special Education: What Do I Need To Know (Spanish)</a> (.ppt - 2.14MB)</li>
</ul>
<h4>Understanding ADHD</h4>
<ul>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/ADHDEnglishPresentation.ppt">Understanding ADHD (English)</a> (.ppt - 4.54MB)</li>
  <li><a href="/publications/ParentCenterNetwork/assets/curricula/ADHDSpanishPresentation.ppt">Understanding ADHD (Spanish)</a> (.ppt - 4.33MB)</li>
<li><a href="/publications/ParentCenterNetwork/assets/curricula/ADHDNativeAmericanPresentation.ppt">Understanding ADHD (Native American)</a> (.ppt - 4.93MB)</li>
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