<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--></head>

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


<div class="breadcrumb"> <a href="/bullying/">Home</a> /</div>
  <div class="sidebar1">
    <!--#include virtual="/bullying/video/nav.html"--> 
    <!-- end .sidebar1 --></div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="downloads";
	var showTree = "none";
	var currSubId="none";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "active";
	}
	if (document.getElementById(currSubId)){
		document.getElementById(currSubId).className = "active";
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
    <div class="alertBox">
      <p>If you are having problems try right clicking on the link and choose "Save Target As"</p></div>
    <h1 id="maincontent">Video Downloads</h1>
    <table style="clear:right">
    <tr><td colspan="2" align="center">
    <h2>Videos from TeensAgainstBullying.org</h2></td></tr>
    <tr>
      <td>
      <h3>Quick Time (.mov)</h3>
      <ul>
      <li><a href="/bullying/video/downloads/behindHerBackDownload.mov" target="_blank">Behind Her Back</a> (28 MB)</li>
      <li><a href="/bullying/video/downloads/cyberSetupDownload.mov" target="_blank">Cyber Setup</a> (40 MB)</li>
      <li><a href="/bullying/video/downloads/newGirlDownload.mov" target="_blank">New Girl</a> (46 MB)</li>
      <li><a href="/bullying/video/downloads/outOfBoundsDownload.mov" target="_blank">Out of Bounds </a>(42 MB)</li>
      </ul>
      </td></tr>
    <tr><td colspan="2" align="center">
    <h2>Videos from KidsAgainstBullying.org</h2></td></tr>
    <tr>
     <td>
    <h3>Quick Time (.mov)</h3>
     <ul>
       <li><a href="/bullying/video/downloads/WhatBullyingIs.mov" target="_blank">What Bullying Is</a> (5.09 MB)</li>
       <li><a href="/bullying/video/downloads/HowBullyingFeels.mov" target="_blank">How Bullying Feels</a> (4.80 MB)</li>
       <li><a href="/bullying/video/downloads/WhatYouCanDo.mov" target="_blank">What You Can Do</a> (4.07 MB)</li>
       <li><a href="/bullying/video/downloads/NoOneDeserves.mov" target="_blank">No One Deserves to Be Bullied</a> (10.7 MB)</li>
       <li><a href="/bullying/video/downloads/LaughTellWalk.mov" target="_blank">Laugh. Tell. Walk Away</a> (5.17 MB)</li>
       <li><a href="/bullying/video/downloads/Be-a-KAB.mov" target="_blank">Be a Kid Against Bullying</a> (5.96 MB)</li>
   </ul></td>
     <td>
    <h3>Windows Media Player (.wmv)</h3>
    <ul>
      <li><a href="/bullying/video/downloads/WhatBullyingIs.wmv" target="_blank">What Bullying Is</a> (3.07 MB)</li>
      <li><a href="/bullying/video/downloads/HowBullyingFeels.wmv" target="_blank">How Bullying Feels</a> (2.99 MB)</li>
      <li><a href="/bullying/video/downloads/WhatYouCanDo.wmv" target="_blank">What You Can Do</a> (2.73 MB)</li>
      <li><a href="/bullying/video/downloads/NoOneDeserves.wmv" target="_blank">No One Deserves to Be Bullied</a> (852 KB)</li>
      <li><a href="/bullying/video/downloads/LaughTellWalkAway.wmv" target="_blank">Laugh. Tell. Walk Away</a> (854 KB)</li>
      <li><a href="/bullying/video/downloads/Be-a-KAB.wmv" target="_blank">Be a Kid Against Bullying</a> (992 KB)</li>
    </ul></td></tr></table>
 
 
<br class="clearfloat" />
  <!-- end .content -->
   
  </div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
