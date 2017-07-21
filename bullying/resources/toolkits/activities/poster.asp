<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/bullying/classroom/elementary/activities/poster.asp"
%>






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
  
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/resources/">Resources</a> / <a href="/bullying/resources/toolkits/">Educator Toolkits</a> / <a href="/bullying/resources/toolkits/activities/">Activities for Youth</a></div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/resources/nav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="activities-poster";
	var showTree = "toolkits-sub";
	var showTree2 = "activities-sub";
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
    <h1 id="maincontent">Create A Poster</h1>
    <a href="/bullying/resources/toolkits/activities/pdf/entryForm.pdf" target="_blank" title="Download the Poster Form"><img class="fltrt" src="/bullying/resources/activities/images/poster-sml1.png" width="300" height="388" alt="Download the Poster Form" /></a>
    
    <p>Have you ever been bullied? Have you seen bullying? What  happened? How did you feel? We want to hear about it! </p>
    <p>Send us your story, poem, artwork or video on the  topic&nbsp;expressing your ideas on bullying prevention. It can be about what  happened to you or someone else, how you feel about bullying, how you think it  affects students and schools, what you have done to prevent bullying, or what  others can do to prevent bullying. We want to hear from everyone&mdash;teens,  parents, teachers, and others with great ideas who want to improve the world. <br />
      </p>
    <p><a href="/bullying/resources/toolkits/activities/pdf/entryForm.pdf" target="_blank">Download the Poster Form</a>    </p>
    <p>Send us your entry: </p>
      <p>PACER's National Bullying Prevention&nbsp;Center<br />
        8161 Normandale Blvd.<br />
      Minneapolis, MN 55437 
      
      
      
      
<br class="clearfloat" />

    
    <!-- end .content --></p>
  </div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
