<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/parent/who-is-on-my-childs-iep-team.asp"
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>IEP Team Member of the Month - Special Education Teacher</title>
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
  <p>Before a team meeting, ask the special education  teacher to send you copies of any information the team will be using at the  meeting to make decisions about your child&rsquo;s school program. By reading and  processing the information ahead of time, you will be better prepared to be an  informed and active participant at the meeting.</p>

</div>


<div class="stayinformed">
<h3>RESOURCES:</h3>
<ul>
	<li class="pdficonlist"><a href="/parent/php/PHP-c136.pdf" target="_blank">Use Questions to Find Answers</a><br /> (Pub_code:php-c136)</li>
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
	var currSubId="speced";
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

<h1 class="nounderline" align="center"><img src="images/ParentsNeedToKnow.jpg" width="500" height="300" alt="Parents Need To Know: Who Is On My Child&rsquo;s IEP Team" title="Parents Need To Know: Who Is On My Child&rsquo;s IEP Team" /></h1>
<hr />
<h2 align="center">Who  Is On My Child&rsquo;s IEP Team?</h2>
<p>The Individuals with Disabilities Education Act (IDEA)  calls for a team of individuals, including parents and school personnel, to  work together to develop an Individual Educational Program (IEP) for a child  who qualifies for special education services. <br />
  &nbsp;<br />
  Because IEP decisions are made by a team rather than by  any one individual, it&rsquo;s important and helpful to understand the role of each  member. While each person brings a different set of experiences, concerns, and  skills to the table, you can expect that they all share a common goal: enabling  the child to succeed in school and in life.</p>
<h2 align="center">IEP Team Member of the  Month:<br />
  <span style="color:#3a6699">The Special Education Teacher or Service Provider</span></h2>
<p>The  special education teacher is a required IEP team member and plays a central  role in IEP planning and program implementation. Special education teachers  have received teacher training specific to particular areas of disability and  are licensed in one or more special education categories. They have expertise  about the disability and its impact on the student&rsquo;s developmental and  educational progress. </p>
<p>Special  educators contribute to the IEP team in the following ways:</p>
<ul>
  <li>Provide current information, research, student assessment, and progress  reporting data to guide the team in making IEP decisions.</li>
<li>Make recommendations about individualized learning strategies, teaching  methodology, and effective accommodations in the classroom, home and community. </li>
<li>Help regular educators adapt their teaching techniques and  individualize or modify curriculum in the classroom. </li>
<li>Locate alternate teaching materials, assistive technology devices, and  other needed resources. </li>
<li>Assist the team in finding ways to include the student in all aspects  of the regular school program, including extracurricular activities. </li>
<li>The special education teacher is often assigned the role of IEP  manager. The IEP manager is responsible to coordinate the delivery of special  education services and to serve as the primary contact for the parent. </li>
</ul>
<p style="color:#666">&nbsp;</p>
<div id="pageextender" style="clear:both">&nbsp;</div>

</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>