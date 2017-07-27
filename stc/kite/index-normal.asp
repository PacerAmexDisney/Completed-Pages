
<%
Dim FallRegCloseDate, SpringRegCloseDate
FallRegCloseDate = cDate("10/1/" & DatePart("yyyy", Now()))
if datepart("m", now()) > 2 Then 	
	SpringRegCloseDate = cDate("2/6/" & (DatePart("yyyy", Now())+1))
else
	SpringRegCloseDate = cDate("2/6/" & DatePart("yyyy", Now()))
end if
'response.Write("<!--" & cDate("2/6/" & (DatePart("yyyy", Now())+1)) & vbcrlf &  "-->")
public function getSession()
	Dim returnvalue
	returnvalue = "None"
	
	If (FallRegCloseDate < SpringRegCloseDate And date <= FallRegCloseDate) Or (FallRegCloseDate > SpringRegCloseDate And date > SpringRegCloseDate And date <= FallRegCloseDate) Then
		returnvalue = "Fall"
	ElseIf (FallRegCloseDate > SpringRegCloseDate And date <= SpringRegCloseDate) Or (FallRegCloseDate < SpringRegCloseDate And date > FallRegCloseDate And date <= SpringRegCloseDate) Then
		returnvalue = "Spring"
	End If
	
	getSession = returnvalue
	
end function
	
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Project KITE - Technology Training for Teachers and Parents of Young Children</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavigation.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />

<script type="text/javascript" src="/css/menu.js"></script>
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
<div id="submenu">
<h3 style="display: none;">Project KITE Navigation Menu</h3>
<ul id="submenulist">
	<li><a class="page" href="/stc/kite/">Overview of Project KITE</a></li>
	<li><a href="FAQs.asp">Project KITE Team-based Trainings FAQs</a></li>
	<li><a href="resources.asp">Early Childhood Resources</a></li>
</ul>
</div>
<div class="rightsidebarpic">
<img src="images/KITE-3.jpg" width="250" height="187" alt="KITE leader working with parents and professionals" /><br />
</div>
<div class="rightsidebarpic">
<img src="images/KITE-1.jpg" width="250" height="185" alt="Two girls watching a classmate use a communication device" />
</div>

</div>

<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<a href="https://www.facebook.com/simontechnologycenter" target="_blank">Join the STC Facebook Page</a> | 
<img src="/css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> / <a href="/stc/">Simon Technology Center</a> / 
<h1>Project KITE</h1>
	
	</div>

</div>

<div id="leftbar">
<h2 style="display: none;">STC - Navigation Menu</h2>
<!--#include virtual="/stc/leftNav.htm"-->
</div>

<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="projects";
	var currSubId="subproj-pk";
	// any Subtree that I want to Display
	var showTree = "stc-subproj";
	
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


<h2 class="nounderline">Kids Included through Technology are Enriched</h2>

<div class="alertBox">
	<h2>Project KITE<br />Session Info</h2>
<%If getSession() = "Fall" then %>    
    <p>We are currently accepting applications for the Fall <%=DatePart("yyyy", FallRegCloseDate)%> session</p>
    <p>Project KITE Training Application Deadline is <%=FormatDateTime(FallRegCloseDate, 1)%>.</p>
	<!--<p>The spring session  begins in February.</p>-->
    <p><a href="kiteTeamOnlineForm.asp?session=fall">Sign Up Online Here</a></p>
<%ElseIf getSession() = "Spring" Then%>
    <p>We are currently accepting applications for the spring <%=DatePart("yyyy", SpringRegCloseDate)%> session</p>
    <p>Project KITE Training Application Deadline is <%=FormatDateTime(SpringRegCloseDate, 1)%>.</p>
	<p>The spring session  begins in February.</p>
    <p><a href="kiteTeamOnlineForm.asp?session=spring">Sign Up Online Here</a></p>
<%Else%>
	<p>The current sessions registration is closed, but you can sign up for the next session now.</p>
	<p><a href="kiteTeamOnlineForm.asp?session=nextsession">Sign Up Online Here</a></p>
