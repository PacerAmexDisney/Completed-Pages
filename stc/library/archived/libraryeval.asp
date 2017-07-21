<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Simon Technology Center Library Feedback Survey</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../../css/style.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../../css/print.css" media="print" />

<script type="text/javascript" src="../../css/menu.js"></script>

<%
Dim myMail, content, strMsg
strMsg = ""
if request.form("Submit") = "Submit" then
	content="<p>1. Please tell us who you are: " & request.form("whoYouAre") & "</p>"
	content = content & "<p>2. Where do you live: " & request.form("whereYouLive") & "</p>"
	content = content & "<p>3. I joined the Library in order to: " & request.form("joinedLibrary") & "</p>"
	content = content & "<p>4. I have increased awareness of what Assistive Technology is available: " & request.form("awareness") & "</p>"
	content = content & "<p>5. I have been able to make more informed purchases of computer software and assistive devices because of my membership in the Library: " & request.form("purchases") & "</p>"
	content = content & "<p>6. I have experienced improved educational outcomes because of the resources in the Library: " & request.form("outcomes") & "</p>"
	content = content & "<p>7. I have experienced improved workplace performance because of the resources in the Library: " & request.form("workplace") & "</p>"
	content = content & "<p>8. I am satisfied with the quality and selection of programs and devices available in the Library: " & request.form("quality") & "</p>"
	content = content & "<p>9. Two weeks is an appropriate delivery period for Library items requested by phone or mail: " & request.form("delivery") & "</p>"
	content = content & "<p>10. Overall I have had a positive experience with the Library: " & request.form("positive") & "</p>"
	content = content & "<p>11. The Library hours are sufficient: " & request.form("hours") & "<br />"
	content = content & "What hours would be more useful: " & request.form("hoursUseful") & "</p>"
	content = content & "<p>12. Which item that you borrowed from the Library has been the most useful: " & request.form("borrowed") & "</p>"
	content = content & "<p>13. Have you purchased that item after borrowing it from the Library: " & request.form("purchasedItem") & "<br />"
	content = content & "Please explain: " & request.form("explainPurchasedItem") & "</p>"
	content = content & "<p>Additional Comments: " & request.form("comments") & "</p>"

	Set myMail = CreateObject("CDO.Message")
		
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
		myMail.Configuration.Fields.Update
	myMail.From = "stc@pacer.org"
	myMail.To = "stc@pacer.org"
	myMail.Subject = "STC Library Feedback Survey 2005"
	myMail.HTMLBody = content
	myMail.Send
	Set myMail = Nothing
	strMsg = "<p style='font-size: 120%; font-weight: bold; text-align: center'>Thank you for taking the time to fill out this evaluation!</p>"
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
<div class="stayinformed">
<h2>Stay Informed</h2>
Receive the latest PACER Center information on issues important to you. 
<a href="../../forms/index.asp">Sign up now</a>.
</div>
</div>

<div id="maincontent">

	<div id="pagetoporange">
	<div class="printemail">
<p>
<a href="https://www.facebook.com/simontechnologycenter" target="_blank">Join the STC Facebook Page</a> | 
<img src="../../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>
		
		</p>
	</div>
	<div id="breadcrumb">
	<a href="../../index.asp">Home</a> / <a href="../../pandr/index.asp">Programs &amp; Resources</a> / <a href="../index.asp">Simon Technology Center</a> / Library Feedback Survey
	
	<h1>Simon Technology Center</h1>
	
</div>
</div>

<div id="pagecontent">

<h2 class="nounderline"><a name="maincontent">STC Library Feedback Survey 2005</a></h2>


<!--BEGIN CONTENT-->

