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
<title>WE WILL Generation - Lesson 5 - Video and Discussion</title>
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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/wewillgen/">We Will Generation</a> / <a href="/bullying/wewillgen/curriculum/">Curriculum</a> / <a href="/bullying/wewillgen/curriculum/lessonfive/"> Lesson Five</a>
  
  <div id="loginname">
  Logged in as:&nbsp;&nbsp;&nbsp;<strong><%=Session("fname")%></strong>
  </div>
  </div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/wewillgen/curriculum/loginnav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="lessonfive-video";	
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
  
    <h1 id="maincontent">Lesson Five | Video, Followed by Discussion Questions</h1>
	
    <div class="downloadbox">
	  <h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="pdf/StandTogether_ReflectionQuestions.pdf" target="_blank">Stand Together Discussion Questions</a></li>
			<li class="pdficonlist"><a href="pdf/What-If.pdf" target="_blank">What If</a></li>
			<li class="pdficonlist"><a href="pdf/TRUCE-Cyber-Kindness.pdf" target="_blank">Truce</a></li>
		</ul>
	</div>


		<div class="materials">
	<h2>Materials:</h2>
    <ul>
      <li>Technology to show videos which includes computer, internet connection, projector and screen.</li>
    </ul></div>
    <p><em>Videos, followed by discussion, are a powerful method to convey and explore messages. The videos and discussion questions in this curriculum are primarily developed by middle and high school students. </em></p>
    <h3>Option A</h3>
    <ol>
      <li>Remind the audience that each of the videos that are shown, along with the discussion questions, are created by students.
      <div style="width:640px; margin:20px auto;">
      <iframe width="640" height="370" src="//www.youtube.com/embed/unapqLyN2AA?rel=0" frameborder="0" allowfullscreen></iframe>
      </div>
      <img src="/bullying/wewillgen/images/hayley-pic.jpg" alt="" width="200" height="249" align="right" hspace="10" vspace="10" /></li>
<li>Show the 4 minute video, &ldquo;Stand Together&rdquo; by Hayley Reardon<br />
  Hayley writes, <em>&ldquo;Think about the amount of time we spend at home with our families versus in school with our classmates. Whether we like it or not, school is a big part of our lives and we&rsquo;re all here because we have to be. Growing up is hard for each of us in different ways but would be easier on everyone if we could face our time together as a team. Not a divided or broken team but a team who understands that we all have our own strengths and weaknesses and something to contribute. Ultimately, the only question we need to ask ourselves is what stops us from having each other&rsquo;s backs and choosing to stand together.&rdquo;</em> <a href="http://www.pacer.org/bullying/classroom/middle-highschool/student/hayley-reardon-music.asp" target="_blank">Listen to more of Hayley&rsquo;s music&gt;&gt;&gt;</a></li>
      <li>Follow up with discussion questions. Note: if the audience isn't comfortable with participating, the presenters can also share their perspective.
      	<ul type="disc">
      	<li>Think back and remember that stage when we were all of a sudden “too cool” for the things that used to make us happy. What parts of ourselves do we start to lose track of as we try to grow up?</li>
		<li>How can we identify the people around us that are struggling with bullying?</li>
		<li>What can we do to make them feel less alone?</li>
		<li>Do you think adults sometimes forget or not understand what it’s like to be young? We know better than anyone how and where bullying occurs and probably have the best ideas on how to stop it.</li>
		</ul>
	</li>

    </ol>
        <h3>Option B</h3>
        <ol>
        <li>Remind the audience that each of the videos that are shown, along with the discussion questions, are created by students.
              <div style="width:500px; margin:20px auto;">
