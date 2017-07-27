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



dim rs, strEmail, ConStr, SQL, emailExists, fEmail
emailExists = "none"
fEmail = Request.Form("emailaddr")

If Request.Form("submit") = "Submit" & Len(fEmail) < 50 Then
	ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=pacer;Password=dataAccess"
	set rs=server.createobject("adodb.recordset")
	SQL = "SELECT * FROM bullyNewsletter WHERE emailaddress = '" & fEmail & "';"
	rs.open SQL, ConStr
	If Not rs.eof Then
		emailExists = "found"
	Else
		emailExists = "notfound"
	End If
	rs.close
	set rs = nothing
End If


%>
<!DOCTYPE html 
     PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>

<title>Reference Points Mailer</title>
<meta name="robots" content="noindex,nofollow" />
</head>
<body style="padding:10px; text-align:center">
<h1>Bullying Newsletter: Mail List Check</h1>
    <p style="text-align:left">
<a href="/mail.asp">&lt;&lt;&lt; Return to Previous Page</a>
	</p>
<%
If Len(fEmail) >= 50 Then
	Response.Write("<p>Email invalid - contact Site Admin if the problem persists.</p>")
Else
	Select Case emailExists
		Case "none"
			%><p style="font-size:1.5em;">&nbsp;</p><%
		Case "found"
			%><p style="color:green; font-size:1.5em;">	<%=fEmail%> is currently in the mail list</p><%
		Case "notfound"
			%><p style="color:red; font-size:1.5em;">	<%=fEmail%> is not found in the mail list</p><%
		Case else
			%><p style="color:black; font-size:1.5em;">	ERROR - Contact Site Admin about this problem.</p><%
	End Select
End If
%>

<form method="post" action="mailcheck.asp" style="margin-top:60px;">
<label for="emailaddr">Email:</label>&nbsp;&nbsp;<input name="emailaddr" id="emailaddr" size="40" tabindex="1" />&nbsp;&nbsp;<input type="submit" value="Submit" name="submit" tabindex="5" />
</form>

</body>       
</html>