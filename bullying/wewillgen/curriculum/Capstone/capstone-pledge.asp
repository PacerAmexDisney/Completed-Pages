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
<title>WE WILL Generation - Capstone - Pledge</title>
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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/wewillgen/">We Will Generation</a> / <a href="/bullying/wewillgen/curriculum/">Curriculum</a> / <a href="/bullying/wewillgen/curriculum/capstone/"> Capstone</a>
  
  <div id="loginname">
  Logged in as:&nbsp;&nbsp;&nbsp;<strong><%=Session("fname")%></strong>
  </div>
  </div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/wewillgen/curriculum/loginnav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="capstone-pledge";	
	var showTree = "capstone-sub";
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
    <h1 id="maincontent">Capstone | Pledge</h1>

	<div class="downloadbox">
	  <h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="../../pdf/we-Will-Pledge.pdf" target="_blank">Pledge</a></li>
		</ul>
	</div>


	
    
    <p>Invite everyone to join &ldquo;The We Will Generation&rdquo; by taking the pledge.</p>
<p>Options include:</p>
    <ul>
      <li>Recite &ldquo;The We Will Generation&rdquo; pledge together.</li>
      <li>Create a large &ldquo;We Will Generation&rdquo; banner printed with the pledge and have everyone sign it.</li>
      <li>Print a &ldquo;We Will Generation&rdquo; <a href="http://www.pacer.org/bullying/wewillgen/pdf/we-Will-Pledge.pdf" target="_blank">pledge certificate</a> for each student. Have each student sign their personal pledge. </li>
      <li>Coming soon! Give each student a &ldquo;We Will Generation&rdquo; bookmark. </li>
    </ul>
    <h3>The WE WILL GENERATION Pledge</h3>
      <p>We will be the generation to:</p>
    <ul>
      <li>Own this issue and be the solution (DEFINITION)</li>
      <li>Make sure every individual knows that they matter (INDIVIDUALITY)</li>
      <li>Reach out to peers and let them know that they aren&rsquo;t alone (BEING THERE)</li>
      <li>Establish a supportive community that unites in action (BUILD THEM UP)</li>
      <li>Change the negativity that has impacted so many for so long (TURN A 180)</li>
    </ul>
<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
