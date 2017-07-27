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
	var currId="sampledocs";
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

<h2>Management Manual Sample Documents</h2>
  <p>Below are links to sample documents that are included in the Management Manual. They are available here as Word documents so you can download and adapt them for your center. Please remember to check any applicable state regulations when adapting documents.</p>
  <h4>Chapter 1 - Board of Directors</h4>
<ul>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/WhistleblowerPolicyforBoard-Sample.doc">Whistleblower Policy for Board of Directors</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/AdvBdWelcome-Sample.doc">Advisory Board Welcome Letter</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/AdvBdPermitForm-Sample.doc">Advisory Board Permission to Use Name Form</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/BoardCompositionAnalysisChart-Sample.doc">Board Composition Analysis Chart</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/BoardMemberAgreement-Sample.doc">Board Member Agreement</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/BoardofDirectorsSelf-Evaluation-Sample.doc">Board of Directors Self-Evaluation</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/ArticlesofIncorporation-Sample.doc">Articles of Incorporation</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/ConflictofInterestStatement-Samples.doc">Conflict of Interest Statements</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/BoardMeetingAgenda-Samples.doc">Board Meeting Agendas</a></li>
</ul>
<h4>Chapter 2 - Staff and Personnel Development</h4>
<ul>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/WhistleblowerPolicyforEmployees-Sample.doc">Whistleblower Policy for Employees</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/AcknowledgementofReceiptofPersonnelPolicies-Sample.doc">Acknowledgement of Receipt of Personnel Policies</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/ExecutiveDirectorPerformanceEvaluation-Sample.doc">Executive Director Performance Evaluation</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/PerformanceEvaluationforStaffMembers-Sample.doc">Performance Evaluation for Staff Members</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/ConsultantContract-Sample.doc">Consultant Contract</a></li>
</ul>
<h4>Chapter 3 - Financial Management</h4>
<ul>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/AdministrativeandFiscalCalendar-Sample.doc">Administrative and Fiscal Calendar</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/InvestmentGuidelines-Sample.docx">Investment Guidelines</a></li>
</ul>
<h4>Chapter 4 - Office and Work Environment</h4>
<ul>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/WorkshopSignInSheet-Sample.doc">Workshop Sign-In Sheet</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/ReimbursementForm-Sample.doc">Reimbursement Form</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/MileageLog-Sample.doc">Mileage Log</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/CheckRequest-Sample.doc">Check Request</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/ExpenseReport-Sample.doc">Expense Report</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/TelephoneLog-Sample.doc">Telephone Log</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/TimeSheet-Sample1.doc">Time Sheet 1</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/TimeSheet-Sample2.doc">Time Sheet 2</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/GrantAccountabilityRecords-Sample.doc">Grant Accountability Records</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/ContinuityofOperationsPlan-Sample.doc">Continuity of Operations Plan</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/EmergencySuccessionPlanTemplate-Sample.doc">Emergency Succession Plan Template – Sample</a></li>
</ul>
<h4>Chapter 5 - Program Development, Monitoring, and Reporting</h4>
<ul>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/ConfidentialityAgreement-Sample.doc">Confidentiality Agreement</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/ClientAccesstoRecordsForm-Sample.doc">Client Access to Records Form</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/PhotographicImagesReleaseForm-Sample.doc">Photographic Images Release Form</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/VideotapePermissionForm-Sample.doc">Videotape Permission Form</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/RequestforExchangeofInformation-Sample.doc">Request for Exchange of Information</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/WorkshopEvaluation-Sample.doc">Workshop Evaluation</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/ServicesEvaluation-Sample.doc">Services Evaluation</a></li>
</ul>
<h4>Chapter 6 - Reporting to the U.S. Department of Education</h4>
<ul>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/ED524BCover.doc">ED 524B Cover</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/ED524BStatusChart.doc">ED 524B Status Chart</a></li>
</ul>
<h4>Chapter 7 - Outreach and Public Relations</h4>
<ul>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/PressRelease-Sample.doc">Press Release</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/PublicServicesAnnouncements%28PSAs%29-Sample.doc">Public Service Announcements (PSAs)</a></li>
</ul>
<h4>Chapter 9 - Technology Topics</h4>
<ul>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/SocialNetworkingPlanforParentCenters-Sample.docx">Social Networking Plan for Parent Centers</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/ElectronicDevicesPolicy-Sample.docx">Electronic Devices Policy</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/InternetProcedures-Sample.docx">Internet Procedures</a></li>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/SocialMediaGuidelinesforUsingatWork-Sample.docx">Social Media Guidelines</a></li>
</ul>
<h4>Additional Materials</h4>
<ul>
  <li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/FamilyCenteredServicesStandardsNov2012.doc">Parent Center Standards – Family Centered Services</a></li>
<li class="wordiconlist"><a target="_blank" href="/publications/ParentCenterNetwork/assets/manual/doc/NonprofitStandardsNov2012.doc">Parent Center Standards – Nonprofit Management</a></li>
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