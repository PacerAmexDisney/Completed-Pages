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
<title>WE WILL Generation - Lesson 2 - Video and Discussion</title>
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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/wewillgen/">We Will Generation</a> / <a href="/bullying/wewillgen/curriculum/">Curriculum</a> / <a href="/bullying/wewillgen/curriculum/lessontwo/"> Lesson Two</a>
  
  <div id="loginname">
  Logged in as:&nbsp;&nbsp;&nbsp;<strong><%=Session("fname")%></strong>
  </div>
  </div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/wewillgen/curriculum/loginnav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="lessontwo-video";	
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
  
    <h1 id="maincontent">Lesson Two | Video, Followed by Discussion Questions</h1>
	
    <div class="downloadbox">
	  <h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="pdf/Butterfly_LizzieSider_ReflectionQuestions.pdf" target="_blank">Butterfly Discussion Questions</a></li>
			<li class="pdficonlist"><a href="pdf/How-Do-You-Feel.pdf" target="_blank">How Do You Feel When People Look at You</a></li>
			<li class="pdficonlist"><a href="pdf/Stand-Up-For-You-Questions.pdf" target="_blank">Stand Up for You Discussion Questions</a></li>
			<li class="pdficonlist"><a href="pdf/Worlds-Between-Us.pdf" target="_blank">Worlds Between Us Discussion Questions</a></li>
			<li class="pdficonlist"><a href="pdf/warrior-questions.pdf" target="_blank">Warrior Discussion Questions</a></li>
		</ul>
	</div>


		<div class="materials">
	<h2>Materials:</h2>
    <ul>
      <li>Technology to show videos which includes computer, internet connection, projector and screen.</li>
    </ul></div>
    <p><em>Videos, followed by discussion, are a powerful method to convey and explore messages. The videos and discussion questions in this curriculum are primarily developed by middle and high school students. </em>&nbsp;</p>
    <h3>Option A</h3>
    <ol>
      <li>Remind the audience that each of the videos that are shown, along with the discussion questions, are created by students.
      <div style="width:640px; margin:20px auto;">
      <iframe width="640" height="360" src="//www.youtube.com/embed/KJuu1hKo-u8?list=PL76A302A1DEEF5B21&rel=0" frameborder="0" allowfullscreen></iframe>
      </div>
      <img src="/bullying/wewillgen/images/Lizzie-pic.jpg" alt="Lizzie Sider" width="200" height="133" align="right" vspace="10" hspace="10" /></li>
<li>Show the 3 minute video &ldquo;Butterfly&rdquo; by Lizzie Sider<br />
  Lizzie is a country music singer/songwriter, who experienced verbal teasing and ridiculing from other children in elementary school. Her song, &ldquo;Butterfly&rdquo; tells her story and how she overcame her situation. Lizzie is passionate about helping raise awareness about bullying, and trying to effect change. <a href="http://www.pacer.org/bullying/classroom/middle-highschool/student/butterfly.asp" target="_blank">Read more about Lizzie&rsquo;s story&gt;&gt;&gt;</a></li>
      <li>Follow up with discussion questions. Note: if the audience isn't comfortable with participating, the presenters can also share their perspective.<br />
        Sample discussion questions are listed below. For a full list and lyrics download the PDF.
          <ul type="disc">
        <li>What do you think these words mean? Have you ever experienced being excluded, or teased? How did it make you feel about yourself?</li>
        <li>How would you define someone who bullies? Why do people bully? Do you know of someone, in your school, or otherwise, who has been a target? Have you ever stood up (verbally or physically) for him/her?</li>
        <li>Suppose the person bullying was one of your friends, would you keep silent? At what point would you do something? What would you do?</li>
        </ul></li>
    </ol>
     <h3>Option B</h3>
    <ol>
      <li>Remind the audience that each of the videos that are shown, along with the discussion questions, are created by students.
      <div style="width:500px; margin:20px auto;">
      <iframe width="500" height="375" src="http://www.schooltube.com/embed_force/74398e34a17440d4999c/" frameborder="0" allowfullscreen="allowfullscreen" mozallowfullscreen="mozallowfullscreen" webkitallowfullscreen="webkitallowfullscreen"></iframe>
      </div></li>

