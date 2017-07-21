<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/parent/who-is-on-my-childs-iep-team.asp"
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>IEP Team Member of the Month - Regular Education Teacher</title>
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
  <h3>Tip to Take Along:</h3>
  <p>Parents often choose to invite the teacher who has the  most positive relationship with the child. However, it may be very beneficial  to invite the teacher of a class your child finds particularly challenging. The  teacher may become better informed about the child, and the student&rsquo;s needs may  be addressed more effectively by the team. </p>

</div>


<div class="stayinformed">
<h3>RESOURCES:</h3>
<ul class="nobullet"><li><a href="/parent/php/PHP-c124.pdf" target="_blank">Telling the teacher: What I want my child&rsquo;s classroom teacher to know</a><br />
<span class="date">pub-code: PHP-c124</span></li>
</ul>
</div>
<!--#include virtual="/parent/needtoknow-resources.html" -->


<!-- close right bar -->
</div>

<div id="topbar">
<div id="breadcrumb">

	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> /
	
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
	var currId="parent_needtoknow";
	var currSubId="reged";
	// any Subtree that I want to Display
	var showTree = "needtoknow-sub";
	
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
<!--BEGIN CONTENT-->

<h1 class="nounderline" align="center"><img src="images/ParentsNeedToKnow.jpg" width="500" height="300" alt="Parents Need To Know: Who Is On My Child&rsquo;s IEP Team" title="Parents Need To Know: Who Is On My Child&rsquo;s IEP Team" /></h1><hr />
<h2 align="center">Who  Is On My Child&rsquo;s IEP Team?</h2>
<p>The Individuals with Disabilities Education Act (IDEA)  calls for a team of individuals, including parents and school personnel, to  work together to develop an Individual Educational Program (IEP) for a child  who qualifies for special education services. <br />
  &nbsp;<br />
  Because IEP decisions are made by a team rather than by  any one individual, it&rsquo;s important and helpful to understand the role of each  member. While each person brings a different set of experiences, concerns, and  skills to the table, you can expect that they all share a common goal: enabling  the child to succeed in school and in life.</p>
<h2 align="center">IEP Team Member of the  Month:<br />
  <span style="color:#3a6699"> Regular Education Teacher</span></h2>

<p>At  least one regular education teacher is required to participate as an IEP team  member if the child is, or may be, participating in a regular education  environment. This teacher should be a teacher who is, or may be a teacher of  the child. This teacher will be responsible for implementing a portion of the  IEP and can participate in discussions about how to best instruct the child.  When a student has more than one regular education teacher, parents may request  that particular teachers attend a meeting, but the school may decide which  teacher or teachers will participate, based on the interests of the child. The  regular education teacher has knowledge and expertise about the content of the  grade-level general curriculum--the subject matter all children are being  taught--as well as the classroom structure, environment, expectations and daily  schedule. </p>
<p>Regular  education teachers contribute to the IEP team in the following ways:</p>
<ul>
  <li>Provide information about the student&rsquo;s participation, performance, progress,  and interaction with their peers in the regular classroom.</li>
  <li>Share information about the general curriculum.</li>
  <li>Identify areas of concern and determine appropriate positive behavioral  interventions and supports and other strategies for the child to be  meaningfully included in the classroom.</li>
  <li>Identify needed training, materials, or other classroom support  teachers may need in order to help the student benefit from classroom  instruction.</li>
  <li>Make recommendations about individualized learning strategies and  effective accommodations to be used in the classroom and school community. </li>
  <li>Suggest ways parents can approach homework and other opportunities to  reinforce learning at home.</li>
</ul>
<div id="pageextender" style="clear:both">&nbsp;</div>

</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>