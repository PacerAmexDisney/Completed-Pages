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
<title>WE WILL Generation - Lesson 2: Individuality</title>
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
	var currId="lessontwo";	
	var showTree = "lessontwo-sub";
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
    <h1 id="maincontent">Lesson Two &mdash; Individuality</h1>

	<p>In this lesson, you will learn about respecting differences and everyone&rsquo;s right to be who they really are.</p>
    <h3>Background Information and Talking Points</h3>
      <p><em>Use this information to learn about the topic before presenting the lesson and as a guide for what to focus on when you talk about each topic. </em></p>
      <p><strong><em>Individuality </em></strong></p>
      <ul>
  <li>Individuality is defined as the &ldquo;distinct or unique characteristic of someone&rdquo; </li>
  <li>The distinct or unique characteristics are varied; they can be about appearance, actions, talents, activities and much more. Everyone has a variety of individual characteristics.</li>
  <li>Individuality means something different to every person. Someone admitting they love playing video games might not seem like a big deal to you, but it might be a huge step for them in showing people who they really are.</li>
  </ul>
  <p><strong><em>Differences </em></strong></p>
  <ul>
  <li>As you talk about individuality and differences, remember to emphasize that it&rsquo;s okay to notice that someone is different from yourself but it is NOT okay to make them feel bad about it. We are all different from each other in some ways, but we are also similar to each other in some ways, too. Most importantly, just because someone is different DOESN&rsquo;T mean they deserve to be bullied.</li>
  <li>It&rsquo;s important to promote appreciating differences, not erasing them or pretending they don&rsquo;t exist. People will notice them anyway; the important thing is to recognize the <em>value </em>of diversity. Life would be pretty boring if everyone was the same. Imagine 6 billion people who all look and acted the same.</li>
  <li>Finding and keeping friends is often the number one concern for high school students. They may think that liking something just because it&rsquo;s &ldquo;cool&rdquo; or faking a certain personality to get in with the popular crowd is a sure way to gather a solid group of friends. But it&rsquo;s not true. The best way to find friends who actually like you, who will have your back when you need them, and who you enjoy spending time with is to do the things you like to do, act the way you like to act, and show who you really are. Do you really want a friend who only knows the fake you anyway?</li>
    <li>People are always saying &ldquo;be yourself&rdquo; and while that&rsquo;s good advice, sometimes it&rsquo;s hard to even know what that means. High school is a time to figure out who you are&hellip;so how can you be yourself if you don&rsquo;t even know who that is yet? It&rsquo;s hard, and being your genuine self is an ongoing process. But a good place to start is to focus on the friends, activities, styles, subjects, etc. that you genuinely like. Try not to be influenced by what others think.&nbsp;</li>
    </ul>
    
        <p><img src="/css/printicon.gif" width="15" height="14" alt="" /> <a href="/bullying/wewillgen/curriculum/LessonTwo/pdf/Lesson-2-Background.pdf" target="_blank">Print-friendly version</a></p>

    
<!-- end .content -->
</div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
