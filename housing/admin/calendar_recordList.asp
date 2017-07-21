<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
' *** Logout the current user.
MM_Logout = CStr(Request.ServerVariables("URL")) & "?MM_Logoutnow=1"
If (CStr(Request("MM_Logoutnow")) = "1") Then
  Session.Contents.Remove("MM_Username")
  Session.Contents.Remove("MM_UserAuthorization")
  MM_logoutRedirectPage = "../index.asp"
  ' redirect with URL parameters (remove the "MM_Logoutnow" query param).
  if (MM_logoutRedirectPage = "") Then MM_logoutRedirectPage = CStr(Request.ServerVariables("URL"))
  If (InStr(1, UC_redirectPage, "?", vbTextCompare) = 0 And Request.QueryString <> "") Then
    MM_newQS = "?"
    For Each Item In Request.QueryString
      If (Item <> "MM_Logoutnow") Then
        If (Len(MM_newQS) > 1) Then MM_newQS = MM_newQS & "&"
        MM_newQS = MM_newQS & Item & "=" & Server.URLencode(Request.QueryString(Item))
      End If
    Next
    if (Len(MM_newQS) > 1) Then MM_logoutRedirectPage = MM_logoutRedirectPage & MM_newQS
  End If
  Response.Redirect(MM_logoutRedirectPage)
End If
%>
<%
' *** Restrict Access To Page: Grant or deny access to this page
MM_authorizedUsers=""
MM_authFailedURL="login.asp"
MM_grantAccess=false
If Session("MM_Username") <> "" Then
  If (true Or CStr(Session("MM_UserAuthorization"))="") Or _
         (InStr(1,MM_authorizedUsers,Session("MM_UserAuthorization"))>=1) Then
    MM_grantAccess = true
  End If
End If
If Not MM_grantAccess Then
  MM_qsChar = "?"
  If (InStr(1,MM_authFailedURL,"?") >= 1) Then MM_qsChar = "&"
  MM_referrer = Request.ServerVariables("URL")
  if (Len(Request.QueryString()) > 0) Then MM_referrer = MM_referrer & "?" & Request.QueryString()
  MM_authFailedURL = MM_authFailedURL & MM_qsChar & "accessdenied=" & Server.URLEncode(MM_referrer)
  Response.Redirect(MM_authFailedURL)
End If
%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim calendar_rst__eventLastDate
calendar_rst__eventLastDate = "12/1/2009"
If (DateAdd("m", -1, Date())  <> "") Then 
  calendar_rst__eventLastDate = DateAdd("m", -1, Date()) 
End If
%>
<%
Dim calendar_rst
Dim calendar_rst_cmd
Dim calendar_rst_numRows

Set calendar_rst_cmd = Server.CreateObject ("ADODB.Command")
calendar_rst_cmd.ActiveConnection = MM_PACER_WEB_STRING
calendar_rst_cmd.CommandText = "SELECT * FROM dbo.Housing_EventsCalendar WHERE eventDate > ? ORDER BY eventDate DESC" 
calendar_rst_cmd.Prepared = true
calendar_rst_cmd.Parameters.Append calendar_rst_cmd.CreateParameter("param1", 135, 1, -1, calendar_rst__eventLastDate) ' adDBTimeStamp

Set calendar_rst = calendar_rst_cmd.Execute
calendar_rst_numRows = 0
%>
<%
Dim Repeat1__numRows
Dim Repeat1__index

Repeat1__numRows = -1
Repeat1__index = 0
calendar_rst_numRows = calendar_rst_numRows + Repeat1__numRows
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Housing Calendar - Record List</title>
<link href="admin_style.css" rel="stylesheet" type="text/css" />
</head>
<body class="oneColumn">

<div id="wrapper">

<div id="main">

<div id="header">
	<div>			<!--#include virtual="/googleSearchBox.htm"-->
            <!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="../"><img src="images/mainLogo.gif" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>




<div id="maincontent">

	<div id="pagetoporange">
		<div id="breadcrumb">
		<div style="float:right; width:450px; text-align:right">You are currently Logged in to the Admin pages. &gt;&gt;&gt; <a href="<%= MM_Logout %>">Log Out</a></div>			<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="../index.asp">Housing</a>/	<a href="index.asp">Admin</a>
			<h1 class="nounderline">Housing Calendar - Record List</h1>
			
</div>

</div>



<div id="pagecontent">

<!-- ####################################### BEGIN CONTENT ########################################## -->

<table align="right" cellpadding="10" style="float:right">
	<tr>
		<td align="center"><a href="index.asp">Return to Main Contents</a></td>
	</tr>
	<tr class="expiredRow">
		<td align="center">Event Date has passed<br />
			And will not display on Events Calendar</td></tr></table>
			
<h1><a href="calendar_newRecord.asp">Add New Event</a></h1>
			
			
<table width="100%" cellspacing="10" cellpadding="5">
	<caption><h1>Events</h1></caption>
	<tr>
		<th scope="col" align="center">Date Display Text</th>
		<th scope="col" align="center">Heading</th>
		<th scope="col" align="center">Description</th>
		<th scope="col" align="center">Update</th>
		<th scope="col" align="center">Delete</th>
	</tr>
	<% 
	Dim rowFlag
	rowFlag = False
While ((Repeat1__numRows <> 0) AND (NOT calendar_rst.EOF)) 
%>
		<% If (calendar_rst.Fields.Item("eventDate").Value) < Date() Then%>
			<tr class="expiredRow">
		<% Else 
			If rowFlag Then 
				rowFlag = False%>
				<tr>
			<% Else 
				rowFlag = True%>
				<tr class="altRow">
			
			<% End If 
		End If%>
		<td align="center"><%=(calendar_rst.Fields.Item("eventDateText").Value)%></td>
		<td><%=(calendar_rst.Fields.Item("heading").Value)%></td>
		<td><%=(calendar_rst.Fields.Item("description").Value)%></td>
		<td align="center"><a href="calendar_updateRecord.asp?ID=<%=(calendar_rst.Fields.Item("ID").Value)%>">Update</a></td>
		<td align="center"><a href="calendar_deleteRecord.asp?ID=<%=(calendar_rst.Fields.Item("ID").Value)%>">Delete</a></td>
	</tr>
	<% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  calendar_rst.MoveNext()
Wend
%>
</table>
<!-- ####################################### END CONTENT ########################################## -->
<div id="pageextender" style="clear:both">&nbsp;</div>
</div> <!-- close pagecontent -->
</div> <!--close maincontent-->
</div> <!--close main-->
	<!--#include virtual="/Housing/admin/admin_footer.html" -->
</div> <!--close wrapper-->
</body>
</html>
<%
calendar_rst.Close()
Set calendar_rst = Nothing
%>
