<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
  Dim validationResults, errorFlag, msg
  errorFlag = false

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


Function IsBot()
	Dim result
	result = false
	If IsDate(Request.Form("servcheck")) Then 
		If DateAdd("n", 1, Request.Form("servcheck")) < Now() Then
			result = true
		End If
	End If
	BotCheck = result
End Function
  
Function Validate()
	Dim result
	result = true
	
	If IsBot Then
		result = false
		validationResults = validationResults & "<p>Anti-Bot measures have flagged your submission. Please Go Back and Re-Submit your information.</p>" & VbCrLf
	End If
	If Not (Len(Request.Form("erFullname")) > 0 ) Then
		result = false
		validationResults = validationResults & "<p>Full Name is Required</p>" & VbCrLf
	End If
	If Not (Len(Request.Form("erEmail")) > 0 ) Then
		result = false
		validationResults = validationResults & "<p>Email is Required</p>" & VbCrLf
	ElseIf Not (ValidateEmailAddress(Request.Form("erEmail"))) Then
		result = false
		validationResults = validationResults & "<p>A Valid Email Address is Required</p>" & VbCrLf
	End If
	If Not (Len(Request.Form("erSchoolName")) > 0 ) Then
		result = false
		validationResults = validationResults & "<p>School Name is Required</p>" & VbCrLf
	End If
	If Not (Len(Request.Form("erCity")) > 0 ) Then
		result = false
		validationResults = validationResults & "<p>City is Required</p>" & VbCrLf
	End If
	If Not (Len(Request.Form("erState")) > 0 ) Then
		result = false
		validationResults = validationResults & "<p>State is Required</p>" & VbCrLf
	End If
	If Not (Len(Request.Form("erCountry")) > 0 ) Then
		result = false
		validationResults = validationResults & "<p>Country is Required</p>" & VbCrLf
	End If
	If Not (Len(Request.Form("erConfirm")) > 0 ) Then
		result = false
		validationResults = validationResults & "<p>Your submission was missing the Teacher Confirmation Check Box Value</p>" & VbCrLf
	End If
	
	validationResults = validationResults & "<p>If you continue to have problems please contact <a href=""mailto:bullying411@pacer.org"">bullying411@pacer.org</a>.</p>" & VbCrLf
	
	Validate = result
End Function

If Request.Form("Submit")="Submit Information" Then	
	If Validate Then
		
		Dim fName, fEmail, fSchool, fCity, fState, fCountry 
		
		fName = Replace(Request.Form("erFullname"), "'", "''")
		fEmail = Replace(Request.Form("erEmail"), "'", "''")
		fSchool = Replace(Request.Form("erSchoolName"), "'", "''")
		fCity = Replace(Request.Form("erCity"), "'", "''")
		fState = Replace(Request.Form("erState"), "'", "''")
		fCountry = Replace(Request.Form("erCountry"), "'", "''")
		
		'ADD The Registration Record to the DB.
		Dim rs, ConStr, conn, SQL
		
		 
		ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=pacer;Password=dataAccess"
		Set rs = Server.CreateObject("ADODB.Recordset")
		
		SQL = "SELECT * FROM bullyWwgCurriculum WHERE EmailAddress = '" & fEmail & "';"
	
		rs.open SQL, ConStr
	
		If Not rs.EOF Then
			rs.close
			set rs = nothing
			'Response.Redirect("/bullying/wewillgen/educator-login.asp?verId=" & fEmail)
		Else
			
			
			SQL = "INSERT INTO bullyWwgCurriculum(EmailAddress, FullName, School, City, State, Country, DateAdded)" & _
					"VALUES('" & fEmail & "','" & fName & "','" & fSchool & "','" & fCity & "','" & fState & "','" & fCountry & "', '" & Now() & "');"
			Set conn = Server.CreateObject("ADODB.Connection")
			conn.open(ConStr)
			conn.execute SQL
			
			SQL = "SELECT * FROM bullyWwgCurriculum WHERE EmailAddress = '" & fEmail & "';"
			Set rs = conn.execute(SQL)
		
			
			If rs.EOF Then
				errorFlag = true
				msg = msg & "<h1>Error 1008: Record Not Added / Not Found.</h1>  <p>Database connection Error.</p> <p>If the problem persists please contact <a href=""mailto:bullying411@pacer.org"">bullying411@pacer.org</a> and request to be manually added for the We Will Generation Curriculum.</p>"
			End If
			
			conn.close
			Set rs = nothing
			Set conn = nothing
		End If
		
		If not errorFlag Then
			'Send The Email to Verify the Email Address.
	
			content = content & "<p style=""text-align:center;""><img alt="""" src=""http://www.pacer.org/bullying/wewillgen/images/weWillHeader_600w.png"" width=""600"" height=""262"" /></p>" & VbCrLf
			content = content & "<p>&nbsp;</p>" & VbCrLf
			content = content & "<p>This is an automatic reply to your request to register for the We Will Generation Curriculim.</p>" & VbCrLf
			content = content & "<p>&nbsp;</p>" & VbCrLf
			content = content & "<h2><a href=""http://www.pacer.org/bullying/wewillgen/educator-login.asp?verId=" & fEmail & """>Click Here to Confirm your Email Address</a></h2>" & VbCrLf
			content = content & "<p>&nbsp;</p>" & VbCrLf
			
			content = content & "<p>Or enter this url in your browser: http://www.pacer.org/bullying/wewillgen/educator-login.asp?verId=" & fEmail & "</p>" & VbCrLf
		
		
			Set myMail = CreateObject("CDO.Message")	
			myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
			myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
			myMail.Configuration.Fields.Update
			myMail.From = "WeWillGen@pacer.org"
			myMail.To = fEmail
	'		myMail.Bcc = "jordan.bohm@pacer.org"
			myMail.Subject = "Confirm Your We Will Generation Curriculum Registration"
			myMail.HTMLBody = content
			myMail.Send
			Set myMail = Nothing
			mailSent = true
		End If ' end send mail
	Else
		errorFlag = true
	End If ' end validate
