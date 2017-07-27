<% Dim currentPage 

currentPage = "health-enews-2012-05.html"

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>F2F HIC - Family-Centered Care</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
  document.write(unescape("%3Cscript src='/js/jquery-1.9.1.min.js' type='text/javascript'%3E%3C/script%3E"));
}
var mainDescriptionHeight;
$(document).ready(function() {
	$('#mainReadMore').click(function() {
		$('#mainDescription').animate({
			height: mainDescriptionHeight
			}, 2000, function() {
				$('#mainReadMore').hide();
			});
	});
	//Shrink Window on Load
	mainDescriptionHeight = $('#mainDescription').height();
	$('#mainDescription').animate({
		height: '200px'}, 1000, function() {
			$('#mainReadMore').css('display', 'block');
	});
});
 

 </script>
<style type="text/css">
#mainDescriptionWrapper{
	position:relative;
	border-bottom:1px solid #ccc;
	margin-bottom:10px;
	padding-bottom:10px;
}

#mainDescription{
	height:auto;
	border:5px solid #99A776;
	overflow:hidden;
	padding:5px;
	margin-bottom:30px;
}

#mainReadMore{
	display:none;
	position:absolute;
	bottom:30px;
	left:15px;
	width:8em;
	text-align:center;
	background:#eee;
	border:1px solid #ccc;
	padding:3px;
	cursor:pointer;
	user-select:none;
}
#mainReadMore:active{
	background:#999;
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
	<div>			<!--#include virtual="/googleSearchBox.htm"-->
      <!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>




<div id="pagetoporange">
<div id="breadcrumb">
  <div class="printemail">
   <p> <img src="/css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a> </p>
  </div>
<a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> / <a href="/health/health-care-providers.asp">Health</a> / <a href="/health/For-Medical-Professionals/index.asp">For Medical Professionals</a> /
<h1> Health Information Center</h1>
  </div>
</div>

<div id="leftbar">
<!--#include virtual="/health/leftNav.htm" -->
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="fmpsub-familycentered";
	var currSubId="none";
	// any Subtree that I want to Display
	var showTree = "health-fmpsub";
	
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

<div id="pagecontentright" style="min-height:500px;">

<!--BEGIN CONTENT-->

<h2>Family-Centered Care</h2>
<div id="mainDescriptionWrapper">
<div id="mainDescription">
	<p>Patient- and family-centered care is an approach to the  planning, delivery, and evaluation of health care that is grounded in mutually  beneficial partnerships among health care providers, patients, and families. It  redefines the relationships in health care.<br />
		Patient- and family-centered practitioners recognize the  vital role that families play in ensuring the health and well-being of infants,  children, adolescents, and family members of all ages. They acknowledge that  emotional, social, and developmental supports are integral components of health  care. They promote the health and well-being of individuals and families and  restore dignity and control to them.</p>
	<p>		Patient- and family-centered care is an approach to health  care that shapes policies, programs, facility design, and staff day-to-day  interactions. It leads to better health outcomes and wiser allocation of  resources, and greater patient and family satisfaction. The core concepts are:</p>
	<ul>
		<li><strong>Respect and dignity</strong>. Health care practitioners  listen to and honor patient and family perspectives and choices. Patient and  family knowledge, values, beliefs and cultural backgrounds are incorporated  into the planning and delivery of care.</li>
		<li><strong>Information Sharing</strong>. Health care  practitioners communicate and share complete and unbiased information with  patients and families in ways that are affirming and useful. Patients and  families receive timely, complete, and accurate information in order to  effectively participate in care and decision-making.</li>
		<li><strong>Participation.</strong> Patients and families  are encouraged and supported in participating in care and decision-making at  the level they choose.</li>
		<li><strong>Collaboration.</strong> Patients and families  are also included on an institution-wide basis. Health care leaders collaborate  with patients and families in policy and program development, implementation,  and evaluation; in health care facility design; and in professional education,  as well as in the delivery of care.</li>
		</ul>
	<p>		<strong>Medical Professionals can consider:</strong></p>
	<ul>
		<li>Do  I believe that patients and family members bring unique perspectives and  expertise to the clinical relationship?</li>
		<li>Do  I work to create an environment in which patients and families feel supported  enough to speak freely?</li>
		<li>Do  I listen respectfully to the opinions of patients and family members?</li>
		<li>Do  I encourage patients and family members to participate in decision-making about  their care?<br />
		</li>
	</ul>
</div>
<div id="mainReadMore"><u>Show More</u> &darr;</div>	
</div>

<%'----------------------------------------------- LINK RESOURCES ---------------------------- %>



<p><a href="http://www.fv-ncfpp.org/quality-health-care1/family-centered-care/" target="_blank">National Center for Family and Professional Partnerships</a><br />
  Helping families of children and youth with special health care needs/disabilities and professional partner to improve care.</p>
  <p><a href="http://www.ipfcc.org/index.html" target="_blank">Institute for Patient- and Family-Centered Care</a><br />
  Information to advance the understanding and practice of patient- and family-centered care in hospitals and other health care settings. </p>
<ul>
  <li><a href="http://www.ipfcc.org/advance/topics/Ambulatory-Care-Key-Concepts.pdf" target="_blank">Patient- And Family-Centered Ambulatory Care: A Checklist for Providers</a><br />
  Checklist for medical professions to determine if the programs their organization is Patient- and Family-centered</li>
</ul>
<p><a href="http://mchb.hrsa.gov/cshcn05/mco/intro.htm" target="_blank">Health Resources and Services Administration, Maternal and Child Health Bureau Core Outcomes: Key Measures of Performance</a><br />
Six Core Outcomes to promote community-based system of services mandated for Children with Special Health Care Needs</p>
  <p><a href="/health/pdfs/Family-Centered-Care.pdf" target="_blank">Positioning the Family and Patient at the Center</a><br />
  A Guide to Family and Patient Partnership in the Medical Home </p>
  <p><a href="/health/For-Medical-Professionals/pdfs/How-To-Help-Children.pdf" target="_blank">How to Help Children with Disabilities and Special Health Care Needs Receive Support at School</a><br />
    Information on Section 504 and how children with special health care needs may be eligible for services and accommodations in public school settings.  </p>
	<p><a href="/health/For-Medical-Professionals/pdfs/Six-Tips-For-Parents.pdf" target="_blank">Six Tips for Helping Parents Advocate for Their Child’s Care</a><br />
	Ideas for medical professionals on supporting parents of children with special health care needs in advocating for the services and supports their child needs in public school settings.</p>
	<p><a href="http://www.pacer.org/parent/php/PHP-c31.pdf">It&rsquo;s the &lsquo;Person First&rsquo; Then the Disability</a><br />
    Examples of appropriate ways addressing a person with a disability</p>
	 <p> <a href="http://www.ouhsc.edu/thecenter/videos/">'Parents Perspectives' Video Series</a><br />
      The Center for Learning and Leadership, Oklahoma's University Center for Excellence in Developmental Disabilities (Oklahoma UCEDD) recently developed a short video series featuring parents of children with intellectual and developmental disabilities, or special health care needs. In the videos parents share their perspectives on getting a disability diagnosis, supporting their children through transitions in the school system, and dealing with emergency personnel. Learn more about the parent's perspective of disability diagnosis, educational transition, and emergency medical services in the short video series, &quot;Parents' Perspectives.&quot;</p>

	<!--END CONTENT-->
<div id="pageextender" style="clear:both"></div>


</div>
</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>