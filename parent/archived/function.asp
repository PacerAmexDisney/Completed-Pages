

<%
Response.Redirect("/parent/")
%>









<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Functional Assessment</title>
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
<h2>Stay Informed</h2>
Receive the latest PACER Center information on issues important to you. 
<a href="../forms/index.asp">Sign up now</a>.
</div>
</div>

<div id="topbar">
<div id="breadcrumb">

	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="/parent/">Parent Special Education Information</a> / <a href="resources.asp"> Resources</a> / Functional Assessment
	
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
	var currId="parent_resources";
	var currSubId="resources-functionalassessment";
	// any Subtree that I want to Display
	var showTree = "resources-sub";
	
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

<h2 class="nounderline">Functional Assessment</h2>


<!--BEGIN CONTENT-->

<h3 style="font-size: 100%; font-weight: bold;">QUESTION:</h3>
<p>
My son Tom receives special education services at our junior high school, but is in a regular classroom for most of his school day. He receives detention or in-school suspension several times a week for being disruptive in the regular classroom, and has even been sent home for a cooling-off period several times over the past few months. His teachers have tried to be helpful, and are willing to do what they can, but they say that he refuses to do his work, gets angry for no apparent reason, and sometimes just leaves the classroom. They want to send him to another school where he can get more services. I've had many meetings with the school staff to change his program, but I still do not understand why he is having such problems in the first place. Tom's problems are not so severe at home or in the neighborhood. My friend told me to ask the school to do a functional assessment of his behavior. Is that different from the assessment schools typically do?
</p>

<h3 style="font-size: 100%; font-weight: bold;">ANSWER:</h3>
<p>
A functional behavioral assessment, or analysis, is a process which seeks to identify the problem behavior a child or adolescent may exhibit, particularly in school, to determine the function or purpose of the behavior, and to develop interventions to teach acceptable alternatives to the behavior. The process is as follows:
</p>
<ol style="list-style-type: decimal;">
	<li>Identify the behavior that needs to change,</li>
	<li>Collect data on the behavior,</li>
	<li>Develop a "hypothesis" (best guess) about the reason for the behavior,</li>
	<li>Develop an intervention to help change the behavior,</li>
	<li>Evaluate the effectiveness of the intervention,</li>
	<li>Have patience.</li>
</ol>

<p>
The first step in conducting a functional behavioral assessment is for the school team to identify and agree upon the behavior that most needs to be changed. Children and youth can exhibit a spectrum of difficult behaviors; it will be important to develop a prioritized list, so that the most severe behaviors can be addressed first. There will be times when the most appropriate response to irritating but non-dangerous behaviors is planned ignoring, particularly when the student is working on correcting more severe behaviors.
</p>
<p>
The second step is to collect data on the occurrence of the targeted behavior, identifying not only its frequency and intensity, but examining the context (the when, where and how) of the behavior.  Consider:
</p>
<ol style="list-style-type: upper-alpha;">
	<li>In what settings does the behavior occur most often?</li>
	<li>Where did it occur most recently?</li>
	<li>Who else was there?</li>
	<li>What is unique about the environment where the behavior occurred? (size of classroom, number of students, teaching style, seating, distractions, academic/behavioral expectations, structure)</li>
	<li>What other behavior occurred just before the targeted behavior? (interaction with another student, change in tasks, teacher direction, etc.)</li>
	<li>What were the immediate consequences of the behavior? (teacher attention, student laughter, etc.)</li>
	<li>Could the consequences be seen as positive for the student?</li>
</ol>
<p>
The third step is to develop, from the data collected, an hypothesis about the function or purpose of the student's behavior and to develop an intervention.
</p>
<ol style="list-style-type: upper-alpha;">
	<li>What does the team believe is the reason for the behavior? (attention-getting, avoidance, peer acceptance, etc.)</li>
	<li>What is the agreed upon strategy to correct the behavior?</li>
	<li>How much time will be given to implementing the intervention? (patience is key to behavioral change)</li>
</ol>
<p>
After the intervention has been tried over a period of time, it will be important to test the hypothesis. Does the intervention need to be paired with other modifications or rewards to increase its effectiveness? Did the intervention reduce the problem behavior? If not, what other strategies can be considered? Is it necessary to reevaluate the hypothesis, or to develop another best guess about the reason for the behavior, or to collect more information? While conducting a functional assessment of a child's behavior may take a bit more time initially to complete, for those students for whom typical interventions have not been successful, developing an understanding of the cause of behavior may be key to helping them learn new behavioral skills.
</p>
<p>
Functional assessments have been used for many years with students who have severe disabilities, to help parents and teachers to understand the function of inappropriate behavior, and to plan effective interventions. Functional assessments are also a useful approach to evaluating the reason for inappropriate behaviors for students who have milder disabilities, when their behaviors do not improve with the use of typical school interventions. It sounds as though you and the school staff are both frustrated by your son's lack of behavioral improvement, and, in this instance, a functional behavioral assessment may be a very good idea.
</p>

</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>