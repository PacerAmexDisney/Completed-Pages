<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim message, messagesent
messagesent = false
message = ""

If Request.Form("submit") = "Recover Password" Then
	If Request.Form("fcode") <> "2" And	Request.Form("fcode") <> "two" Then
		message = message & "<h2 class=""alert"">Anti-Bot Code is incorrect</h2>"
	Else
%>
<%
		Dim rs__MMColParam
		rs__MMColParam = "1"
		If (Request.Form("fuser") <> "") Then 
		  rs__MMColParam = Request.Form("fuser")
		End If
		%>
		<%
		Dim rs
		Dim rs_cmd
		Dim rs_numRows
		
		Set rs_cmd = Server.CreateObject ("ADODB.Command")
		rs_cmd.ActiveConnection = MM_PACER_WEB_STRING
		rs_cmd.CommandText = "SELECT event_contactperson, event_contactemail, event_contactpassword FROM dbo.bullyEvents WHERE event_contactemail = ? ORDER BY event_ID DESC" 
		rs_cmd.Prepared = true
		rs_cmd.Parameters.Append rs_cmd.CreateParameter("param1", 200, 1, 200, rs__MMColParam) ' adVarChar
		
		Set rs = rs_cmd.Execute
		rs_numRows = 0
		
		If rs.EOF Then
			message = message & "<h2 class=""alert"">Email Address Not Found</h2>"
		Else
  			Dim myMail, subject, head, clientbody, pacerbody, info, footer
  
			subject = "National Bullying Prevention Center Community Event Password Recovery" 

			head = head & "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/tr/xhtml1/DTD/xhtml1-transitional.dtd"">" & VbCrLf
			head = head & "<html><head>" & VbCrLf
			head = head & "<style type=""text/css"">" & VbCrLf
			head = head & "p {1em;}" & VbCrLf
			head = head & "a {color: #09c; text-decoration: none; font-weight: bold;}" & VbCrLf
			head = head & "a:hover, a:active {text-decoration: underline;}" & VbCrLf
			head = head & "img {border:none;}" & VbCrLf
			head = head & "h2 {color: #390;}" & VbCrLf
			head = head & "</style>" & VbCrLf
			head = head & "<title>National Bullying Prevention Center - Password Recovery</title>" & VbCrLf
			head = head & "</head>" & VbCrLf
			head = head & "<body style=""font-family: arial, sans-serif; background-color: #eee;"">" & VbCrLf
			head = head & "<table id=""main"" cellspacing=""0"" cellpadding=""20"" style=""border: solid 1px #772828; background-color: #ffffff;"">" & VbCrLf
			head = head & "<tr>" & VbCrLf
			head = head & "  <td id=""head1"" colspan=""2"" style=""color: #000000; font-size: 120%; padding: 5px; background-color: #ffffff;"" height=""105""><img border=""0"" src=""http://www.pacer.org/bullying/images/header.jpg"" width=""624"" height=""105"" alt=""National Bullying Prevention Center - The End of Bullying Begins with You"" /></td>" & VbCrLf
			head = head & "</tr>" & VbCrLf
			head = head & "" & VbCrLf
			head = head & "<tr><td colspan=""2"" style=""font-family: arial, sans-serif;"">" & VbCrLf

			clientbody = clientbody & "<p><strong>Email:</strong> " & rs("event_contactemail") & "</p>" & VbCrLf
			clientbody = clientbody & "<p><strong>Password:</strong> " & rs("event_contactpassword") & "</p>" & VbCrLf
			clientbody = clientbody & "<p>You will need this email address and password to update any information that may change at:</p>" & VbCrLf
			clientbody = clientbody & "<p><a href=""http://www.pacer.org/bullying/nbpm/eventRegistrationLogin.asp"">http://www.pacer.org/bullying/nbpm/eventRegistrationLogin.asp</a> </p>" & VbCrLf
			clientbody = clientbody & "<p>Should you have any questions regarding your submission, please contact us at (952) 838-9000 or e-mail <a href=""mailto:bullying411@pacer.org"">bullying411@pacer.org</a>.</p>" & VbCrLf
		
		
			footer = footer & "<hr />" & VbCrLf
			footer = footer & "<div id=""footerInfo"" align=""center"">" & VbCrLf
			footer = footer & "  <h3 style=""color: #666"">Event Information Submission<br />" & VbCrLf
			footer = footer & "     <img border=""0"" src=""http://www.pacer.org/images/PACER-Logo-Web.gif"" width=""430"" height=""104"" alt=""PACER Center logo: Champions for Children with Disabilities"" /></h3>" & VbCrLf
			footer = footer & "     <div> 8161 Normandale Blvd., Minneapolis, Minnesota 55437<br />" & VbCrLf
			footer = footer & "          Voice: (952) 838-9000 <font face=""Arial"">&#8226;</font> TTY: (952) 838-0190<br />" & VbCrLf
			footer = footer & "          Toll-free in Greater Minnesota: (800) 537-2237 <font face=""Arial"">&#8226;</font> Fax: (952) 838-0199<br />" & VbCrLf
			footer = footer & "          E-mail: <a href=""mailto:PACER@PACER.org"">PACER@PACER.org</a> <font face=""Arial""> &#8226;</font> Web: <a href=""http://www.PACER.org/"">www.PACER.org</a> " & VbCrLf
			footer = footer & "     </div>" & VbCrLf
			footer = footer & "</div>" & VbCrLf
			footer = footer & "</td></tr></table>" & VbCrLf
			footer = footer & "</body>" & VbCrLf
			footer = footer & "</html>" & VbCrLf

			Set myMail = CreateObject("CDO.Message")
				
			myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
			myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
			myMail.Configuration.Fields.Update
			myMail.From = "noreply-NationalBullyingPreventionCenter@pacer.org"
			myMail.To = rs("event_contactemail")
			myMail.Subject = subject 
			myMail.HTMLBody = head & clientbody & footer
				
			myMail.Send
			
			Set myMail = nothing
			messagesent = true
			message = "<h2 align=""center"">Email Sent</h2>  <p align=""center""><a href=""/bullying/nbpm/eventRegistrationLogin.asp"">Return to Login</a></p>"
  		End If
		rs.Close()
		Set rs = Nothing

	End If
