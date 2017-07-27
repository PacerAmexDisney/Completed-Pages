<%
Dim FallRegCloseDate, SpringRegCloseDate
FallRegCloseDate = cDate("9/30/" & DatePart("yyyy", Now()))
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
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />
<style type="text/css">
#pagecontent a.buttonLink {
	-moz-box-shadow:inset 0px 1px 0px 0px #cae3fc;
	-webkit-box-shadow:inset 0px 1px 0px 0px #cae3fc;
	box-shadow:inset 0px 1px 0px 0px #cae3fc;
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #79bbff), color-stop(1, #4197ee) );
	background:-moz-linear-gradient( center top, #79bbff 5%, #4197ee 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#79bbff', endColorstr='#4197ee');
	background-color:#79bbff;
	border-radius:8px;
	text-indent:0;
	border:1px solid #469df5;
	display:block;
	margin:10px auto;
	color:#ffffff;
	font-size:1.5em;
	font-weight:bold;
	font-style:normal;
	height:2.7em;
	line-height:2.7em;
	width:8em;
	text-decoration:none;
	text-align:center;
	text-shadow:1px 1px 0px #287ace;
}
#pagecontent a.buttonLink:hover {
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #4197ee), color-stop(1, #79bbff) );
	background:-moz-linear-gradient( center top, #4197ee 5%, #79bbff 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#4197ee', endColorstr='#79bbff');
	background-color:#4197ee;
}
#pagecontent a.buttonLink:active {
	position:relative;
	top:1px;
}
/* This button was generated using CSSButtonGenerator.com */</style>

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
<h2 class="nounderline">Project KITE - Kids Included through Technology are Enriched</h2>
<p style="max-width:490px;">A Free assistive technology training and coaching program for parents and educators designed to increase the independence and inclusion of young learners with disabilities.</p>
<div class="alertBox" style="margin-top:-50px;">
<h3 style="font-size:.9em; text-align:center; margin-bottom:20px;">Addional Information</h3>
<ul>
<li><a href="/stc/kite/FAQs.asp">Project KITE FAQ</a></li>
<li><a href="/stc/kite/resources.asp">Resources</a></li>
</ul>
</div>


<h3>Now Accepting Applications for Fall 2014<br />
	<span style="font-size:.8em; text-transform:none;"><a href="#participate">Jump to  Application</a></span></h3>
<p><strong>Why Participate in Project KITE?</strong><img class="fltrt" style="clear:right;" src="/stc/kite/images/youngexplorer-v2.jpg" alt="" height="134" width="140" /></p>
<p>Participants are provided fantastic resources including:</p>
<ul>
  <li>Young Explorer computer (pictured), gifted to the participant&rsquo;s school  at the end of the training. The computers are donated by IBM and are valued at  more than $2,500.</li>

     <li>Use of an iPad with hundreds of assistive technology apps (loaned to teams during the length of the training).&nbsp;&nbsp;</li>
	
	<li>Free 1- year memberships to the Simon Technology Center&rsquo;s lending library of more than 3,000 assistive technology hardware and software titles.</li>
	
	<li>Project KITE travels to its participants&rsquo; town and occurs during convenient times set by its participants.</li>
</ul>

