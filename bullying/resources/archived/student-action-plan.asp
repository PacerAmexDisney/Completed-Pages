<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center - Student Action Plan</title>
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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/resources/">Resources</a> / <a href="/bullying/resources/activities/">Educational Activites</a> /</div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/resources/nav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="actionplan";
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
    <h1 id="maincontent">Student Action Plan Against Bullying</h1>
    <p>Are you an  educator working with a student being bullied, a parent looking for ways to  help your child change their behavior, or a student who wants to take action  against bullying, but isn&rsquo;t sure what to do? As a student, bullying is  something that impacts you, your peers, and your school &ndash; whether you&rsquo;re the  target of bullying, a witness, or the person who bullies. Bullying can end, but  that won&rsquo;t happen unless students, parents, and educators work together and  take action. </p>
    <p>The first step  is to create a plan that works for you and your situation. This student action  plan is an opportunity for you &ndash; either on your own or with your parents and  teachers &ndash; to develop a strategy to change what&rsquo;s happening to you or someone  else. It&rsquo;s your chance to make a difference. </p>
    <p>To get  started, <a href="/bullying/pdf/StudentActionPlan.pdf" target="_blank">download the PDF</a> and create your own plan to take action  against bullying! </p>

	<iframe src="/bullying/pdf/StudentActionPlan.pdf" width="90%" height="800" style="width:90%; display:block; margin:10px auto"></iframe>


<br class="clearfloat" />
    
    <!-- end .content --></div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
