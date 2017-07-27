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
<title>We Will Generation - Curriclum - Lesson 1</title>
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
  <a href="/bullying/wewillgen/curriculum/">Curriculum</a> / 

  </div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/wewillgen/curriculum/loginnav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="lessonone";	
	var showTree = "lessonone-sub";
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
    <h1 id="maincontent">Lesson One &mdash; Definition</h1>
    
        <div class="downloadbox">
	  <h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="/bullying/wewillgen/curriculum/LessonOne/pdf/Pre-ProgramEval.pdf" target="_blank">Pre-Program Evaluation</a></li>
		</ul>
	</div>



	<p><em>In this lesson, you will define what bullying means in your school, community and online; explore why bullying occurs; and learn the roles that are played in bullying and why it&rsquo;s important to address it.</em></p>
    <h3>Introducing The WE WILL Generation to Audience </h3>
      <p>Before starting the lessons, the advisor(s) should share information about &ldquo;The WE WILL Curriculum&rdquo; and the student presenters with the audience. Advisors can use the talking points below.</p>
  <p><strong>Talking points:</strong></p>
  <ul>
  <li>We are excited about a new program in our classroom that is going to be taught by [Describe presenters].</li>
  <li>The program is called &ldquo;The WE WILL Generation&rdquo; and it is going to help us have a better understanding of what each of us can do to address bullying.</li>
  <li>The presenters will be coming to our classroom [Define the time period]</li>
  <li>They will share 5 lessons that include watching videos, participating in activities and sharing your ideas.</li>
  <li>At the end of the program, we will all take a pledge, designed or adapted by us, that demonstrates our commitment to addressing bullying in our school.</li>
  </ul>
    <h3>Evaluation</h3>
    <p>Distribute the <a href="http://www.pacer.org/bullying/wewillgen/curriculum/LessonOne/pdf/Pre-ProgramEval.pdf"><strong>Pre-Program Evaluation sheets</strong></a>. Inform students that they will take the same survey after the program to evaluate their learning. Ask each student to complete and turn in. Alternatively, evaluations can be filled out online <a href="http://www.surveymonkey.com/s/QFNQTDC" target="_blank">here</a>.</p>
    <h3>Background Information and Talking Points for Lesson One, &ldquo;Definition&rdquo;</h3>
    <p><em>Use this information to learn about the topic before presenting the lesson and as a guide for what to focus on when you talk about each topic. </em></p>
      <p><strong><em>Definition of Bullying </em></strong></p>
      <p>Definitions of bullying vary widely but it&rsquo;s important to establish what bullying looks like in <em>your </em>school/community; in addition, you may want to check your school&rsquo;s bullying policy and use that definition as a starting point.</p>
      <p>Most definitions include:</p>
      <ul>
      <li>The behavior hurts or harms another person physically or emotionally</li>
      <li>The targets have difficulty stopping the behavior directed at them and struggle to defend themselves</li>
    <li>A statement about the &ldquo;imbalance of power.&rdquo; This imbalance happens when the student doing the bullying has more physical, emotional, or social &ldquo;power.&rdquo; He or she may have higher social status, be physically stronger, or be emotionally intimidating.</li>
    </ul>
    <p>Other considerations for defining bullying:</p>
    <ul>
    <li><strong>The types of bullying: </strong>Sometimes bullying is obvious, like beating someone up or name calling. Other times it&rsquo;s harder to see because it involves emotions and/or social interactions, like gossiping or leaving someone out on purpose. Bullying can also be confused with arguing or joking, but remember that if someone is being hurt physically or emotionally, then it&rsquo;s bullying.</li>
      <li><strong>Intent: </strong>This one is harder to define. Some definitions of bullying say that it has to be done intentionally or on purpose. But others say that someone can be bullying without meaning to or without realizing that he or she is hurting someone.</li>
      <li><strong>Repetition: </strong>Sometimes people say that it&rsquo;s only bullying if it happens over and over. But actually bullying can happen in response to a single situation, like being the new student at school, or it can happen again and again over a long period of time.</li>
      <li><strong>Bullying affects everyone: </strong>Keep in mind that bullying doesn&rsquo;t just affect the targets but can have serious and lasting impacts on the students who witness the behavior and those who are bullying.</li>
      <li><strong>Additional factors: </strong>Some definitions include other factors, like harassment, use of technology, impact on academic performance, and location.</li>
</ul>
    <p><strong><em>Roles in a Bullying Situation </em></strong></p>
    <ul>
  <li>&ldquo;Person bullying&rdquo; not &ldquo;Bully&rdquo;<br />
      It&rsquo;s important not to refer to someone as a &ldquo;bully&rdquo;; by avoiding labeling people as &ldquo;bullies,&rdquo; the emphasis can be on behavior rather than the person. Remember, oftentimes the person bullying is also being bullied themselves</li>
    <li>&ldquo;Target&rdquo; not &ldquo;Victim&rdquo; <br />
      Using the term &ldquo;target&rdquo; rather than &ldquo;victim&rdquo; can be empowering for the person being bullied; a target is in a difficult situation but has the power to change the situation while a victim is helpless.</li>
    <li>Bystander <br />
      Remember that bystanders, or students who witness bullying, have a very important role. They have enormous power to help or hurt the situation. While you want to encourage students to intervene when they see bullying, it&rsquo;s important not to emphasize &ldquo;confrontation.&rdquo; The safest and most effective ways for bystanders to help are non-confrontational, such as being nice to the target or telling an adult.</li>
    <li><strong>Important: </strong>one person can act in <em>all </em>of these roles &ndash; the same person could be bullied, bully someone else, and witness bullying all in the same day.</li>
    </ul>
      <p><strong><em>State Laws </em></strong></p>
      <p>You may also want to look in to your state&rsquo;s laws about bullying using this interactive map: <a href="http://www.stopbullying.gov/laws/index.html" target="_blank">http://www.stopbullying.gov/laws/index.html</a></p>
      
          <p><img src="/css/printicon.gif" width="15" height="14" alt="" /> <a href="/bullying/wewillgen/curriculum/LessonOne/pdf/Lesson-1-Background.pdf" target="_blank">Print-friendly version</a></p>

      
<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/wewillgen/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
