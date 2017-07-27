<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Laws and Rights - National Parent Center on Transition and Employment</title>

<meta name="description" content="As youth transition out of high school, it is important for families to know about the laws protecting individuals with disabilities from discrimination in postsecondary education, employment, and the community. Learn the basics of major federal disability laws and the rights and services they provide.">
<!-- for Facebook -->          
<meta property="og:title" content="Laws and Rights - National Parent Center on Transition and Employment" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/learning-center/laws/" />
<meta property="og:description" content="As youth transition out of high school, it is important for families to know about the laws protecting individuals with disabilities from discrimination in postsecondary education, employment, and the community. Learn the basics of major federal disability laws and the rights and services they provide." />

<link rel="icon" href="http://www.pacer.org/transition/favicon.ico" />
<link href="/transition/css/style.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/transition/dynamic-head-items.html"-->
</head>

<body class="twocol">

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<!--#include virtual="/transition/dynamic-header.html"-->
<!--#include virtual="/transition/topnav.html"-->

<div class="breadcrumb"> <a href="/transition/">Home</a> / <a href="/transition/learning-center/">Learning Center</a>  
</div>

  <div class="sidebar1">
<!--#include virtual="/transition/learning-center/nav.html"-->
    <!-- end .sidebar1 --></div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="laws";
	var showTree = "laws-sub";
	var showTree2 = "";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "active";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "submenu") {
			if (subTrees[i].id != showTree && subTrees[i].id != showTree2) {
				subTrees[i].className = "submenuhidden";
			}
		}
	}
</script> 

  <div class="content">
  <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>
    <div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>
    <h1 id="maincontent">Laws &amp; Rights</h1>
    
    <p>As youth transition out of high school, it is important for families to know about the laws protecting individuals with disabilities from discrimination in postsecondary education, employment, and the community. Learn the basics of major federal disability laws and the rights and services they provide.</p>
	
    <table width="100%">
    <tr>
			<td width="180" align="center" valign="top">
				<img src="/transition/learning-center/laws/images/brandon-timeclock.jpg" alt="" width="150" height="150" />
			</td>
			<td valign="top">
				<h3><a href="/transition/learning-center/laws/ada.asp">Americans with Disabilities Act &gt;&gt;&gt;</a></h3>
</td>
		</tr>
    <tr>
			<td align="center" valign="top">
				<img src="/transition/learning-center/planning/images/college-planning.jpg" alt="" width="150" height="150" />
			</td>
			<td valign="top">
				<h3><a href="/transition/learning-center/laws/idea.asp">Individuals with Disabilities Education Act &gt;&gt;&gt;</a></h3>
</td>
	  </tr>
    <tr>
			<td align="center" valign="top">
				<img src="/transition/learning-center/laws/images/diploma.jpg" alt="" width="150" height="150" />
			</td>
		<td valign="top">
		  <h3><a href="/transition/learning-center/laws/rehab.asp">Rehabilitation Act of 1973 &gt;&gt;&gt;</a></h3>
</td>
		</tr>
        <tr>
			<td align="center" valign="top">
				<img src="/transition/learning-center/planning/images/prepare-employment.jpg" alt="" width="150" height="150" />
			</td>
		<td valign="top">
		  <h3><a href="/transition/learning-center/laws/workforce-innovation.asp">Workforce Innovation and Opportunity Act &gt;&gt;&gt;</a></h3>
</td>
		</tr>
	</table>
    
        

    
  <!-- end .content --></div>
  
<!--#include virtual="/transition/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