<!--<table border="0" cellpadding="5" cellspacing="5" width="100%">
	<tbody>
		<tr>
			<td colspan="2">Workshops: <em>(All Workshops can also be viewed online via web streaming on a computer)</em></td>
		</tr>
		<tr>
			<td><strong>Register for Complete Series</strong></td>
			<td><ul>
				<li>Session 1 - 04/17/2013</li>
				<li>Session 2 - 04/26/2013</li>
				<li>Session 3 - 05/03/2013</li>
				<li>Session 4 - 05/09/2013</li>
				<li>Session 5 - 05/23/2013</li>
				</ul>
				<p><a href="http://www.pacer.org/forms/workshops.asp?wksp=77731BB1-0C77-4FFA-8D95-F118F91B0424">Register for the Complete Series</a></p>
				<p><em>-See below for information on participating as a team and being eligible for the free computer and iPad.</em></p></td>
		</tr>
		<tr>
			<td colspan="2" style="font-size:1.2em; color:#390; font-weight:bold"><hr />Or register for an individual session below:</td>
		</tr>
		<tr>
			<td width="33%">Session 1 - <strong><br />
				Wednesday April 17, 2013</strong></td>
			<td width="67%"><h3>An Overview of Assistive Technology (AT) and How to Select and Implement  AT in a Young Learner&rsquo;s Education</h3>
				<p>This workshop kicks off the  Project KITE workshop series by covering two essential topics for parents and  educators alike:</p>
				<ul>
					<li>Various types  and uses of assistive technology </li>
					<li>Effective  strategies for exploring, discussing and implementing assistive technology in a  young child&rsquo;s education. </li>
				</ul>
				<p>A range of assistive technology, from low tech adaptations to mobile  apps, will be demonstrated and discussed during this workshop, providing  parents and educators alike with ideas and inspiration for their child, student,  and classroom. This session is part one of a unique five-part workshop  experience. </p>
				<p><a href="http://www.pacer.org/forms/workshops.asp?wksp=546DA457-11F0-4AFC-8361-D7D483D45067">Register For Session 1</a></p></td>
		</tr>
		<tr>
			<td>Session 2 -<strong><br />
				Friday April 26th, 2013</strong></td>
			<td><h3>The Power of Visual Supports and Strategies for Young Learners</h3>
				<p>When it comes to young  children, a picture really is worth a thousand words. For many early learners, a  thousand words makes up a considerable portion of their expressive and  receptive vocabularies. In this workshop, we will explore how the creative use  of visuals can boost the behavioral, literary, and communicative potential of  young children in home and school settings. Participants will learn about a  wide range of visual supports and strategies, from low-tech drawings to high-tech  mobile apps. Parents and professionals will also be directed to free or low-cost  methods of creating their own visual supports for their child, student, or classroom.  This workshop is part 2 of a 5-part series.</p>
				<p><a href="http://www.pacer.org/forms/workshops.asp?wksp=66631AC1-0C77-4FFA-8D95-F118F91B0420">Register For Session 2</a></p></td>
		</tr>
		<tr>
			<td>Session 3 -<strong><br />
				Friday May 3rd, 2013</strong></td>
			<td><h3>Early Literacy and Assistive Technology: Making Literacy Accessible and  Engaging for Young Learners</h3>
				<p>It&rsquo;s no secret that young  children learn through play. This certainly holds true for the way children  develop literacy skills. In this workshop, participants will discover how  assistive technology can help engage and motivate young children in their  exploration and use of literacy skills. We will explore and demonstrate everything  from entertaining, messy play dough activities to mobile app technology,  providing both parents and educators with fun activities and ideas to enrich  the child&rsquo;s literary skills. This workshop is part 3 of a 5-part series. &nbsp;</p>
				<p><a href="http://www.pacer.org/forms/workshops.asp?wksp=66631BB1-0C77-4FFA-8D95-F118F91B0421">Register For Session 3</a></p></td>
		</tr>
		<tr>
			<td>Session 4 - <strong><br />
				Thursday May 9th, 2013</strong></td>
			<td><h3>Ingenious Low Tech Assistive Technology Solutions for Young Learners</h3>
				<p>It does not always require a  large financial investment to make a significant impact on learning.  Participants in this workshop will discover how a few dollars spent at their  local arts and craft store could have a huge payoff in a young child&rsquo;s  education and daily life. A variety of low-tech solutions for communication,  handwriting, sensory needs, and more will be discussed and demonstrated providing  parents and educators alike with ideas and inspiration for their child, student,  and classroom. Participants will also be directed to a variety of online  resources, including useful social media pages, for more ideas and tutorials  for low-tech solutions. This workshop is part 4 of a 5-part series.</p>
				<p><a href="http://www.pacer.org/forms/workshops.asp?wksp=66731BB1-0C77-4FFA-8D95-F118F91B0422">Register For Session 4</a></p></td>
		</tr>
		<tr>
			<td>Session 5 -<strong> <br />
				Thursday May 23rd, 2013</strong></td>
			<td><h3>Assistive Technology for the Communication Needs of Young Learners</h3>
				<p>One of the most important  and empowering skills a young child can have is the ability to communicate.  Participants in this workshop will discover how assistive technology can  strengthen and enable the communication skills of young children. A wide  variety of alternative and augmentative communication (AAC) solutions will be  demonstrated and discussed, ranging from simple do-it-yourself solutions to high-tech  apps and dedicated communication devices. This workshop is part 5 of a 5-part  series.</p>
				<p><a href="http://www.pacer.org/forms/workshops.asp?wksp=67731BB1-0C77-4FFA-8D95-F118F91B0423">Register For Session 5</a></p></td>
		</tr>
		<tr>
			<td colspan="2"><p><em>This workshop series is funded in part by a grant  from the Minnesota Department of Education.</em></p></td>
		</tr>
	</tbody>
