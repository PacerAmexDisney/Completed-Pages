<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Elementary Toolkits - National Bullying Prevention Center</title>
<!--<meta name="description" content="Free, downloadable toolkits designed for students adn community members to hold events, raise awareness and share information about bullying prevention. 
" />-->

<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"-->
</head>

<body class="twocol">
<div class="container"> <a id="skiptocontent" href="#maincontent">Skip to main content</a> 
	
	<!--#include virtual="/bullying/dynamic-header.html"--> 
	<!--#include virtual="/bullying/topnav.html"--> 
	
	<script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>
	<div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/resources/">Classroom</a> /</div>
	
	<!-- ######################### NAVIGATION ################################# -->
	<div class="sidebar1"> 
		<!--#include virtual="/bullying/classroom/nav.html"--> 
		<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="sch";	
	var showTree = "sch-sub";
	var showTree2 = "none";
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
		<h1 id="maincontent">All Ages - Schoolwide Toolkits</h1>
		<ul>
			<img class="fltrt" src="/bullying/classroom/images/school-wide-circle.jpg" width="330" height="330" alt=""/>
			<li><a href="/bullying/classroom/schoolwide/intro-to-bullying-prevention.asp">Introduction to Bullying Prevention</a>
				<p>Looking for a way to introduce bullying prevention and awareness into your classroom, school, or community organization? This five lesson toolkit contains daily learning opportunities and several options of engaging activities to get students talking about solutions to prevent bullying.</p>
			</li>
			<li><a href="/bullying/resources/toolkits/classroom/unity-tree.asp">Unity Tree</a>
				<p>An interactive and hands-on classroom activity. This is a shared experience as each person contributes their own unique experiences on leaves that are attached to the tree. As the number of leaves increases, it creates a visual reminder, demonstrating that when we are united we can create social change.</p>
			</li>
			<li><a href="/bullying/wewillgen/index.asp">The We Will Generation</a>
				<p>Resources designed to encourage student engagement and conversation to educate, inspire and support peers to create kinder and safer schools. Resource options include a free on-line curriculum which is designed to be shared in the classroom or with student leaders as presenters.</p>
			</li>
			<li><a href="http://www.pacer.org/bullying/yourenotalone/">You&rsquo;re Not Alone, We&rsquo;re Here for You</a>
				<p>Creating communities that are together against bullying&mdash;and united to provide kindness, support and hope for those who have experienced or who might be vulnerable to bullying, through conversation, education and inspiration.</p>
			</li>
			<li><a href="/bullying/classroom/schoolwide/project-connect.asp">Project Connect</a>
				<p>Make a powerful visual statement about uniting for kindness, acceptance and inclusion. Each student writes a message on an orange strip of construction paper. The strips are then connected to illustrate the power of uniting for a common cause. </p>
			</li>
			<li><a href="/bullying/classroom/schoolwide/digital-petition.asp">Take the Pledge</a>
				<p><strong>Elementary school</strong>: Along with committing to these positive behaviors, take the online <a href="https://pacerkidsagainstbullying.org/join-the-cause/take-the-pledge/" target="_blank">&ldquo;Kids Against Bullying&rdquo;</a> pledge. Students can also set up a table at school where peers can sign paper copies of the pledge.</p>
 
				<p><strong>Middle and High School</strong>: Take the online <a href="/bullying/pledge/#hold-a-pledge-event">&ldquo;Together Against Bullying&rdquo;</a> pledge or set up a table at your school where students can sign paper copies of the pledge.</p>
			</li>
			<li><a href="/bullying/classroom/schoolwide/school-event-guide.asp">School Event Planning Guide</a>
				<p>This five-step guide provides helpful information to create a meaningful event; including how to form your committee, setting the date and location, planning your activities, promoting your event, and holding the event.</p>
			</li>
		</ul>
		<br class="clearfloat" />
		
		<!-- end .content --></div>
	<!--#include virtual="/bullying/footer.html"--> 
	<!-- end .container --></div>
</body>
</html>
