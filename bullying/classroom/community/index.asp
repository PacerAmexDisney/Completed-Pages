<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Community Toolkits - National Bullying Prevention Center</title>
<meta name="description" content="Free, downloadable toolkits designed for students adn community members to hold events, raise awareness and share information about bullying prevention. 
" />
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
	<div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/classroom/">Classroom</a> /</div>
	
	<!-- ######################### NAVIGATION ################################# -->
	<div class="sidebar1"> 
		<!--#include virtual="/bullying/classroom/nav.html"--> 
		<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="com";
	var showTree = "none";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "active";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "submenu") {
			if (subTrees[i].id != showTree) {
				subTrees[i].className = "submenuhidden";
			}
		}
	}
</script> 
	</div>
	<!-- ###################### END Navigation ############################## -->
	
	<div class="content">
		<h1 id="maincontent">Community Toolkits</h1>
		<img class="fltrt" src="/bullying/classroom/images/community-circle.jpg" width="330" height="330" alt=""/>
		<p>Free, downloadable  toolkits designed for students and community members &nbsp;to hold events,  raise awareness and share information about bullying prevention.</p>
		<ul>
			<li><a href="http://www.pacer.org/bullying/nbpm/runwalkroll/events-around-the-country.asp">Run, Walk, Roll Against Bullying</a>
				<p>Coordinate a Run, Walk, Roll Against Bullying in your community using the online toolkit and guide, which includes helpful tips, ideas, and resources such as checklists and sample forms.</p>
			</li>		
			<li><a href="http://www.pacer.org/bullying/yourenotalone/event-toolkit.asp">You&rsquo;re Not Alone, We&rsquo;re Here for You &ndash; Hold An Event</a>
				<p>Designed to help you hold an awareness raising event to unite against bullying and join together to provide community, support, and hope for those who have experienced bullying.</p>
				<p>The toolkit can be used in coordination with a bullying prevention event in the school or community, such as a "Run, Walk, Roll Against Bullying," school open house, or parent teacher conferences. It can also be used as a stand-alone activity to raise awareness of the importance of creating supportive, caring environments in which everyone feels like they belong.</p>
			</li>
			<li><a href="/bullying/pledge">Take the pledge</a>
				<p>One out of every five students report being bullied. This might be happening to someone you know and care about. Unite with others, show that you care, and make a commitment for kindness, acceptance and inclusion.</p>
			</li>
			<li><a href="http://www.pacer.org/bullying/resources/students-with-disabilities/peer-advocacy.asp">Peer Advocacy Guide</a>
				<p>Engagement concept to address bullying of students with disabilities by educating, and empowering their peers with advocacy skills. A peer advocate program creates a formal process that identifies, trains, and supports a designated group of students who advocate for students with disabilities.</p>
			</li>
			<li class="pdficonlist"><a href="/bullying/getinvolved/student-action/events/pdf/RallytoPromoteStrongerBullyingPreventionLegislation.pdf" target="_blank">Rally to Promote Stronger Bullying Legislation</a>
				<p>Unite to improve your community’s bullying prevention law or school policy.</p>
			</li>
		</ul>
		<br class="clearfloat" />
		
		<!-- end .content --></div>
	<!--#include virtual="/bullying/footer.html"--> 
	<!-- end .container --></div>
</body>
</html>