</table>
 --><p><img class="fltrt" style="clear:right;" src="/stc/kite/images/flickr-8433147083-by-IntelFreePress.jpg" alt="" height="212" width="150" />Project KITE creates a collaborative environment for parents and  educators to learn about and use assistive technology by:</p>
<ul>
	<li>Delivering 5 workshops focusing on different categories and uses of assistive technology for young learners.</li>

	<li>Training participants in assistive technologies for literacy, communication, behavior, and other important skills vital to young learners&rsquo; education and daily life.</li>

	<li>Collaborating with PACER&rsquo;s Assistive Technology Specialists to find, trial and use assistive technologies for their student/child.</li> 

</ul>
<h3 style="clear:right;" id="participate">How Do I Participate in KITE?</h3>
<div class="alertBox">
	<h2>Project KITE<br />
	Online Application</h2>
<%If getSession() = "Fall" then %>    
    <p>We are currently accepting applications for the Fall <%=DatePart("yyyy", FallRegCloseDate)%> session</p>
    <p>Project KITE Training Application Deadline is <%=FormatDateTime(FallRegCloseDate, 1)%>.</p>
	<!--<p>The spring session  begins in February.</p>-->
    <p><a class="buttonLink" href="kiteTeamOnlineForm.asp?session=fall">Apply Online</a></p>
<%ElseIf getSession() = "Spring" Then%>
    <p>We are currently accepting applications for the spring <%=DatePart("yyyy", SpringRegCloseDate)%> session</p>
    <p>Project KITE Training Application Deadline is <%=FormatDateTime(SpringRegCloseDate, 1)%>.</p>
	<p>The spring session  begins in February.</p>
    <p><a class="buttonLink" href="kiteTeamOnlineForm.asp?session=spring">Apply Online</a></p>
<%Else%>
	<p>The current sessions registration is closed, but you can sign up for the next session now.</p>
	<p><a class="buttonLink" href="kiteTeamOnlineForm.asp?session=nextsession">Apply Online</a></p>
<%End If%>    

</div>
<p>The goal of Project KITE is to increase the independence and  inclusion of 3 children (ages 3-8 with a disability) through innovative uses of  assistive technology. To reach this goal, each child is represented by a team  consisting of:</p>
<ul>
	<li>A parent of a child (ages 3 to 8) with a disability </li>

  <li>The child&rsquo;s teacher</li>

  <li>A related service provider working with the child, such as an occupational therapist, speech language pathologist, paraprofessional, or others.</li>
</ul>


<p>For more information contact Project KITE Coordinator Terri Rosen via  email at <a href="mailto:Terri.Rosen@Pacer.org">Terri.Rosen@Pacer.org</a>&nbsp;or call (952) 838-9000.&nbsp;<strong>Application  deadline is September 30th 2014</strong>. Applications can be requested,  downloaded, or submitted online.</p>
<p><img src="/images/pdficon_small.gif" width="15" height="15" alt=""/><a href="/stc/kite/pdf/ProjectKITEApplication.pdf" target="_blank">Download Application</a></p>
<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>