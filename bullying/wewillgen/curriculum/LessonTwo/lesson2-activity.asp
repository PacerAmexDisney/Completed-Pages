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
<title>WE WILL Generation - Lesson 2 - Activity</title>
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
	var currId="lessontwo-activity";	
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
  
    <h1 id="maincontent">Lesson Two | Step 4: Activity &ndash; &ldquo;Project Connect&rdquo;</h1>
    
        <div class="downloadbox">
	  <h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="pdf/Project-Connect.pdf" target="_blank">Project Connect</a></li>
		</ul>
	</div>

    
    <div class="materials">
      <h2>Materials:</h2>
    <ul>
      <li>Sheets of 8 &frac12; x 11 orange construction paper, cut into strips of&nbsp; 1 &frac12;&rdquo; or 2&rdquo; wide and 11&rdquo; long</li>
      <li>Markers</li>
      <li>Stapler or glue </li>
  </ul></div>
    <p><strong>Goal: </strong>To demonstrate the interaction between individuality and connectivity by creating a chain of interconnected individual links. Project Connect joins students, schools, and communities to make a powerful statement about uniting against bullying. </p>
    <img src="/bullying/wewillgen/images/project-connect-chain.jpg" alt="Project Connect chain" width="400" height="300" align="right" vspace="10" hspace="10" />
    <h3>Activity</h3>
<ol>
      <li>Give each student a strip of paper and a marker. Instruct them to write a message on the strip about a quality that makes them unique and proud of who they are as an individual. You may want to have students share what they write. </li>
      <li>Staple (or glue) the individual strips together to make one large chain of connection that physically represents the concept that even though we are all different, we can still come together. </li>
      <li>The message of the chain is this: Everyone has something unique to offer and when we unite in a common goal (such as preventing bullying) our actions are powerful!</li>
      <li>If multiple classrooms are participating, have them link their classroom chains together to create a school-wide chain. </li>
      <li>If only one group is participating, find a prominent place to hang the chain that will remind them that even as individuals we can all come together for something we care about. </li>
    </ol>
    <p><strong><em>Special thanks to </em></strong>Citrus Grove Elementary in Palm City, Florida for sharing Project Connect</p>
    
<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
