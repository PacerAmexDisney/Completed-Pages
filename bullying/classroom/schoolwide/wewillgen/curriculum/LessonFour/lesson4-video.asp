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
<title>WE WILL Generation - Lesson 4 - Video and Discussion</title>
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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/wewillgen/">We Will Generation</a> / <a href="/bullying/wewillgen/curriculum/">Curriculum</a> / <a href="/bullying/wewillgen/curriculum/lessonfour/"> Lesson Four</a>
  
  <div id="loginname">
  Logged in as:&nbsp;&nbsp;&nbsp;<strong><%=Session("fname")%></strong>
  </div>
  </div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/wewillgen/curriculum/loginnav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="lessonfour-video";	
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
  
    <h1 id="maincontent">Lesson Four | Video, Followed by Discussion Questions</h1>
	
    <div class="downloadbox">
	  <h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="pdf/SincereCompliment_ReflectionQuestions.pdf" target="_blank">Sincere Compliment Discussion Questions</a></li>
			<li class="pdficonlist"><a href="pdf/ItsAllFun_DiscussionQuestions.pdf" target="_blank">It's All Fun Discussion Questions</a></li>
			<li class="pdficonlist"><a href="pdf/Numbskull.pdf" target="_blank">Numbskull</a></li>
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
      <iframe width="640" height="360" src="//www.youtube.com/embed/2InkWRc1zww?rel=0" frameborder="0" allowfullscreen></iframe>
      </div></li>
      <li>Show the 2 minute video &ldquo;A Sincere Compliment&rdquo;<br />
      &ldquo;A Sincere Compliment&rdquo; tells the story of Jeremiah, a high school junior who uses social media to compliment friends and classmates to take a stand against bullying.<br />
      <em>Courtesy of good news website <a href="http://www.hooplaha.com" target="_blank">HooplaHa&mdash;Life with a Smile</a></em></li>
      <li>Follow up with discussion questions. Note: if the audience isn't comfortable with participating, the presenters can also share their perspective.
      <ul type="disc">
      <li>In this video, Jeremiah talks about the importance of giving sincere compliments. What makes a compliment sincere? Why is being sincere important?</li>
<li>Jeremiah says that often kids are made fun of because they’re “less than perfect” but since no one is perfect, that doesn’t make a lot of sense. Do you think it would be a good thing if everyone were perfect? Why or why not?</li>
<li>What makes giving compliments via social media so effective? How is it different than giving someone a compliment in person?</li>
</ul></li>
</ol>
<h3>Option B</h3>
    <ol>
      <li>Remind the audience that each of the videos that are shown, along with the discussion questions, are created by students.
      <div style="width:640px; margin:20px auto;">
<iframe width="640" height="370" src="//www.youtube.com/embed/vlKjHp-8Msw?rel=0" frameborder="0" allowfullscreen></iframe>
      </div>
      <img src="/bullying/wewillgen/images/jaclyn-kenyon.jpg" width="250" height="166" alt="jaclyn kenyon" align="right" hspace="10" /></li>
<li>Show the 3 minute video &ldquo;It's All Fun ('Til Someone Gets Hurt)&rdquo; by Jaclyn Kenyon<br />
        Jaclyn&rsquo;s vision statement is to &ldquo;Touch Lives, Change Hearts and Give Back, through the gift of music.&rdquo; She feels a responsibility to understand the current culture and world events and to write music that comes from her direct experiences and that relate to the tough and difficult issues that society is facing today. She feels her music will touch the hearts of all ages delivering a positive message. Her desire is to share her gifts and give back in any way and to help and make a difference to be a positive role model as she grows as an artist internationally.<br />
     twitter <a href="https://twitter.com/JaclynKenyon" target="_blank">https://twitter.com/JaclynKenyon</a><br />
        FB <a href="https://www.facebook.com/JaclynKenyonMusic" target="_blank">https://www.facebook.com/JaclynKenyonMusic</a><br />
        Youtube <a href="http://www.youtube.com/user/jaclynkenyn" target="_blank">www.youtube.com/user/jaclynkenyn</a><br />
        EPK  <a href="http://www.epresskitz.com/jaclynkenyon" target="_blank">www.epresskitz.com/jaclynkenyon</a><br />
      </li>
      <li>Follow up with discussion questions. Note: if the audience isn't comfortable with participating, the presenters can also share their perspective.
      <ul type="disc">
      <li>Have you ever been in a position where wanted to speak up, but weren&rsquo;t sure what to say?</li>
      <li>Why do you think people stand by and not say something?</li>
      <li>What holds people from speaking up?</li>
      <li> What if your friend was being bullied? How would you help them?</li>
</ul></li>
</ol>
<h3>Option C</h3>
      <ol>
      <li>Remind the audience that each of the videos that are shown, along with the discussion questions, are created by students.
      <div style="width:500px; margin:20px auto;">
<iframe width="500" height="375" src="http://www.schooltube.com/embed_force/6af6938231334f6f8b7e/" frameborder="0" allowfullscreen="allowfullscreen" mozallowfullscreen="mozallowfullscreen" webkitallowfullscreen="webkitallowfullscreen"></iframe>
      </div></li>
      <li>Show the 5 minute video &quot;Numbskull,&quot; by Hunter Hopewell<br />
        <em>This video was submitted to the Great American No Bull Challenge. It was the winner of the No Bull Challenge &ldquo;Documentary of the Year&rdquo; Award. Special thanks to film maker <a href="http://www.schooltube.com/video/77ff94f8d7ba4d739f09/Introduction%20by%20Hunter%20Hopewell" target="_blank">Hunter Hopewell</a> and Shawn Edgington for permission to use in &ldquo;The WE WILL Curriculum.&rdquo; The Great American NO BULL Challenge is a social action organization that offers an amazing opportunity to youth, partners and communities around the world by inspiring teens at the grassroots level to promote digital responsibility, leadership and social action using the power of education, music and the magic of filmmaking.</em></li>
        <li>Follow up with the discussion questions developed by Hunter, which are on pages 2-5 of the <a href="/bullying/wewillgen/curriculum/LessonFour/pdf/Numbskull.pdf" target="_blank">&ldquo;No Bull Classroom Presentation&rdquo; PDF</a>. Note: if the audience isn't comfortable with participating, the presenters can also share their perspective.<br />
        <br />
        Other discussion questions include:<br />
        <ul type="disc">
        <li>Is it possible for one person defend themselves &mdash; especially against a group of people?</li>
        <li>How different would this story be if no one had spoken out on his behalf?</li>
        <li>Do you think students feel helpless to prevent bullying?</li>
        <li>What can be done to empower people to feel supported to take action?</li>
        <li>Do you think bullying can affect someone&rsquo;s self-esteem beyond high school?</li>
        <li>Do you think people you see every day could be feeling this pain without you knowing?</li>
        <li>Do you think &ldquo;ignoring&rdquo; bullying &mdash; whether it&rsquo;s happening to you or someone else &mdash; is a good idea?</li>
        </ul></li>
    </ol>
  
<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/wewillgen/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
