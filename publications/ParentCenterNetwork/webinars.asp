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
	var currId="webinars";
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

<h2><strong>Archived Webinars and Conference Calls</strong></h2>
<h4>Quarterly Call with OSEP Director: Results Driven Accountability (RDA)</h4>
  <p>Original Webinar Date: September 26, 2013</p>
  <p>The call will focus on providing an overview of Results Driven Accountability (RDA) as it has been developed to date.&nbsp; The overview will focus on the general principles that guide the development of RDA and the current information on the development of a Systemic State Improvement Plan (SSIP) that will be part of the Annual Performance Reports (APR) that all States must submit annually as part of ongoing monitoring of the implementation of IDEA.&nbsp; The information on RDA will lead to a discussion of how parent centers may be involved at the State level with RDA, and specifically the development of the SSIP.&nbsp;</p>
  <ul>
  <li><a href="/publications/ParentCenterNetwork/archivedwebinars/quarterlycall_rda.asp" target="_blank"><strong>View the Archived Webinar</strong></a></li>
  <li><a href="/publications/ParentCenterNetwork/assets/webinars/RDA-ParentCenterPresentation.pdf" target="_blank"><strong>Download the PowerPoint Slides</strong></a></li>
  <li>Related Link: <a href="http://www2.ed.gov/about/offices/list/osers/osep/rda/index.html"><strong>http://www2.ed.gov/about/offices/list/osers/osep/rda/index.html</strong></a></li>
  </ul>
  <hr />
<h4>Level Up Your Fundraising: Understanding the Psychology of What Makes People Donate Online</h4>
  <p>Original Webinar Date: September 24, 2013</p>
  <p>Are you trying to figure out how to translate engaging supporters on social media like Twitter and Facebook into donations? Do you want to learn how to motivate more people to donate on your website? Many nonprofit organizations struggle to attract new donors and sponsors from their online fundraising efforts. In this session, Aaron Long will explain what people are looking for online and what will make them take action and donate on your website. He will share best practices and real examples from his work with nonprofits successfully using web marketing in combination with their social media, email newsletters, and offline efforts to drive donations. You&rsquo;ll come away with ideas and tips you can start implementing right away to improve your online fundraising.</p>
  <ul>
  <li><a href="/publications/ParentCenterNetwork/archivedwebinars/level-up-your-fundraising.asp" target="_blank"><strong>View the Archived Webinar</strong></a></li>
  </ul>
  <hr />
<h4>Quarterly OSEP Call with Parent Centers: <em>Recent U.S. Department of Education Guidance Affecting Students with Disabilities</em></h4>
  <p>Original Conference Call Date: June 27, 2013</p>
  <ul>
  <li><a href="/publications/ParentCenterNetwork/assets/webinars/June27OSEPCall.wav" target="_blank"><strong>Listen to the Conference Call</strong> (35 mins)</a></li>
  </ul>
  <p>Related Documents:</p>
  <p><em>Policy Letters Mentioned on Call:</em></p>
  <ul>
  <li>Gallo (consent requirements related to Functional Behavioral Assessments): <a href="http://www2.ed.gov/policy/speced/guid/idea/memosdcltrs/acc-12-017845r-ut-gallo-fba-4-2-13.pdf"><strong>http://www2.ed.gov/policy/speced/guid/idea/memosdcltrs/acc-12-017845r-ut-gallo-fba-4-2-13.pdf</strong></a></li>
  <li>Johnson (natural environments): <a href="http://www2.ed.gov/policy/speced/guid/idea/memosdcltrs/12-012883-johnson-natenv4-18-13.pdf"><strong>http://www2.ed.gov/policy/speced/guid/idea/memosdcltrs/12-012883-johnson-natenv4-18-13.pdf</strong></a></li>
  <li>Flinn (FERPA/HIPAA): <a href="http://www2.ed.gov/policy/speced/guid/idea/memosdcltrs/12-025676r-tx-flinn-ferpa5-8-13.pdf"><strong>http://www2.ed.gov/policy/speced/guid/idea/memosdcltrs/12-025676r-tx-flinn-ferpa5-8-13.pdf</strong></a></li>
  <li>Northrop (parent members of IEP teams): <a href="http://www2.ed.gov/policy/speced/guid/idea/memosdcltrs/12-023417r-me-northrop-parentparticipationiepmeetings5-21-13.pdf"><strong>http://www2.ed.gov/policy/speced/guid/idea/memosdcltrs/12-023417r-me-northrop-parentparticipationiepmeetings5-21-13.pdf</strong></a></li>
  </ul>
  <p><em>Dear Colleague Letters Mentioned on Call:</em></p>
  <ul>
  <li>June 19, 2013 Dear Colleague Letter on Braille Instruction: <a href="http://www2.ed.gov/policy/speced/guid/idea/memosdcltrs/brailledcl-6-19-13.doc"><strong>http://www2.ed.gov/policy/speced/guid/idea/memosdcltrs/brailledcl-6-19-13.doc</strong></a></li>
  <li>June 11, 2013 Dear Colleauge Letter on Model Notice for Use of Public Benefits or Insurance: <a href="http://www2.ed.gov/policy/speced/guid/idea/memosdcltrs/accmodelwrittennotification-6-11-13.doc"><strong>http://www2.ed.gov/policy/speced/guid/idea/memosdcltrs/accmodelwrittennotification-6-11-13.doc</strong></a></li>
  </ul>
  <hr />
