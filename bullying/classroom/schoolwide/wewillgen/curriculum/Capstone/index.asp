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
<title>WE WILL Generation - Capstone</title>
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
	var currId="capstone";	
	var showTree = "capstone-sub";
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
    <h1 id="maincontent">Capstone</h1>

	<p>Congratulations, you have completed the curriculum! </p>
    <p>Now, you can leave a lasting impression on your audience through activities designed to make them think about their actions as part of &ldquo;The We Will Generation,&rdquo; including:</p>
    <ol>
      <li>Providing an overview of the lessons (see information below)</li>
      <li><a href="/bullying/wewillgen/curriculum/Capstone/capstone-activity.asp" target="_blank">Completing the &ldquo;I Will . . .&rdquo; activity</a></li>
      <li><a href="/bullying/wewillgen/curriculum/Capstone/capstone-pledge.asp" target="_blank">Taking &ldquo;The We Will Generation&rdquo; pledge</a></li>
      <li><a href="/bullying/wewillgen/curriculum/Capstone/capstone-evaluation.asp" target="_blank">Asking them to complete an evaluation</a></li>
    </ol>
    <h3>Overview of the Five Lessons</h3>
      <p>Share with the students that they have a role to address bullying when they see it, support those affected by bullying, and work to create a more positive atmosphere in their school. Encourage students to hold themselves and each other to that commitment. Remind them that they have the power to change their school.</p>
  <p><strong>Definition</strong><br />
      Accurately identify bullying and be aware of the dynamics of bullying at your school; integrate &ldquo;above-the-line&rdquo; behaviors into your everyday life. </p>
    <p><strong>Individuality</strong><br />
      Acknowledge and celebrate aspects of individuality in yourself and others. Resist pressures to change or to stop doing what you love. </p>
    <p><strong>Being There </strong><br />
      Be willing to reach out to a person being bullied; you might feel powerless, but you aren&rsquo;t. It takes courage, but students have enormous power to prevent and stop the mistreatment of peers.</p>
    <p><strong>Build Them Up</strong><br />
      Unkind words can cause a lot of damage &ndash; but kind words can help heal. Your words have power; be aware of how you use them. </p>
    <p><strong>Turn a 180</strong><br />
      Remember that you can turn a situation around before it&rsquo;s too late. Positive actions can go a long way toward undoing the harm done by negative actions. </p>
    <p><strong>Capstone</strong><br />
      You&rsquo;ve made a commitment to doing something to end bullying; now hold yourself to it. Celebrate your accomplishments and praise those of others. YOU have the power to change your school! </p>
      
          <p><img src="/css/printicon.gif" width="15" height="14" alt="" /> <a href="/bullying/wewillgen/curriculum/Capstone/pdf/Capstone-Background.pdf" target="_blank">Print-friendly version</a></p>

      
<!-- end .content -->
  </div>
  <!--#include virtual="/bullying/wewillgen/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
