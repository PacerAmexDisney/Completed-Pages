<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim rs, selectedID
Dim rs_cmd
selectedID = 0
If IsNumeric(Request.QueryString("org_id")) Then 
	selectedID = cInt(Request.QueryString("org_id"))
End If

'Create Providers Recordset for current information
Set rs_cmd = Server.CreateObject ("ADODB.Command")
rs_cmd.ActiveConnection = MM_PACER_WEB_STRING
rs_cmd.CommandText = "SELECT * FROM dbo.Housing_Providers LEFT JOIN (dbo.Housing_Categories RIGHT JOIN dbo.Housing_ProvidersCategories ON dbo.Housing_Categories.ID = dbo.Housing_ProvidersCategories.category_ID) ON dbo.Housing_Providers.ID = dbo.Housing_ProvidersCategories.provider_ID WHERE dbo.Housing_Providers.ID = " & selectedID & "; " 
rs_cmd.Prepared = true
Set rs = rs_cmd.Execute


Dim myMail, subject, content
If Not rs.EOF Then
content = content & "<h2 align=""center"">Housing Fair Provider Information Update</h2>" & vbCrLf

content = content & "<table><tr>" & vbCrLf
content = content & "		<td valign=""top"" style=""padding-right:5px;"" width=""50%"">" & vbCrLf
content = content & "		<h3>Current Information</h3>" & vbCrLf
content = content & "		<table id=""currInfo"" cellpadding=""5"">" & vbCrLf
content = content & "			<tr><td><strong>ID:</strong></td><td>" & selectedID & "</td></tr>" & vbCrLf
content = content & "			<tr><td><strong>Name:</strong></td><td>" & (rs.Fields.Item("name").Value) & "</td></tr>" & vbCrLf
content = content & "			<tr><td><strong>Category:</strong></td><td id=""c_category"">" & Request.Form("formCurrentCategories") & "</td></tr>" & vbCrLf
content = content & "			<tr><td><strong>Website URL:</strong></td><td id=""c_url"">" & (rs.Fields.Item("url").Value) & "</td></tr>" & vbCrLf
content = content & "			<tr><td><strong>Displayed Contact Person:</strong></td><td id=""c_contact_person"">" & (rs.Fields.Item("contact_person").Value) & "</td></tr>" & vbCrLf
content = content & "			<tr><td><strong>Displayed Contact Email:</strong></td><td id=""c_email"">" & (rs.Fields.Item("email").Value) & "</td></tr>" & vbCrLf
content = content & "			<tr><td><strong>Phone:</strong></td><td id=""c_phone"">" & (rs.Fields.Item("phone").Value) & "</td></tr>" & vbCrLf
content = content & "			<tr><td><strong>Company Description:</strong></td><td id=""c_description"">" & (rs.Fields.Item("description").Value) & "</td></tr>" & vbCrLf
content = content & "			<tr>" & vbCrLf
content = content & "			  <td><strong>Hidden Contact Person:</strong><br /></td><td id=""c_hidden_contact_person"">" & (rs.Fields.Item("hidden_contact_person").Value) & "</td></tr>" & vbCrLf
content = content & "			<tr>" & vbCrLf
content = content & "			  <td><strong>Hidden Email:</strong><br /></td><td id=""c_hidden_email"">" & (rs.Fields.Item("hidden_email").Value) & "</td></tr>" & vbCrLf
content = content & "		</table>" & vbCrLf


