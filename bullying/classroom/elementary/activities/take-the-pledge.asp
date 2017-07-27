<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Take the Pledge - National Bullying Prevention Center</title>
<meta name="description" content="Elementary school students are invited to take the “Kids Against Bullying” pledge! Students promising to speak up, reach out, and be a friend when they see bullying can download the official certificate.
" />

<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--></head>

<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>
 
  <!--#include virtual="/bullying/dynamic-header.html"--> 
  <!--#include virtual="/bullying/topnav.html"-->
<div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/classroom/">Classroom</a> / <a href="/bullying/classroom/elementary/">Elementary School</a> / <a href="/bullying/classroom/elementary/activities">Activities</a></div>
<!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
  <!--#include virtual="/bullying/classroom/nav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="ele-activities-takethepledge";
	var showTree = "ele-sub";
	var showTree2 = "ele-activities-sub";
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
    <h1 id="maincontent">Take the Kids Against Bullying Pledge </h1>
	<p>Elementary  school students are invited to take the &ldquo;Kids Against   Bullying&rdquo; pledge!  Students promising to speak up, reach out, and be a   friend when they see  bullying can download the official certificate.</p>
    <p>Options to take the pledge include:</p>
    <ul type="disc">
      <li>Schools: Order the <a href="/bullying/resources/bookmarks.asp" target="_blank">free bookmarks</a>, which has the pledge on it and invite each student to sign their name </li>
      <li>Individuals: Read the pledge (below), download the certificate, and sign your name </li>
    </ul>
    <blockquote class="hr">
    <p><strong>As a Kid Against Bullying, I&nbsp;pledge to: </strong></p>
    <ul type="disc">
      <li>Speak up when I see bullying.</li>
      <li>Reach out to others who are bullied.</li>
      <li>And be a friend whenever I see       bullying. </li>
    </ul>
    </blockquote>
    <img style="float: left; margin: 20px; border: #999999 1px solid" src="../../images/kab-pledge.jpg" width="200" height="258" alt="Kids Against Bullying Pledge"/>
<p class="hr">Kids taking the pledge can download the <a href="https://www.pacerkidsagainstbullying.org/wp-content/uploads/2014/07/KABPledge.pdf" target="_blank">official Kids Against Bullying certificate.</a> <img src="/images/pdficon_small.gif" alt="pdf icon" width="15" border="0" height="15" /></p>
<br class="clearfloat" />
    
    <!-- end .content --></div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
