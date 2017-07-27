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
<title>WE WILL Generation - Capstone - Activity</title>
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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/wewillgen/">We Will Generation</a> / <a href="/bullying/wewillgen/curriculum/">Curriculum</a> / <a href="/bullying/wewillgen/curriculum/capstone/"> Capstone</a>
  
  <div id="loginname">
  Logged in as:&nbsp;&nbsp;&nbsp;<strong><%=Session("fname")%></strong>
  </div>
  </div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/wewillgen/curriculum/loginnav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="capstone-activity";	
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
  
    <h1>Capstone | Activity &ldquo;I will . . . &rdquo;</h1>
	
<!--    <div class="downloadbox">
	  <h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="#">item 1</a></li>
			<li class="wordiconlist"><a href="#">item 2</a></li>
			<li class="ppticonlist"><a href="#">item 3</a></li>
		</ul>
	</div>
 -->

		<div class="materials">
	<h2>Materials:</h2>
    <ul>
      <li>Sheets of paper for each student</li>
      <li>Markers </li>
    </ul></div>
    <p><strong>Goal: </strong>Inspire students to continue acting against bullying and leave them with concrete lessons from the program.</p>
    <h3>Activity:</h3>
    <ol>
      <li>Tell students that they will each come up with a statement that begins with &ldquo;I will&hellip;&rdquo; that describes what they are committing to do to end bullying. Encourage students to think carefully about what they commit to; these are not empty words but rather a serious commitment to action. </li>
      <li>You may wish to brainstorm ideas for commitments with the students. Remind them that their commitments should be positive (&ldquo;I will&rdquo; rather than &ldquo;I will not&rdquo;), realistic, specific, and measurable (meaning they will know if they&lsquo;ve succeeded). Suggestions include:
      <ol type="a">
        <li>I will invite students sitting alone to join me at lunch. </li>
        <li>I will say one nice thing to someone outside of my friend group every day. </li>
        <li>I will be more respectful of people&rsquo;s personal space. </li>
      </ol></li>
      <li>Give each student a piece of white 8 &frac12; x11 paper.
      <ol type="a">
        <li>Alternate idea: Have students add their &ldquo;I Will . . . &rdquo; statement to a large sized banner.</li>
      </ol></li>
      <li>Ask them to neatly write their commitment on the sheet of paper, beginning with &ldquo;I will . . . &rdquo; </li>
      <li>If there&rsquo;s time, you may want to invite students to decorate their commitment in their own unique style. </li>
      <li>Invite students to read their commitments out loud to the class. Use your own judgment on whether to ask for volunteers or request that all students read their commitment aloud. Consider time, attention level, and comfort level of the class. Having all students participate holds them accountable to their fellow classmates; on the other hand, students may be embarrassed, especially if their commitment involves addressing their own bullying behavior.</li>
      <li>Decide with the class or with the teacher how to display the commitments. Options include:
      <ol type="a">
      <li>Mounting them on colored paper and display them on the wall. </li>
      <li>Students taping them neatly to their own desks, as a visual reminder throughout the day.&nbsp;&nbsp; </li>
      <li>Students holding the sign, having their picture taken, and displaying the picture in the classroom or hallway.</li>
    </ol></li></ol>

        <p><img src="/css/printicon.gif" width="15" height="14" alt="" /> <a href="/bullying/wewillgen/curriculum/Capstone/pdf/i-will-activity.pdf" target="_blank">Print-friendly version</a></p>

    
<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/wewillgen/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