<h4>OSEP Parent Center Call on SPP/APR Notices on Request for Comment</h4>
  <p>Original Conference Call Date: May 2, 2013</p>
  <p>The U.S. Department of Education has published two Comment Requests on Agency Information Collection Activities related to proposed revisions to the State Performance Plans/Annual Performance Reports (SPP/APR) that States must submit under IDEA. On this call, OSEP summarized the proposed changes and how Parent Centers can comment.</p>
  <ul>
  <li><a href="/publications/ParentCenterNetwork/assets/webinars/OSEPaprPTI.wav" target="_blank"><strong>Listen to the Conference Call</strong></a> (30 mins.)</li>
  <li>Part B Information Docket: <a href="http://www.regulations.gov/#!docketDetail;D=ED-2013-ICCD-0047"><strong>http://www.regulations.gov/#!docketDetail;D=ED-2013-ICCD-0047</strong></a></li>
  <li>Part C Information Docket: <a href="http://www.regulations.gov/#!docketDetail;D=ED-2013-ICCD-0048"><strong>http://www.regulations.gov/#!docketDetail;D=ED-2013-ICCD-0048</strong></a></li>
  </ul>
  <hr />
<h4>Financial Planning for Sustainable Nonprofits Webinar</h4>
  <p>Original Webinar Date: April 4, 2013</p>
  <ul>
  <li><a href="/publications/ParentCenterNetwork/archivedwebinars/financial-planning-for-sustainable-nonprofits.asp" target="_blank"><strong>View the Archived Webinar</strong></a></li>
  <li><a href="/publications/ParentCenterNetwork/assets/webinars/web-PPT-Financial-Planning-for-Sustainable-Nonprofits.pdf" target="_blank"><strong>Download the PowerPoint Slides</strong></a></li>
  <li><a href="/publications/ParentCenterNetwork/assets/webinars/Financial-Planning-For-Sustainable-Nonprofits-2013.pdf" target="_blank"><strong>Additional Handout</strong></a></li>
  </ul>
  <hr />
<h4>2013 Parent Center Continuation Report Webinar</h4>
  <p>Original Webinar Date: March 14, 2013</p>
  <ul>
  <li><a href="/publications/ParentCenterNetwork/archivedwebinars/2013aprwebinar.asp" target="_blank"><strong>View the Archived Webinar</strong></a></li>
  <li><a href="/publications/ParentCenterNetwork/assets/webinars/Continuation-Report-Powerpoint-3-14-13.pdf" target="_blank"><strong>Download the PowerPoint Slides</strong></a></li>
  <li><a href="/publications/ParentCenterNetwork/assets/webinars/CutPasteWordG5.pdf" target="_blank"><strong>Instructions for Copying from Microsoft Word into G5</strong></a></li>
  </ul>
  <hr />
