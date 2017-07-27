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
<title>WE WILL Generation - Lesson 4: Build Them Up</title>
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
	var currId="lessonfour";	
	var showTree = "lessonfour-sub";
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
    <h1 id="maincontent">Lesson Four &mdash; Build Them Up</h1>
    <p>In this lesson, students will learn the importance of encouraging and supporting their peers and provide strategies to take action. &ldquo;Building someone up&rdquo; means helping someone build their self- confidence and self-esteem.&nbsp; It is encouraging them to know that are okay just the way there are.</p>
      <h3>Background Information and Talking Points</h3>
    <p><em>Use this information to learn about the topic before presenting the lesson and as a guide for what to focus on when you talk about each topic. </em></p>
    <p><strong>Build Them Up </strong></p>
    <p>When you are being mistreated, it can be hard to feel good about yourself. Being bullied can bring down self-confidence, self-worth and self-esteem. It can increase anxiety and depression</p>
    <ul>
      <li>Bullying so often tears people down. </li>
      <li>When you know that someone has been broken down, help them back up. </li>
    </ul>
    <p>Building someone up is about:</p>
    <ul>
      <li>letting them know that someone is there to help. </li>
      <li>helping them get back their confidence </li>
      <li>encouraging them that they are ok just the way there. </li>
      <li>letting them know that they are important</li>
    </ul>
    <p>Be creative, sincere, and generous in your efforts to support your peers. Building someone up doesn&rsquo;t always have to involve compliments, or even words. Letting someone know that they are not alone is one of the most effective interventions according to the targets themselves.&nbsp; </p>
    <p>Ways you can build someone up are: </p>
    <ul>
      <li>Invite them into a group activity.</li>
      <li>Talk with them during class breaks, even if it&rsquo;s just to say &ldquo;hi&rdquo;.</li>
      <li>Actively make your non-verbal communication more inclusive, like leaving seats open at your lunch table rather than putting your stuff there. </li>
      <li>Include them in conversations, even if they don&rsquo;t want to talk, make sure they know they are a part of the discussion.</li>
      <li>Recognize the things that they do really well, compliment them on their talents. </li>
    </ul>
    <p><strong>Build Them Up&nbsp;- Examples&nbsp;</strong></p>
      <p><em>Example 1</em> <br />
      Imagine someone is being bullied for being really into something that you secretly enjoy as well. You know that most people don&rsquo;t think it&rsquo;s &ldquo;cool,&rdquo; but it&rsquo;s something you really love to do. You see someone else being made fun of for enjoying it, and you remember why you keep your own enjoyment a secret. You don&rsquo;t want to join them at the receiving end of this torment. </p>
    <p>But what if there was a way for you to support this person without putting yourself in harm&rsquo;s way? You don&rsquo;t have to make a public declaration, but even talking privately to this person and letting them know that you understand can make a huge difference. And if you want to make an even bigger impact, make an effort to include this person at school. Maybe now that you know there&rsquo;s someone else who shares your interests, neither one of you will feel so alone.&nbsp; </p>
    <p><em>Example 2</em> <br />
      Imagine you&rsquo;re walking down the hall at school and you see someone being made fun of. Their clothes, their interests, their looks &ndash; everything seems to be fair game. You feel awful for them&hellip;but you know that if you step in now, you&rsquo;ll get the same treatment. Before you can decide what to do, the students who were bullying walk away, leaving the bullied student alone at their locker. Now you have a choice: do you pretend it never happened and go about your day? Or do you take the opportunity to make a difference? </p>
    <p>What could you do to make a difference? The most impactful thing you could do in this situation is let them know that they are not alone. You could walk over to them now and say something nice to them. Maybe they gave a really great presentation in class earlier, or you really love&nbsp; something they are wearing. Build their confidence with a genuine, specific compliment. Or you can use your actions to build them up. Invite them to sit with you at lunch, offer to walk with them to their next class, or start a discussion about something you both care about. </p>
    <p><strong>Build Them Up - Ideas</strong></p>
    <ul>
      <li>Don&rsquo;t feel obligated to know the answer to the situation, sometimes listening is the most genuine way to show support. </li>
      <li>Remind them that they have you as a friend. </li>
      <li>Offer to do activities that will guarantee a smile or even a laugh. </li>
      <li>Remind them that no one deserves to be disrespected and it won&rsquo;t last forever. </li>
      <li>Strategize positive ways to react if it happens again. </li>
      <li>Things to say to the person being bullied:
      <ul>
        <li>I&rsquo;m here for you.</li>
        <li>You didn&rsquo;t deserve that. </li>
        <li>You are a good person in a bad situation. </li>
        <li>That person was wrong to do that. </li>
        <li>Let&rsquo;s tell someone who can help. </li>
        <li>Let&rsquo;s find someone that you can talk to about this. </li>
      </ul></li>
      <li>Simply listening and showing that you believe and care about what is going on will do wonders! </li>
    </ul>
    
        <p><img src="/css/printicon.gif" width="15" height="14" alt="" /> <a href="/bullying/wewillgen/curriculum/LessonFour/pdf/Lesson-4-Background.pdf" target="_blank">Print-friendly version</a></p>

    
    <p><!-- end .content -->  </p>
  </div>
  <!--#include virtual="/bullying/wewillgen/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
