<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
If Session("wwgLogin") = "Valid" Then
	Response.Redirect("/bullying/wewillgen/curriculum/index-login.asp")
Else
	Response.Redirect("/bullying/wewillgen/educator-login.asp")
End If
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>We Will Generation - Curriculum</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link href="/bullying/wewillgen/css/style.css" rel="stylesheet" type="text/css" />



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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/wewillgen/">We Will Generation</a> /</div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="curriculum";	
	var showTree = "none-sub";
	var showTree2 = "none-none-sub";
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
    	<div class="curriculumLogin"><a href="/bullying/wewillgen/educator-login.asp">Curriculum Login</a></div>

    <h1 id="maincontent">The We Will Generation</h1>
    <div id="tagline">Students Leading The Bullying Prevention Movement</div>


	<h2>The WE WILL Curriculum</h2>
	<div class="downloadbox">
	  <h2>Register to access the curriculum</h2>
      <ul>
		<li><a href="/bullying/wewillgen/educator-registration.asp">Register here</a></li>
        <li>Already registered? <a href="/bullying/wewillgen/educator-login.asp">Log in here</a></li>
        <li><a href="/bullying/wewillgen/ppt/WWG-Student-Pitch.ppt" target="_blank">Tell your school about the curriculum</a></li>
      </ul>
	</div>
<p>A free on-line, student-to-student curriculum designed for high school student leaders to engage, educate and inspire other middle and high school students to be a part of The We Will Generation. PACER is offering schools the opportunity to participate in piloting the curriculum. Pilots will be provided with assistance including webinars, staff availability for questions, evaluations, and other resources. Pilots can be initiated any time after November 2013. To sign up for this opportunity, complete the registration form, and follow the instructions to access the lessons, activities, video, advice features and other resources.</p>
    <p><a href="/bullying/wewillgen/educator-registration.asp">Register to access the curriculum</a></p>
	  <h3>Curriculum Design</h3>
      <ul>
	  <li>Five lessons, approximately 30-60 minutes each</li>
      <li>Content that is student developed; videos, student advice, and pledge</li>
      <li>Capstone activity to be delivered in classrooms</li>
      <li>Student presenters, ideally in groups of 5-8, to present the curriculum to younger students; for example, 8th grade students presenting to 5th grade students.</li>
      <li>One or more adult advisors to lead and mentor the presenters</li>
      </ul>
      <h3>Lesson Topics:</h3>
	<p>The curriculum starts by exploring the dynamics of bullying, then leads students towards thinking about how differences and diversity impact our behavior. The last three lessons focus on helping students think through their options of how to respond when faced with a bullying situation.</p>
	<p>Lesson 1: Definition &ndash; Developing an understanding of the dynamics of bullying in your school, community and online.</p>
	<p>Lesson 2: Individuality &ndash; Respecting differences and everyone&rsquo;s right to be who they are.</p>
	<p>Lesson 3: Being There &ndash; Learning ways in which students can reach out to their peers.</p>
	<p>Lesson 4: Build Them Up &ndash; Sharing ideas about how students can show that everyone matters.</p>
	<p>Lesson 5: Turn a 180 &ndash; Learning how to move a situation from a negative into a positive.</p>
	<p>Capstone Activity &ndash; Celebrating the completion of the curriculum.</p>
	<h3>Lesson Structure:</h3>
	<p><strong>Preparation</strong>  &ndash;  Background information (bullet points) will be provided, along with an overview of the lesson and the materials required, talking points for use during the lesson, tips on sharing your story, and an activity (such as a worksheet) to illustrate the topic</p>
    <p><strong>Discussion Opportunities with Worksheet or Handout</strong>  &ndash;  Provides opportunities to be interactive and directly engage the audience through their opinions, ideas and strategies.</p>
    <p><strong>Video with Reflection Questions &amp; Discussion</strong>  &ndash;  A short, student-created video (usually less than 5 minutes) will be shown. Discussion questions, most developed by the creator of the video, accompany the video either through a handout or group discussion.</p>
    <p><strong>Activity</strong>  &ndash;  Students will have the opportunity to put what they learned into action through an activity and the creation of a visual display for the classroom.</p>
    <p><strong>We Will Pledge</strong> &ndash; Students create a pledge that incorporates and reflects the values of their school and community.</p>
    <p><strong>Student Advice</strong>  &ndash;  Student-sourced advice will be posted online. Students will help build content through crowdsourcing, which ensures that they actively contribute to the creation of resources.</p>
    <h3>Goals of the WE WILL GENERATION</h3>
    <ul>
	<li>Broaden and refine students&rsquo; understanding of bullying.</li>
	<li>Provide a framework for students to internalize the right to individuality and an understanding of differences.</li>
	<li>Create an environment in which students feel educated, inspired, and supported to take action to build an inclusive culture.</li>
	 <li>Help all students recognize and develop positive strategies to respond to bullying situations.</li>
    </ul>
	  <h3>Messages of the WE WILL GENERATION</h3>
	  <p><strong>Respect Differences</strong> &ndash; Each student has the right to their individuality. Through differences we are stronger.</p>
      <p><strong>Unite Together</strong> &ndash; When we stand together we are stronger than when we stand alone. Our common bond is that we all have something to offer.</p>
      <p><strong>Take Action</strong> &ndash; There are opportunities to help those who are struggling. There is power in kindness and building people up.</p>
      
          <h3>Safe and Supportive School Climate</h3>
     <p> A student-to-student program is one element of a successful plan to address bullying. A student focused program should be supported with other initiatives that include:</p>
     <ul>
      <li>school-wide assessment of bullying</li>
      <li>development and distribution of bullying prevention policies and rules</li>
      <li>engage, educate and involve parents</li>
      <li>building bullying prevention activities into school curriculum</li>
      <li>educator and school-personnel training and support</li>
      <li>trategies to support students involved in bullying situations</li>
    </ul>
    <p>For more information on creating a safe school climate, visit <a href="http://www.stopbullying.gov/prevention/at-school/index.html" target="_blank">StopBullying.gov</a></p>

<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
