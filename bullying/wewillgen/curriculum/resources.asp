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
<title>WE WILL Generation - Curriculum - Resources</title>
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
	var currId="resources";	
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
    <h1 id="maincontent">Additional Resources from PACER</h1>

<!--	<div class="downloadbox">
	  <h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="#">item 1</a></li>
			<li class="wordiconlist"><a href="#">item 2</a></li>
			<li class="ppticonlist"><a href="#">item 3</a></li>
		</ul>
	</div>
 -->

	<h3>Elementary School</h3>
      <blockquote>
        <p><a href="http://www.pacerkidsagainstbullying.org/#/home" target="_blank">Kids Against Bullying website</a><br />
          A creative, innovative, and educational site designed by and for elementary school students to learn about bullying prevention, engage in activities, and be inspired to take action.</p>
        <p><a href="http://www.pacerkidsagainstbullying.org/#/spot/quick-faqs" target="_blank">Bullying Frequently Asked Questions</a><br />
          Visually friendly and age appropriate answers to questions like: What is bullying? Who does it and why? Who is bullied and why? What doesn&rsquo;t help? How can I get it to stop?</p>
        <p><a href="http://www.pacer.org/bullying/pdf/EleEd-ifSeeBullying.pdf" target="_blank">What to do if you see bullying happen</a><br />
          A visually friendly, age appropriate handout for early learners, or for parents to use when talking with their child, with tips about what to do if they witness bullying.</p>
        <p><a href="http://www.pacer.org/bullying/pdf/EleEd-ifTarget.pdf" target="_blank">What to do if you&rsquo;re being bullied</a><br />
          A visually friendly, age appropriate handout for early learners, or for parents to use when talking with their child, with tips about what to do if they are being bullied.</p>
        <p><a href="http://www.pacer.org/bullying/pdf/EleEd-ifYouAreBullying.pdf" target="_blank">What to do if you&rsquo;re bullying</a><br />
          A visually friendly, age appropriate handout for early learners, or for parents to use when talking with their child, with tips about what to do if they are exhibiting bullying behavior.&nbsp;</p>
        <p><a href="http://www.pacer.org/bullying/resources/activities/coloring-book.asp" target="_blank">Coloring Book</a><br />
          Bullying is no fun, but learning about it can be. PACER&rsquo;s coloring book gives teachers and students a great opportunity to talk about bullying while they have fun. Each page includes an important message about respecting others, valuing differences, and being a friend.</p>
        <p><a href="http://www.pacer.org/bullying/resources/activities/stick-puppet.asp" target="_blank">Stick Puppet Role Plays</a><br />
          Role plays are an interactive method to creatively engage elementary school children to learn options for handling bullying situations. These stick puppet plays incorporate the Kids Against Bullying Club Crew members.</p>
      </blockquote>
    <h3>Middle/High School</h3>
      <blockquote>
        <p><a href="http://www.pacerteensagainstbullying.org/" target="_blank">Teens Against Bullying website</a><br />
          Created by and for teens, it&rsquo;s a place for middle and high school students to find ways to address bullying, to take action, to be heard, and to join an important social cause.</p>
        <p><a href="http://www.pacer.org/bullying/pdf/StudentActionPlan.pdf" target="_blank">Student Action Plan Against Bullying</a><br />
          As a student, bullying is something that impacts you, your peers, and your school &ndash; whether you&rsquo;re the target of bullying, a witness, or the person who bullies. Bullying can end, but that won&rsquo;t happen unless students, parents, and educators work together and take action. The first step is to create a plan that works for you and your situation. This student action plan is an opportunity for you &ndash; either on your own or with your parents and teachers &ndash; to develop a strategy to change what&rsquo;s happening to you or someone else. It&rsquo;s your chance to make a difference.&nbsp; </p>
        <p><a href="http://www.pacer.org/publications/bullypdf/BP-17.pdf" target="_blank">Drama: Is it Happening to You?</a> <br />
          Drama. Bullying. Teasing. Harassment. No matter what you call it, it hurts. If you&rsquo;re pushed, hit, or your things are ripped off or trashed, it can hurt physically. If you&rsquo;re ignored by friends or cruel things are posted about you online, it can hurt emotionally. If it happens to you, you&rsquo;ve probably asked yourself, &ldquo;Why me?&rdquo; You know how painful it is to be treated this way. So seriously, what can you do? A lot! Learn how.</p>
        <p><a href="/parent/php/PHP-c149a.pdf" target="_blank">Your IEP Meeting: A Great Place to Practice Self-Advocacy Skills</a><br />
          Self-advocacy is a key step in becoming an adult. It means looking out for yourself, telling people what you need, and knowing how to take responsibility. No one is born knowing these skills. Everyone has to learn them. Ready to begin learning? Here is some great information from teens, for teens, that can start you on your way. <a href="/parent/php/PHP-c149b.pdf" target="_blank">Here is a Sample Self-Advocacy Plan</a>.</p>
        <p><a href="http://www.pacer.org/bullying/resources/toolkits/pdf/PeerAdvocacyGuide.pdf" target="_blank">Peer Advocacy</a><br />
          How to address bullying of students with disabilities by engaging, educating, and empowering their peers with advocacy skills. A peer advocate program creates a formal process that identifies, trains, and supports a designated group of students who advocate for students with disabilities.</p>
      </blockquote>
    <br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
