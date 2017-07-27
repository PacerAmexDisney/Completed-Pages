<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/bullying/classroom/elementary/activities/wrinkled-heart.asp"
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
	var currId="activities-heart";
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
    <h1 id="maincontent">A Wrinkled Heart</h1>
    
    <p>Bullying was once considered a harmless rite of childhood experienced by many, but research today shows the short- and long-term effects on a child&rsquo;s education, health, and safety. Designed for younger students, &ldquo;A Wrinkled Heart&rdquo; activity provides students with a powerful visual that shows the effects hurtful words or behaviors have on someone. The activity is simple and a great reminder to be kind to others.</p>
    <table border=1 cellpadding="10" cellspacing=10 frame=void rules=rows>
    <tr>
    <td>
      <ol><li><p>Cut out a paper heart for each student, or a large heart to use as a class.</p> </li></ol></td>
      <td><img src="/bullying/resources/toolkits/activities/images/w-heart-1.jpg" width="350" height="269" alt=""/></td></tr>

      <tr>
      <td><ol start="2"><li><p>Ask the class for examples of things that people say or do that hurts their feelings. For each example, have students wrinkle or fold their heart. If you are doing this activity with one group heart, pass it around in a circle and have each student create a fold.</p></li></ol></td>
      <td><img src="/bullying/resources/toolkits/activities/images/w-heart-2.jpg" width="350" height="255" alt=""/></td></tr>
      <tr>
      <td><ol start="3"><li><p>Then have students share positive experiences or ways that others have made them feel good. For each response or example, unfold the heart.</p> </li></ol></td>
      <td><img src="/bullying/resources/toolkits/activities/images/w-heart-3.jpg" width="350" height="266" alt=""/></td>
      </tr></table>
    <p>Once you have finished sharing examples, ask the students how the heart looks. Discuss the effects that hurtful behaviors can have on someone&rsquo;s heart, as the wrinkles never come all the way out. Together, talk about ways students can demonstrate kind behaviors toward their peers and not cause wrinkles in other hearts!</p>
    <p><strong>Special thanks</strong> to Tracy Hoexter, author of &ldquo;A Wrinkled Heart.&rdquo; This activity can be used with Tracy&rsquo;s eBook, which can be purchased on <a href="http://itunes.apple.com/us/book/id1038309624" target="_blank">iTunes</a> or <a href="http://www.amazon.com/dp/B014X65DQM" target="_blank">Amazon</a>. As you read along, fold the heart each time Elliott&rsquo;s heart wrinkles. Then press it back out for each positive action.</p>
<p><br class="clearfloat" />
      
      
      <!-- end .content --></p>
  </div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
