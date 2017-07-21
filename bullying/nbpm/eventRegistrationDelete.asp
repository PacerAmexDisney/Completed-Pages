<%@LANGUAGE="VBSCRIPT" CODEPAGE="28596"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->

<%
  If Session("userlog")<>"valid" Then
	Session("userlog") = "false"
	Response.Redirect("eventRegistrationLogin.asp?st=login")
  End If

  Function SendMailNotice()
  	Dim myMail, mailMessage
  	Set myMail = CreateObject("CDO.Message")
		
	myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
	myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
	myMail.Configuration.Fields.Update
	myMail.From = "NBPC-Delete-Event@pacer.org"
	myMail.To = "jordan.bohm@pacer.org"
	myMail.Subject = "Event Deletion Notice - " & Request.Form("evtName") 	
	myMail.HTMLBody = "<p>Event Deleted - " & Request.Form("MM_recordId") & " - " & Request.Form("evtName") & "</p>"

	myMail.Send
	
	Set myMail = nothing

  End Function


Dim MM_editAction
MM_editAction = CStr(Request.ServerVariables("SCRIPT_NAME"))
If (Request.QueryString <> "") Then
  MM_editAction = MM_editAction & "?" & Server.HTMLEncode(Request.QueryString)
End If

' boolean to abort record edit
Dim MM_abortEdit
MM_abortEdit = false

' IIf implementation
Function MM_IIf(condition, ifTrue, ifFalse)
  If condition = "" Then
    MM_IIf = ifFalse
  Else
    MM_IIf = ifTrue
  End If
End Function
%>
<%
If (CStr(Request("MM_update")) = "eventDelete") Then
  If (Not MM_abortEdit) Then
    ' execute the update
    Dim MM_editCmd
    
	SendMailNotice
	
	Set MM_editCmd = Server.CreateObject ("ADODB.Command")
    MM_editCmd.ActiveConnection = MM_PACER_WEB_STRING
	MM_editCmd.CommandText = "UPDATE dbo.bullyEvents SET event_approved = 'x' WHERE event_ID = ?" 
	MM_editCmd.Prepared = true
	MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param13", 5, 1, -1, MM_IIF(Request.Form("MM_recordId"), Request.Form("MM_recordId"), null)) ' adDouble
    MM_editCmd.Execute
    MM_editCmd.ActiveConnection.Close

    ' append the query string to the redirect URL
    Dim MM_editRedirectUrl
    MM_editRedirectUrl = "/bullying/nbpm/eventRegistrationInfoUpdate.asp?evt=deleted"
    If (Request.QueryString <> "") Then
      If (InStr(1, MM_editRedirectUrl, "?", vbTextCompare) = 0) Then
        MM_editRedirectUrl = MM_editRedirectUrl & "?" & Request.QueryString
      Else
        MM_editRedirectUrl = MM_editRedirectUrl & "&" & Request.QueryString
      End If
    End If
    Response.Redirect(MM_editRedirectUrl)
  End If
End If
%>
<%
Dim rs__MMColParam
rs__MMColParam = "1"
If (Request.QueryString("event_ID") <> "") Then 
  rs__MMColParam = Request.QueryString("event_ID")
End If
%>
<%
Dim rs
Dim rs_cmd
Dim rs_numRows

Set rs_cmd = Server.CreateObject ("ADODB.Command")
rs_cmd.ActiveConnection = MM_PACER_WEB_STRING
rs_cmd.CommandText = "SELECT * FROM dbo.bullyEvents  WHERE event_ID = ?" 
rs_cmd.Prepared = true
rs_cmd.Parameters.Append rs_cmd.CreateParameter("param1", 5, 1, -1, rs__MMColParam) ' adDouble

Set rs = rs_cmd.Execute
rs_numRows = 0
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="robots" content="noindex,nofollow" />

<title>National Bullying Prevention Center - Delete Event Information Form</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--></head>

<body>

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>


<!--#include virtual="/bullying/dynamic-header.html"-->
<!--#include virtual="/bullying/topnav.html"-->
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/nbpm/">National Bullying Prevention Month</a> / <a href="/bullying/nbpm/communityevents.asp">Community Events</a> /</div>

  <div class="content">
    <h1 id="maincontent">Delete Event Information </h1>
    <p><a href="eventRegistrationLogout.asp">Log Out</a></p>
    
<div style="width:428px; margin:10px auto;"> 
<div style="color:#F00"><%=validateMessage%></div>
<form id="eventDelete" name="eventDelete" action="<%=MM_editAction%>" method="post">

<h3>Confirm Deletion Of </h3>
<p style="text-align:right"><input type="submit" value="Delete Record" /></p>
  <p><strong>Event Name:</strong><br />
  <%=(rs.Fields.Item("event_name").Value)%></p>
  
  <p><strong>Event Date:</strong> <%=(rs.Fields.Item("event_date").Value)%></p>

  <p><strong>Event Description:</strong><br />
    <%=(rs.Fields.Item("event_description").Value)%></p>
      <input type="hidden" name="evtName" value="<%=(rs.Fields.Item("event_name").Value)%>" />
      
      <input type="hidden" name="MM_update" value="eventDelete" />
      <input type="hidden" name="MM_recordId" value="<%= rs.Fields.Item("event_ID").Value %>" />
</form>
<div style="color:#F00"><%=validateMessage%></div>
   </div> 
    
    
    <p>&nbsp;</p>
  <!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
  
</body>
</html>
<%
rs.Close()
Set rs = Nothing
%>

