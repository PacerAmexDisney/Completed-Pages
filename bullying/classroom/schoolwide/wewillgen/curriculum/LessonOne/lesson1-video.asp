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
<title>We Will Generation - Lesson 1: Video and Discussion</title>
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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/wewillgen/">We Will Generation</a> / <a href="/bullying/wewillgen/curriculum/">Curriculum</a> / <a href="/bullying/wewillgen/curriculum/lessonone/"> Lesson One</a>
  
  <div id="loginname">
  Logged in as:&nbsp;&nbsp;&nbsp;<strong><%=Session("fname")%></strong>
  </div>
  </div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/wewillgen/curriculum/loginnav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="lessonone-video";	
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
  
    <h1 id="maincontent">Lesson One | Video, Followed by Discussion Questions</h1>
	
    <div class="downloadbox">
	  <h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="/bullying/wewillgen/curriculum/LessonOne/pdf/OnlyBecause_ReflectionQuestions.pdf" target="_blank">Only Because, Discussion Questions</a></li>
		</ul>
	</div>


		<div class="materials">
	<h2>Materials:</h2>
    <ul>
      <li>Technology to show videos which includes computer, internet connection, projector and screen.</li>
    </ul></div>
      <p><em>Videos, followed by discussion,&nbsp;are a powerful method to convey and explore messages. The videos and discussion questions in this curriculum are primarily developed by middle and high school students.</em></p>
<p>1. Share with the audience that each of the videos that are shown, along with the discussion questions, are created by students.</p>
<div style="width:640px; margin:20px auto;">
<iframe width="640" height="360" src="//www.youtube.com/embed/ubfSJPT_XZ8?rel=0&wmode=opaque" frameborder="0" allowfullscreen></iframe>
</div>
<p>2. Show the 5 minute video &ldquo;Only Because&rdquo; by Dyvine </p>
<blockquote>
  <p>Special thanks to &ldquo;Dyvine,&rdquo; the creator of the video, who also developed the discussion questions, and provided PACER with permission to use.</p>
</blockquote>
<p>3. Follow up with discussion questions. Note: if the audience isn't comfortable with participating, the presenters can also share their perspective.</p>
<p>Sample discussion questions are listed below. For a full list and lyrics download the PDF.</p>
<ul>
<li>Where do you feel the safest?</li>
<li>What are your fears?</li>
<li>Why are secrets so sacred</li>
</ul>


<!--<p>2. Show the 5 minute video <a href="http://nobullgreatamerican.votigo.com/contests/showentry/1433196" target="_blank">&quot;How Do You Feel When People Look At You&quot;</a></p>

<blockquote>
  <p>The creator of the video, Ashlyn, writes: &quot;Everyone has been bullied at some point in their lives. These words can be painful, but the good always outshines the bad within each of us.&quot;</p>
  <p>This video was submitted to the Great American No Bull Challenge. Special thanks to Ashlyn and Shaun Eddington for permission to use in&nbsp;&quot;The We Will Curriculum.&rdquo; The Great American NO BULL Challenge is a social action organization that offers an amazing opportunity to youth, partners and communities around the world by inspiring teens at the grassroots level to promote digital responsibility, leadership and social action using the power of education, music and the magic of filmmaking. </p>
</blockquote> -->

<!--<p>3. Follow up with discussion questions. Note: if the audience isn't comfortable with participating, the presenters can also share their perspective.</p>
    <ul>
      <li>Which do you think hurts more: physical bullying or emotional bullying (such as name calling)?</li>
      <li>What do you think about the expression, &quot;sticks and stones can break your bones, but words will never hurt you?&quot;</li>
      <li>How does the use of negative words impact how we view each other?</li>
      <li>Do you think&nbsp;if someone is called a name often enough, it can change how they view themselves?</li>
    </ul> -->

    

<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/wewillgen/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
