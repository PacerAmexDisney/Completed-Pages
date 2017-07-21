<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/bullying/classroom/elementary/activities/index.asp"
%>








<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center - Educational Activities</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"-->

<style type="text/css">
	#activitestable {
		clear:right;
	}
	#activitestable h2 {
		text-shadow:none;
	}
	#activitestable td {
		vertical-align:top;
		padding-bottom:20px;
	}
	#studentsteachingstudents{
		margin-top:-95px;
	}
</style>

</head>

<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>
 
 <!--#include virtual="/bullying/dynamic-header.html"--> 
 <!--#include virtual="/bullying/topnav.html"--> 
 
 <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/resources/">Resources</a> / <a href="/bullying/resources/toolkits/">Educator Toolkits</a> /</div>
 
 <!-- ######################### NAVIGATION ################################# -->
 <div class="sidebar1"> 
  <!--#include virtual="/bullying/resources/nav.html"--> 
 <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="activities";	
	var showTree = "toolkits-sub";
	var showTree2 = "activities-sub";
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
  <h1 id="maincontent">Activities for Youth</h1>
	
  <div class="alertBox" id="studentsteachingstudents">
		<h3><strong><a href="/bullying/wewillgen/classroom-activities.asp">Students Teaching Students</a></strong></h3>
		<p>Students &mdash; and educators &mdash; can use one or more of these activities from PACER&rsquo;s WE WILL Generation program for older students to educate younger students on topics such as defining bullying, individuality, and supporting each other. </p>
	</div>
	
	<p>These free activities and resources are designed for younger students. The goal is to start conversation and creatively engage students to build their understanding of how to prevent bullying. </p>
<table id="activitestable" cellspacing="5">
	<tr>
		<td><img src="/bullying/resources/toolkits/activities/images/KABPledge_thumb.jpg" alt="" width="200" height="155" /></td>
		<td><h2><a href="/bullying/resources/toolkits/activities/take-the-pledge.asp">Take the Pledge</a></h2>
			<p>Learn how you can take the &ldquo;Kids Against Bullying&rdquo; pledge. Students promising to speak up, reach out, and be a friend when they see bullying can download the official certificate and sign their name.</p></td>
		</tr>
		<tr>
		<td><img src="/bullying/resources/toolkits/activities/images/coloring-book-cover_thumb.jpg" alt="" /></td>
		<td><h2><a href="/bullying/resources/toolkits/activities/coloring-book.asp">Kids Coloring Book</a></h2>
			<p>				Color the Crew! The Kids Against Bullying cast is captured in a coloring book which gives teachers and students a great opportunity to talk about bullying while they have fun. Each page includes an important message about respecting others, valuing differences, and being a friend. Download these pages and discover how kids and crayons can help prevent bullying.</p></td>
		</tr>
		<tr>
		<td><img src="/bullying/resources/toolkits/activities/images/poster_thumb.jpg" alt="" /></td>
		<td><h2><a href="/bullying/resources/toolkits/activities/poster.asp">Create a Poster</a></h2>
			<p>Send us your story, poem, artwork or video on the topic&nbsp;expressing your ideas on bullying prevention. It can be about what happened to you or someone else, how you feel about bullying, how you think it affects students and schools, what you have done to prevent bullying, or what others can do to prevent bullying. We want to hear from everyone&mdash;teens, parents, teachers, and others with great ideas who want to improve the world.</p></td>
		</tr>
		<tr>
		<td><img src="/bullying/resources/toolkits/activities/images/stickpuppet_thumb.jpg" alt="" /></td>
		<td><h2><a href="/bullying/resources/toolkits/activities/stick-puppet.asp">Stick Puppet Role Plays </a></h2>
			<p>Bring the&nbsp;Kids Against Bullying &quot;Club Crew&quot; from the web&nbsp;to the &quot;stage&quot; with the three downloadable scripts and&nbsp;printable images of each character. Puppetry is a wonderful way to start discussion and each script include a creative classroom activity.</p></td>
		</tr>
		<tr>
		<td><img src="/bullying/resources/toolkits/activities/images/unitydance_thumb.jpg" alt="" /></td>
		<td><h2><a href="/bullying/resources/toolkits/activities/unity-dance.asp">Unity Dance</a></h2>
			<p>Students across the nation can come together in song and dance to raise awareness for bullying prevention by holding a Unity Dance. Get your school or organization together and use PACER&rsquo;s online toolkit to <strong>organize a Unity Dance where you live</strong>. The toolkit includes the designated song for the dance, choreographed dance moves, and much more.</p></td>
		</tr>
		<tr>
		<td><img src="/bullying/resources/toolkits/activities/images/pip_thumb.jpg" alt="" /></td>
		<td><h2><a href="/bullying/resources/toolkits/activities/wheres-pip.asp">Where&rsquo;s Pip?</a></h2>
			<p>Pip, the hamster mascot of the Kids Against Bullying, loves to travel. He has been known to visit schools, homes, and other locations all over the globe. Where will Pip show up next?</p></td>
		</tr>
        <tr>
		<td><img src="/bullying/resources/toolkits/activities/images/unity-banner_thumb.jpg" alt="" /></td>
		<td><h2>Unity Banner</h2>
			
						<p>Create a huge banner with the word UNITY  as the central theme. Ask everyone to make a voluntary contribution to sign  the banner, define what unity means to them, or make a suggestion about ways  to unite as a school or organization. This can be done on Unity Day or  anytime during the year.
	</p>
				</p></td>
		</tr>
        tr>
		  <td><img src="/bullying/resources/toolkits/activities/images/wrinkled-heart-thumb.jpg" alt="" /></td>
		<td><h2><a href="/bullying/resources/toolkits/activities/wrinkled-heart.asp">A Wrinkled Heart</a></h2>
			
						<p>Designed for younger students, &ldquo;A Wrinkled Heart&rdquo; activity provides students with a powerful visual that shows the effects hurtful words or behaviors have on someone. The activity is simple and a great reminder to be kind to others.</p>
				</p></td>
		</tr>
</table>	
	
	
	
	
	
	
	
	
	
	
<p><strong>Want more?</strong> -- Check out over a dozen <a href="/bullying/resources/toolkits/">Educator Toolkits</a> with activities designed for the classroom, community, and toolkits designed by students for students.</p>

<br class="clearfloat" />

  
  <!-- end .content --></div>
 <!--#include virtual="/bullying/footer.html"--> 
 <!-- end .container --></div>
</body>
</html>
