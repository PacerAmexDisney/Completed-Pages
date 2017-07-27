<%
Dim myMail, subject, content, importance, bodyformat, fnumber, mailformat, hidden, i, footer, strsubject, strfname, strlname, straddress, strcity, strstate, strzip, strhphone, strEmail, strpersontype, intEmailLength, comment, commentlength
if Request.Form("sentval") = "true" then
	
	content = content & "<p><strong>Error Report from Bullying Video</strong></p>" & vbcrlf
	content = content & "<p>Video: " & Request.Form("video") & "</p>" & vbcrlf
	content = content & "<p>Url: " & Request.Form("url") & "</p>" & vbcrlf
	content = content & "<p>Referer: " & Request.Form("referer") & "</p>" & vbcrlf
	content = content & "<p>Description: " & Request.Form("description") & "</p>" & vbcrlf
	content = content & "<p>&nbsp;</p>" & vbcrlf
	
	Set myMail = CreateObject("CDO.Message")
		
	myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
	myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
	myMail.Configuration.Fields.Update

	myMail.From = "ErrorReport@pacer.org"
	myMail.To = "jordan.bohm@pacer.org"
	myMail.Subject = "Error on " & Request.Form("video")
	myMail.HTMLBody = content
	myMail.Send
	Set myMail = Nothing

	Response.Write("true")
	'Response.Write(content)
Else
	Response.Write("false")
End If
%>