End If
%>
		
	













<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="robots" content="noindex,nofollow" />

<title>National Bullying Prevention Center - Update Event Information Login</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--><style type="text/css">
#mainform{
	background:url(/bullying/images/nbpc-logo-bg.png) no-repeat left top;
	min-height:355px;
	padding:5px;
}
.emailfield{
	position:absolute;
	left:-9999em;
}
.alert{
	color:#F00;
	text-align:center;
}
</style>
</head>

<body>

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>


<!--#include virtual="/bullying/dynamic-header.html"-->
<!--#include virtual="/bullying/topnav.html"-->
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/nbpm/">National Bullying Prevention Month</a> / <a href="/bullying/nbpm/communityevents.asp">Community Events</a> /</div>

  <div class="content">
    <h1 id="maincontent">Event Information Password Recover</h1>

	<%=message%>
    
<%If Not messagesent Then%>
    <form id="mainform" action="eventRegistrationPasswordRecovery.asp" method="post">
        <p class="emailfield">You must leave this field blank <input type="text" name="email" class="email_field" tabindex="-1" /></p>
        <table cellpadding="10" cellspacing="10" align="center">
        <tr><td align="right"><label for="fuser">Email Address: </label></td><td><input name="fuser" id="fuser" type="text" size="50" tabindex="10" /></td></tr>
        <tr><td align="right"><label for="fcode">Anti-Bot code: What is one plus one?</label></td><td><input type="text" id="fcode" name="fcode" tabindex="20" /></td></tr>
        <tr><td colspan="2" align="right"><input type="submit" name="submit" value="Recover Password" tabindex="30" /></td></tr>
        <tr>
          <td colspan="2">If you are still having problems please contact us at <a href="mailto:bullying411@pacer.org">bullying411@pacer.org</a></td></tr>
        </table>
    </form>
<%End If%>
  <!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
</body>
</html>