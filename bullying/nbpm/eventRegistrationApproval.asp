<%@LANGUAGE="VBSCRIPT" CODEPAGE="28596"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim recordUpdated
recordUpdated = false
' IIf implementation
Function MM_IIf(condition, ifTrue, ifFalse)
  If condition = "" Then
    MM_IIf = ifFalse
  Else
    MM_IIf = ifTrue
  End If
End Function
rwr=true
If Request.QueryString("servcheck") = "j3s9ed4oG4j" And Int(Request.QueryString("id")) > 0 Then
    Dim MM_editCmd
	Set MM_editCmd = Server.CreateObject ("ADODB.Command")
    MM_editCmd.ActiveConnection = MM_PACER_WEB_STRING
	If Request.QueryString("rwr") = "true" Then
		MM_editCmd.CommandText = "UPDATE dbo.bullyEvents SET event_approved = 'y', event_rwr = 'y' WHERE event_ID = ?" 
	Else
		MM_editCmd.CommandText = "UPDATE dbo.bullyEvents SET event_approved = 'y' WHERE event_ID = ?" 
	End If
	MM_editCmd.Prepared = true
	MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param13", 5, 1, -1, MM_IIF(Request.QueryString("id"), Request.QueryString("id"), null)) ' adDouble
    MM_editCmd.Execute
    MM_editCmd.ActiveConnection.Close
	recordUpdated = true
End If
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
<!--#include virtual="/bullying/dynamic-header.html"-->
<!--#include virtual="/bullying/topnav.html"-->
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/nbpm/">National Bullying Prevention Month</a> / <a href="/bullying/nbpm/communityevents.asp">Community Events</a> /</div>

  <div class="content" style="text-align:center; padding-top:70px;">
    
	<%If recordUpdated Then%>
    <h1>Event Approved</h1>
	<%Else%>
   	<p>Event Not Approved</p>
        
    <%End If%>
  <!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
  
</body>
</html>