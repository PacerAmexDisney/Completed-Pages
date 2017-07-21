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
	var currId="insurance";
	var currSubId="none";
	// any Subtree that I want to Display
	var showTree = "health-insurancesub";
	
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

<h2>Insurance &amp; Services</h2>
<ul>
	<li>
		<h3><a href="/health/insurance/health-insurance-info.asp">Public and Private Health Insurance Information</a></h3>
		<p>An overview of the Medical Assistance programs available to Minnesota residents. </p>
	</li>
	<li>
		<h3><a href="/health/insurance/applied-behavior-analysis.asp">Applied Behavior Analysis</a></h3>
		<p>Applied Behavior Analysis is a behavioral teaching approach that is divided into  easy-to-learn steps.&nbsp; Praise or other rewards are used to motivate the  child so that the desired behavior increases and the problem behavior  decreases. &nbsp;The child&rsquo;s progress is recorded and tracked so that the  teaching program can be adjusted as needed.&nbsp; </p>
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