content = content & "</td><td width=""50%"" valign=""top"">" & vbCrLf
content = content & "<h3> Information to Update</h3>" & vbCrLf
content = content & "  <table id=""currInfo2"" cellpadding=""5"">" & vbCrLf
content = content & "      <tr><td>&nbsp;</td><td>&nbsp;</td></tr>" & vbCrLf
If Len(Request.Form("u_allok")) > 0 Then
content = content & "      <tr><td><strong>Information Verified: </strong></td><td>" & Request.Form("u_allok") & "</td></tr>" & vbCrLf
End If
If Len(Request.Form("u_name")) > 0 Then
content = content & "      <tr><td><strong>Name:</strong></td><td>" & Request.Form("u_name") & "</td></tr>" & vbCrLf
End If
If Len(Request.Form("u_category")) > 0 Then
content = content & "      <tr><td><strong>Category:</strong></td><td>" & Request.Form("u_category") & "</td></tr>" & vbCrLf
End If
If Len(Request.Form("u_url")) > 0 Then
content = content & "      <tr><td><strong>Website URL:</strong></td><td>" & Request.Form("u_url") & "</td></tr>" & vbCrLf
End If
If Len(Request.Form("u_contact_person")) > 0 Then
content = content & "      <tr><td><strong>Displayed Contact Person:</strong></td><td>" & Request.Form("u_contact_person") & "</td></tr>" & vbCrLf
End If
If Len(Request.Form("u_email")) > 0 Then
content = content & "      <tr><td><strong>Displayed Contact Email:</strong></td><td>" & Request.Form("u_email") & "</td></tr>" & vbCrLf
End If
If Len(Request.Form("u_phone")) > 0 Then
content = content & "      <tr><td><strong>Phone:</strong></td><td>" & Request.Form("u_phone") & "</td></tr>" & vbCrLf
End If
If Len(Request.Form("u_description")) > 0 Then
content = content & "      <tr><td><strong>Description:</strong></td><td>" & Request.Form("u_description") & "</td></tr>" & vbCrLf
End If
If Len(Request.Form("u_hidden_contact_person")) > 0 Then
content = content & "      <tr><td><strong>Hidden Contact Person:</strong><br /></td><td>" & Request.Form("u_hidden_contact_person") & "</td></tr>" & vbCrLf
End If
If Len(Request.Form("u_hidden_email")) > 0 Then
content = content & "      <tr><td><strong>Hidden Email:</strong><br /></td><td>" & Request.Form("u_hidden_email") & "</td></tr>" & vbCrLf
End If
If Len(Request.Form("u_note")) > 0 Then
content = content & "      <tr><td><strong>Note:</strong><br /></td><td>" & Request.Form("u_note") & "</td></tr>" & vbCrLf
End If

content = content & "  </table>" & vbCrLf
  
content = content & "  </td></tr></table>" & vbCrLf
					
footer = vbCrLf & vbCrLf & vbCrLf & "* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *" & vbCrLf & vbCrLf & "<br />This form came from http://www.pacer.org/housing/housingfair/organization-update-form.asp"
					
	Set myMail = CreateObject("CDO.Message")
		
	myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
	myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
	myMail.Configuration.Fields.Update
	myMail.From = "pacer@pacer.org"
	myMail.To = "jordan.bohm@pacer.org"
	myMail.CC = "HousingUpdates@pacer.org; pacer@pacer.org; Jenna.Hanson@PACER.org"
	myMail.Subject = "PACER Housing Resource/Provider information update"
	myMail.HTMLBody = content & footer
	myMail.Send
	Set myMail = Nothing
End If						
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="robots" content="noindex,nofollow">
<title>Housing Fair Information Sent</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/stylenoleftright.css" media="screen, projection" />
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
<div id="maincontent">

	<div id="pagetoporange">
	<div class="printemail">
		<p>
		<img src="/css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print();">Print page</a>
		
		</p>
	</div>
	<div id="breadcrumb">
	<a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> / <a href="/housing/">Housing</a> /
	
	<h1 class="nounderline">Housing Fair Website Information Update/Confirmation</h1>
	
</div>
</div>

<div id="pagecontent">

<img src="/housing/housingfair/images/information-symbol.png" width="150" height="150" alt="" align="right" />
<h2>Your information has been Sent.
  Thank You </h2>
<p>&nbsp;</p>
<!--<h1><a style="text-decoration:underline" href="https://pacer.ejoinme.org/MyPages/HousingProviderRegistration/tabid/309040/Default.aspx">Register now for this years Housing Fair</a></h1>-->
<p style="margin-top:20px;"><a href="/housing/">Continue to the Housing website</a></p>
<div id="pageextender" style="clear:both">&nbsp;</div>
<!--END CONTENT-->
</div>
</div>
</div>


<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>
<%
rs.Close()
Set rs = Nothing
%>
