<%
Dim formTitle, formUrl, fFirstname, fLastname
formTitle = "Opt Out of Inspiring Possibilities Mailing list"
formUrl = "http://www.pacer.org/transition/news/optOut-inspiring-possibilities.asp"

Function ServersideValidationCheck
	Dim isValid 
	isValid = ""
	 
	fFirstname = Replace(Request.Form("fname"), "'", "&#39;")
	fLastname = Replace(Request.Form("lname"), "'", "&#39;")
	strname = fFirstname & " " & fLastname 
	strEmail = Replace(Request.form("fEmail"), "'", "&#39;")

	If Len(Request.Form("fname")) < 1 Then
		isValid = isValid & "<p>First Name Missing</p>" & vbCrLf
	End If
	If Len(Request.Form("lname")) < 1 Then
	  	isValid = isValid & "<p>Last Name Missing</p>" & vbCrLf
	End If
	If Len(Request.Form("fEmail")) < 1 Then
	  	isValid = isValid & "<p>Email Missing</p>" & vbCrLf
	Elseif Not ValidateEmailAddress(Request.Form("fEmail")) Then
	  	isValid = isValid & "<p>Invalid Email - " & Request.Form("fEmail") & "</p>" & vbCrLf
	End If
	  
	If isValid = "" Then
	  	isValid = "True"
		' Send Mail
		content = "Name: " & strname & vbCrLf & vbCrLf
		content = content & "<p>E-mail Address: " & strEmail & "</p>" & vbCrLf & vbCrLf
		content = content & "<p>Please remove my Subscription from the Inspiring Possibilities (Transition) Mailing List under the Mail List Tab in PIX</p>"
		footer = vbCrLf & vbCrLf & vbCrLf & "<p>* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *</p>" & vbCrLf & vbCrLf & "<p>This form came from " & formUrl & "</p>"

		Set myMail = CreateObject("CDO.Message")
		
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
		myMail.Configuration.Fields.Update

		myMail.From = "OptOut-WebsiteForm@pacer.org"
		myMail.To = "pacer@pacer.org"
		myMail.Bcc = "jordan.bohm@pacer.org"
		myMail.Subject = "Remove me from Inspiring Possibilities (Transition) Mailing List."
		myMail.HTMLBody = content & footer
		myMail.Send
		Set myMail = Nothing
		
		'Clean Up Validation Items
		RemoveSessionInfo

		'Update Database record with unsubscribe info
		Dim rs, ConStr, conn, SQL, foundInList
		ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=pacer;Password=dataAccess"
		foundInList = false
		'CHECK TO SEE IF THEY ARE ALEADY IN THE Petition LIST
		Set conn = Server.CreateObject("ADODB.Connection")
		
		'CHECK TO SEE IF THEY ARE ALEADY IN THE UNSUBSCRIBE LIST
		foundInList = false
		Set rs = Server.CreateObject("ADODB.Recordset")
		'No Need to escape the single quotes in this query since email has already been validated and can't contain a single quote char.
		SQL = "SELECT * FROM transUnsubscribes WHERE email = '" & strEmail & "';"

		rs.open SQL, ConStr

		If rs.EOF Then
			SQL = "INSERT INTO transUnsubscribes(FirstName, LastName, Email)" & _
					"VALUES('" & fFirstname & "','" & fLastname & "','" & strEmail & "');"
			Set conn = Server.CreateObject("ADODB.Connection")
			conn.open(ConStr)
			conn.execute SQL		
			conn.close
			Set conn = Nothing
		End If
	End If
	ServersideValidationCheck = isValid
End Function
%>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Opt Out Processing - Inspiring Possibilities Email Updates - National Parent Center on Transition and Employment</title>

<!-- for Facebook -->          
<meta property="og:url" content="http://www.pacer.org/transition/news/optIn-inspiring-possibilities.asp" />

<meta name="robots" content="noindex,nofollow" />

<link rel="icon" href="http://www.pacer.org/transition/favicon.ico" />
<link href="/transition/css/style.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/transition/dynamic-head-items.html"-->

<% ' ----------------------------------------------- FORM SECURITY ITEMS -------------------------------------------- %>
<!--#include virtual="/formsecurity/sha256.asp"-->
<!--#include virtual="/formsecurity/validate.asp"-->
<% ' ----------------------------------------------- END FORM SECURITY ITEMS -------------------------------------------- %>
<style type="text/css">
#pagecontent {
	padding-top:70px;
	min-height:400px;
}
#pagecontent p {
	padding-top:50px;
}
</style>

</head>

<body>

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>


<!--#include virtual="/transition/dynamic-header.html"-->
<!--#include virtual="/transition/topnav.html"-->
  <script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>
  <div class="breadcrumb"> <a href="/transition/">Home</a> /  <a href="/transition/news/optIn-inspiring-possibilities.asp">Newsletter Sign Up</a> /</div>


  <div class="content" id="maincontent">

   <h1>Remove me from the Inspiring Possibilities mailing list</h1>
<%
  Dim isValidForm
  isValidForm = formValid
  
  If isValidForm = "True" Then
	isValidForm = ServersideValidationCheck
  End If

  If isValidForm = "True" Then%>
        <img class="fltrt" style="margin-right:100px; margin-top:-25px;" src="/images/email-check.png" width="272" height="239" alt=""/>
        <h2>Your opt out request has been sent.</h2>

<% Else %>

<h2><%=isValidForm%></h2>
<p>If this problem persists, please contact us at 


<a href="mailto:webmaster@pacer.org?subject=<%=isValidForm%>&body=Problem Submitting the <%=formTitle%> Form.">
webmaster@pacer.org
</a>


</p>
<%End IF%>

    <!-- end .content -->
  <br class="clearfloat" />
</div>
<!--#include virtual="/transition/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
