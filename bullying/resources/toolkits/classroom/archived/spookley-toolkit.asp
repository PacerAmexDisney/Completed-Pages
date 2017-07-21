<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>

<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/bullying/resources/toolkits/spookley/"
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center - Spookley the Square Pumpkin Calssroom Education Resources</title>
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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/resources/">Resources</a> / <a href="/bullying/resources/toolkits/">Classroom Toolkits</a> /</div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/resources/nav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="activities";	var showTree = "toolkits-sub";
	var showTree2 = "class-toolkits-sub";
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
	<h1 id="maincontent" style="text-align:center"><img src="/bullying/images/partners/spookley-banner.jpg" width="549" height="141" alt="Spookley the square pumpkin" /><br /> Classroom Education  Resources</h1>
	<img src="/bullying/images/partners/spookley-sml.jpg" width="119" height="71" alt="" class="fltlft" /><p><strong>Spookley  the Square Pumpkin </strong>is  a square pumpkin who lives in a round pumpkin patch world. In T<em>he Legend of  Spookley the Square Pumpkin</em>, a perennial fall favorite children&rsquo;s story,  Spookley helps you understand that the things that make you different are what  make you special. </p>
    <p>Educators  across North America read <em>The Legend of Spookley the Square Pumpkin </em>to  their students during October to teach about bullying prevention, tolerance and  diversity. Here are some tips for educators, from educators, on how to share  Spookley with your students. </p>
    <h3><strong>Bullying  Prevention Discussion Questions </strong></h3>
    <p>After  reading <em>The Legend of Spookley the Square Pumpkin </em>to your students, you  may want to ask some of the following questions: <br />
  <ul>
      <li>How do you think Spookley felt when he was  teased by the other pumpkins?</li>
      <li>How do you think it would feel if you were  teased by someone?</li>
      <li>What are some things that you can do if  you are being teased or bullied?</li>
      <li>How  do you think Spookley felt by the end of the story? </li>
  </ul>
    <h3><strong>Bullying  Prevention Activities </strong></h3>
    
    <ul>
      <li>Have students create their own pumpkins of  any shape, size and color using crayons, paint, popsicle sticks and/or  construction paper</li>
      <li>Have students share their pumpkins with  one another and discuss how each one is different and why that is okay <strong><em>&hellip;and  create &ldquo;Spookley&rsquo;s Pumpkin Patch&rdquo; </em></strong></li>
      <li>Have students write messages of kindness  on their pumpkins</li>
      <li>Have  students place their pumpkins in &ldquo;Spookley&rsquo;s Pumpkin Patch&rdquo; (e.g., a poster  that has &ldquo;Spookley&rsquo;s Pumpkin Patch&rdquo; written on the top and bullying prevention  messaging on the bottom; a plot of land where children can &ldquo;plant&rdquo; their  pumpkins) </li>
    </ul>
    <h3><strong>Where  to Find Spookley </strong></h3>
    <p><em>The  Legend of Spookley the Square Pumpkin </em>is available at <a href="http://www.barnesandnoble.com/s/joe-troiano" target="_blank">Barnes &amp; Noble</a>, <a href="http://www.amazon.com/Spookley-Square-Pumpkin-Bernie-Denk/dp/B000A6T23U" target="_blank">Amazon.com</a> and  through Scholastic Book Clubs. </p>
    <p>Additional  resources are available at <a href="http://www.spookley.com" target="_blank">www.spookley.com</a> and <a href="http://www.facebook.com/holidayhillfarm" target="_blank">www.facebook.com/holidayhillfarm</a>. </p>
    <div class="clearfloat">&nbsp;</div>
    
    <!-- end .content -->

  </div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
