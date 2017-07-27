<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
If Session("wwgLogin") <> "Valid" Then
	Session("wwgEntranceURL") = Request.ServerVariables("URL")
	Response.Redirect("/bullying/wewillgen/educator-login.asp")
End If
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>We Will Generation - Curriculum - FAQs</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link href="/bullying/wewillgen/css/loginstyle.css" rel="stylesheet" type="text/css" />



<!--#include virtual="/bullying/dynamic-head-items.html"--></head>

<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>
 
  <!--#include virtual="/bullying/dynamic-header.html"--> 
  <!--#include virtual="/bullying/wewillgen/curriculum/logintopnav.html"--> 
  
  <script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/wewillgen/">We Will Generation</a> /
  
  <div id="loginname">
  Logged in as:&nbsp;&nbsp;&nbsp;<strong><%=Session("fname")%></strong>
  </div>
  </div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/wewillgen/curriculum/loginnav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="faq";	
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
    <h1 id="maincontent">Frequently Asked Questions</h1>

<!--	<div class="downloadbox">
	  <h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="#">item 1</a></li>
			<li class="wordiconlist"><a href="#">item 2</a></li>
			<li class="ppticonlist"><a href="#">item 3</a></li>
		</ul>
	</div>
 -->

	<p><strong>What is &ldquo;The WE WILL Generation&rdquo;?</strong><br />
    The WE WILL Generation is a movement designed to engage students to take powerful action to address bullying in schools, online, and in their communities. Bullying is an issue that directly impacts their generation and a student-centered program provides the opportunity to own the issue and to be the solution.</p>
      
      <p><strong>Who created the WE WILL Curriculum?</strong><br />
    PACER&rsquo;s National Bullying Prevention Center created the WE WILL Curriculum to engage and empower students to intervene on behalf of themselves and their peers. Almost 60% of bullying situations end when a peer intervenes. Imagine what students can do if they feel empowered and supported when they intervene.</p>
      
      <p><strong>What is the goal of the WE WILL Curriculum?</strong><br />
      The goals of the WE WILL Curriculum are to:<br />
      &middot;         Broaden and refine students&rsquo; understanding of bullying.<br />
      &middot;         Provide a framework for students to internalize the right to individuality and an understanding of differences.<br />
      &middot;         Create an environment in which students feel educated, inspired, and supported to take action to build an inclusive culture.<br />
    &middot;         Help all students recognize and develop positive strategies to respond to bullying situations.</p>
      
      <p><strong>What are the messages of the WE WILL Curriculum?</strong><br />
      The messages of the WE WILL Curriculum are:<br />
      <strong>Respect Differences</strong> &ndash; Each student has the right to their individuality. Through differences we are stronger.<br />
      <strong>Unite Together</strong> &ndash; When we stand together we are stronger than when we stand alone. Our common bond is that we all have something to offer.<br />
    <strong>Take Action</strong> &ndash; There are opportunities to help those who are struggling. There is power in kindness and building people up.</p>
      
    <p><strong>What subjects are covered by the WE WILL Curriculum?</strong><br />
      The WE WILL Curriculum consists of five lessons and a capstone project. The curriculum starts by exploring the dynamics of bullying, then leads students towards thinking about how differences and diversity impact our behavior. The last three lessons focus on helping students think through their options of how to respond when faced with a bullying situation.</p>
      <blockquote>
        <p>Lesson 1: Definition &ndash; Developing an understanding of the dynamics of bullying in your school, community and online.</p>
        <p>Lesson 2: Individuality &ndash; Respecting differences and everyone&rsquo;s right to be who they are.</p>
        <p>Lesson 3: Being There &ndash; Learning ways in which students can reach out to their peers.</p>
        <p>Lesson 4: Build Them Up &ndash; Sharing ideas about how students can show that everyone matters.</p>
        <p>Lesson 5: Turn a 180 &ndash; Learning how to move a situation from a negative into a positive.</p>
        <p>Capstone Project &ndash; Celebrating the completion of the WE WILL curriculum.</p>
      </blockquote>
      <p><strong>What age is the WE WILL Curriculum meant for?</strong><br />
    Ideally the presenters should be middle school to high school while the audience can be anyone above fifth grade.</p>
      
      <p><strong>In what settings can the WE WILL Curriculum be used?</strong><br />
    Be creative! The WE WILL Curriculum was designed with schools in mind, but it certainly doesn&rsquo;t need to be used in schools. The lessons will be most effective with relatively small audiences (such as one classroom), so it will not be as effective in very large settings (such as a school-wide assembly). Possible settings where the curriculum could be used include:</p>
      <ul>
      <li>Classrooms</li>
      <li>Leadership groups</li>
      <li>Youth group meetings</li>
      <li>Team meetings</li>
      <li>Clubs</li>
      <li>Senior Projects</li>
      </ul>
      <p><strong>How many student presenters are necessary?</strong><br />
    This can be adapted to fit the needs of individual groups. Ideally, 5-8 presenters in each group allows for a good group dynamic and ensures sustainability.</p>
      
      <p><strong>Do we have to teach the whole curriculum?</strong><br />
    No, the WE WILL Curriculum can be adapted for the needs of the group. Students are the best suited to identify what they and their peers need, so the curriculum should be adapted to fit their needs as closely as possible.</p>
      
      <p><strong>What kind of equipment will I need?</strong><br />
    The WE WILL Curriculum is intended to be adaptable to a variety of teaching situations. Many lessons require a computer and a way to display online videos but often these activities can be adapted if internet access is unavailable.</p>
      
      <p><strong>Can adults present the WE WILL Curriculum?</strong><br />
    Yes! Although the curriculum is designed for students to present to other students, it can easily be adapted for use by a teacher, group leader, coach, or other adult.</p>
      
      <p><strong>How much does the WE WILL Curriculum cost?</strong><br />
    The curriculum is free. It is requested advisors provide evaluations and feedback to help PACER continuously update and improve the curriculum to better meet the needs of students.</p>
    
	<p><strong>Are the WE WILL Curriculum materials copyrighted?</strong><br />
    Yes, PACER&rsquo;s National Bullying Prevention Center has copyrighted the materials, with the exception of those noted by other authors.</p>
      
	  <p><strong>Is there a version for younger audiences?</strong><br />
    The first phase of The WE WILL Curriculum is designed for middle and high school students. Phase two plans include the development of curriculum for younger audiences.</p>
      
        <p><strong>Is the WE WILL Generation a stand-alone initiative?</strong><br />
     A student-to-student program is one element of a successful plan to address bullying. A student focused program should be supported with other initiatives that include:</p>
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
  <!--#include virtual="/bullying/wewillgen/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