<%=strMsg%>
<%
if request.form("Submit") <> "Submit" then
%>
		<form action="" method="post">
		<p>
		1. Please tell us who you are: (check all that apply)<br />
		<input type="checkbox" name="whoYouAre" value="Parent">Parent<br />
		<input type="checkbox" name="whoYouAre" value="Consumer">Consumer<br />
		<input type="checkbox" name="whoYouAre" value="Professional">Professional
		</p>
		<p>
		2. Where do you live?<br />
		<input type="radio" name="whereYouLive" value="Metropolitan Twin Cities area">Metropolitan Twin Cities area<br />
		<input type="radio" name="whereYouLive" value="Greater Minnesota">Greater Minnesota
		</p>
		<p>
		3. I joined the Library in order to: (please check all that apply)<br />
		<input type="checkbox" name="joinedLibrary" value="make better informed decisions about AT purchasing for my self/child/student">make better informed decisions about AT purchasing for my self/child/student<br />
		<input type="checkbox" name="joinedLibrary" value="give my self/child/student access to a variety of programs">give my self/child/student access to a variety of programs<br />
		<input type="checkbox" name="joinedLibrary" value="supplement my own/child's/student's education">supplement my own/child's/student's education<br />
		<input type="checkbox" name="joinedLibrary" value="provide my self/child/student with AT in the workplace">provide my self/child/student with AT in the workplace<br />
		<input type="checkbox" name="joinedLibrary" value="provide my self/child/student with AT in the home">provide my self/child/student with AT in the home
		</p>
		<p>
		4. I have increased awareness of what Assistive Technology is available.<br />
		<span style="font-size: 80%">Disagree&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Agree</span><br />
		<input type="radio" name="awareness" value="1">1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="awareness" value="2">2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="awareness" value="3">3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="awareness" value="4">4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="awareness" value="5">5
		</p>
		<p>
		5. I have been able to make more informed purchases of computer software and assistive devices because of my membership in the Library.<br />
		<span style="font-size: 80%">Disagree&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Agree</span><br />
		<input type="radio" name="purchases" value="1">1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="purchases" value="2">2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="purchases" value="3">3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="purchases" value="4">4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="purchases" value="5">5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="purchases" value="N/A">N/A
		</p>
		<p>
		6. I have experienced improved educational outcomes because of the resources in the Library.<br />
		<span style="font-size: 80%">Disagree&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Agree</span><br />
		<input type="radio" name="outcomes" value="1">1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="outcomes" value="2">2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="outcomes" value="3">3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="outcomes" value="4">4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="outcomes" value="5">5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="outcomes" value="N/A">N/A
		</p>
		<p>
		7. I have experienced improved workplace performance because of the resources in the Library. <br />
		<span style="font-size: 80%">Disagree&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Agree</span><br />
		<input type="radio" name="workplace" value="1">1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="workplace" value="2">2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="workplace" value="3">3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="workplace" value="4">4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="workplace" value="5">5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="workplace" value="N/A">N/A
		</p>
		<p>
		8. I am satisfied with the quality and selection of programs and devices available in the Library.<br />
		<span style="font-size: 80%">Disagree&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Agree</span><br />
		<input type="radio" name="quality" value="1">1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="quality" value="2">2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="quality" value="3">3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="quality" value="4">4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="quality" value="5">5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</p>
		<p>
		9. Two weeks is an appropriate delivery period for Library items requested by phone or mail.<br />
		<span style="font-size: 80%">Disagree&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Agree</span><br />
		<input type="radio" name="delivery" value="1">1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="delivery" value="2">2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="delivery" value="3">3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="delivery" value="4">4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="delivery" value="5">5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="delivery" value="N/A">N/A
		</p>
		<p>
		10. Overall I have had a positive experience with the Library.<br />
		<span style="font-size: 80%">Disagree&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Agree</span><br />
		<input type="radio" name="positive" value="1">1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="positive" value="2">2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="positive" value="3">3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="positive" value="4">4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="positive" value="5">5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</p>
		<p>
		11. The Library hours are sufficient:<br />
		<input type="radio" name="hours" value="Yes">Yes<br />
		<input type="radio" name="hours" value="No">No. What hours would be more useful?
		<textarea rows="2" name="hoursUseful" cols="20"></textarea>
		</p>
		<p>
		12. 
		Which item that you borrowed from the Library has been the most useful?<br />
		<textarea rows="2" name="borrowed" cols="40"></textarea>
		</p>
		<p>
		13. Have you purchased that item after borrowing it from the Library?<br />
		<input type="radio" name="purchasedItem" value="Yes">Yes<br />
		<input type="radio" name="purchasedItem" value="No">No. Please explain:
		<textarea rows="2" name="explainPurchasedItem" cols="40"></textarea>
		</p>
		<p>
		Additional Comments:<br />
		<textarea rows="4" name="comments" cols="40"></textarea>
		</p>
		<p align="center">
		<strong>Thank you for taking time to complete this evaluation!</strong>
		</p>
		<p align="center">
		<input type="submit" value="Submit" name="Submit">&nbsp;
		<input type="reset" value="Reset" name="Reset">
		</p>
		</form>
<%
end if
%>

</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>