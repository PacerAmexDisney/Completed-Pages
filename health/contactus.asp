<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>F2F HIC - Federal Health Changes</title>
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
Champions for Children with Disabilities
</p>
<p class="pacerinfo3">
<a href="http://www.pacer.org/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a>
</p>
</div>

<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp"> Health Information Center</a> / 
	
	<h1> Health Information Center</h1>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">Health Navigation Menu</h2>
<!--#include virtual="/health/leftNav.htm" -->
</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="contact";
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
  <h1>Contact the  Health Information Center</h1>
  <p>For more information on navigating health care systems or for individual  assistance with questions or concerns relating to health care, please contact  PACER Center and ask for the  Health Information Center. You  can contact us by phone, email, in person, or by mail. &nbsp;PACER Center is open Monday through Friday  8:00 a.m. &ndash; 5:00 p.m. CST.</p>
  <p>PACER Center<br />
    8161 Normandale Boulevard<br />
    Minneapolis, MN 55437-1044<br />
    (952) 838-9000<br />
    (800) 53-PACER, toll free in MN<br />
  <a href="mailto:PACER@PACER.org">PACER@PACER.org</a></p>
  <h1>Meet the Staff</h1>
  <p><strong>Wendy Ringer</strong><br />
     Health  Information Center Coordinator<br />
    (952) 838-9000<br />
    (800) 53-PACER, toll free in MN<br />
  <a href="mailto:wendy.ringer@PACER.org">wendy.ringer@PACER.org</a>  </p>
  <p><strong>Linda Goldman Cherwitz</strong><br />
    Health Advocate<br />
    (952) 838-9000<br />
    (800) 53-PACER, toll free in MN<br />
  <a href="mailto:linda.cherwitz@PACER.org">linda.cherwitz@PACER.org</a></p>
  <p>The  Health Information Center also has several members of diverse cultural  groups to work with parents. Multicultural advocates are available to meet with  and provide individual assistance to parents and family members who have  children with disabilities or special health care needs. Assistance is  available in Spanish, Hmong, and Somali.</p>
  <p><strong>Bonnie Jean Smith</strong><br />
    Multicultural Advocate<br />
    (952) 838-9000<br />
    (800) 53-PACER, toll free in MN<br />
  <a href="mailto:bjsmith@PACER.org">bjsmith@PACER.org</a></p>
  <p><strong>Dao Xiong</strong><br />
    Multicultural Advocate<br />
    (952) 838-9000<br />
    (800) 53-PACER, toll free in MN<br />
  <a href="mailto:dxiong@PACER.org">dxiong@PACER.org</a></p>
  <p><strong>Hassan Samantar</strong><br />
    Multicultural Advocate<br />
    (952) 838-9000<br />
    (800) 53-PACER, toll free in MN<br />
  <a href="mailto:hassan.samantar@PACER.org">hassan.samantar@PACER.org</a></p>
  <p><strong>Jes&uacute;s Villase&ntilde;or</strong><br />
    Multicultural Advocate<br />
    (952) 838-9000<br />
    (800) 53-PACER, toll free in MN<br />
  <a href="mailto:jvillasenor@PACER.org">jvillasenor@PACER.org</a></p>
<!--END CONTENT-->
<div id="pageextender" style="clear:both">&nbsp;</div>
</div>
</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>