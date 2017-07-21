<%
option explicit
Server.ScriptTimeOut = 360
If Session("user") <> "nbpc" Then
      Response.Redirect "user-login.asp"
End if

'	#####     Prevent Caching     #####

Response.Expires = 0
Response.ExpiresAbsolute = now - 1
Response.CacheControl = "no-cache"
Response.addHeader "pragma","no-cache"
Response.addHeader "cache-control","private"

'	#####     End Prevent Caching     #####

dim r, strEmail, ConStr, SQL, emailCount, mailSent
emailCount = 0
strEmail = ""
mailSent = false

ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=pacer;Password=dataAccess"
set r=server.createobject("adodb.recordset")
SQL = "SELECT emailaddress FROM bullyNewsletter;"
r.open SQL, ConStr
do until r.eof
	strEmail = strEmail & r("emailaddress") & ";"
	emailCount = emailCount + 1
	r.movenext
loop
r.close
set r = nothing

Dim myMail, subject, docHeader, header, content, footer, docFooter
'Note: some email servers kick back any email that has over 999 consecutive charecters without a carriage return

docHeader = docHeader & "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">" & VbCrLf
docHeader = docHeader & "<html xmlns=""http://www.w3.org/1999/xhtml"" xml:lang=""en"" lang=""en"">" & VbCrLf
docHeader = docHeader & "<head>" & VbCrLf
docHeader = docHeader & "<title>Reference Points</title>" & VbCrLf
docHeader = docHeader & "<meta http-equiv=""Content-Type"" content=""text/html; charset=UTF-8"" />" & VbCrLf
docHeader = docHeader & "</head>" & VbCrLf
docHeader = docHeader & "<body style=""font-family: arial, sans-serif; background-color: #eee; color: #333333; line-height:1.2"">" & VbCrLf
header = header & "<table id=""main"" cellspacing=""3"" cellpadding=""10"" style=""border: solid 1px #0099cc; background-color: #ffffff;"" width=""800"" align=""center"">" & VbCrLf
header = header & "  <tr>" & VbCrLf
header = header & "    <td id=""header"" colspan=""2"" style=""color: white; font-size: 250%; padding: 5px; background-color: #0099cc;""><img src=""http://www.pacer.org/tatra/list/images/RPtitle.png"" alt=""Reference Points"" width=""790"" height=""116"" border=""0"" /></td>" & VbCrLf
header = header & "  </tr>" & VbCrLf
header = header & "  <tr>" & VbCrLf
header = header & "    <td width=""65%"" bgcolor=""#339900"" style=""padding: 5px;"">&nbsp;</td>" & VbCrLf
header = header & "    <td width=""35%"" bgcolor=""#ff9933"" style=""padding: 5px; font-size: 80%;"">&nbsp;</td>" & VbCrLf
header = header & "  </tr>" & VbCrLf
header = header & "  <tr>" & VbCrLf
header = header & "    <td colspan=""2""><p style=""font-size: 80%; text-align: center;"">REFERENCE POINTS is an activity of TATRA, a project of PACER Center</p>" & VbCrLf
'header = header & "      <h1 style=""color: #333333; text-align: center; padding: 5px; margin: 0;"">" & VbCrLf
'header = header & Request.Form("subject") & VbCrLf
'header = header & "</h1>" & VbCrLf

content = Request.Form("content") & VbCrLf

