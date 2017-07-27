<%
Dim formTitle, formUrl
formTitle = "Opt Out from Family-to-Family Health E-News"
formUrl = "http://www.pacer.org/health/newsletter/optOut-health-eblasts.asp"


Function ServersideValidationCheck
  Dim isValid 
  isValid = ""
 
  strname=Replace(Request.Form("fname"), "'", "&#39;")
  strname=strname & " " & Replace(Request.Form("lname"), "'", "&#39;")
  strEmail=Request.form("fEmail")

  If Len(Request.Form("fname")) < 1 Then
  	isValid = isValid & "<p>First Name Missing</p>" & vbCrLf
  End If
  If Len(Request.Form("lname")) < 1 Then
  	isValid = isValid & "<p>Last Name Missing</p>" & vbCrLf
  End If
  if Len(Request.Form("fEmail")) < 1 Then
  	isValid = isValid & "<p>Email Missing</p>" & vbCrLf
  Elseif Not ValidateEmailAddress(Request.Form("fEmail")) Then
  	isValid = isValid & "<p>Invalid Email - " & Request.Form("fEmail") & "</p>" & vbCrLf
  End If
  
  If isValid = "" Then
  	isValid = "True"
	' Send Mail
	content = "Name: " & strname & vbCrLf & vbCrLf
	content = content & "E-mail Address: " & strEmail & vbCrLf & vbCrLf
	content = content & "Please remove me from the Health E-News check box under the Mail List Tab in PCIS"
	footer = vbCrLf & vbCrLf & vbCrLf & "* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *" & vbCrLf & vbCrLf & "This form came from " & formUrl

		Set myMail = CreateObject("CDO.Message")
		
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
		myMail.Configuration.Fields.Update

		myMail.From = "OptOut-WebsiteForm@pacer.org"
		myMail.To = "pacer@pacer.org"
		myMail.Bcc = "jordan.bohm@pacer.org"
		myMail.Subject = "Remove me to the Health E-News mail listing"
		myMail.TEXTBody = content & footer
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
<title>Opt Out from Family-to-Family Health E-News - PACER Center</title>
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
	    <a href="/">Home</a>  / <a href="/pandr/">Programs </a> / <a href="/health/newsletter/">Family-to-Family Health Information Center</a> /

	    
	    <h1>Family-to-Family Health Information Center	</h1>
	  </div>
</div>

<!--BEGIN CONTENT-->

<div id="pagecontent">


<%
  Dim isValidForm
  isValidForm = formValid
  
  If isValidForm = "True" Then
	isValidForm = ServersideValidationCheck
  End If

  If isValidForm = "True" Then%>
        <img class="fltrt" style="margin-right:100px; margin-top:-50px;" src="/images/email-check.png" width="272" height="239" alt=""/>
        <h2>Your opt out request has been sent.</h2>
<p><a href="/health/">Return the the Family-to-Family Health Information Center</a></p>
<% Else %>

<h2><%=isValidForm%></h2>
<p>If this problem persists, please contact us at 


<a href="mailto:webmaster@pacer.org?subject=<%=isValidForm%>&body=Problem Submitting the <%=formTitle%> Form.">
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