<iframe width="500" height="375" src="http://www.schooltube.com/embed_force/bf9711852c20436790a9/" frameborder="0" allowfullscreen="allowfullscreen" mozallowfullscreen="mozallowfullscreen" webkitallowfullscreen="webkitallowfullscreen"></iframe>      </div></li>

          <li>Show the 5 minute video &quot;What If?&quot; The creator of the video, Andrew Hile, writes &ldquo;We all see bullying, but what are we going to do about it?&rdquo;<br />
          <em>This video was submitted to the <a href="http://nobullchallenge.org" target="_blank">Great American No Bull Challenge</a>. It was the winner of the No Bull Challenge &ldquo;Documentary of the Year, Second Place&rdquo; Award. Special thanks to film maker <a href="http://www.schooltube.com/video/b83322293a07463d9343/Introduction%20by%20Andrew%20Hile" target="_blank">Andrew Hile</a> and Shawn Edgington for permission to use in &quot; The WE WILL Curriculum.&rdquo; The Great American NO BULL Challenge is a social action organization that offers an amazing opportunity to youth, partners and communities around the world by inspiring teens at the grassroots level to promote digital responsibility, leadership and social action using the power of education, music and the magic of filmmaking.</em></li>
          <li>Follow up with the discussion questions developed by Andrew, which are on pages 2-6 of the <a href="/bullying/wewillgen/curriculum/LessonFive/pdf/What-If.pdf" target="_blank">&ldquo;No Bull Classroom Presentation&rdquo; PDF</a>. Note: if the audience isn't comfortable with participating, the presenters can also share their perspective.<br />
          <br />
          Other discussion questions include:<br />
          <ul type="disc">
          <li>How do &ldquo;words&rdquo; (include gossip, talking behind back, posting on social media) hurt someone?</li>
          <li>Do you think that the students who bullied in the video were thinking about how the other person felt?</li>
          <li>Were their actions intentional or were they random?</li>
          <li>What stands in the way of helping someone who is being bullied?</li>
          <li>Do you think when people aren&rsquo;t bullying the target that the target continues to attack himself or herself?</li>
          </ul></li>
       </ol>
    <h3>Option C</h3>
        <ol>
        <li>Remind the audience that each of the videos that are shown, along with the discussion questions, are created by students.
              <div style="width:500px; margin:20px auto;">
<iframe width="500" height="375" src="http://www.schooltube.com/embed_force/742be8ba2ec64b5d915c/" frameborder="0" allowfullscreen="allowfullscreen" mozallowfullscreen="mozallowfullscreen" webkitallowfullscreen="webkitallowfullscreen"></iframe>      </div></li>

          <li>Show the 1 minute video &quot;Truce&quot;. The creator of the documentary, Hayley Grimshaw writes, &ldquo;Our PSA shows mean texts being corrected with kind messages. We hope to encourage teens to 'delete the mean'.&rdquo;<br />
          <em>This video was submitted to the <a href="http://nobullchallenge.org" target="_blank">Great American No Bull Challenge</a>. It was the winner of the No Bull Challenge &ldquo;Public Service Announcement of the Year&rdquo; Award. Special thanks to film maker Hayley Grimshaw and Shawn Edgington for permission to use in &quot;The WE WILL Curriculum.&rdquo; The Great American NO BULL Challenge is a social action organization that offers an amazing opportunity to youth, partners and communities around the world by inspiring teens at the grassroots level to promote digital responsibility, leadership and social action using the power of education, music and the magic of filmmaking.</em></li>
          <li>Follow up with the discussion questions developed by Hayley, which are on pages 2-6 of the <a href="/bullying/wewillgen/curriculum/LessonFive/pdf/TRUCE-Cyber-Kindness.pdf" target="_blank">&ldquo;No Bull Classroom Presentation&rdquo; PDF</a>. Note: if the audience isn't comfortable with participating, the presenters can also share their perspective.</li>
       </ol>
       
    <h3>Option D</h3>
        <ol>
        <li>Remind the audience that each of the videos that are shown, along with the discussion questions, are created by students.
      <div style="width:640px; margin:20px auto;">
<iframe width="640" height="360" src="//www.youtube.com/embed/znv3l-U8tck?rel=0&wmode=opaque" frameborder="0" allowfullscreen></iframe>      </div></li>

          <li>Show the 1 minute video &ldquo;Erase Hate,&rdquo; developed by the student group #iCANHELP. The message of #iCANHELP is: &ldquo;One person has the power to make a difference and delete negativity online and in his or her life. Through assemblies, presentations, social media campaigns and student leadership trainings, #iCANHELP GIVES STUDENTS THE POWER to control the influences in their lives.&rdquo; </li>
          <li>Follow up with the discussion questions developed by #iCANHELP in the <a href="/bullying/wewillgen/curriculum/LessonFive/pdf/Erase-Hate.pdf" target="_blank">#iCANHELP Discussion Questions PDF</a>. Note: if the audience isn't comfortable with participating, the presenters can also share their perspective.
<ul>
          <li>What kind of mean messages do people send?</li>
            <li>How did you think these messages make people feel?</li>
            <li>How was &quot;Hate&quot; erased in this video?</li>
          <li>What is something that you could in this situation to make someone feel better?</li></ul></li>
       </ol>



<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