Else
	Response.Redirect("/bullying/wewillgen/educator-registration.asp")
End If ' end if form submitted

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="robots" content="noindex,nofollow" />
<title>We Will Generation Educator Registration - Validation - NBPC</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link href="/bullying/wewillgen/css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/bullying/css/scrolling.css"/>

<!--#include virtual="/bullying/dynamic-head-items.html"-->

<link href="/bullying/css/eventForm.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.validationResults {
	font-weight: bold;
	font-size: 1.1em;
	padding: 20px;
	margin-bottom: 50px;
}
</style>
</head>

<body class="onecol subpage">
<div class="container"> <a id="skiptocontent" href="#maincontent">Skip to main content</a> 
	
	<!--#include virtual="/bullying/dynamic-header.html"--> 
	<!--#include virtual="/bullying/topnav.html"--> 
	
	<script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script type="text/javascript" src="/js/jquery.sticky.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#secondarynav").sticky({ topSpacing:0 });
		$('.dash').attr('aria-hidden','true');
	});
</script>

	<div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/wewillgen/">We Will Generation</a> /</div>
	<div class="content">
		<div id="secondarynav" class="whitenav" role="navigation"> <a href="/bullying/"><img id="navlogo" src="/bullying/images/styles/navLogo.png" width="40" height="40" alt="NBPC Homepage" /></a>
			<ul class="justifiedlist">
				<li id="spynav-1"><a href="/bullying/wewillgen/#wewill-1a">We Will Generation</a></li>
				<li class="dash"></li>
				<li id="spynav-2"><a href="/bullying/wewillgen/#reachout-2a">Reach Out</a></li>
				<li class="dash"></li>
				<li id="spynav-3"><a href="/bullying/wewillgen/#speakup-3a">Speak Up</a></li>
				<li class="dash"></li>
				<li id="spynav-4"><a href="/bullying/wewillgen/#curricula-4a">Classroom Curricula</a></li>
				<li class="dash"></li>
				<li id="spynav-5"><a href="/bullying/wewillgen/#stories-5a">Stories</a></li>
				<li class="dash"></li>
				<li id="spynav-6"><a href="/bullying/wewillgen/#faq-6a">FAQs</a></li>					
			</ul>
		</div>
		<div class="contentrow row-orange row-shadow">
		<div class="singlecolumn">
			<h1 id="maincontent">WE WILL Generation Curriculum </h1>
			<%=msg%>
			<% If Not errorFlag Then%>
			<p>Thank you for registering for PACER&rsquo;s WE WILL Generation Curriculum.</p>
			<p>Next  steps: </p>
			<ol>
				<li> You will receive an email</li>
				<li>Verify your email address </li>
				<li>You will be redirected to a login to access the curriculum</li>
			</ol>
			<p>Questions?  Email: <a href="mailto:WeWillGen@PACER.org">WeWillGen@PACER.org</a></p>
			<hr />
			<p><strong>A confirmation email has been sent to: <%=fEmail%></strong></p>
			<p style="color:#fff; font-size:.9em">Once you have verified your email address you will be able to access the curriculum using your email address on the <a href="/bullying/wewillgen/educator-login.asp">Log-In page</a>. <br />
			</p>
			<p>If you do not receive the email, there may be an issue with the email address you entered. You may also want to check to make sure you can receive emails from WeWillGen@pacer.org. If you continue to have issues, please contact <a href=""mailto:WeWillGen@pacer.org"">WeWillGen@pacer.org</a>.</p>
			<% Else %>
			<h2 style="color:#fff; margin-top:40px;">Error: Your request was not submitted. Please go back and Re-submit your information.</h2>
			<div class="validationResults"> <%=validationResults%> </div>
			<%End If%>
		</div>
		</div>
		<br class="clearfloat" />
		
		<!-- end .content --> 
	</div>
	<!--#include virtual="/bullying/footer.html"--> 
	<!-- end .container --></div>
</body>
</html>