footer = footer & "<div id=""footer"" style=""margin-top:25px; padding-top:10px; border-top: 1px dashed #f93; font-size: 85%;"">" & VbCrLf
footer = footer & "        <p style=""padding-top: 10px;""> <strong>REFERENCE POINTS</strong> is administered by <a href=""http://www.pacer.org/"">PACER Center</a> as a technical assistance activity of the TATRA Project. The TATRA Project is funded by the Rehabilitation Services Administration. </p>" & VbCrLf
footer = footer & "        <p> <a href=""http://www.pacer.org/tatra/list/index.asp"">SUBSCRIBE</a> to <strong>REFERENCE POINTS</strong>. </p>" & VbCrLf
footer = footer & "        <p> <a href=""http://www.pacer.org/tatra/list/maildel.asp"">UNSUBSCRIBE</a> from <strong>REFERENCE POINTS</strong>. </p>" & VbCrLf
footer = footer & "        <p> Readers are invited to send information about new resources on secondary education, transition and vocational rehabilitation topics to <a href=""mailto:tatra@pacer.org"">tatra@pacer.org</a>. </p>" & VbCrLf
footer = footer & "        <p> Reference Points received initial support from the <a href=""http://www.ncset.org/"">National Center on Secondary Education and Transition</a>. Visit their web site for a wealth of information related to secondary education and transition for youth with disabilities. </p>" & VbCrLf
footer = footer & "        <p style=""margin-bottom: 0; padding-bottom: 0;""> <strong>Note:</strong> There are no copyright restrictions on this document. However, please credit the source and support of federal funds when copying all or part of this material. </p>" & VbCrLf
footer = footer & "        <p style=""padding: 10px; text-align:right""> <img border=""0"" src=""http://www.pacer.org/tatra/list/images/PACERLogosmall.jpg"" width=""200"" height=""43"" alt=""PACER Center Logo: Champions for Children with Disabilities"" /> </p>" & VbCrLf
footer = footer & "      </div></td>" & VbCrLf
footer = footer & "  </tr>" & VbCrLf
footer = footer & "</table>" & VbCrLf
docFooter = docFooter & "</body>" & VbCrLf
docFooter = docFooter & "</html>""" & VbCrLf

subject="REFERENCE POINTS: " & Request.Form("subject") 	
If Request.Form("sendType") = "test" Then
	subject = subject & " - (TEST)"
End If
'------------------------------------------------------- SEND MAIL ----------------------------------
If request.Form("submit") = "Submit" And (Request.Form("sendType") = "test" Or Request.Form("sendType") = "send") Then
	Set myMail = CreateObject("CDO.Message")
	myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
	myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
	myMail.Configuration.Fields.Update
	myMail.From = "bully411@pacer.org"
	myMail.To = "bully411@pacer.org"
	'myMail.To = "jordan.bohm@pacer.org;andrea.moore@pacer.org"
	myMail.ReplyTo = "bully411@pacer.org"
	If Request.Form("sendType") = "send" Then
		'myMail.Bcc = strEmail
	End If
	If Request.Form("sendType") = "test" Then
		myMail.Bcc = "jordan.bohm@pacer.org;bully411@pacer.org"
	End If
	myMail.Subject = subject
	myMail.HTMLBody = docHeader & header & content & footer & docFooter
	myMail.Send
	mailSent = true
	strEmail = ""
	Set myMail = Nothing
End If
%>
<!DOCTYPE html 
     PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>

<title>Bullying Prevention Newsletter Mailer</title>
<meta name="robots" content="noindex,nofollow" />
</head>
<body style="padding:10px;">
<h1 align="center">Bullying Prevention Newsletter</h1>
<p style="font-weight:bold; text-align:center">Email Count: <%=emailCount%></p>
<p><a href="mailcheck.asp">Check for existing email addresses</a></p>
<table cellspacing="10">
<tr>
<td valign="top" align="left">
<form method="post" action="mailsend.asp">
Subject:<br />
<input name="subject" size="40" tabindex="3" value="<%=Server.HtmlEncode(Request.Form("subject"))%>" /><br /><br />
Content: <br />    
<textarea cols="40" name="content" rows="20" tabindex="4"><%=Server.HtmlEncode(Request.Form("content"))%></textarea>        
<div align="center"> 
    <label style="margin-right:20px;">
      <input type="radio" name="sendType" value="view" id="sendType_0" checked="checked" />
      View</label>
    <label  style="margin-right:20px;">
      <input type="radio" name="sendType" value="test" id="sendType_1" />
      Test</label>

    <label>
      <input type="radio" name="sendType" value="send" id="sendType_2" />
      Send</label>
<br /><br />
<input type="submit" value="Submit" name="submit" tabindex="5" />
</div>
</form> 
</td><td><div id="testView" style="width:800px; padding:20px; border:5px solid #999; font-family: arial, sans-serif; line-height:1.2">
<%If mailSent Then%>
<h1 style="color:red; text-align:center">
<%
  If Request.Form("sendType") = "test" Then
	Response.Write("Test ")
  End If
%>
Email Sent</h1>
<%Else
  Response.Write(header & content & footer)
End If%>
</div></td></tr></table>
</body>       
</html>