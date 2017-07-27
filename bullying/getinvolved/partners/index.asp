<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>National Bullying Prevention Center - Become a National Partner</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"-->
<style type="text/css">
#unity-shirt-ad{display:none;}

.partnerlist {
	margin:5px auto;
	width:90%;
	border:1px solid #ccc;
	border-radius:5px;
	padding:5px;
}
.partnerlist td{
	width:33%;
	text-align:center;
}
.content h2 {
	text-shadow:none;
}
</style>
</head>

<body class="twocol">

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>
<!--#include virtual="/bullying/dynamic-header.html"-->
<!--#include virtual="/bullying/topnav.html"-->

<script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>


<div class="breadcrumb"> <a href="/bullying/">Home</a> /<a href="/bullying/getinvolved/">Get Involved</a> /</div>
 <div class="sidebar1">
<!--#include virtual="/bullying/getinvolved/partners/nav.html"-->
 <!-- end .sidebar1 --></div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="partners";
	var showTree = "none";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "active";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "submenu") {
			if (subTrees[i].id != showTree) {
				subTrees[i].className = "submenuhidden";
			}
		}
	}
</script>

 <div class="content"> 
 <h1 id="maincontent" style="margin-bottom:0px;">Partners</h1>
 <p>PACER&rsquo;s National Bullying Prevention Center thanks their community of incredible supporters whose valuable contributions help achieve the mission of leading social change to build safe and supportive communities, that are united against bullying and united for kindness, inclusion and acceptance. These organizations, businesses, and individuals make it possible to reach millions with the message, &ldquo;The End of Bullying Begins With You!&rdquo;</p>
 <h2><a href="/bullying/getinvolved/partners/national.asp">National Partners</a></h2>
 <p>Partners include organizations that reach a nationwide audience and have a focus on bullying prevention, child and youth, disability or education issues.<strong> </strong></p>
<table class="partnerlist"><tr>
 <td><img src="/bullying/getinvolved/partners/images/national-pta.png" alt="National PTA - Connect For Respect" height="130" width="200" /></td>
 <td><img src="/bullying/nbpm/images/partners/nasdse-logo.jpg" alt="NASDSE" height="160" width="158" /></td>
 <td><img src="/bullying/getinvolved/partners/images/neaLogo.gif" alt="" width="200" /></td>
</tr></table>
 <h2><a href="/bullying/getinvolved/partners/corporate-and-celebrity.asp">Corporate &amp; Celebrity Partners</a></h2>
 <p>Partners include companies and businesses that generously support the activities of community outreach, educational activities, and raising awareness. <strong> </strong></p>
<table class="partnerlist"><tr>
 <td><img src="/bullying/getinvolved/partners/images/Facebook-200w.png" alt="" height="75" width="200" /></td>
 <td><img src="/bullying/getinvolved/partners/images/Disney-Be-Inspired-w213.jpg" alt="" height="134" width="112" /></td>
 <td><img src="/bullying/nbpm/partners/images/customInk-200w.png" alt="" height="79" width="200" /></td>
</tr></table>
 <h2><a href="/bullying/getinvolved/partners/champions.asp">Champions</a></h2>
 <table class="partnerlist"><tr>
 <td>
 <p style="text-align:left;">
 <img src="/bullying/getinvolved/partners/images/Champions-Stamp.png" alt="" width="150" height="116" class="fltlft" />
 Throughout the community, there are nonprofits, schools, and community groups that directly collaborate with PACER&rsquo;s National Bullying Prevention Center sharing resources &mdash; such as classroom toolkits, free bookmarks, awareness raising ideas, petition signing &mdash; to directly engage, educate and empower students.</p>
 </td>
 </tr></table>
 <br class="clearfloat" />
 
 <!-- end .content --></div>
 

 
 
<!--#include virtual="/bullying/footer.html"-->
 <!-- end .container --></div>
</body>
</html>
