<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/bullying/classroom/middle-highschool/student/anna-richey.asp"
%>












<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center - Classroom Toolkits - Because These Kids Are</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
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
 <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/resources/">Resources </a>/ <a href="/bullying/resources/toolkits/student/">Student Created Toolkits</a></div>
 
 <!-- ######################### NAVIGATION ################################# -->
 <div class="sidebar1"> 
  <!--#include virtual="/bullying/resources/nav.html"--> 
  <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="student-toolkits-anna";	
	var showTree = "toolkits-sub";
	var showTree2 = "student-toolkits-sub";
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
  <h1 id="maincontent">Anna Richey – Broken</h1>
  <p>Anna Richey is a singer/songwriter from Salt Lake City with a dream to inspire people with her music. She hopes to influence the world for the better, starting with her single Broken. To accompany this powerful song, Anna has created a toolkit to help students think about how they can take action in bullying situations.</p>
  <p align="center"><iframe width="640" height="360" src="https://www.youtube.com/embed/I5t7kuX6P-4?rel=0" frameborder="0" allowfullscreen></iframe></p>
    <h3>Discussion Questions</h3>
      <p>After watching &ldquo;Broken,&rdquo; share the discussion questions with your student audience. Download Broken Discussion Questions <a href="/bullying/resources/toolkits/student/pdf/questions-for-broken-toolkit.pdf" target="_blank">here <i class="fa fa-file-pdf-o"></i></a>.</p>
      <h3>Get the Music</h3>
      <ul>
        <li><a href="https://www.youtube.com/watch?v=I5t7kuX6P-4" target="_blank">&ldquo;Broken&rdquo; music video on YouTube</a></li>
        <li><a href="https://itunes.apple.com/us/album/broken-single/id916983986" target="_blank">Download on iTunes</a></li>
    </ul>
        <h3>Connect with Anna Richey</h3>
        <ul>
        <li>Website: <a href="http://www.theannarichey.com/" target="_blank">http://www.theannarichey.com/</a></li>
        <li>Facebook: <a href="https://www.facebook.com/theannarichey" target="_blank">https://www.facebook.com/theannarichey</a></li>
        <li>Twitter: <a href="https://twitter.com/theannarichey" target="_blank">https://twitter.com/theannarichey</a></li>
        </ul>
<br class="clearfloat" /><!-- end .content -->
</div>
 <!--#include virtual="/bullying/footer.html"--> 
 <!-- end .container --></div>
</body>
</html>