<h4>Quarterly OSEP Call with Parent Centers:<em> Part B Final Regulations Related to Parental Consent for the Use of Public Benefits or Insurance</em></h4>
  <p>Original Webinar Date: March 7, 2013</p>
  <ul>
  <li><a href="/publications/ParentCenterNetwork/assets/webinars/PartBconsent-PCcall3-05-13.ppt" target="_blank"><strong>Download the PowerPoint Slides</strong></a></li>
  </ul>
  <p><em>Due to technical difficulties, this webinar was not recorded.</em></p>
  <hr />
<h4>Promoting Transparency and Managing Risk Through Sound Financial Practices Webinar</h4>
  <p>Original Webinar Date: February 27, 2013</p>
  <ul>
  <li><a href="/publications/ParentCenterNetwork/archivedwebinars/promoting-transparency-and-managing-risk.asp" target="_blank"><strong>View the Archived Webinar&nbsp;</strong></a></li>
  <li><a href="/publications/ParentCenterNetwork/assets/webinars/Promoting-Transparency-and-Managing-Risk-2013.pdf" target="_blank"><strong>Download the PowerPoint Slides</strong></a></li>
  </ul>
  <hr />
<h4>2013 Parent Center Performance Measures Webinar</h4>
  <p>Original Webinar Date: January 23, 2013</p>
  <ul>
  <li><a href="/publications/ParentCenterNetwork/archivedwebinars/2013perfmeas.asp" target="_blank"><strong>View the Archived Webinar&nbsp;</strong></a></li>
  <li><a href="/publications/ParentCenterNetwork/assets/webinars/PerfMeas2013-01.23.pdf" target="_blank"><strong>Download the PowerPoint Slides</strong></a></li>
  </ul>
  <hr />
<h4>Introduction to Strategic Technology Planning</h4>
  <p>Original Webinar Date: December 12, 2012</p>
  <p>Twenty minute webinar providing summary information on 2012-2013 Technology Supplemements, Technology Leadership Initiative (TLI) technology planning model, and existing technology planning resources for Parent Centers.</p>
  <ul>
  <li><a href="/publications/ParentCenterNetwork/archivedwebinars/introtechplanwebinar.asp" target="_blank"><strong>View the Archived Webinar</strong></a></li>
  <li><a href="/publications/ParentCenterNetwork/assets/webinars/StrategicTechnologyPlanning12-12-12.pdf" target="_blank"><strong>Download the PowerPoint Slides</strong></a></li>
  </ul>
  <hr />
<h4>Quarterly OSEP Call with Parent Centers:<em> OSEP Updates</em></h4>
  <p>OSEP staff presented updates on a number of initiatives and activities including Results-Driven Accountability, focus group on secondary transition, Tourette Syndrome resources for families, Part C Curriculum, and the PROMISE initiative.</p>
  <ul>
  <li><a href="http://tadnet.adobeconnect.com/p23w9u08cdb/"><strong>View the Archived Webinar</strong></a></li>
  <li><a href="/publications/ParentCenterNetwork/assets/webinars/OSEPQuarterlyCall_12_6_12.pdf" target="_blank"><strong>Download the PowerPoint Slides</strong></a></li>
  </ul>
  <hr />
<h4>Quarterly OSEP Director Call for Parent Centers: <em>Restraint and Seclusion</em></h4>
  <p>Larry Wexler, Director of OSEP&rsquo;s Research to Practice Division, presented the principles of OSEP&rsquo;s recently released Restraint and Seclusion resource document. Original webinar date: September 20, 2012.</p>
  <ul>
  <li><a href="https://tadnet.adobeconnect.com/p4idwwwxgtg/"><strong>View the Archived Webinar</strong></a></li>
  <li><a href="http://www2.ed.gov/policy/seclusion/restraints-and-seclusion-resources.pdf"><strong>Download the Resource Document</strong></a></li>
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