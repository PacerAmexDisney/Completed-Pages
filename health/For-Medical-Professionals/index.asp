<% Dim currentPage 

currentPage = "health-enews-2012-05.html"

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>F2F HIC - Health Care Professionals</title>
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
<div id="breadcrumb"><a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> / <a href="/health/">Health</a> /
<h1> Health Information Center</h1>
  </div>
</div>

<div id="leftbar">
<!--#include virtual="/health/leftNav.htm" -->
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="fmp";
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

<h2>For Medical Professionals</h2>
<ul>
	<li>
		<h3><a href="/health/For-Medical-Professionals/transitioning-patients.asp">Transitioning patients from Pediatric to Adult Care</a></h3>
		<p>One way to improve health outcomes for youth with special health care needs is ensuring that they successfully transition from pediatric to adult health care. Find research based resources here to  successfully transition these patients  to adult health care. </p>
	</li>
	<li>
		<h3><a href="/health/For-Medical-Professionals/communicating-effectively.asp">Communicating Effectively with Diverse families</a></h3>
		<p>Building relationships and involving parents of children with special health care needs with diverse cultural backgrounds.</p>
	</li>
	<li>
		<h3><a href="/health/For-Medical-Professionals/medical-home.asp">Medical Home</a></h3>
		<p>A coordinated, family-centered way to provide care for  children with special health care needs and disabilities. Through a medical  home, a doctor and his or her staff coordinate care and information among  health, education, insurance, and social service professionals</p>
	</li>
	<li>
		<h3><a href="/health/For-Medical-Professionals/family-centered-care.asp">Family- Centered Care</a> </h3>
		<p>Patient and  family-centered care is an approach to the delivery of health care that is  based on the idea of partnership among patients, families, and providers. This  philosophy recognizes the importance of the family in the patient&rsquo;s life, and  incorporates the family&rsquo;s perspective into medical decision-making. This type  of care is particularly important to families of children with special</p>
	</li>
	<li>
		<h3><a href="/health/For-Medical-Professionals/financing-options.asp">Directing Patients to Health Care financing options</a></h3>
		<p>Up to date information on public health care options including the Affordable Care Act, Social Security options and Minnesota specific health care programs.</p>
	</li>
	<li>
		<h3><a href="/health/For-Medical-Professionals/community-resources.asp">Community Integration and Support Resources</a></h3>
		<p>Connecting families and youth with special health care needs to organizations and resources in the areas of independent living and community involvement.</p>
	</li>
	<li>
		<h3><a href="/health/For-Medical-Professionals/technology-options.asp">Technology options</a></h3>
		<p>Assistive technology can be a device or service that helps children with disabilities participate more independently within their environment at home or school.</p>
	</li>
	<li>
		<h3><a href="/health/For-Medical-Professionals/pediatric-resident-training.asp">Pediatric Resident Training Program</a></h3>
		<p>Physicians and families working together to improve the system of care for children and youth with special health care needs.</p>
	</li>
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