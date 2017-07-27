<%
Dim formTitle, formUrl
formTitle = "Early Childhood E-News Sign Up Form"
formUrl = "http://www.pacer.org/newsletters/ecenews/subscribe.asp"


Function ServersideValidationCheck
  Dim isValid 
  isValid = ""
 
  If Len(Request.Form("fname")) < 1 Then
  	isValid = isValid & "<p>First Name Is Missing</p>" & vbCrLf
  ElseIf Len(Request.Form("fname")) > 50 Then
  	isValid = isValid & "<p>First Name Is Too Long</p>" & vbCrLf
  End If
  
  If Len(Request.Form("lname")) < 1 Then
  	isValid = isValid & "<p>Last Name Is Missing</p>" & vbCrLf
  ElseIf Len(Request.Form("lname")) > 50 Then
  	isValid = isValid & "<p>Last Name Is Too Long</p>" & vbCrLf
  End If
  
  If Len(Request.Form("persontype")) < 1 Then
  	isValid = isValid & "<p>Person Type Field is Missing</p>" & vbCrLf
  End If
  
  If Len(Request.Form("fEmail")) < 1 Then
  	isValid = isValid & "<p>Email Missing</p>" & vbCrLf
  ElseIf Len(Request.Form("fEmail")) > 50 Then
  	isValid = isValid & "<p>Email Address Is Too Long</p>" & vbCrLf
  Elseif Not ValidateEmailAddress(Request.Form("fEmail")) Then
  	isValid = isValid & "<p>Invalid Email - " & Request.Form("fEmail") & "</p>" & vbCrLf
  End If
  
  If Len(Request.Form("cell_phone")) < 10 And Len(Request.Form("home_phone")) < 10 And Len(Request.Form("work_phone")) < 10 Then
  	isValid = isValid & "<p>A Required Phone Number is Missing</p>" & vbCrLf
  End If
  
  If Len(Request.Form("pacesetter")) > 0 Then
	  If Len(Request.Form("addresstype")) < 1 Then
		isValid = isValid & "<p>Adress Type Is Missing</p>" & vbCrLf
	  End If
	  
	  If Len(Request.Form("organization")) > 50 Then
		isValid = isValid & "<p>Organization Is Too Long</p>" & vbCrLf
	  End If
	  
	  If Len(Request.Form("address1")) < 1 Then
		isValid = isValid & "<p>Address1 Is Missing</p>" & vbCrLf
	  ElseIf Len(Request.Form("address1")) > 50 Then
		isValid = isValid & "<p>Address1 Is Too Long</p>" & vbCrLf
	  End If

	  If Len(Request.Form("address2")) > 50 Then
		isValid = isValid & "<p>Address2 Is Too Long</p>" & vbCrLf
	  End If

	  If Len(Request.Form("city")) < 1 Then
		isValid = isValid & "<p>City Is Missing</p>" & vbCrLf
	  ElseIf Len(Request.Form("city")) > 50 Then
		isValid = isValid & "<p>City Is Too Long</p>" & vbCrLf
	  End If

	  If Len(Request.Form("state")) < 1 Then
		isValid = isValid & "<p>State Is Missing</p>" & vbCrLf
	  ElseIf Len(Request.Form("state")) > 50 Then
		isValid = isValid & "<p>State Is Too Long</p>" & vbCrLf
	  End If
	  
	  If Len(Request.Form("zip")) < 5 Then
		isValid = isValid & "<p>A Valid Zip Is Missing</p>" & vbCrLf
	  ElseIf Len(Request.Form("zip")) > 10 Then
		isValid = isValid & "<p>Zip Is Too Long</p>" & vbCrLf
	  End If
  End If
  
  If isValid = "" Then
  	isValid = "True"
	'set variables
	strname="Name: " & Replace(Request.Form("fname"), "'", "&#39;") & " " & Replace(Request.Form("lname"), "'", "&#39;")
	
	' Send Mail
	content = "<p>Please add me to the  E-News newletter, E-Blast, and Workshops Email Lists in PIX.  Thanks.</p>" & VbCrLf
	content = content & strname & vbCrLf & vbCrLf
	content = content & "<p>Which best describes you? - " & Request.form("persontype") & "<br><br>" & vbCrLf
	
	content = content & "---------- Contact Info ----------" & "<br><br>" & vbCrLf
	content = content & "E-mail Address: " & Request.form("fEmail") & "<br><br>" & vbCrLf 
	content = content & "Cell Phone: " & Request.form("cell_phone") & "<br><br>" & vbCrLf 
	content = content & "Home Phone: " & Request.form("home_phone") & "<br><br>" & vbCrLf 
	content = content & "Work Phone: " & Request.form("work_phone") & "<br><br>" & vbCrLf 
	content = content & "---------- Address ----------" &  "<br><br>" & vbCrLf
	content = content & "Address Type: " & request.form("addresstype") & "<br><br>" & vbCrLf
	content = content & "Organization: " & request.form("organization") & "<br><br>" & vbCrLf
	content = content & "Address: " & request.form("address1") & "<br><br>" & vbCrLf 
	content = content & "Address2: " & request.form("address2") & "<br><br>" & vbCrLf
	content = content & "City: " & request.form("city") & "<br><br>" & vbCrLf
	content = content & "State: " & request.form("state") & "<br><br>" & vbCrLf
	content = content & "Zip: " & request.form("zip") & "<br><br>" & vbCrLf
	
	If request.form("pacesetter") = "" Then
		content = content & "-- I do NOT wish to recieve the mailed PACESETTER newsletter" & vbCrLf & vbCrLf
	Else
		content = content & "-- Sign Me Up for the PACESETTER newsletter also." & vbCrLf & vbCrLf
	End If
	
	content = content & "</p>"
	footer = vbCrLf & vbCrLf & vbCrLf & "* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *" & vbCrLf & vbCrLf & "This form came from " & formUrl

		Set myMail = CreateObject("CDO.Message")
		
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
		myMail.Configuration.Fields.Update

		myMail.From = "WebsiteSignUpForm@pacer.org"
		myMail.To = "pacer@pacer.org"
		'myMail.Bcc = "jordan.bohm@pacer.org"
		myMail.Subject = "Early Childhood E-News Sign Up"
		myMail.HTMLBody = content & footer
		myMail.Send
		Set myMail = Nothing
	
	'Clean Up Validation Items
	RemoveSessionInfo
  End If
	ServersideValidationCheck = isValid