<%End If%>    

</div>



<p>
<strong>A Technology Training for Teachers and Parents of Young Children</strong>
</p>
<p>
Project KITE is a training curriculum for parents and teachers of young children with disabilities. The goal of Project KITE is to promote inclusion for children with disabilities through the use of technology. It provides the opportunity for extensive training to integrate technology in early childhood classrooms and homes. 
</p>
<p>
Project KITE is a half-year program containing five structured training sessions and additional collaborative opportunities with Project KITE staff. Parents and professionals participate in Project KITE as teams. Trainings are scheduled at times when teachers are free from school responsibilities and spaced several weeks apart to allow time to implement what was learned. 
</p>
<p>
Training topics addressed in Project KITE include: 
</p>
<ul>
	<li>Introduction to Assistive Technology and Computers </li>
	<li>Visuals and Graphics to Support Inclusive Learning </li>
	<li>Multimedia to Support Early Learning </li>
	<li>Augmentative and Alternative Communication </li>
	<li>Universal Design for Learning</li>
</ul>
<p>
Additional benefits include:
</p>
<ul>
	<li>Access to assistive technology including: computers, printers, and digital cameras for the duration of the training.</li>
	<li>Access to the following software titles: Boardmaker, Speaking Dynamically Pro, Edmark House Series, KidPix, Clicker 5 and more.</li>
	<li>Free memberships to the Simon Technology Center Library containing software, hardware, and assistive technology resources.</li>
	<li>Comprehensive KITE Training Manuals and resources for continuing to develop technology usage and inclusion within the home and classroom.</li>
	<li>Complimentary copies of Project KITE&#8217;s EZAT guide.</li>
	<li>KITE teams completing the training will receive clock hours for their participation.</li>
</ul>
<p>
<strong>To participate in Project KITE team-based trainings, teams must consist of the following members: </strong>
</p>
<ul>
	<li>A parent of a child (grades Pre-K through First) with special needs; </li>
	<li>The child's primary classroom teacher; </li>
	<li>Any additional service provider (Special Ed., Paraprofessional, etc.) working with the child and his/her parents or teacher; Families with diverse cultural or economic backgrounds are encouraged to participate. </li>
</ul>
<p>
Children whose parents and teachers are participating in Project KITE as a team must be part of an inclusive, regular-ed early childhood environment. 
</p>
<p>
Project KITE team-based trainings occur throughout Minnesota. To ensure availability in your area, contact your school district Special Education Coordinator to inquire about recruiting multiple teams. 
</p>
<p>
To participate as a team, please complete the following forms and return them as one group to PACER Center, Attn: Project KITE, 8161 Normandale Blvd, Bloomington, MN 55437: 
</p>

<ul>
<%If getSession() = "Fall" then %>    
	<li><a href="kiteTeamOnlineForm.asp?session=fall">Online Application Form</a> for Parent, Teacher, and Service providers for the Fall Session.</li>
<%ElseIf getSession() = "Spring" Then%>
	<li><a href="kiteTeamOnlineForm.asp?session=spring">Online Application Form</a> for Parent, Teacher, and Service providers for the Spring Session.</li>
<%Else%>
	<li><a href="kiteTeamOnlineForm.asp?session=nextsession">Online Application Form</a> for Parent, Teacher, and Service providers.</li>
<%End If%>    
	
	<li>Teacher/Service Provider Application - <a href="pdf/TeacherServiceApplication.pdf">PDF version</a> <img border="0" src="/images/pdficon_small.gif" width="15" height="17" alt="pdf icon" /></li>
			
	<li>Parent Application - <a href="pdf/ParentApplication.pdf">PDF version</a> <img border="0" src="/images/pdficon_small.gif" width="15" height="17" alt="pdf icon" /></li>
</ul>



<p>
Please contact John Newman with any questions at 952-838-9000 or by emailing 
<a href="mailto:stc@pacer.org">stc@pacer.org</a>.
</p>


<div id="pageextender" style="clear:both">&nbsp;</div>



</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>