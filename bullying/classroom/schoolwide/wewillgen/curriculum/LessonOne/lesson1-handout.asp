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
<title>WE WILL Generation - Lesson 1 - Handout</title>
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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/wewillgen/">We Will Generation</a> / <a href="/bullying/wewillgen/curriculum/">Curriculum</a> / <a href="/bullying/wewillgen/curriculum/lessonone/"> Lesson One</a>
  
  <div id="loginname">
  Logged in as:&nbsp;&nbsp;&nbsp;<strong><%=Session("fname")%></strong>
  </div>
  </div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/wewillgen/curriculum/loginnav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="lessonone-handout";	
	var showTree = "lessonone-sub";
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
    <h1 id="maincontent">Lesson One | Handout</h1>

	<div class="downloadbox">
	  <h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="pdf/Is-This-Bullying.pdf" target="_blank">Is This Bullying</a></li>
			<li class="pdficonlist"><a href="pdf/Above-the-Line.pdf" target="_blank">Above the Line</a></li>
		</ul>
	</div>


	
    
    <h3>Handout #1, Define Bullying</h3>
    <ol>
      <li>Let the students know that they are going to develop a definition of bullying that fits for their classroom, </li>
      <li>Using the suggested questions or your own questions, discuss with the class what bullying looks like at their school.&nbsp; Keep a list of student&rsquo;s answers<br />
        <strong><em>Suggested questions:</em></strong><em> add to or adapt these questions to fit your audience</em>
      <ul>
        <li>What is bullying?</li>
        <li>Who does the bullying? Who has power at your school?</li>
        <li>What are some reasons that kids get bullied?</li>
        <li>Where, in your school, does bullying happen?</li>
        <li>How are students bullied at your school?</li>
        <li>How do students react when they see bullying?</li>
      </ul></li>
      <li>Using the list of answers, work with students to create a definition of bullying that everyone can agree on; each group&rsquo;s definition will be unique, but it should include:
      <ul>
        <li>The behavior hurts or harms someone physically or emotionally </li>
        <li>The targets struggle to defend themselves or make the bullying stop </li>
        <li>There&rsquo;s an imbalance of power between the person bullying and the target; the person bullying has more physical, social, or emotional power. </li>
      </ul></li>
      <li>Discuss the roles in a bullying situation and how they relate to a definition.
      <ul>
        <li>The person bullying &ndash;bullying is about behavior, NOT appearances. That means that <em>anyone</em> can bully and <em>anyone</em> can be bullied. Sometimes people bully others because they are being bullied themselves.</li>
        <li>Target &ndash; the person who is being bullied; this person isn&rsquo;t always small, weak, or unpopular, but he or she will generally have less power in the situation than the person bullying</li>
        <li>Bystanders &ndash; the people who witness the bullying; this group is <em>very</em> important; bystanders have the power to help or hurt a bullying situation. </li>
      </ul></li>
      <li>Record your definition on a board, paper, or electronically.</li>
    </ol>
    <h3>Handout #2, Is This Bullying?</h3>
    <ol>
      <li>Hand out <a href="/bullying/wewillgen/curriculum/LessonOne/pdf/Is-This-Bullying.pdf" target="_blank">&ldquo;Is This Bullying?&rdquo;</a> to the audience. </li>
      <li>Then choose from the list below which process is best for your audience.
      <ul>
        <li>Read the scenarios out loud and ask for feedback from the audience.</li>
        <li>Separate into groups and have students complete the worksheet together.</li>
        <li>Have students complete the worksheet on their own time.</li>
      </ul></li>
    </ol>
<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/wewillgen/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
