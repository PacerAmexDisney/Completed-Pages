<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/bullying/classroom/elementary/activities/coloring-book.asp"
%>








<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center - Kids Against bullying Coloring Book</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--></head>

<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>
 
  <!--#include virtual="/bullying/dynamic-header.html"--> 
  <!--#include virtual="/bullying/topnav.html"-->
<div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/resources/">Resources</a> / <a href="/bullying/resources/toolkits/">Educator Toolkits</a> / <a href="/bullying/resources/toolkits/activities/">Activities for Youth</a></div>
<!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/resources/nav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="activities-coloringbook";
	var showTree = "toolkits-sub";
	var showTree2 = "activities-sub";
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
  </div>
  <!-- ###################### END Navigation ############################## -->
  
  <div class="content"> 
    <h1 id="maincontent">Kids Against Bullying Coloring Book</h1>
	<p>Bullying is no fun, but learning about it can be. PACER&rsquo;s <a href="/bullying/pdf/ColorTheCrew.pdf" target="_blank">coloring book</a> <img src="http://www.pacer.org/images/pdficon_small.gif" alt="pdf icon" width="15" border="0" height="15" /> gives teachers and students a great opportunity to talk about bullying   while they have fun. Each page includes an important message about   respecting others, valuing differences, and being a friend. Download   these pages and discover how kids and crayons can help prevent bullying.</p>
	<div align="center"> <a href="/bullying/pdf/ColorTheCrew.pdf" title="Download the Color The Crew book" target="_blank"><img src="/bullying/resources/toolkits/activities/images/coloring-book-cover.png" width="600" height="688" alt="" /></a>
</div>
    <br class="clearfloat" />
    
    <!-- end .content --></div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
