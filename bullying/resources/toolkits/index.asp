<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center - Classroom Toolkits</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.indent {
	margin-left:30px;
}
</style>
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
	var currId="toolkits";
	var showTree = "toolkits-sub";
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
  <h1 id="maincontent">Educator Toolkits and Activities</h1>
  	<ul>
  	<li><h3><a href="/bullying/resources/toolkits/activities/">Activities for Youth</a></h3>
		<p class="indent">These free activities and resources  are designed for younger students. The goal is to start conversation and  creatively engage students to build their understanding of how to prevent  bullying. </p>
</li>
	
	
	<li><h3><a href="/bullying/resources/toolkits/classroom/">Classroom Toolkits</a></h3>
		<p class="indent">Creative resources for elementary, middle, and high  school classrooms to talk about bullying. Toolkits include planning an event,  creating a visual statement, introducing bullying prevention conversation, and  lesson plans.</p>
	</li>
	<li>
		<h3><a href="/bullying/resources/toolkits/community/">Community Toolkits</a></h3>
		<p class="indent">Innovative ideas for individuals to reach out to their  communities to raise awareness on bullying prevention&mdash;including holding a  rally, organizing a run, or creating an advocacy program</p>
	</li>

	<li>
		<h3><a href="/bullying/resources/toolkits/student/">Student Created  Toolkits</a></h3>
		<p class="indent">Transformative activities&mdash;including videos, music, and  artwork&mdash;designed by students for other students to use in the classroom or in  the community to engage dialogue between students.</p>
	</li>

  	</ul>
  
  <hr />
  <h2>New and Featured Toolkits</h2>
  <ul>
  	<li><p>Classroom Toolkit - <a href="/bullying/resources/toolkits/classroom/school-event-guide.asp">Plan a school event</a></p>
  		<p class="indent">Five-step guide provides helpful information to create a  meaningful event; including how to form your committee, setting the date and  location, planning your activities, promoting your event, and holding the  event.</p>
	</li>
  	<li><p>Classroom Toolkit - <a href="/bullying/resources/toolkits/spookley/index.asp">Spookley</a></p>
  		<p class="indent">The online toolkit &ldquo;Stop Bullying Before It Starts&rdquo; is the  result of a PACER partnership with the team that developed &ldquo;Spookley the Square  Pumpkin,&rdquo; a book for young children. Spookley is&nbsp; a&nbsp;square pumpkin  who lives in a round pumpkin patch world. The toolkit provides links to free  resources that teachers can bring directly into their classrooms to use for  important character values education and for multi-subject learning.&nbsp;This  resource is presented in collaboration with Holiday Hill Enterprises, LLC. Community  Toolkit &ndash;</p>
	</li>
	
	<li><p>Community toolkit - <a href="/bullying/resources/toolkits/community/">Peer advocacy guide</a></p>
		<p class="indent">How to address bullying of students with disabilities by  engaging, educating, and empowering their peers with advocacy skills. A peer  advocate program creates a formal process that identifies, trains, and supports  a designated group of students who advocate for students with disabilities. Student  Toolkit &ndash; GetSet JetSet</p>
	</li>  
	<li><p>Classroom Toolkit - <a href="/bullying/resources/toolkits/classroom/project-connect.asp">Project Connect</a></p>
		<p class="indent">Joins students, schools, and communities to  make a powerful visual statement about uniting against bullying.</p>
	</li>
  </ul>
  
  
  <br class="clearfloat" />
  
  <!-- end .content --></div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
