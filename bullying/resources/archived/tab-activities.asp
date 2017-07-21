

<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center - Educational Activities</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--></head>

<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>
 
  <!--#include virtual="/bullying/dynamic-header.html"--> 
  <!--#include virtual="/bullying/topnav.html"--> 
  
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/resources/">Resources</a> / <a href="/bullying/resources/activities/">Educational Activites</a> /</div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/resources/nav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="activities-tab";
	var showTree = "activities-sub";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "active";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "submenu") {
			if (subTrees[i].id != showTree) {
				subTrees[i].className = "submenuhidden";
			}
		}
	}
</script> 
  </div>
  <!-- ###################### END Navigation ############################## -->
  
  <div class="content"> 
    <h1 id="maincontent">Student-Led Activities</h1>
    <p>Students &mdash; and educators &mdash; can use one or more of these <a href="/bullying/wewillgen/student-activities/index.asp" target="_blank">activities from PACER&rsquo;s WE WILL Generation</a> program to educate on topics such as defining bullying, individuality, and supporting each other.</p>
      <p>Activites include:</p>
      <ul>
      <li>Above the Line/Below the Line &ndash; Explore what kinds of behaviors are helpful and harmful in a bullying situation</li>
      <li>Project Connect &ndash; Demonstrate the power of individual contributions coming together in a community.</li>
      <li>Exploring Descriptive v. Judgmental Language &ndash; Encourage students to think about how they use language and the effect it can have on others.</li>
      <li>Choose Orange&ndash; Participate in the Choose Orange campaign to encourage positive, supportive behavior.</li>
      <li>Affirmation &ndash; Encourage students to explore how to build each other up in meaningful ways.</li>
      <li>Practice Turning a 180 &ndash; Practice redirecting negative situations to a more positive outcome.</li>
      <li>The 180 Race &ndash; Race to see who can redirect the bullying situations the fastest and most effectively.</li>
      </ul>
	  
	  
	  <div class="centered"><h3>
	  	<p><a href="http://www.pacer.org/bullying/wewillgen/student-activities/">Visit the We Will Generation Activities Section</a></p>
	  	
		
		
		<p><br class="clearfloat" /></p>
  		

    
    <!-- end .content --></div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
