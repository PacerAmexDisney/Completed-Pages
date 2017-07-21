<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/bullying/classroom/elementary/index.asp"
%>
















<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center - Classroom Toolkits</title>
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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/resources/">Resources</a> / <a href="/bullying/resources/toolkits/">Toolkits</a> /</div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
  <!--#include virtual="/bullying/resources/nav.html"--> 
  <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="class-toolkits";	
	var showTree = "toolkits-sub";
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
  <h1 id="maincontent">Classroom Toolkits</h1>
  <ul>
  <li><span style="color:red; font-weight:bold">NEW - </span><a href="http://www.pacer.org/bullying/yourenotalone/classroom-toolkit.asp" target="_blank">You&rsquo;re Not Alone, We&rsquo;re Here for You &ndash; Classroom Activities</a><br />
    Designed to inspire students to be together against bullying and united to provide community, support, and hope for those who have experienced bullying.<br />
    Use the toolkit to assist in creating environments in which students feel involved and empowered. The materials provide opportunities for discussion, visual reminders of the message, and rewards for participation.</li>
 <li><span style="color:red; font-weight:bold">NEW - </span><a href="/bullying/resources/toolkits/classroom/besmartbewell.asp">Bullies and Bystanders: What Teens Say and What Experts Say</a><br />
    Two videos created by BeSmartBeWell that provide insight into how students can help students.</li>
  <li><a href="/bullying/resources/toolkits/classroom/school-event-guide.asp">A Guide to Plan a School Event</a>
    <p><img class="fltrt" src="/bullying/resources/toolkits/images/facebook-sponsored.png" width="166" height="66" alt="Cosponsored By Facebook" />This five-step guide provides helpful information to create a   meaningful event;  including how to form your committee, setting the   date and location, planning  your activities, promoting your event, and holding the event.<hr /></p>
  </li>
  <li><a href="/bullying/resources/toolkits/classroom/project-connect.asp">Project Connect Toolkit</a>
	  <p>Project Connect joins students, schools, and communities to make a powerful visual statement about uniting against bullying.</p></li>
  <li><a href="/bullying/resources/toolkits/classroom/digital-petition.asp">Digital Petition Toolkit</a>
	  <p>Hold an &ldquo;End of Bullying Begins With Me&rdquo; petition signing event at your school.</p></li>
  <li><strong><a href="/bullying/resources/toolkits/classroom/intro-to-bullying-prevention.asp">Introduction to Bullying Prevention</a></strong> - <em>Schoolwide, All Ages and Grades</em><br />
  <p>Looking for a way to introduce bullying prevention and awareness into your classroom, school, or  community organization? The  Introductory  Toolkit contains daily learning  opportunities and engaging activities to get students talking about bullying.  The toolkit provides the basics about bullying and sets the stage for  student-supported initiatives.</p> </li>
  <li><a href="/bullying/resources/toolkits/classroom/ele-lesson-plan.asp">Elementary School, Educational Lesson Plan</a>
  <p>Use the KidsAgainstBullying.org website as a resource tool in your classroom. The site is appropriate for elementary school students with a suggested audience of 10-25 students.</p> 
  </li>
  <li><a href="/bullying/resources/toolkits/classroom/ele-starting-the-discussion.asp">Elementary School, Starting the Discussion</a>
  <p>A complete classroom tool kit for discussing bullying prevention. Features free downloads of daily activities, games and contests.</p>  </li>
	<li><a href="/bullying/resources/toolkits/spookley/">Early Learners, &ldquo;Stop Bullying Before It Starts&rdquo;</a>
	  <p><img class="fltlft" src="/bullying/images/partners/spookley-sml.jpg" width="119" height="71" alt="" />The online toolkit &ldquo;Stop Bullying Before It Starts&rdquo; is the result of a PACER partnership with the team that developed &ldquo;Spookley the Square Pumpkin,&rdquo; a book for young children. Spookley is&nbsp; a&nbsp;square pumpkin who lives in a round pumpkin patch  world.  The  toolkit provides links to free resources that teachers can bring directly into  their classrooms to use for important character values education and for  multi-subject learning.&nbsp;This resource is presented in collaboration with Holiday Hill  Enterprises, LLC. </p>
	  </li>  
  <li><a href="/bullying/resources/toolkits/classroom/mh-starting-the-discussion.asp">Middle and High School, Starting the Discussion</a>
  <p>Promote bullying awareness in your classroom by using the activities and resources in this day-by-day toolkit.  Whether you have just a few minutes or you can devote 15 to 30 minutes a day to this important issue, you&rsquo;ll find everything you need&mdash;links to informative Web sites, downloadable materials, interesting activities, and a powerful video project called &ldquo;Rewind.&rdquo;</p> 
  </li>
  
  </ul>
  <br class="clearfloat" />
  
  <!-- end .content --></div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