End Function
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Subscribe for Early Childhood E-News Mailings Processing - PACER Center</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/stylenoleftright.css" media="screen, projection" />

<% ' ----------------------------------------------- FORM SECURITY ITEMS -------------------------------------------- %>
<!--#include virtual="/formsecurity/sha256.asp"-->
<!--#include virtual="/formsecurity/validate.asp"-->
<% ' ----------------------------------------------- END FORM SECURITY ITEMS -------------------------------------------- %>
<style type="text/css">
#pagecontent {
	padding-top:70px;
	min-height:400px;
}
#pagecontent p {
	padding-top:50px;
}
</style>

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
<div id="maincontent">
	<div id="pagetoporange">
	<div id="breadcrumb">
		<a href="/">Home</a> /
			    <h1>Sign Me Up For PACER's Early Childhood E-News</h1>
	</div>
</div>

<!--BEGIN CONTENT-->

<div id="pagecontent">


<%
  Dim isValidForm
  isValidForm = formValid
  
  If isValidForm = "True" Then 'Passes Bot Check
	isValidForm = ServersideValidationCheck ' run field check and send mail
  End If

  If isValidForm = "True" Then ' passes serverside checks and is sent%>
        <img class="fltrt" style="margin-right:100px; margin-top:-50px;" src="/images/email-check.png" width="272" height="239" alt=""/>
        <h2>Your sign up request has been sent. Thank You.</h2>
        <% Else %>

<h2><%=isValidForm%></h2>
<p>If this problem persists, please contact us at 


<a href="mailto:webmaster@pacer.org?subject=<%=isValidForm%>&body=Problem Submitting the <%=formTitle%> .">
webmaster@pacer.org
</a>


</p>
<%End IF%>
			
			
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>