<li>Show the 5 minute video "How Do You Feel When People Look At You." The creator of the video, Ashlynn Wilson, writes: "Everyone has been bullied at some point in their lives. These words can be painful, but the good always outshines the bad within each of us."<br  />
<em>This video was submitted to the <a href="http://nobullchallenge.org" target="_blank">Great American No Bull Challenge</a>. It was the winner of “The Best Community Involvement” Award. Special thanks to <a href="http://www.schooltube.com/video/aea55e98f06241fc9aa3/Introduction%20by%20Ashlynn%20Wilson" target="_blank">Ashlynn</a> and Shawn Edgington for permission to use in " The WE WILL Curriculum.” The Great American NO BULL Challenge is a social action organization that offers an amazing opportunity to youth, partners and communities around the world by inspiring teens at the grassroots level to promote digital responsibility, leadership and social action using the power of education, music and the magic of filmmaking.</em>
 </li>
<li>Follow up with the discussion questions developed by Ashlynn, which are on pages 2-6 of the <a href="/bullying/wewillgen/curriculum/LessonTwo/pdf/How-Do-You-Feel.pdf" target="_blank">“No Bull Classroom Presentation” PDF</a>. Note: if the audience isn't comfortable with participating, the presenters can also share their perspective.</li>
    </ol>
    
    <h3>Option C</h3>
    <ol>
      <li>Remind the audience that each of these songs, along with the discussion questions, are created by students.
      <div style="width:640px; margin:20px auto;">
		<iframe width="640" height="360" src="//www.youtube.com/embed/UL6N_Vyyjbs?rel=0" frameborder="0" allowfullscreen></iframe></div></li>
      <li>Listen to the song &ldquo;Stand Up for You&rdquo; by Taylor Jones.</li>
      <li>Follow up with discussion questions. Note: if the audience isn't comfortable with participating, the presenters can also share their perspective.<br />
      Sample discussion questions are listed below. For a full list and lyrics <a href="/bullying/wewillgen/curriculum/LessonTwo/pdf/Stand-Up-For-You-Questions.pdf">download the PDF</a>.
<ul type="disc">
    <li>How many of you have either been bullied or witnessed bullying taking place?</li>
	<li>How many of you did not do anything to stop the bullying or did not tell an adult about the situation you were in?</li>
	<li>Do you think the outcome of the situation could have been different if you would have taken action?</li>
	<li>What does being different mean to you?</li>
	<li>Do you think reputation or, how others view someone, can affect how someone acts in public?</li>
	<li>What are ways you could stand up for someone being bullied?</li>
	<li>The bullying in this song takes place on a school bus, which would be a public place. Do you think this affected how the singer reacted to the situation?</li>
	<li>What could have you done if you were in the same situation as the singer?</li>
	<li>How would you feel if you had to change schools due to bullying?</li>
	<li>Why is it important for you to take action when someone is being bullied?</li>
	<li>What are some different ways you can stand up against bullying?</li>
    </ul>
      </li>
    </ol>
    
    <h3>Option D</h3>
    <div style="width:640px; margin:20px auto;">
		<iframe width="640" height="360" src="//www.youtube.com/embed/hip1LuwifQY?rel=0&wmode=opaque" frameborder="0" allowfullscreen></iframe></div>
    <ol>
    <li>Show the 4 minute video, &ldquo;Worlds Between Us&rdquo; by Jared Robinson.</li>
    <li>Follow up with discussion questions. Note: if the audience isn't comfortable with participating, the presenters can also share their perspective. Sample reflections questions are listed below. For a full list <a href="/bullying/wewillgen/curriculum/LessonTwo/pdf/Worlds-Between-Us.pdf" target="_blank">download the PDF</a>.
<ul type="disc">
    <li>What do you think the cosmonaut helmet represents in the video?</li>
    <li>When can it be a good thing to be different from others?</li>
    </ul>
    </li></ol>
    
    <h3>Option E</h3>
<div style="width:640px; margin:20px auto;">
		<iframe width="640" height="360" src="//www.youtube.com/embed/XtGkWwDbMoQ?rel=0&wmode=opaque" frameborder="0" allowfullscreen></iframe></div>
		<ol>
        <li>Show the 3 minute video, &ldquo;Warrior Within You&rdquo; by Nadia Khristean</li>
        <li>Follow up with discussion questions. Note: if the audience isn't comfortable with participating, the presenters can also share their perspective. Sample reflections questions are listed below. For a full list <a href="/bullying/wewillgen/curriculum/LessonTwo/pdf/warrior-questions.pdf" target="_blank">download the PDF</a>.
<ul type="disc">
        <li>Who is a warrior in your life?  What kind of character does this person have?</li>
		<li>How would you describe who you are?  What defines you?</li></ul>
        </li></ol>
        
        <br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/wewillgen/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
