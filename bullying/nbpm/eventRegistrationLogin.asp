<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
  Dim rsMMColParam, rs, rs_cmd

  rsMMColParam = "none"
  If (Request.Form("fuser") <> "") Then 
  	rsMMColParam = Trim(Request.Form("fuser"))
  End If
  
  Dim showForm, message
  showForm = true
  
  Function PasswordValid()
  	Dim result 
	result = false
	Do Until rs.EOF
		If Trim(rs("event_contactpassword")) = Trim(Request.Form("fpass")) Then
			rs_cmd.CommandText = "UPDATE dbo.bullyEventsLogin " & _
								"SET login_attempts = 0, login_time = '" & Now() & "' " & _
								"WHERE login_username = '" & rsMMColParam & "';"
			rs_cmd.Execute
			Session("user") = rsMMColParam
			result = true
			Exit Do
		End If
		rs.MoveNext
	Loop
	PasswordValid = result
  End Function
	
  'the next info update page will set the session variable userlog if one is not detected before redirecting back to
  'the loggin page and add the st=login querystring. So if the user still doesn't have a session stored, they need to turn cookies on.
  
  
  If Request.QueryString("st") = "login" Then 
	If IsNull(Session("userlog")) Then
		Session("userlog") = "false"
		message = "<p>You Must enable Cookies in order to Log In to this page</p>"
	End If
  Else
  	If IsNull(Session("userlog")) Then
  		Session("userlog") = "false"
  	End If  
  End If
  
  'Log In Attempt Submitted Check it out.
  If Request.Form("submit") = "Log In" Then 
	If Request.Form("email") <> "" Then
  		Session("userlog") = "false"
		showForm = false
		message = message & "<p>Anti-bot messures have detected an invalid entry.</p>"
	Else  
		Set rs_cmd = Server.CreateObject ("ADODB.Command")
		rs_cmd.ActiveConnection = MM_PACER_WEB_STRING
		rs_cmd.CommandText = "SELECT * FROM bullyEvents LEFT JOIN bullyEventsLogin ON event_contactemail = login_username WHERE event_contactemail = '" & rsMMColParam & "' ORDER BY event_ID DESC" 

		Set rs = rs_cmd.Execute
	
		If rs.EOF Then
			message = message & "<p>Email Address Not Found.</p>"
			'check how many attempts have been made on this username
		Else 
			If IsNull(rs("login_username")) Then
				rs_cmd.CommandText = "INSERT INTO dbo.bullyEventsLogin (login_username, login_attempts, login_time)" & _
								"VALUES ('" & rsMMColParam & "', 0, '" & Now() & "');"
				rs_cmd.Execute
				'check if they have more than 4 attempts in the last 5 minutes
			ElseIf cInt(rs("login_attempts")) > 4 And DateAdd("n", 5, rs("login_time")) > Now() Then 
  				Session("userlog") = "false"
				showForm = false
				message = message & "<p>This Account has been Locked. Please try back in 10 minutes.</p>"
			End If
			'check if it is a valid password
			If showForm Then
				If PasswordValid() Then
					Session("userlog") = "valid"
					'password invalid increase attempt count
				Else
					rs_cmd.CommandText = "UPDATE dbo.bullyEventsLogin " & _
								"SET login_attempts = login_attempts + 1, login_time = '" & Now() & "' " & _
								"WHERE login_username = '" & rsMMColParam & "';"
					rs_cmd.Execute
					message = message & "<p>Invalid Password</p>"
  					Session("userlog") = "false"
				End If
			End If
		End If
		rs.Close()
		Set rs = Nothing
	End If
  End If
  
  If Session("userlog") = "valid" Then
  	Response.Redirect("/bullying/nbpm/eventRegistrationInfoUpdate.asp")
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
.alertmessage{
	color:red;
	font-size:1.1em;
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
    <h1 id="maincontent">Event Information Update Login</h1>
    <p><a href="/bullying/nbpm/communityevents.asp">Return to the Community Events Page</a></p>
<%If showForm Then%>
<form id="mainform" action="eventRegistrationLogin.asp" method="post">
    <p class="emailfield">You must leave this field blank <input type="text" name="email" class="email_field" tabindex="-1" /></p>
	<table cellpadding="10" cellspacing="10" align="center">
    <tr><td><label for="fuser">Email Address: </label></td><td><input name="fuser" id="fuser" type="text" size="50" tabindex="10" /></td></tr>
    <tr><td><label for="fpass">Password: </label></td><td><input name="fpass" id="fpass" type="password" size="50" tabindex="20" /></td></tr>
    <tr><td colspan="2" align="center" class="alertmessage"><%=message%></td></tr>
	<tr><td colspan="2" align="right"><input type="submit" name="submit" value="Log In" tabindex="30" /></td></tr>
    <tr><td colspan="2"><a href="eventRegistrationPasswordRecovery.asp">I forgot my password</a></td></tr>
    </table>
</form>
<%Else%>
<div class="alertmessage"><%=message%></div>
<%End If%>



  <!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
