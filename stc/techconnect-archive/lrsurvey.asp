<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Simon Technology Center: Tech Connect Initiative Long Range Follow-Up Survey</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../../css/leftnavigation.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../../css/print.css" media="print" />

<script type="text/javascript" src="../../css/menu.js"></script>
<%
Dim myMail, content, footer, hidden
hidden = request.form("hidden")
	
if hidden = "hi" then

	content = "<p>Since participating in the Tech Connect Initiative, our organization is doing a better job of providing technology access to people with disabilities in the community.<br /><strong> " & request.form("one") & "</strong><br /><br />"
	content = content & "As a result of the training and resources provided through the Tech Connect Initiative, our staff members are more knowledgeable about assistive technology and how it can help people with disabilities.<br /><strong>" & request.form("two") & "</strong><br /><br />"
	content = content & "Approximately how many individuals have used the assistive technology your organization acquired through the Tech Connect Initiative?<br /><strong>" & request.form("three") & "</strong><br /><br />"
	content = content & "Please share any stories about individuals with disabilities who benefited from the assistive technology available at your organization. Explain how it helped them participate in activities such as using the computer, accessing the Internet, gaining skills, finding employment, learn something new, etc.<br /><strong>" & request.form("stories") & "</strong></p>"

	footer="<br /><br /><br />* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *<br /><br />This form came from http://www.pacer.org/stc/techconnect/lrsurvey.asp."

	Set myMail = CreateObject("CDO.Message")
		
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
		myMail.Configuration.Fields.Update
		
	myMail.From = "STC@PACER.org"
	myMail.To = "acerreta@pacer.org"
'	myMail.To = "stephanie.rosso@pacer.org"
	myMail.Subject = "Tech Connect Survey"
	myMail.HTMLBody = content
'	myMail.TEXTBody = content & footer
	myMail.Send
	Set myMail = Nothing

	Response.Redirect "http://www.pacer.org/forms/thankyou.asp?topic=techconnect"
end if
%>

</head>
<body>
<div id="skiptocontent">
<a href="#maincontent">Skip to main content</a>
</div>

<div id="wrapper">

<div id="main">

<div id="header">
	<div>			<!--#include virtual="/googleSearchBox.htm"-->
      <!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>
<div id="rightBar">
<p class="pacerinfo">
<strong>PACER Center<br />
952-838-9000</strong>
</p>
<p class="pacerinfo2">
Champions for Children with Disabilities
</p>
<p class="pacerinfo3">
<a href="http://www.pacer.org/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a>
</p>

</div>

<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<a href="https://www.facebook.com/simontechnologycenter" target="_blank">Join the STC Facebook Page</a> | 
<img src="../../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="../../index.asp">Home</a> / <a href="../../pandr/index.asp">Programs &amp; Resources</a> / <a href="../index.asp">Simon Technology Center</a> 
/ <a href="index.asp">Tech Connect</a> /
<h1>Simon Technology Center</h1>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">STC - Navigation Menu</h2>
<!--#include virtual="/stc/leftNav.htm"-->
</div>

<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="projects";
	var currSubId="subproj-tc";
	// any Subtree that I want to Display
	var showTree = "stc-subproj";
	
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
	if (document.getElementById(currSubId)){
		document.getElementById(currSubId).className = "page";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "treemenu") {
			//Any additional subTrees that you want to skip should be added here. like this (subTrees[i] != subTree1 || subTrees[i] != subTree2)
			if (subTrees[i].id != showTree) {
				subTrees[i].className = "treemenuhidden";
			}
		}
	}
</script>
<div id="maincontent">

<div id="pagecontent">


<h2 class="nounderline"><a name="maincontent">Tech Connect Initiative Long Range Follow-Up Survey</a></h2>


<!--BEGIN CONTENT-->
<p style="margin-top: 1em;">Please select the answer which applies best.</p>

<form action="lrsurvey.asp" method="post">
<input type="hidden" name="hidden" id="hidden" value="hi" />
<ol>
	<li>
		Since participating in the Tech Connect Initiative, our organization is doing a better job of providing technology access to people with disabilities in the community.<br />
		<input type="radio" name="one" id="onesa" value="Strongly Agree" /><label for="onesa">Strongly agree</label><br />
		<input type="radio" name="one" id="onea" value="Agree" /><label for="onea">Agree</label><br />
		<input type="radio" name="one" id="onen" value="Neutral" /><label for="onen">Neutral</label><br />
		<input type="radio" name="one" id="oned" value="disagree" /><label for="oned">Disagree</label><br />
		<input type="radio" name="one" id="oness" value="Strongly disagree" /><label for="onesd">Strongly disagree</label>
	</li>
	<li>
		As a result of the training and resources provided through the Tech Connect Initiative, our staff members are more knowledgeable about assistive technology and how it can help people with disabilities.<br />
		<input type="radio" name="two" id="twosa" value="Strongly Agree" /><label for="twosa">Strongly agree</label><br />
		<input type="radio" name="two" id="twoa" value="Agree" /><label for="twoa">Agree</label><br />
		<input type="radio" name="two" id="twon" value="Neutral" /><label for="twon">Neutral</label><br />
		<input type="radio" name="two" id="twod" value="disagree" /><label for="twod">Disagree</label><br />
		<input type="radio" name="two" id="twoss" value="Strongly disagree" /><label for="twosd">Strongly disagree</label>
	</li>
	<li>
		Approximately how many individuals have used the assistive technology your organization acquired through the Tech Connect Initiative?<br />
		<input type="radio" name="three" id="ufifteen" value="Under 15" /><label for="ufifteen">Under 15</label><br />
		<input type="radio" name="three" id="fifteenforty" value="15-40" /><label for="fifteenforty">15-40</label><br />
		<input type="radio" name="three" id="fortyonehundred" value="40-100" /><label for="fortyonehundred">40-100</label><br />
		<input type="radio" name="three" id="onehundredplus" value="100 or more" /><label for="onehundredplus">100 or more</label><br />
		<input type="radio" name="three" id="dontknow" value="Don't know" /><label for="dontknow">Don't know</label>
	</li>
	<li>
		Please share any stories about individuals with disabilities who benefited from the assistive technology available at your organization. Explain how it helped them participate in activities such as using the computer, accessing the Internet, gaining skills, finding employment, learn something new, etc.<br /><br />
		<textarea name="stories" id="stories" cols="50" rows="15"></textarea>
	</li>
</ol>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Submit" name="submit" id="submit" />

<p><br />
Thank you for taking the time to complete this survey!
</p>
</form>
<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>