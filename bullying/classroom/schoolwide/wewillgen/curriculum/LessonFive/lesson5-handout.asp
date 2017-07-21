<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
If Session("wwgLogin") <> "Valid" Then
	Session("wwgEntranceURL") = Request.ServerVariables("URL")
	Response.Redirect("/bullying/wewillgen/educator-login.asp")
End If
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>WE WILL Generation - Lesson 5 - Handout</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link href="/bullying/wewillgen/css/loginstyle.css" rel="stylesheet" type="text/css" />



<!--#include virtual="/bullying/dynamic-head-items.html"--></head>

<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>
 
  <!--#include virtual="/bullying/dynamic-header.html"--> 
  <!--#include virtual="/bullying/wewillgen/curriculum/logintopnav.html"--> 
  
  <script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/wewillgen/">We Will Generation</a> / <a href="/bullying/wewillgen/curriculum/">Curriculum</a> / <a href="/bullying/wewillgen/curriculum/lessonfive/"> Lesson Five</a>
  
  <div id="loginname">
  Logged in as:&nbsp;&nbsp;&nbsp;<strong><%=Session("fname")%></strong>
  </div>
  </div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/wewillgen/curriculum/loginnav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="lessonfive-handout";	
	var showTree = "lessonfive-sub";
	var showTree2 = "none-none-sub";
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
    <h1 id="maincontent">Lesson Five | Handout</h1>

	<div class="downloadbox">
	  <h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="pdf/TurnA180_Worksheet.pdf" target="_blank">&ldquo;Turn A 180&rdquo; Worksheet</a></li>
		</ul>
	</div>


	
    
    <h3>Handout</h3>
    <ol>
    <li>Distribute the <a href="/bullying/wewillgen/curriculum/LessonFive/pdf/TurnA180_Worksheet.pdf" target="_blank">&ldquo;Turn A 180&rdquo;</a> worksheet.</li>
    <li>Ask the students to read each situation carefully.</li>
     <li>They should then write one way in which they could turn the situation around and send it in a positive direction.</li>
    </ol>
    <h3>Additional Discussion</h3>
    <ol>
    <li>Have students brainstorm specific examples of bullying or negative situations; suggest that they may use examples that have been discussed in previous lessons. Possible suggestions include:
  <ul>
  <li>Student being called a geek because she won the science fair award.</li>
  <li>Male student being called retard because he has cognitive delays.</li>
  <li>Student being made fun of for his looks after he runs for homecoming court.</li>
  </ul></li>
    <li>Have students break into groups of 3-5 students. Ask them to pick one example from those brainstormed. You may want to have groups announce what they&rsquo;ve chosen to avoid duplicates; however, two groups may offer different solutions for the same situation.</li>
    <li>Instruct groups to come up with at least four ways they could &ldquo;turn a 180&rdquo; on their chosen situation. Encourage them to focus on ways to show support for the target, but their solutions may also include ways to respond to the person bullying (see examples in TRUCE video). For example:
    <ul>
    <li>Chosen situation: Student being called a geek because she won the science fair award</li>
  <li>Turn a 180: Tell that student how cool you thought her project was and ask her if she&rsquo;ll show you how the robot dinosaur works after school.</li>
  </ul></li>
    <li>Give groups a few minutes to decide how they would like to share their solution with the class; they may choose a spokesperson, act out the situation together, etc. Then invite each group to share their situation and how they turned a 180 with the class. Encourage the class to positively reinforce each other with active listening, respectful attention, and enthusiastic applause.</li>
    </ol>
<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/wewillgen/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
