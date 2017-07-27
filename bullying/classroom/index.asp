<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Classroom Toolkits - National Bullying Prevention Center</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.indent {
	margin-left: 30px;
}
</style>
<!--#include virtual="/bullying/dynamic-head-items.html"-->
</head>

<body class="twocol">
<div class="container"> <a id="skiptocontent" href="#maincontent">Skip to main content</a> 
  
  <!--#include virtual="/bullying/dynamic-header.html"--> 
  <!--#include virtual="/bullying/topnav.html"--> 
  
  <script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/classroom/">Classroom</a> /</div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/classroom/nav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="none";
	var showTree = "none";
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
    <h1 id="maincontent">Classroom Toolkits and Activities</h1>
    
    
    
    <table cellspacing="0" cellpadding="10">
			<tr>
				<td valign="top"><img width="160" height="160" src="/bullying/classroom/images/elementary-thumb.jpg" alt="" /></td>
				<td valign="top"><table border="0" cellspacing="0" cellpadding="0">
						<tr> 
							<td width="631" valign="top">
								<h3><a href="/bullying/classroom/elementary/index.asp">Elementary School</a></h3>
								<p>Free educational activities and resources designed for younger students. The goal is to start conversation and creatively engage students to build their understanding and develop the skills on how to address and prevent bullying.</p>
							</td>
						</tr>
					</table></td>

			</tr>
			<tr>
				<td valign="top"><img width="160" height="160" src="/bullying/classroom/images/high-school-thumb.jpg" alt="" /></td>
				<td valign="top"><table border="0" cellspacing="0" cellpadding="0">
						<tr> 
							<td width="631" valign="top">
							<h3><a href="/bullying/classroom/middle-highschool/index.asp">Middle and High School</a></h3>
								<p>Free, on-line creative resources developed for middle and high school classrooms to engage in bullying prevention education. Toolkits include planning an event, opportunities for student involvement and lesson plans.</p>
							</td>
						</tr>
					</table></td>

			</tr>
			<tr>
				<td valign="top"><img width="160" height="160" src="/bullying/classroom/images/school-wide-thumb.jpg" alt="" /></td>
				<td valign="top"><table border="0" cellspacing="0" cellpadding="0">
						<tr> 
							<td width="631" valign="top">
							 <h3><a href="/bullying/classroom/schoolwide/index.asp">All Ages - School Wide</a></h3>
								<p>Ideas and resources designed for educators to use to introduce, support and sustain a safe and supportive school environment. Toolkits feature methods to incorporate art, discussion and information into bullying prevention education.</p>
							</td>
						</tr>
					</table></td>

			</tr>	
			<tr>
				<td valign="top"><img width="160" height="160" src="/bullying/classroom/images/community-thumb.jpg" alt="" /></td>
				<td valign="top"><table border="0" cellspacing="0" cellpadding="0">
						<tr> 
							<td width="631" valign="top">
							 <h3><a href="/bullying/classroom/community/index.asp">Community</a></h3>
								<p>Innovative ideas for interested individuals to reach out locally in their communities with creative ideas to inspire and involve others to take action to address and prevent bullying. Toolkits include steps for holding a rally, organizing a run, or creating an advocacy program.</p>
							</td>
						</tr>
					</table></td>

			</tr>									
		</table>	
	  <div style="margin-bottom: 30px"></div>   	
    
    
    
    
    
    
<!--    <ul>
      <li>
        <h3><a href="/bullying/classroom/elementary/index.asp">Elementary School</a></h3>
        <p>Free educational activities and resources designed for younger students. The goal is to start conversation and creatively engage students to build their understanding of how to address and prevent bullying.</p>
      </li>
      <li>
        <h3><a href="/bullying/classroom/middle-highschool/index.asp">Middle and High School</a></h3>
        <p>Creative resources for middle and high school classrooms to engage in bullying prevention. Toolkits include planning an event, opportunities for student involvement and lesson plans.</p>
      </li>
      <li>
        <h3><a href="/bullying/classroom/schoolwide/index.asp">All Ages - School Wide</a></h3>
        <p>Interactive resources designed to introduce, support and sustain a safe and supportive school environment. </p>
      </li>
      <li>
        <h3><a href="/bullying/classroom/community/index.asp">Community</a></h3>
        <p>Innovative ideas for individuals to reach out to their communities to raise awareness on bullying prevention including holding a rally, organizing a run, or creating an advocacy program.</p>
      </li>
    </ul>-->
    <br class="clearfloat" />
    
    <!-- end .content --></div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
