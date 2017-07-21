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
<title>WE WILL Generation - Lesson 3 - Handout</title>
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
	var currId="lessonthree-handout";	
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
    <h1 id="maincontent">Lesson Three | Handout</h1>

	<div class="downloadbox">
	  <h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="pdf/Effective_Peer_Interventions.pdf" target="_blank">Effective Peer Interventions</a></li>
		</ul>
	</div>


	
    
    <p>Students will learn about effective ways to support those who are mistreated and about the concept of &ldquo;being there&rdquo; for someone.</p>
    <h3>Handout</h3>
    <ol>
    <li>Provide each student or group of students with the handout <a href="/bullying/wewillgen/curriculum/LessonThree/pdf/Effective_Peer_Interventions.pdf" target="_blank">&ldquo;Effective Peer Interventions, As Reported by Targeted Students&rdquo;</a></li>
      <li>Ask students to identify what five responses, according to the research, are the most effective interventions.</li>
      <li>Identify the actions that &ldquo;made the situation worse.&rdquo;</li>
  <li>Discuss reasons why these actions might be hurtful.</li>
  </ol>
  <p><em>Special thanks to Stan Davis and Charisse Nixon for permission to post their research from YouthVoice Project.</em></p>
    <h3>Additional Discussion</h3>
    <ol>
    
    <li>Tell students that they are going to come up with ways to support their peers who are targets of bullying.</li>
      <li>Divide students into groups of 4-5. Give each group several notecards. Have each group elect one person to be the &ldquo;recorder.&rdquo;</li>
      <li>Present the bullying situation to students. You can come up with unique situations, find examples online, use examples found elsewhere in this curriculum, or use one of the videos from <a href="http://www.pacer.org/bullying/video/listing.asp?category=teensagainstbullying" target="_blank">PACER&rsquo;s website</a>.</li>
      <li>Have each group come up with 2-3 possible responses to the situation and write them on their card. Give an example after the first scenario. The most effective responses to a bullying situation involve offering support to the target, so focus on those. Responses might include:
      <ul>
      <li>Invite the target to sit with me at lunch.</li>
      <li>Call the target later that night to hang out.</li>
      <li>Offer to help the target tell an adult.</li>
      </ul></li>
      <li>Collect the cards and read each response out loud. After each response, have the students raise their hands if they think it would be effective. Keep track of the responses students think are the most effective (more than 50% of the class raises their hands).</li>
      <li>Discuss the responses voted most effective by the class. Ask why they think they would work.</li>
    </ol>
<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/wewillgen/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
