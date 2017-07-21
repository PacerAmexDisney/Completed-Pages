

<%

Dim myMail, content, footer, message
message = ""


Function IsNotBot()
	Dim result
	result = false
	If IsDate(Request.Form("servcheck")) Then 
		If DateAdd("n", 1, Request.Form("servcheck")) < Now() Then
			result = true
		End If
	End If
	IsNotBot = result
End Function


If Request.Form("submit")="Submit Registration Information" and IsNotBot Then
	content="<h1 align=""center"">Creative Kids - Registration Information</h1>"
	content = content & "<hr /><h2 style=""color:blue"">Adult Registration Information</h2>" & VbCrLf
	content = content & "<p><strong>Name:</strong> " & Request.Form("fName") & "</p>" & VbCrLf
	content = content & "<p><strong>Address1:</strong> " & Request.Form("fAddress1") & "</p>" & VbCrLf
	content = content & "<p><strong>Address2:</strong> " & Request.Form("fAddress2") & "</p>" & VbCrLf
	content = content & "<p><strong>City:</strong> " & Request.Form("fCity") & "</p>" & VbCrLf
	content = content & "<p><strong>State:</strong> " & Request.Form("fState") & "</p>" & VbCrLf
	content = content & "<p><strong>Zip:</strong> " & Request.Form("fZip") & "</p>" & VbCrLf
	content = content & "<p><strong>Phone:</strong> " & Request.Form("fPhone") & "</p>" & VbCrLf
	content = content & "<p><strong>Phone Type:</strong> " & Request.Form("phoneType") & "</p>" & VbCrLf
	content = content & "<p><strong>Email:</strong> " & Request.Form("fEmail") & "</p>" & VbCrLf
	content = content & "<p><strong>Person Type:</strong> " & Request.Form("fPersonType") & "</p>" & VbCrLf
	content = content & "<hr /><h2 style=""color:blue"">Child Information</h2>" & VbCrLf
	content = content & "<p><strong>Number of Children:</strong> " & Request.Form("fNumChild") & "</p>" & VbCrLf
	content = content & "<p><strong>Child Names:</strong> " & Request.Form("fEligibility") & "</p>" & VbCrLf	

	footer = VbCrLf & "<p>----------------------------------------------------------------------------------------------</p>" & VbCrLf & "<p>This message was sent from http://www.pacer.org/help/creativekids/creativekidseventsend.asp</p>"
		'SET VALUES TO THE EMAIL FIELDS

		Set myMail = CreateObject("CDO.Message")
		
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
		myMail.Configuration.Fields.Update
		myMail.From = "CreativeKidsEventRegistration@pacer.org"
		myMail.To = "pacer@pacer.org; danna.mirviss@pacer.org"
		'myMail.Bcc = "jordan.bohm@pacer.org"
		myMail.Subject = "Creative Kids Event Registration"
		myMail.HTMLBody = content & footer
		myMail.Send
		Set myMail = Nothing
Else

message = "<h1>Error - Message not sent</h1><p>Please contact danna.mirviss@pacer.org if this problem persists</p>"
End If
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="robots" content="noindex,nofollow" />


<title>PACER Center - Creative Kids Contest Registration</title>

<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/style.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />
</head>

<body>
<div id="skiptocontent">
<a href="#pagecontent">Skip to main content</a>
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
Champions for Children with Disabilities</p>
<p class="pacerinfo3"><a href="http://www.pacer.org/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a>
</p>
<div id="submenu">
<h3 style="display: none;">PACER Greeting Cards Menu</h3>
<!--#include virtual="/help/creativeKids/creativesubmenu.html" -->
<script type="text/javascript">
	var currId="none";
	
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
</script>

</div><br />
<img src="images/creativeKid1.jpg" alt="" name="image1" width="250" height="333" style="margin:0px" />
</div>

<div id="maincontent">
	
	<div id="pagetoporange">
	
	<div id="breadcrumb">
	<a href="/index.asp">Home</a>/ <a href="/help/events.asp">Events</a> /  <a href="/help/creativeKids/creativekidscontest.asp">Creative Kids Contest</a> /
<h1>Creative Kids, a PACER Contest</h1>
</div>
</div>


<!--BEGIN CONTENT-->

<div id="pagecontent">
	<%If message = "" Then%>
		<h2 class="center">Your registration Information has been Sent, Thank You.</h2>
	<%
	Else
		Response.Write(message)
		'Response.Write("<p>submit = " & Request.Form("submit") )
		'Response.Write("<p>botcheck = " & isnotbot )
	%>
	<img src="/help/images/creativeLogo.gif" alt="" width="124" height="161" style="float: right; padding: 0 .5em .5em .5em;" />
	<%
	End If
	%>


<p><a href="/help/creativeKids/creativekidscontest.asp">&lt;&lt;&lt; Return to the Create Kids Event page</a></p>







<div id="pageextender" style="clear:both">&nbsp;</div>

<!--END CONTENT-->
</div>
</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>
</body>
</html>