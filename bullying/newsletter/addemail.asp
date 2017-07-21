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

Function GenerateValidationCode
	Dim vCode, sTxt
	sTxt = Request.QueryString("l") & Request.QueryString("e") & Request.QueryString("f")
	vCode = 0
	For i = 1 to Len(sTxt)
		vCode = vCode + Asc(Mid(sTxt, i, 1))
	Next 
	vCode = vCode * 8.345
	vCode = Int(vCode)
	vCode = Hex(vCode)
	GenerateValidationCode = "df4rLFv" & vCode & "v4456zkd"
End Function

' ----------------------------- VALIDATE INPUT ---------------------------------

Dim msg, errorFlag
msg = "<h1 style=""color:red; margin-top:60px;"">"
errorFlag = false
If Not Len(Request.QueryString("f")) > 0 And Len(Request.QueryString("f")) <= 40 Then
	errorFlag = true
	msg = msg & "Error 1001: "
ElseIf Not Len(Request.QueryString("l")) > 0 And Len(Request.QueryString("l")) <= 40 Then
	errorFlag = true
	msg = msg & "Error 1002: "
ElseIf Not Len(Request.QueryString("e")) > 0 And Len(Request.QueryString("e")) <= 50 Then
	errorFlag = true
	msg = msg & "Error 1003: "
ElseIf Not ValidateEmailAddress(Request.QueryString("e")) Then
	errorFlag = true
	msg = msg & "Error 1004: "
ElseIf Not Len(Request.QueryString("v")) > 15 Then
	errorFlag = true
	msg = msg & "Error 1005: "
ElseIf Not Request.QueryString("v") = GenerateValidationCode Then
	errorFlag = true
	msg = msg & "Error 1006: "
End If

If errorFlag Then
	msg = msg & "Corrupt Query String Detected.</h1>  <p>If you recieve this message, make sure that you input the entire URL that was emailed to you. If the problem persists please contact <a href=""mailto:bullying411@pacer.org"">bullying411@pacer.org</a> and request to be manually added to the Mailing List.</p>"
End If


Dim rs, ConStr, conn, SQL
If Not errorFlag Then 
	ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=pacer;Password=dataAccess"
	Set rs = Server.CreateObject("ADODB.Recordset")
	'No Need to escape the single quotes in this query since email has already been validated and can't contain a single quote char.
	SQL = "SELECT * FROM bullyNewsletter WHERE emailaddress = '" & Request.QueryString("e") & "';"

	rs.open SQL, ConStr

	If Not rs.EOF Then
		errorFlag = true
		msg = "<h3 align=""center"">You have been signed up to recieve the Bullying Prevention E-News.</h3>"
	End If
	rs.close
	set rs = nothing
End If

If Not errorFlag Then 
	Dim fname, lname
	fname = replace(Request.QueryString("f"), "'", "''")
	lname = replace(Request.QueryString("l"), "'", "''")
	SQL = "INSERT INTO bullyNewsletter(FirstName, LastName, EmailAddress)" & _
			"VALUES('" & fname & "','" & lname & "','" & Request.QueryString("e") & "');"
	Set conn = Server.CreateObject("ADODB.Connection")
	conn.open(ConStr)
	conn.execute SQL
	
	SQL = "SELECT * FROM bullyNewsletter WHERE emailaddress = '" & Request.QueryString("e") & "';"
	Set rs = conn.execute(SQL)

	
	If rs.EOF Then
		errorFlag = true
		msg = msg & "Error 1008: Record Not Added / Not Found.</h1>  <p>If you recieve this message, make sure that you input the entire URL that was emailed to you. If the problem persists please contact <a href=""mailto:bullying411@pacer.org"">bullying411@pacer.org</a> and request to be manually added to the Mailing List.</p>"
	End If
	
	conn.close
	Set rs = nothing
	Set conn = nothing
End If
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center</title>
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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/newsletter/">Newsletter</a> /</div>

  <div class="content">
    <h1 id="maincontent">National Bullying Prevention Center Newsletter</h1>


<%
If errorFlag Then
	Response.Write(msg)
Else
%>

<h2 style="color:green; text-align:center; margin-top:60px;">You Have Been Sucessfully Added to the Bullying Prevention Mailing List.</h2>
<p style="text-align:center; margin-top:25px;">Thank You for your interest in the National Bullying Prevention Center.</p>

<%
End If
%>


  <!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
