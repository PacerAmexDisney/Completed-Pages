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
<title>WE WILL Generation - Lesson 2 - Handout</title>
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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/wewillgen/">We Will Generation</a> / <a href="/bullying/wewillgen/curriculum/">Curriculum</a> / <a href="/bullying/wewillgen/curriculum/lessontwo/"> Lesson Two</a>
  
  <div id="loginname">
  Logged in as:&nbsp;&nbsp;&nbsp;<strong><%=Session("fname")%></strong>
  </div>
  </div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/wewillgen/curriculum/loginnav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="lessontwo-handout";	
	var showTree = "lessontwo-sub";
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
    <h1 id="maincontent">Lesson Two | Handouts</h1>

	<div class="downloadbox">
	  <h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="pdf/PEOPLEMagazineArticle.pdf" target="_blank">People Magazine Article</a></li>
			<li class="pdficonlist"><a href="pdf/L2-S2-Worksheet.pdf" target="_blank">I Was Bullied Because</a></li>
		</ul>
	</div>


	
    
    <p>This lesson includes an exploration about reasons why individuals are bullied and about the pressure to fit in.</p>
    <h3>Handout &ndash; &ldquo;I Was Bullied Because&rdquo;</h3>
    <ol>
      <li>Hand out copies of the <a href="/bullying/wewillgen/curriculum/LessonTwo/pdf/PEOPLEMagazineArticle.pdf" target="_blank">PEOPLE Magazine article</a> or display on a monitor </li>
      <li>Pass out the <a href="/bullying/wewillgen/curriculum/LessonTwo/pdf/L2-S2-Worksheet.pdf" target="_blank">&ldquo;PEOPLE Magazine Article &ldquo;I Was Bullied Because . . .&rdquo;</a> worksheet</li>
      <li>Ask students to complete and then discuss responses as a class or in small groups.</li>
    </ol>
    <h3>Additional Discussion</h3>
    <ol>
      <li>Brainstorm with the group answers to these questions. </li>
      <li>Ask the class to name people &ndash; celebrities, fictional characters, etc. &ndash; who they would call &ldquo;individuals.&rdquo; Discuss why those people are considered individuals.</li>
      <li>Ask the class: &ldquo;Do you think there is a lot of pressure to fit in?&rdquo; Discuss why or why not?</li>
      <li>At this point, either share a story from one of the presenters that illustrates the concept of individuality or about fitting in. You could also discuss why people want to fit in, what&rsquo;s so great about fitting in, and why it&rsquo;s hard when you feel like you don&rsquo;t fit in. </li>
    </ol>
<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
