<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/bullying/classroom/elementary/activities/wheres-pip.asp"
%>









<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center - Where&rsquo;s Pip?</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--></head>

<body class="threecol">
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
	var currId="activities-pip";
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
    <h1 id="maincontent">Where's Pip?</h1>
<p>
Pip, the hamster mascot of the Club Crew, loves to go to new places and meet new kids, you never know where Pip might show up. Pip might be found on the playground, in the classroom, or playing baseball.<br /><br />
Now you can show everyone where Pip has been! <a href="/bullying/pdf/Pip.pdf" target="_blank">Print the image of Pip</a>
<img border="0" src="/images/pdficon_small.gif" width="15" height="15" alt="pdf icon" />, bring him to your favorite place, take a picture and send it to 
<a href="mailto:bullying411@pacer.org">bullying411@pacer.org</a>.
</p>
<div class="centered">
<img src="/bullying/resources/toolkits/activities/images/pip/pip-polaroid5.jpg" width="301" height="373" alt="pip rooting for the packers" /><br />
<img border="0" src="/bullying/resources/toolkits/activities/images/pip/pip-collage.jpg" width="500" height="589" alt="collage of polaroid photos of kids with Pip in various places, including a classroom, playground, and ballpark." />

</div>



    <br class="clearfloat" />
    
    <!-- end .content --></div>
<div class="sidebar2">

<img border="0" src="/bullying/resources/toolkits/activities/images/pip/PipAndTheWethFamily.jpg" width="200" height="186" alt="" /></a>
<p>PIP and the Weth Family</p>
<img border="0" src="/bullying/resources/toolkits/activities/images/pip/Emma-And-PIP.jpg" width="200" height="216" alt="" /></a>
<p>Emma and Pip hanging out in her room</p>
<img border="0" src="/bullying/resources/toolkits/activities/images/pip/shannon-n-pip.jpg" width="200" height="188" alt="" /></a>
<p>Shannon and Pip</p>


<img border="0" src="/bullying/resources/toolkits/activities/images/pip/2nd-Grade-Class-in-TN.jpg" width="200" height="134" alt="" /></a>
<p>2nd Grade Class in TN
</p>

<img border="0" src="/bullying/resources/toolkits/activities/images/pip/2nd-Grade-Students-in-TN.jpg" width="200" height="134" alt="" /></a>
<p>2nd Grade Students in TN
</p>

<img border="0" src="/bullying/resources/toolkits/activities/images/pip/3rd-Grade-Students-in-TN.jpg" width="200" height="134" alt="" /></a>
<p>3rd Grade Students in TN
</p>    


</div>
    
    
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
