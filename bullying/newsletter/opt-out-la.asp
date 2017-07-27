<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>

<%
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
	
If Request.Form("Submit") = "Submit" And StrComp(Request.Form("remove"), "remove", vbTextCompare) = 0 And ValidateEmailAddress(Request.Form("emailaddress"))Then
	dim conn, strMail, SQL, ConStr		
	content = "<p>Unsubscribe Request - Check if in PIX and Unsubscribe from the 'LA NBPC News' Subscription</p>" & VbCrLf
	content = content & "<p>Email: " & Request.Form("emailaddress") & "</p>"
	content = content & "<p style=""font-size:.8em;""><em>Sent From: http://www.pacer.org/bullying/newsletter/opt-out-la.asp</em></p>" & VbCrLf
	content = content & "<p>&nbsp;</p>" & VbCrLf


	Set myMail = CreateObject("CDO.Message")	
	myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
	myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
	myMail.Configuration.Fields.Update
	myMail.From = "unsubscriberequest@pacer.org"
	myMail.To = "bullying411@pacer.org"
	'myMail.Bcc = "jordan.bohm@pacer.org"
	myMail.Subject = "Check if in PIX and Unsubscribe from the 'LA NBPC News' Subscription"
	myMail.HTMLBody = content
	myMail.Send
	Set myMail = Nothing
	mailSent = true
End If
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="robots" content="noindex,nofollow" />

<title>National Bullying Prevention Center Newsletter Unsubscribe</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />

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
    <h1 id="maincontent">LA Edition - National Bullying Prevention Center Newsletter</h1>
<%
Dim showForm
showForm = true
If Request.Form("Submit") = "Submit" And StrComp(Request.Form("remove"), "remove", vbTextCompare) = 0 Then%>
<p><strong><%=strMail%>
</strong> has been removed from the LA Edition - Bullying Prevention Newsletter Mail List.</p>
<%
showForm = false
ElseIf Request.Form("Submit") = "Submit" And StrComp(Request.Form("remove"), "remove", vbTextCompare) <> 0 Then %>

<p style="color:red">Error - Confirmation text was not entered correctly.</p>

<%End If%>

<%If showForm Then%>
<form name="unsubscribe" action="opt-out-la.asp" method="post">
<table align="center" cellspacing="10">
<tr><td colspan="2" align="center"><h3>Unsubscribe</h3></td></tr>
<tr><td align="right">
<label for="emailaddress">Email Address</label></td><td><input type="text" name="emailaddress" size="50" /></td></tr>
<tr><td>
<label for="remove">Type "remove" here to confirm this request.</label></td><td><input type="text" name="remove" size="20" /></td></tr>
<tr><td>&nbsp;</td><td align="right"><input type="submit" name="Submit" value="Submit" /></td></tr></table>
</form>
<%End If%>

  <!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
