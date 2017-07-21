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
<title>WE WILL Generation - Lesson 5: Turn A 180</title>
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
	var currId="lessonfive";	
	var showTree = "lessonfive-sub";
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
    <h1 id="maincontent">Lesson Five &mdash; Turn A 180</h1>
<!--	<div class="downloadbox">
		<h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="#">item 1</a></li>
			<li class="wordiconlist"><a href="#">item 2</a></li>
			<li class="ppticonlist"><a href="#">item 3</a></li>
		</ul>
	</div>
 -->
	<p>Research has shown that students are the most effective people to intervene in a bullying situation. Helping doesn&rsquo;t always mean directly confronting the person bullying. You can show your support by diverting the situation in a more positive direction. </p>
    <ul>
      <li>It&rsquo;s not easy to be one person against a wave of negativity, but when one person speaks up, others will follow. </li>
      <li>The biggest obstacle is believing you are powerless. You CAN make a difference. </li>
    </ul>
    <p>Turning a 180 is about: </p>
    <ul>
      <li>Redirecting a negative situation</li>
      <li>Creating a more supportive school environment</li>
      <li>Deescalating bullying situations </li>
    </ul>
    <p>Empowering students to intervene in a bullying situation doesn&rsquo;t remove responsibility from adults in the school. Adults need to play an active role in bullying prevention too. Often young people feel like they don&rsquo;t have control over their lives &ndash; but you CAN make a difference for your peers who are being bullied. </p>
    <p>Ways you can turn a 180 are: </p>
    <ul>
      <li>Change the subject when your peers start tearing someone down</li>
      <li>Make a point of saying something positive about a person who&rsquo;s getting picked on </li>
      <li>Reach out to targets of bullying to show them that people do care about them. </li>
    </ul>
    <h3>Turn a 180&nbsp;- Examples</h3>
      <p><em>Example 1</em> <br />
      During class your teacher announces the winner of the science fair &ndash; a quiet, intelligent girl who doesn&rsquo;t have many friends. Immediately a bunch of your classmates start mocking her, joking about how she&rsquo;ll never get a date to prom unless she makes one in the lab herself. You can see that this girl is getting really upset. You feel awful &ndash; she should be able to celebrate her big win. </p>
    <p>What can you do? The whole class is starting to turn on this girl. You&rsquo;re not sure that you&rsquo;re brave enough to tell them off for making fun of her&hellip;but maybe there&rsquo;s a way for you to divert the situation. You take another look at her project, on display in the front of the room, and realize that it&rsquo;s actually a pretty cool cell-phone-controlled robot. You start talking loudly to one of your friends about how cool it is, and ask the inventor if you can try it out. Pretty soon the rest of the class shifts their attention to watching the robot zoom around the classroom. Now everyone is focused on this girl&rsquo;s amazing invention, rather on tearing her down. </p>
    <p><em>Example 2</em> <br />
      As you walk into class this morning, you notice one of your classmates staring fixedly at his desk with his fists clenched. When you get closer you realize that someone has written &ldquo;retard&rdquo; on his desk. You feel sick to your stomach. Earlier this year, he had explained to the class that he has Autism and sometimes he does things a little differently. Your classmate starts rocking back and forth, like he does sometimes when he gets anxious. Across the room, a group of guys start mocking him, throwing their bodies violently back and forth and laughing at him. You know this classmate is kind and smart, but it seems like no one really cares about that right now. Other students in the class start joining in making fun of him, but others, like you, just look uncomfortable and sad. You wish someone would speak up&hellip;but no one does. </p>
    <p>Maybe it&rsquo;s up to you. How could you help your classmates find the courage to speak up? You know that this classmate loves Spiderman, and you happen to have seen the new movie this weekend. You take a deep breath, sit down next to him, and ask him if he saw the movie too. As the two of you start talking about how great it was, he stops rocking and his fists unclench. For the first time that morning, he looks relaxed and happy. Other classmates join in the discussion, and pretty soon most of the class is engaged in a lively debate about whether or not Peter Parker invented selfies. </p>
    <p>After class, your teacher calls you over to thank you for speaking up during class. But you know the issue isn&rsquo;t over. You ask your teacher if maybe your class could have a discussion on respect and including others. You want to make sure what happened this morning doesn&rsquo;t happen again. Your teacher thinks this is a great idea, and he promises to plan a lesson for next week. </p>
    <h3>Build Them Up - Ideas</h3>
    <ul>
      <li>Take the blunt route and surprise the person bullying by asking why they did/said it</li>
      <li>Let the person being harmed know that you think they are really great.</li>
      <li>Talk to an adult you think would handle the situation in the most effective way. </li>
      <li>Talk to the person bullying and educate them on ways to respect others. </li>
      <li>Anytime you read negativity about someone, be sure to add something positive about them. </li>
      <li>Remove!! There are ways to remove postings.</li>
      <li>Report!! If the issue is really damaging. </li>
    </ul>
    <p><img src="/css/printicon.gif" width="15" height="14" alt="" /> <a href="/bullying/wewillgen/curriculum/LessonFive/pdf/Lesson-5-Background.pdf" target="_blank">Print-friendly version</a></p>
    <p><!-- end .content -->  </p>
  </div>
  <!--#include virtual="/bullying/wewillgen/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
