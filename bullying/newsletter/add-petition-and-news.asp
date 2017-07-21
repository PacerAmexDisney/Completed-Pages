<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
'REMOTE_ADDR server variable is not viable under cloudflare proxy, Request.ServerVariables("HTTP_CF_CONNECTING_IP") is used instead unless software is added to restore the REMOTE_ADDR.
'
If Request.ServerVariables("HTTP_CF_CONNECTING_IP") <> "63.148.2.42" Then
	Response.Write("Page Not Found")
Else


Dim msg, ConStr, conn, SQL, formValid
Dim formFirstName, formLastName, formAge, formState, formEmai, formContac, formFrom
formValid = false
ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=pacer;Password=dataAccess"


Function FormValidate
	Dim result
	result = true
	msg = ""
	If Not Len(Request.Form("FName")) > 0 And Len(Request.Form("FName")) <= 40 Then
		result = false
		msg = msg & "<p class=""alert"">First Name is required (40 char max)</p>"
	End If
	If Not Len(Request.Form("LName")) > 0 And Len(Request.Form("LName")) <= 40 Then
		result = false
		msg = msg & "<p class=""alert"">Last Name is required (40 char max)</p>"
	End If
	If Len(Request.Form("emailaddress")) > 0 Then
		If Not ValidateEmailAddress(Request.Form("emailaddress")) Or Len(Request.Form("emailaddress")) > 50 Then
			result = false
			msg = msg & "<p class=""alert"">This is not a Valid Email Format (50 char max)</p>"
		End If
	End If
	If Not Len(Request.Form("age")) > 0 Then
		result = false
		msg = msg & "<p class=""alert"">Age is required</p>"
	ElseIf Not IsNumeric(Request.Form("age")) Then
		result = false
		msg = msg & "<p class=""alert"">Age must be a number</p>"
	ElseIf Not (cInt(Request.Form("age")) <= 99 And cInt(Request.Form("age")) > 0) Then
		result = false
		msg = msg & "<p class=""alert"">Age must be between 1 and 99</p>"
	End If
	
	If Not Len(Request.Form("state")) > 0 And Len(Request.Form("state")) <= 40 Then
		result = false
		msg = msg & "<p class=""alert"">State is required (40 char max)</p>"
	End If

	FormValidate = result

End Function

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
	formValid = FormValidate
	If formValid Then
		formFirstName = replace(Request.Form("FName"), "'", "''")
		formLastName = replace(Request.Form("LName"), "'", "''")
		formAge = replace(Request.Form("age"), "'", "''")
		formState = replace(Request.Form("state"), "'", "''")
		formEmail = ""
		If Len(Request.Form("emailaddress")) > 0 Then
			formEmail = replace(Request.Form("emailaddress"), "'", "''")
		End If
		formContact = "yes"
		formFrom = "manual"
		Dim foundInList
		foundInList = false
		If formEmail <> "" Then
			'CHECK TO SEE IF THEY ARE ALEADY IN THE Petition LIST
			Set rs = Server.CreateObject("ADODB.Recordset")
			'No Need to escape the single quotes in this query since email has already been validated and can't contain a single quote char.
			SQL = "SELECT * FROM bullyPetition WHERE email = '" & formEmail & "';"
	
			rs.open SQL, ConStr
	
			If Not rs.EOF Then
				foundInList = true
				msg = msg & "<p>ALREADY On Petition, petition sign-up skipped.</p>"
			End If
			
			rs.close
			set rs = nothing
		End If
		
		
		Set conn = Server.CreateObject("ADODB.Connection")
		If Not foundInList  Then
			msg = msg & "<p>Added to petition</p>"
			SQL = "INSERT INTO bullyPetition (firstName, lastName, age, state, email, joinDate, contactByEmail, signUpFrom) VALUES ('" & formFirstName & "', '" & formLastname & "', " & formAge & ", '" & formState & "', '" & formEmail & "', '" & date & "', '" & formContact & "', '" & formFrom & "')"
			conn.open(ConStr)
			conn.execute SQL
			conn.close
			set conn = Nothing
		End If
		
		
		'Only Add to newsletter if we have an email address
		If formEmail = "" Then
			msg = msg & "<p>No Email -- Not added to newsletter</p>"
		Else
			
			'CHECK TO SEE IF THEY ARE ALEADY IN THE NEWSLETTER LIST
			foundInList = false
			Set rs = Server.CreateObject("ADODB.Recordset")
			'No Need to escape the single quotes in this query since email has already been validated and can't contain a single quote char.
			SQL = "SELECT * FROM bullyNewsletter WHERE emailaddress = '" & formEmail & "';"
	
			rs.open SQL, ConStr
	
			If Not rs.EOF Then
				foundInList = true
				msg = msg & "<p>ALREADY SIGNED UP to recieve the Bullying Prevention E-News.</p>"
			End If
			
			rs.close
			set rs = nothing
	
			
			If Not foundInList Then
				msg = msg & "<p>Added to newsletter</p>"
				SQL = "INSERT INTO bullyNewsletter(FirstName, LastName, EmailAddress)" & _
						"VALUES('" & formFirstName & "','" & formLastName & "','" & formEmail & "');"
				Set conn = Server.CreateObject("ADODB.Connection")
				conn.open(ConStr)
				conn.execute SQL		
				conn.close
				Set conn = Nothing
			End If
		End If
		
		msg = msg & "<p style=""color:green; font-weight:bold"">Finished Processing: " & formFirstName & " - " & formEmail & "</p>"

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
    <h1 id="maincontent" style="text-align:center">National Bullying Prevention Center Newsletter And Digital Petition Manual Additions</h1>

<%
If Request.Form("Submit") = "Submit" Then
	Response.Write(msg)
End If
%>
  
  <form name="newsletter-signup" action="add-petition-and-news.asp" method="post">
    <table cellspacing="10" align="center"><tr><td>
      <label for="FName">First Name</label></td><td>
      <input type="text" size="30" name="FName" <%If Not formValid Then Response.Write("value=""" & Request.Form("FName") & """ ")%>/></td></tr>
     
      <tr><td><label for="LName">Last Name</label></td><td>
      <input type="text" size="30" name="LName" <%If Not formValid Then Response.Write("value=""" & Request.Form("LName") & """ ")%>/></td></tr>
      <tr><td><label for="emailaddress">Email Address</label></td><td>
      <input type="text" size="50" name="emailaddress" <%If Not formValid Then Response.Write("value=""" & Request.Form("emailaddress") & """ ")%>/></td></tr>
      <tr><td><label for="age">Age</label></td><td>
      <input type="text" size="10" name="age" <%If Not formValid Then Response.Write("value=""" & Request.Form("age") & """ ")%>/></td></tr>
      <tr><td><label for="state">State/City</label></td><td>
      <input type="text" size="50" name="state" <%If Not formValid Then Response.Write("value=""" & Request.Form("state") & """ ")%>/></td></tr>
      <tr><td>&nbsp;</td><td align="right"><input type="submit" value="Submit" name="submit" /></td></tr></table>
    
  </form>

  
<!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
<%End If%>