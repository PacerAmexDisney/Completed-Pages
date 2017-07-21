<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%

'63.148.2.42 - PACER
'172.251.177.26 - Old California
'108.47.15.48 - old california
'71.160.233.199 - california office (5/15/2017)
'REMOTE_ADDR server variable is not viable under cloudflare proxy, Request.ServerVariables("HTTP_CF_CONNECTING_IP") is used instead unless software is added to restore the REMOTE_ADDR.
'

If Request.ServerVariables("HTTP_CF_CONNECTING_IP") <> "63.148.2.42" And _
Request.ServerVariables("HTTP_CF_CONNECTING_IP") <> "172.251.177.26" And _
Request.ServerVariables("HTTP_CF_CONNECTING_IP") <> "2605:e000:21dd:ca00:197a:f142:1c6e:8017" And _
Request.ServerVariables("HTTP_CF_CONNECTING_IP") <> "2605:e000:21dd:ca00:2cd5:4f05:9cb4:8193" And _
Request.ServerVariables("HTTP_CF_CONNECTING_IP") <> "71.160.233.199" And _
Request.ServerVariables("HTTP_CF_CONNECTING_IP") <> "108.47.15.48" _

Then
	Response.Write("Page Not Found <br><br><br>")
	'Response.Write("Connecting IP: " & Request.ServerVariables("HTTP_CF_CONNECTING_IP"))
Else


Dim msg, ConStr, conn, SQL, formValid
Dim formEmail
formEmail = "invalid"
ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=pacer;Password=dataAccess"

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


If Request.Form("Submit")="Submit" Then	
	If Len(Request.Form("emailaddress")) > 0 Then
		formEmail = replace(Request.Form("emailaddress"), "'", "''")
	End If

	
	If ValidateEmailAddress(formEmail) Then
		Dim foundInList
		foundInList = false
		'CHECK TO SEE IF THEY ARE ALEADY IN THE Petition LIST
		Set conn = Server.CreateObject("ADODB.Connection")
			
			'CHECK TO SEE IF THEY ARE ALEADY IN THE NEWSLETTER LIST
			foundInList = false
			Set rs = Server.CreateObject("ADODB.Recordset")
			'No Need to escape the single quotes in this query since email has already been validated and can't contain a single quote char.
			SQL = "SELECT * FROM bullyNewsletter WHERE emailaddress = '" & formEmail & "';"
	
			rs.open SQL, ConStr
	
			If Not rs.EOF Then
				msg = msg & "<p>ALREADY SIGNED UP to recieve the Bullying Prevention Newsletter.</p>"
			Else				
				msg = msg & "<p>Added to newsletter</p>"
				SQL = "INSERT INTO bullyNewsletter(FirstName, LastName, EmailAddress)" & _
						"VALUES('Manual','Addition','" & formEmail & "');"
				Set conn = Server.CreateObject("ADODB.Connection")
				conn.open(ConStr)
				conn.execute SQL		
				conn.close
				Set conn = Nothing
			End If
		msg = msg & "<p style=""color:green; font-weight:bold"">Finished Processing: - " & formEmail & "</p>"
	Else
		msg = msg & "<p>Invalid Email Format: " & formEmail & "</p>"
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
.alert{
	color:red;
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
    <h1 id="maincontent" style="text-align:center">National Bullying Prevention Center Newsletter <br />
Manual Additions</h1>

<%
If Request.Form("Submit") = "Submit" Then
	Response.Write(msg)
End If
%>
  
  <form name="newsletter-signup" action="manual-add-newsletter.asp" method="post">
    <table cellspacing="10" align="center">      
      <tr><td><label for="emailaddress">Email Address</label></td><td>
      <input type="text" size="50" name="emailaddress" <%If Not formValid Then Response.Write("value=""" & Request.Form("emailaddress") & """ ")%>/></td></tr>
      <tr><td>&nbsp;</td><td align="right"><input type="submit" value="Submit" name="submit" /></td></tr></table>
    
  </form>

  
<!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
<%End If%>