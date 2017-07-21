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
<title>WE WILL Generation - Lesson 5 - Activity</title>
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
	var currId="lessonfive-activity";	
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
  
    <h1 id="maincontent">Lesson Five | Activity &ndash; &ldquo;180 Race&rdquo;</h1>
	
    <div class="downloadbox">
	  <h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="pdf/Bullying-Situations.pdf" target="_blank">Bullying Situations</a></li>
		</ul>
	</div>


		<div class="materials">
	<h2>Materials:</h2>
    <ul>
      <li>Enough space for all students to move quickly and safely</li>
      <li>Stamps or stickers</li>
      <li>Print outs of various examples of <a href="/bullying/wewillgen/curriculum/LessonFive/pdf/Bullying-Situations.pdf" target="_blank">bullying situations</a></li>
    </ul></div>
    <p><strong>Goal: </strong>To encourage students to practice positively redirecting negative situations in a fun and engaging manner.</p>
    <h3>Activity:</h3>
    <ol>
      <li>Divide students into groups of 3-4 people. Have each presenter stand at a &ldquo;station&rdquo;; make sure there is enough room around each station to avoid collisions. If you have more groups than presenters, make the groups bigger so that you have as many or more presenters as groups. </li>
      <li>Each station should have an <a href="/bullying/wewillgen/curriculum/LessonFive/pdf/L5-S4-Examples.pdf" target="_blank">example situation</a>, a stamp or sticker for each group, and a presenter. Before beginning the activity, tell the students what order the stations go in to avoid collisions or conflict. </li>
      <li>With each group starting at a different station, have students go through all of the stations as quickly as (safely) possible. </li>
      <li>After a group finishes a station, they should look for an &ldquo;open&rdquo; station or stand in line for the next available station. </li>
      <li>When a group arrives at the station, the presenter should read the example situation aloud and then place it somewhere the group can see it. The group should then discuss and together come up with a way to &ldquo;turn a 180&rdquo; on the example situation. The presenter should make sure that students are working together; if one person shouts out an answer right away, tell them that they must discuss it with their group and come to a consensus before they get their reward. </li>
      <li>As soon as the group comes up with an acceptable answer and announces it to the presenter, the presenter should give them their stamp or sticker and send them to the next station. Remember, there is no &ldquo;right&rdquo; answer; in fact, presenters should encourage groups to be creative. However, there may be unacceptable answers. An acceptable answer will: 
      <ol type="a">
        <li>Turn the situation in a positive direction </li>
        <li>Be respectful of all parties involved </li>
        <li>Be realistic </li>
      </ol></li>
      <li>The first group to receive a stamp or sticker from all stations wins. Presenters need not have any sort of prize. The satisfaction of completing the task should be enough. </li>
    </ol>
<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
