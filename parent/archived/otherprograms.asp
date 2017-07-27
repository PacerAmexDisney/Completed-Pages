<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/parent/"
%>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Other PACER Programs for Parents</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/leftnavigation.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

<script type="text/javascript" src="../css/menu.js"></script>
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
<a href="../"><img src="../images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="rightBar">

<p class="pacerinfo">
<strong>PACER Center<br />
952-838-9000</strong>
</p>
<p class="pacerinfo2">
Champions for Children with Disabilities</p>
<p class="pacerinfo3"><a href="http://www.pacer.org/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a>
</p>
<div class="stayinformed">
<h2>Stay Informed</h2>
Receive the latest PACER Center information on issues important to you. 
<a href="../forms/index.asp">Sign up now</a>.
</div>
</div>

<div id="topbar">
<div id="breadcrumb">

	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="/parent/">Parent Special Education Information</a> / Other PACER Programs for Parents
	
	<h1>Parent Special Education Information</h1>
<p style="font-size:90%;padding:0;margin:0;">PACER is the Minnesota Parent Training and Information Center, funded by the U.S. Department of Education's Office of Special Education Programs.</p>
	
	</div>
</div>

<div id="leftbar">
<h2 style="display: none;">Parents Helping Parents Navigation Menu</h2>
<!--#include virtual="/parent/leftNav.html" -->
</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="parent_other";
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
<div id="maincontent">

<div id="pagecontent">

<h2 class="nounderline">Other PACER Programs for Parents</h2>


<!--BEGIN CONTENT-->

<h3><a href="../aipn/index.asp">American Indian Project</a></h3>
<p>
Individual assistance and information for American Indian parents of children who have or are at risk for developing emotional or behavioral disorders.
</p>
<h3><a href="../ec/index.asp">Early Childhood Intervention</a></h3>
<p>
Services and support for families of infants, toddlers, and preschoolers with special needs. 
</p>
<h3><a href="../ebd/index.asp">Emotional and Behavioral Disorders (EBD) and Children's Mental Health Services</a></h3>
<p>
Assistance on education, social services, and mental health or correctional issues for parents of youth with EBD. 
</p>
<h3><a href="../grandparent/index.asp">Grandparent to Grandparent Program</a></h3>
<p>
Information and services for grandparents of children with disabilities. 
</p>
<h3><a href="../multicultural/index.asp">Multicultural Services</a></h3>
<p>
Bilingual workshops and publications focusing on issues facing families from diverse backgrounds. 
</p>
<h3><a href="../surrogate/index.asp">Surrogate Parent Services</a></h3>
<p>
Training and suggestions for selection of surrogate parents to represent children with disabilities in the special education process. 
</p>
<h3><a href="../leadership/index.asp">Parent Leadership in Special Education</a></h3>
<p>
Parents can use their experience and expertise to influence change in local 
special education advisory committees, interagency collaborations and public 
policy. 
</p>

</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>