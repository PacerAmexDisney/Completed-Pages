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
<title>WE WILL Generation - Lesson 3 - Video and Discussion</title>
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
	var currId="lessonthree-video";	
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
  
    <h1 id="maincontent">Lesson Three |  Video, Followed by Discussion Questions</h1>
	
    <div class="downloadbox">
	  <h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="pdf/MISFITS_ReflectionQuestions.pdf" target="_blank">Misfits Discussion Questions</a></li>
			<li class="pdficonlist"><a href="pdf/ShesFalling_ReflectionQuestions.pdf" target="_blank">She&rsquo;s Falling Discussion Questions</a></li>
			<li class="pdficonlist"><a href="pdf/one-voice-discussion-questions.pdf" target="_blank">One Voice Discussion Questions</a></li>
			<li class="pdficonlist"><a href="pdf/A-Cry-for-Help-Questions.pdf" target="_blank">A Cry for Help Discussion Questions</a></li>
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
		<iframe width="640" height="370" src="//www.youtube.com/embed/xvst9zi8ea0?rel=0" frameborder="0" allowfullscreen></iframe>
        </div>
      <img src="/bullying/wewillgen/curriculum/LessonThree/pdf/Emily-Cardinal-Pic.jpg" width="100" height="142" alt="Emily Cardinal" align="right" vspace="10" hspace="10" /></li>
<li>Show the 5 minute video “Misfits” by Emily Cardinal<br />
        <a href="http://www.youtube.com/user/Itsjustmeemily1" target="_blank">Watch Emily on Youtube</a><br />
      <a href="https://www.facebook.com/emilycardinalmusic" target="_blank">Connect with Emily on Facebook</a></li>
      <li>Follow up with discussion questions. Note: if the audience isn't comfortable with participating, the presenters can also share their perspective. Sample reflections questions are listed below. For a full list and lyrics download the PDF.
      <ul type="disc">
    <li>How well do classmates really know each other?</li>
	<li>Do you think kids make assumptions about each other?</li>
	<li>What sort of characteristics and traits are these based on?</li>
    </ul></li></ol>

    <h3>Option B</h3>
    <ol>
      <li>Remind the audience that each of the videos that are shown, along with the discussion questions, are created by students.

      <div style="width:640px; margin:20px auto;">
<iframe width="640" height="480" src="//www.youtube.com/embed/VMO8M-bzh7A?rel=0" frameborder="0" allowfullscreen></iframe>
</div></li>

      <li>Show the 4 minute video, &ldquo;She&rsquo;s Falling&rdquo; by Hayley Reardon<br />
        Hayley writes &ldquo;To me, &ldquo;She&rsquo;s Falling&rdquo; is about not knowing how to help someone who you can see is falling apart.&rdquo; Although Hayley&rsquo;s song was written about a girl she knew personally, she, like all of us, was moved by the  story of Phoebe Prince,  a 15 year old Irish immigrant attending school in Massachusetts, who after months of being subjected to bullying from her peers, committed suicide on January 14, 2010.&rdquo; <a href="http://www.pacer.org/bullying/classroom/middle-highschool/student/hayley-reardon-music.asp" target="_blank">Listen to more of Hayley&rsquo;s music&gt;&gt;&gt;</a></li>
       
      <li> Follow up with discussion questions. Note: if the audience isn't comfortable with participating, the presenters can also share their perspective. Sample reflections questions are listed below. For a full list and lyrics download the PDF.
      <ul type="disc">
      <li>Do you think that students who bully are thinking about someone else felt? Are their actions intentional or are they random? How do &ldquo;words&rdquo; (include gossip, talking behind back, posting on facebook) hurt someone?</li>
	<li>Does it ever happen that people start to believe that they deserve to be bullied?</li>
	<li>Do you think that kids who bully are consciously aware that their actions are hurting someone? </li>
    </ul></li>                 
      </ol>

    <h3>Option C</h3>
    <ol>
      <li>Remind the audience that each of the videos that are shown, along with the discussion questions, are created by students.

      <div style="width:640px; margin:20px auto;">
<iframe width="640" height="360" src="//www.youtube.com/embed/fQrCti-hqu0?rel=0&wmode=opaque" frameborder="0" allowfullscreen></iframe>

</div></li>

      <li>Show the 3 minute video &ldquo;One Voice&rdquo; by Nakita Turner<br />
        <a href="https://www.facebook.com/NakitaTurnerMusic" target="_blank">Connect with Nakita on Facebook</a><br />
      <a href="https://soundcloud.com/nakita-turner-music" target="_blank">Listen to more of Nakita’s music</a></li>
       
      <li> Follow up with discussion questions. Note: if the audience isn't comfortable with participating, the presenters can also share their perspective. A sample reflections question is listed below. For a full list and lyrics download the PDF.
      <ul type="disc">
      <li><em>There is a Maori proverb that says &ldquo;He aha te mea nui? He tangata. He tangata. He tangata.&rdquo; Translated this means, &ldquo;What is the most important thing? It is people, it is people, it is people.&rdquo; Do you agree? How can you show your peers that they&rsquo;re important? What does this have to do with bullying?</em></li>
      </ul>
      <li>Check 
      out the online toolkit for &quot;One Voice,&quot; where you can download the song for free, find more discussion questions, and get involved in the movement. <a href="http://www.livefortomorrow.co.nz/onevoice/" target="_blank">Find out more</a>. </li>                 
      </ol>
      
      <h3>Option D</h3>
      <ol>
      <li>Remind the audience that each of the videos that are shown, along with the discussion questions, are created by students.
      <div style="width:640px; margin:20px auto;">
      <iframe src="//player.vimeo.com/video/95222645" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> <p><a href="http://vimeo.com/95222645">A Cry for Help</a> from <a href="http://vimeo.com/oliviacorish">Olivia Corish</a> on <a href="https://vimeo.com">Vimeo</a>.</p>
      </div></li>
        <li>Show the 4 minute video, &ldquo;A Cry for Help&rdquo; by Olivia Corish. About &ldquo;A Cry for Help,&rdquo; Olivia writes: &ldquo;Making films is something I love to do, and I want to use it to bring attention to this important issue. This film has been shared around my school, and has made many kids more aware about what's going around them, and has encouraged them to stand up for each other.&rdquo;</li>
        <li>Follow up with discussion questions. Note: if the audience isn't comfortable with participating, the presenters can also share their perspective. Sample reflections questions are listed below. For a full list <a href="/bullying/wewillgen/curriculum/LessonThree/pdf/A-Cry-for-Help-Questions.pdf" target="_blank">download the PDF</a>.
<ul type="disc">
       <li>What stops &ldquo;bystanders&rdquo; from standing up to the student bullying, and what causes the bystanders to eventually bully others?</li>
        <li>What can we do to stop bullying in our schools?</li>
        <li>Direct confrontation of a student who is bullying usually isn&rsquo;t effective. Why do you think that is? Why do you think it worked in this case?</li>
        </ul>
        </li>
    </ol>
      



<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
