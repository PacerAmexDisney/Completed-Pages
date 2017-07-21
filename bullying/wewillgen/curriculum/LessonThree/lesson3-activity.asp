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
<title>WE WILL Generation - Lesson 3 - Activity</title>
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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/wewillgen/">We Will Generation</a> / <a href="/bullying/wewillgen/curriculum/">Curriculum</a> / <a href="/bullying/wewillgen/curriculum/lessonthree/"> Lesson Three</a>
  
  <div id="loginname">
  Logged in as:&nbsp;&nbsp;&nbsp;<strong><%=Session("fname")%></strong>
  </div>
  </div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/wewillgen/curriculum/loginnav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="lessonthree-activity";	
	var showTree = "lessonthree-sub";
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
  
    <h1>Lesson Three | Activity</h1>
	
    <div class="downloadbox">
	  <h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="pdf/Descriptive-v-Judgemental-Language.pdf" target="_blank">Descriptive vs. Judgmental Language</a></li>
			<li class="pdficonlist"><a href="pdf/What-If.pdf" target="_blank">What If . . .</a></li>
		</ul>
	</div>
<h3>Activity #1: Exploring Descriptive v. Judgmental Language</h3>

		<div class="materials">
	<h2>Materials:</h2>
    <ul>
      <li>Notecards</li>
    </ul></div>
    <p><strong>Goal: </strong>To explore descriptive versus judgmental language, in order to help students respond effectively to targets of bullying seeking help. </p>
        <p><em> In responding to targets of bullying who come to you for support or help, it&rsquo;s important to use non-judgmental language. In addition, training students to use descriptive rather than judgmental language will help students support others. </em></p>
        <ol>
          <li>Note: Do not show the corresponding slide until after students have written down their observations. </li>
          <li>Inform students that one of the presenters is going to leave the room and when he or she comes back, the students should observe his or her behavior as closely as possible. </li>
          <li>When the presenter returns, he or she will do some obviously bizarre or inappropriate things, such as swiping someone&rsquo;s book off their desk, interrupting another presenter loudly, eating something obnoxiously, etc. </li>
          <li>Ask the students to write on a note card what behavior they observe. Collect the cards and read them aloud. </li>
          <li>Explain the difference between descriptive and judgmental language.
          <ol type="a">
            <li>Judgmental language conveys a decision about whether something is negative or positive, bad or good. </li>
            <li>Descriptive language conveys just the facts of what happened or what something/someone looked like. </li>
            <li>Example: after witnessing someone raising their voice to a friend in the hallway&hellip;
            <ol type="i">
              <li>Descriptive &ndash; &ldquo;He yelled at her.&rdquo;</li>
              <li>Judgmental &ndash; &ldquo;He was a jerk to her.&rdquo; </li>
            </ol></li></ol></li>
          <li>Have students stand up when they hear descriptive language and sit down when they hear judgmental language. </li>
          <li>Remind students that empathetic language, or the language they should use when talking to someone who&rsquo;s been bullied, is always descriptive, not judgmental. You may want to use these discussion questions:
          <ol type="a">
            <li>How would you feel if you heard judgmental language directed at you?</li>
            <li>What are some situations in which you can practice using descriptive rather than judgmental language? </li>
            <li>Why do you think judgmental language is harmful? </li>
          </ol></li>
        </ol>
        <p>Adapted from: <a href="http://www.originsonline.org/newsletters/winter-2008-dd/teaching-empathy-young-adolescents">http://www.originsonline.org/newsletters/winter-2008-dd/teaching-empathy-young-adolescents</a></p>
        <h3>Activity #2: What If&hellip;?</h3>
          <p>As a group, students will think through a hypothetical situation where they have the chance to help a student who is being bullied. This activity guides students through a scenario, then they are asked to imagine how various positive actions might help this student, what effect these actions might have, and how taking action might make them feel. Having made a plan of action, students will be better equipped to address real instances of bullying in their lives.</p>
          <p>The scenario begins:</p>
          
          <p><em>Imagine you&rsquo;re sitting in the stands at a school basketball game with a bunch of your friends having a great time. You happen to catch site of one of your classmates, Andy, clutching popcorn and looking around for a place to sit. You watch as Andy tries to sit with several groups but the groups shut him out. After a few tries, Andy gives up and sits alone. You can tell he&rsquo;s upset but trying really hard to hide it. You think, &ldquo;If that were me, I&rsquo;d feel terrible right now.&rdquo; You know that if you let Andy sit with your group, your friends would definitely make fun of you. You feel bad for Andy, but you push that aside and go back to laughing and enjoying the game with your friends.</em></p>
          
          <p><a href="/bullying/wewillgen/curriculum/LessonThree/pdf/What-If.pdf">Download the full activity</a>.</p>
<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
