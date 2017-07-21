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
<title>WE WILL Generation - Activity</title>
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
	var currId="lessonone-activity";	
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
  
    <h1 id="maincontent">Lesson One | Activity &ndash; &ldquo;Above the Line/Below the Line&rdquo;</h1>
	
    <div class="downloadbox">
	  <h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="../../pdf/above-the-line-image.pdf" target="_blank">Above the Line/Below the Line</a></li>
		</ul>
	</div>


		<div class="materials">
	<h2>Materials:</h2>
    <ul>
      <li>Above the Line/Below the Line handouts</li>
      <li>Banner size paper &ndash; at least 30in x 40in</li>
      <li>Markers </li>
    </ul></div>
    <p><strong>Goal: </strong>To help students understand the concept of above the line versus below the line behaviors and make a commitment to promoting above the line behaviors at their school.</p>
    <img src="/bullying/wewillgen/images/above-the-line-image.jpg" alt="Above/Below the Line" width="400" height="424" align="right" vspace="10" hspace="10" />
<h3>Activity</h3>
    <ol>
      <li>While one presenter is talking, have another draw a line across the paper. Write &ldquo;above the line&rdquo; on top of the line and &ldquo;below the line&rdquo; under the line, with arrows pointing up and down, respectively (i.e. copy the graphic on the handout).</li>
      <li>Ask the group to brainstorm ideas of what behaviors might be above and below the line in a bullying situation. Answers might include:
      <ol type="a">
        <li>Above the line
        <ol type="i">
          <li>Saying something nice to the target</li>
          <li>Asking the target to sit with you at lunch</li>
          <li>Telling the person bullying that what they&rsquo;re doing isn&rsquo;t OK </li>
        </ol></li>
        <li>Below the line
        <ol type="i">
          <li>Joining in the bullying</li>
          <li>Laughing at the target</li>
          <li>Saying something mean to the target later</li>
        </ol></li></ol></li>
      <li>Write the group&rsquo;s answers on the poster in the appropriate locations. </li>
      <li>Ask the group to brainstorm answers to these questions: What happens at our school when students engage in above the line behaviors? What happens when they engage in below the line behaviors? </li>
      <li>Ask students to commit to having more above the line behaviors and fewer below the line behaviors in their classroom. </li>
      <li>Find a place to display the poster as a reminder to the students of their commitment. </li>
    </ol>
<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
