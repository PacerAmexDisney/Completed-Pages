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
<title>WE WILL Generation - Lesson 3</title>
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
	var currId="lessonthree";	
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
    <h1 id="maincontent">Lesson Three &mdash; Being There</h1>
    <p><em>In this lesson, you will learn how positive actions from bystanders can make a huge difference for a target of bullying. &ldquo;Being there&rdquo; for someone means that you are acknowledging their situation, recognizing that they can use some support and showing that you care.</em></p>
    <h3>Background Information and Talking Points</h3>
      <p><em>Use this information to learn about the topic before presenting the lesson and as a guide for what to focus on when you talk about each topic. </em></p>
    <p><strong>Being There</strong></p>
    <p>Think about&nbsp;what it&nbsp;means to feel all alone,&nbsp;to believe that no one cares, to think that&nbsp;there is no way to change what is happening. &nbsp;</p>
    <ul>
      <li>That's a lonely place to be. </li>
      <li>When everyone around you looks the other way, ignores you, and maybe even sides with the person hurting you, it&rsquo;s hard to believe in yourself. </li>
      <li>It's hard to think that life will ever be any different.</li>
    </ul>
    <p>Imagine how all that can be different. Imagine&nbsp;during those times when you feel broken, that someone is there for you.</p>
    <ul>
      <li>They talk to you, they tell you that it will be ok, that you matter. </li>
      <li>They say that you deserve to be treated with respect and kindness. </li>
      <li>They tell you that they will be there for you.</li>
      <li>Imagine how different that feels. </li>
      <li>It doesn't take away all the hurt,&nbsp;but hope&nbsp;is&nbsp;a powerful&nbsp;medicine for&nbsp;pain.&nbsp;</li>
    </ul>
    <p>Consider how simple it is to tell someone that you care, that they matter, that they are not alone. Your support is meaningful. It can take someone from feeling hopeless to feeling valued and respected.</p>
    <p><strong>Being There&nbsp;- Example&nbsp;</strong></p>
    <p>Imagine you&rsquo;re walking through your neighborhood at night and you see a store being broken into. You know the owners of the store and they&rsquo;re good people. What can do to &ldquo;be there&rdquo; for them? </p>
    <p>You could confront the robbers, but that would probably end with someone getting hurt or making the situation worse. You could call the police and report the robbery, which would be both responsible and helpful. But in addition to reporting the robbery, perhaps the most helpful thing you could do would be to come by the store in the morning and express your support to the owners of the store, assure them that many in the neighborhood support them, and maybe even offer to help clean up. </p>
    <p>Imagine how much something like that would mean to someone whose store had just been robbed. Now imagine a similar situation with someone being bullied. Confronting the students who are bullying directly may result in someone getting hurt or in trouble. Reporting the bullying to an adult can certainly help. </p>
    <p>One of the most powerful things you can do is to offer your support to the person who was bullied; let them know that they aren&rsquo;t alone and that you will be there for them, even if you can&rsquo;t fix the problem. </p>
    <p><strong>Being There - Ideas</strong></p>
    <ul>
      <li><em>When you see something, do something!</em></li>
      <li><em>Don&rsquo;t focus on fixing the problem, focus on how you be supportive.</em></li>
      <li><em>Know that talking with someone will help them.</em></li>
      <li><em>Think of questions that will lead them to open up more to you</em></li>
      <li><em>Show that you&rsquo;re listening by allowing them to talk more than you </em></li>
      <li><em>Being there for someone doesn&rsquo;t mean solving the problem with one goal in mind. It means being an emotional supporter.</em></li>
      <li><em>Avoid aggression, anger, and confusion. </em></li>
      <li><em>Be confident and genuine with your suggestions and words. </em></li>
      <li><em>Help them think through how they can tell their parents. And what to do if that doesn&rsquo;t help.</em></li>
      <li><em>Let them know that they can talk with you anytime. </em></li>
      <li><em>Never judge or blame them! </em></li>
    </ul>
    
        <p><img src="/css/printicon.gif" width="15" height="14" alt="" /> <a href="/bullying/wewillgen/curriculum/LessonThree/pdf/Lesson-3-Background.pdf" target="_blank">Print-friendly version</a></p>

    
  </div>
  
  <!-- end .content -->  
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
