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
<title>WE WILL Generation - Lesson 4 - Activity</title>
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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/wewillgen/">We Will Generation</a> / <a href="/bullying/wewillgen/curriculum/">Curriculum</a> / <a href="/bullying/wewillgen/curriculum/lessonfour/"> Lesson Four</a>
  
  <div id="loginname">
  Logged in as:&nbsp;&nbsp;&nbsp;<strong><%=Session("fname")%></strong>
  </div>
  </div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/wewillgen/curriculum/loginnav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="lessonfour-activity";	
	var showTree = "lessonfour-sub";
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
  
    <h1 id="maincontent">Lesson Four | Activity &ndash; Choose Orange</h1>
	
    <div class="downloadbox">
	  <h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="pdf/Choose-Orange.pdf" target="_blank">Choose Orange</a></li>
			<li class="pdficonlist"><a href="pdf/Alternative-Activity.pdf" target="_blank">Alternate Activity</a></li>
		</ul>
	</div>


	<div class="materials">
	<h2>Materials:</h2>
    <ul>
      <li>Posters</li>
      <li>Orange marker and one other colored marker </li>
    </ul></div>
    <img src="/bullying/wewillgen/images/choose-orange-pic.jpg" alt="Choose Orange wristband" width="144" height="902" align="right" hspace="10" vspace="10" />
    <p><strong>Goal: </strong>Have students participate in the &ldquo;Choose Orange&rdquo; campaign to encourage positive, supportive behavior.</p>
<h3>Activity</h3>
    <ol>
      <li>Have students brainstorm adjectives that describe people are who are involved in a bullying situation &ndash; the target, the person bullying, and the bystander. Suggestions included: bullied, hurt, alone, lost, sad, scared, desperate, hopeless, silent, defeated.</li>
      <li>Then have students brainstorm verbs that describe what they would like to see happen at their school to end bullying. Suggestions include: acknowledge, act, heal, change, believe, empower, embrace, mentor, unite, peace. If possible, write these words in orange.</li>
      <li>Tell students that they have the power to make either of these lists happen &ndash; they control whether or not bullying happens at their school. Ask who would like to choose the positive, orange group of words. </li>
      <li> As each student raises their hand, give them either an  orange silicone&mdash;will need to purchase&mdash;or create an orange paper band, similar to those used in <a href="/bullying/wewillgen/classroom-activities/project-connect.asp">Project Connect</a>.</li>
      <li>Invite students to wear their wristbands as a reminder to CHOOSE ORANGE &ndash; to choose to act in a way that promotes positivity, kindness, and inclusivity at their school. </li>
    </ol>
    <p><a href="/bullying/wewillgen/curriculum/LessonFour/pdf/Alternative-Activity.pdf" target="_blank">Click here for an alternate activity.</a></p>

<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/wewillgen/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
