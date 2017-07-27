<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
Dim myMail, content, msg, ValidateCode, mailSent
mailSent = false

Function FormValidate
	Dim result
	result = true
	msg = ""
	If cDate(Request.Form("tCode")) > DateAdd("s", -3, now()) Then
		msg = msg & "<p class=""alert"">Anti Spam Bot Code has flagged your submission.  Please review the fields and resubmit the form.</p>"
	End If
	If Not Len(Request.Form("FName")) > 0 And Len(Request.Form("FName")) <= 40 Then
		result = false
		msg = msg & "<p class=""alert"">First Name is required (40 char max)</p>"
	End If
	If Not Len(Request.Form("LName")) > 0 And Len(Request.Form("LName")) <= 40 Then
		result = false
		msg = msg & "<p class=""alert"">Last Name is required (40 char max)</p>"
	End If
	If Not Len(Request.Form("emailaddress")) > 0 And Len(Request.Form("emailaddress")) <= 50 Then
		result = false
		msg = msg & "<p class=""alert"">Email is required (50 char max)</p>"
	End If
	If Len(Request.Form("emailaddress")) > 0 And Len(Request.Form("emailaddress")) <= 50 Then
		If Not ValidateEmailAddress(Request.Form("emailaddress")) Then
			result = false
			msg = msg & "<p class=""alert"">This is not a Valid Email Format (50 char max)</p>"
		End If
	End If
	FormValidate = result
End Function

Function ValidateEmailAddress(sEmail)
  ValidateEmailAddress = false
  Dim regEx, retVal
  Set regEx = New RegExp

  ' Create regular expression:
  regEx.Pattern ="^[\w-\.]{1,}\@([\da-zA-Z-]{1,}\.){1,}[\da-zA-Z-]{2,3}$"

  ' Set pattern:
  regEx.IgnoreCase = true

  ' Set case sensitivity.
  retVal = regEx.Test(sEmail)

  ' Execute the search test.
  If not retVal Then
    exit function
  End If

  ValidateEmailAddress = true
End Function

Function GenerateValidationCode
	Dim vCode, sTxt
	sTxt = Request.Form("LName") & Request.Form("emailaddress") & Request.Form("FName")
	vCode = 0
	For i = 1 to Len(sTxt)
		vCode = vCode + Asc(Mid(sTxt, i, 1))
	Next 
	vCode = vCode * 8.345
	vCode = Int(vCode)
	vCode = Hex(vCode)
	GenerateValidationCode = "df4rLFv" & vCode & "v4456zkd"
End Function

If Request.Form("Submit")="Submit" Then	
	If FormValidate Then
		msg = "<h3 style=""color:green"">A confirmation e-mail has been sent to " & request.form("emailaddress") & ".</h3><p>If you do not receive the email, there may be an issue with the email address you entered. You may also want to check to make sure you can receive emails from bullying411@pacer.org. If you continue to have issues, please contact <a href=""mailto:bullying411@pacer.org"">bullying411@pacer.org</a>.</p>"

		content = "<p>This is an automatic reply to your request to subscribe for the Bullying Prevention E-News.</p>" & VbCrLf
		content = content & "<p>&nbsp;</p>" & VbCrLf
		content = content & "<h2><a href=""http://www.pacer.org/bullying/newsletter/addemail.asp?f=" & Request.Form("FName") & "&l=" & Request.Form("LName") & "&e=" & Request.Form("emailaddress") & "&v=" & GenerateValidationCode & """>Click Here to Confirm your Subscription</a></h2>" & VbCrLf
		content = content & "<p>&nbsp;</p>" & VbCrLf
		content = content & "<p>PACER'S ""Bullying Prevention E-News"" is an electronic newsletter that offers you a new way to receive all of the latest information from PACER's National Bullying Prevention Center.</p>" & VbCrLf
	
	
		Set myMail = CreateObject("CDO.Message")	
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
		myMail.Configuration.Fields.Update
		myMail.From = "bullying411@pacer.org"
		myMail.To = request.form("emailaddress")
'		myMail.Bcc = "jordan.bohm@pacer.org"
		myMail.Subject = "Confirm Your Bullying Prevention E-News Subscription"
		myMail.HTMLBody = content
		myMail.Send
		Set myMail = Nothing
		mailSent = true
	End If
End If
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center Newsletter Sign Up</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.content{
	background:url(/bullying/images/nbpc-logo-bg.png) no-repeat 593px 285px;
}
</style>
</head>

<body>

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>


<!--#include virtual="/bullying/dynamic-header.html"-->
<!--#include virtual="/bullying/topnav.html"-->
  <script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/newsletter/">Bullying Prevention E-News</a> /</div>

  <div class="content">
    <a href="/bullying/newsletter/"><img src="/bullying/images/arrow-left-orange.png" alt="back" width="75" height="50" style="float:left" /></a>
    <h1 id="maincontent" style="text-align:center">National Bullying Prevention Center Newsletter</h1>
<table cellpadding="10" cellspacing="10"><tr>
<td width="50%">
<p>Want to know the most recent  information on PACER&rsquo;s efforts to prevent bullying? Subscribe today to receive monthly  updates.<strong> </strong></p>
<p>  PACER&rsquo;s  National Bullying Prevention Center (NBPC) is making a difference by uniting,  engaging, and educating communities nationwide to prevent bullying. With the  support of teachers, parents, students, and celebrities, PACER&rsquo;s creative,  relevant, and interactive resources are making an impact.</p>
<p>  PACER&rsquo;s NBPC has a lot to offer and you&rsquo;ll want to stay informed.</p>
<p><strong>You&rsquo;ll receive current information including:</strong></p>
<ul>
  <li>Practical tools you can use to help prevent  bullying where you live </li>
  <li>Inspiring stories on students around the country  who are taking action to prevent bullying</li>
  <li>Breaking news about upcoming events like Run,  Walk, Roll Against Bullying, Unity Day, and more</li>
  <li>New resources available from PACER&rsquo;s National  Bullying Prevention Center (NBPC)</li>
  <li>Notice on updates to the PACERTeensAgainstBullying.org  and PACERKidsAgainstBullying.org websites</li>
  <li>The latest on the work of our partner  organizations</li>
</ul></td><td valign="top">

<%

If Request.Form("Submit") = "Submit" Then
	Response.Write(msg)
End If
%>

<%If Not mailSent Then%>

  <h2 class="centered">Subscribe Now</h2>
  <form name="newsletter-signup" action="opt-in.asp?ts=Submit" method="post">
    <table cellspacing="10" align="center"><tr><td>
      <label for="FName">First Name</label></td><td>
      <input type="text" size="30" name="FName" /></td></tr>
     
      <tr><td><label for="LName">Last Name</label></td><td>
      <input type="text" size="30" name="LName" /></td></tr>
      <tr><td><label for="emailaddress">Email Address</label></td><td>
      <input type="text" size="50" name="emailaddress" /></td></tr>
      <tr><td>&nbsp;</td><td align="right"><input type="submit" value="Submit" name="submit" /></td></tr></table>
    
  </form>
<%End If%>

  
  </td></tr></table>
<!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
