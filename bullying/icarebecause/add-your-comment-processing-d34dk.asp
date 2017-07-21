<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<% ' ----------------------------------------------- FORM SECURITY ITEMS -------------------------------------------- %>
<!--#include virtual="/formsecurity/sha256.asp"-->
<!--#include virtual="/formsecurity/validate.asp"-->
<% ' ----------------------------------------------- END FORM SECURITY ITEMS -------------------------------------------- %>


<%
Dim ConStr, conn, sql, strFname, strState, strAge, strComment, strMonth, strDay, strDate, myMail, content, strOnline, i, number, hidden
Dim isValidForm

isValidForm = formValid
  
If isValidForm = "True" Then 'Passes Bot Check
	strFname = Replace(request.form("fname"), "'", "&#39;")
	strState = Replace(request.form("state"), "'", "&#39;")
	strAge = Replace(request.form("age"), "'", "''")
	strComment = Request.form("comment")
	strOnline = "no"
	
	if len(month(date)) = 1 then
		strMonth = "0" & month(date)
	else
		strMonth = month(date)
	end if
	if len(day(date)) = 1 then
		strDay = "0" & day(date)
	else
		strDay = day(date)
	end if
			
	strDate = year(date) & strMonth & strDay
	
	strComment = Replace(strComment, "'", "&#39;")
	strComment = Replace(strComment, """", "&quot;")
	
	ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"

	Set conn = Server.CreateObject("ADODB.Connection")
	sql = "INSERT INTO [icarebecause]([bullysupport_fname], [bullysupport_state], [bullysupport_age], [bullysupport_comment], [bullysupport_online], [bullysupport_date])" & _
			"VALUES('" & strFname & "','" & strState & "','" & strAge & "','" & strComment & "','" & strOnline & "','" & strDate & "');"
	conn.open(ConStr)
	conn.execute sql
	conn.close
	set conn = nothing
	
	content="<p>A submission for the 'I Care Because...' feature has been added. <a href='http://www.pacer.org/bullying/icarebecause/bullysupportreview.asp'>Please review</a> and either approve the comment for posting or delete the submission.</p>"
	
	
	Set myMail = CreateObject("CDO.Message")
	
	myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
	myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
	myMail.Configuration.Fields.Update
	myMail.From = "NBPC-Website@pacer.org"
	myMail.To = "jhertzog@pacer.org"		
	myMail.Subject = "An Item Has Been Added to I Care Because..."
	myMail.HTMLBody = content
	myMail.Send
	Set myMail = Nothing
	
	RemoveSessionInfo
Else
	

End If
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--><script src="/SpryAssets/SpryValidationTextarea.js" type="text/javascript"></script>
<script src="/SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<link href="/SpryAssets/SpryValidationTextarea.css" rel="stylesheet" type="text/css" />
<link href="/SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />

</head>

<body>

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>


<!--#include virtual="/bullying/dynamic-header.html"-->
<!--#include virtual="/bullying/topnav.html"-->
  <div class="breadcrumb"> <a href="/bullying/">Home</a> /</div>

  <div class="content">
    <h1 id="maincontent">I Care Because ...</h1>
        <script type="text/javascript">
		if (history.length > 1) {
		document.write('<p style="text-align:right"><a href="javascript:history.back();">Return to the Previous Page</a></p>');
		}
	</script>

<%If isValidForm = "True" Then%>
	<img class="fltrt" style="margin-right:100px; margin-top:-50px;" src="/images/email-check.png" width="272" height="239" alt=""/>
	<h2>Your Submission has been sent.</h2>
    <p>Thank you for your submission. We appreciate your patience as we review it for posting approval.</p>  
<%Else%>
    <h2><%=isValidForm%></h2>
    <p>If this problem persists, please contact us at 
    <a href="mailto:webmaster@pacer.org?subject=<%=isValidForm%>&body=Problem Submitting the <%=formTitle%> Form.">
    webmaster@pacer.org
    </a>
    </p>
<%End If%>
    



  <!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
