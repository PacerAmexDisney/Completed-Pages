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
<title>WE WILL Generation - Lesson 4 - Handout</title>
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
	var currId="lessonfour-handout";	
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
    <h1 id="maincontent">Lesson Four | Handout</h1>


    <div class="downloadbox">
	  <h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="pdf/Lesson-4-Discussion.pdf" target="_blank">Lesson Four Discussion</a></li>
		</ul>
	</div>

	
    
    <p>Students will learn the importance of encouraging and supporting their peers and provide strategies to take action.</p>
      <h3>Discussion</h3>
      <ol>
<li>Review an example of how one student took it upon himself to build up the students at his school.
    <ul>
      <li>Show the audience the <a href="https://twitter.com/OsseoNiceThings" target="_blank">OsseoNiceThings twitter page</a>. </li>
      <li>If you aren&rsquo;t able to show the page, print off a page or two to pass around. </li>
      <li>Talk about why students think this campaign has been so successful. </li>
    </ul></li>
    <li>Invite students to remember a time in which they felt like they had been &ldquo;torn down&rdquo; OR saw someone else going through that; answers might include a time:
    <ul>
      <li>someone said something mean </li>
      <li>I failed at something </li>
      <li>when a friend made a mistake </li>
    </ul></li>
    <li>Ask students to try and remember things that made them feel better, including how someone else helped them. Accept all answers but focus on ways that the actions of a peer made them feel better. Write answers on the board.</li>
    <li>Inform the group that this lesson focuses on ways that students can help &ldquo;build each other up&rdquo; or help others feel good about themselves.</li>
    <li>Ask students to remember a time when someone they cared about was bullied or when they themselves were bullied. Brainstorm ideas with the group of what other people can do to &ldquo;build up&rdquo; targets of bullying and write answers on the board. If the audience doesn&rsquo;t have an example, presenters should be prepared to provide insight. Answers might include:
    <ul>
      <li>Saying something nice to him/her </li>
      <li>Inviting him/her to sit with you at lunch </li>
      <li>Complimenting something he/she does </li>
    </ul></li>
    <li>Invite students to raise their hand if they have ever <em>wanted </em>to do the right thing but it was really hard (hopefully a lot of students will raise their hands). Ask students to share why they think it&rsquo;s hard to do the right thing sometimes, even if they know what it is. Write these responses on the board. Answers might include:
    <ul>
      <li>I didn&rsquo;t want to look dumb. </li>
      <li>No one else was doing it. </li>
      <li>I might get in trouble. </li>
    </ul></li>
    <li>Pick a few of the most significant difficulties the students shared and brainstorm with the group ways of responding to these difficulties. For example:
  <ul>
  <li>Difficulty: No one else was doing it.</li>
  <li>Response: You probably know from your own experience, and research shows, that when one person is brave enough to do the right thing, others will follow.</li>
  </ul></li></ol>
<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
