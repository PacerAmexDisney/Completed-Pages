<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center - Resources</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link href="/bullying/wewillgen/css/style.css" rel="stylesheet" type="text/css" />



<!--#include virtual="/bullying/dynamic-head-items.html"--></head>

<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>
 
  <!--#include virtual="/bullying/dynamic-header.html"--> 
  <!--#include virtual="/bullying/topnav.html"--> 
  
  <script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/wewillgen/">We Will Generation</a> /</div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/wewillgen/nav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="studentactivities";	
	var showTree = "studentactivities-sub";
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
    <h1 id="maincontent">The WE WILL Generation</h1>
    <div id="tagline">Students Leading The Bullying Prevention Movement</div>


	<h2>Student-Led Activities</h2>
	<p>Are you interested in sharing The WE WILL Generation to your school, but aren&rsquo;t able to teach the entire curriculum? Try one or more  of these activities to educate your peers on topics such as individuality, stereotypes, redirection, and supporting each other.</p>
    <ul>
      <li><a href="/bullying/wewillgen/student-activities/above-the-line.asp">Above the Line/Below the Line</a> &ndash; Explore what kinds of behaviors are helpful and harmful in a bullying situation</li>
      <li><a href="/bullying/wewillgen/classroom-activities/project-connect.asp">Project Connect</a> &ndash; Demonstrate the power of individual contributions coming together in a community.</li>
      <li><a href="/bullying/wewillgen/student-activities/language.asp">Exploring Descriptive v. Judgmental Language</a> &ndash; Encourage students to think about how they use language and the effect it can have on others.</li>
      <li><a href="/bullying/wewillgen/student-activities/choose-orange.asp">Choose Orange</a>&ndash; Participate in the Choose Orange campaign to encourage positive, supportive behavior.</li>
      <li><a href="/bullying/wewillgen/student-activities/affirmation.asp">Affirmation</a> &ndash; Encourage students to explore how to build each other up in meaningful ways.</li>
      <li><a href="/bullying/wewillgen/student-activities/turning180.asp">Practice Turning a 180</a> &ndash; Practice redirecting negative situations to a more positive outcome.</li>
      <li><a href="/bullying/wewillgen/student-activities/180race.asp">The 180 Race</a> &ndash; Race to see who can redirect the bullying situations the fastest and most effectively.</li></ul>




<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/wewillgen/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
