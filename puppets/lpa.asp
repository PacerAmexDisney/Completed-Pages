<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/puppets/purchase-preventabuse.asp"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>PACER Puppets: Let's Prevent Abuse</title>
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

<div class="stayinformed" style="margin-top: 0;">
<em>&quot;The puppets are wonderful and very effective in helping children feel 
comfortable with a difficult subject.&quot;</em><br />
- A Minnesota teacher
</div>
<p class="rightsidebarpic">
<img border="0" src="images/lpa_family2.jpg" width="250" height="334" alt="puppets on a playground slide" />
</p>
<div class="stayinformed">
<p style="padding: .4em; margin: 0; text-align: center; font-size: 90%;">
Want to learn more? Contact <a href="mailto:puppets@pacer.org">puppets@pacer.org</a>
</p>
</div>
</div>

<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> /
	
	<h1>PACER Puppets</h1>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">PACER Puppets Navigation Menu</h2>
<!--#include virtual="/puppets/leftNav.htm"-->
</div>

<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="lpa";
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

<h1 class="nounderline">LET&rsquo;S PREVENT ABUSE</h1>


<!--BEGIN CONTENT-->
<div class="alertBox">The Let's Prevent Abuse puppet show is no longer  available to be performed, but puppets and scripts can be purchased as a <a href="purchase.asp">PACER  Puppet Package</a> for your organization.</div>
<p>
The LET'S PREVENT ABUSE Program helps children and adults gain information about child physical and sexual abuse as well as helps children to develop personal safety skills. This puppet program originated in 1984, in response to a growing awareness of the greater vulnerability of children with disabilities to all types of abuse. More than 83,000 children and adults have viewed the program presentation. 
</p>
<p>
LET'S PREVENT ABUSE features four endearing multicultural, child-size puppets that portray children with and without disabilities. These puppets have proven to be a comfortable medium through which to teach children about abuse prevention. Opportunities exist throughout the program for the children to interact with the puppets through dialogue and role-play. 
</p>
<p>
The performances, designed for children in grades 1-4*, address:
</p>
<ul>
	<li>The definitions of physical and sexual abuse;</li>
	<li>How to get help and whom to tell;</li>
	<li>The need for children to talk about the abuse if they are in such a 
	situation;</li>
	<li>Feelings of guilt, isolation and shame associated with abuse; and</li>
	<li>It's never a child's fault when they have been abused.</li>
</ul>
<p>
  The program includes:  </p>
<ul>
    	<li><strong><a href="cast.asp#sally">Sally</a></strong> has a <em>physical disability</em> and portrays a girl who has experienced <em>physical abuse</em></li>
        <li><strong><a href="cast.asp#derek">Derek</a></strong> portrays a boy who has experienced a threat of <em>sexual abuse</em></li>
        <li><strong><a href="cast.asp#carmen">Carmen</a></strong> portrays a friend, and a girl who avoided abduction</li>
        <li><strong><a href="cast.asp#mitch">Mitch</a></strong> portrays a friend</li>
</ul>
<p><br />
  <br />
  <strong>* This program is not intended for a preschool or kindergarten audience.</strong>
</p>
<!--#include virtual="/puppets/trademark.htm"-->

<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>