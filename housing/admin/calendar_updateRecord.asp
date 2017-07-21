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
Dim MM_editAction
MM_editAction = CStr(Request.ServerVariables("SCRIPT_NAME"))
If (Request.QueryString <> "") Then
  MM_editAction = MM_editAction & "?" & Server.HTMLEncode(Request.QueryString)
End If

' boolean to abort record edit
Dim MM_abortEdit
MM_abortEdit = false
%>
<%
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
If (CStr(Request("MM_update")) = "form1") Then
  If (Not MM_abortEdit) Then
    ' execute the update
    Dim MM_editCmd

    Set MM_editCmd = Server.CreateObject ("ADODB.Command")
    MM_editCmd.ActiveConnection = MM_PACER_WEB_STRING
    MM_editCmd.CommandText = "UPDATE dbo.Housing_EventsCalendar SET eventDate = ?, eventDateText = ?, heading = ?, headingLink = ?, [description] = ? WHERE ID = ?" 
    MM_editCmd.Prepared = true
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param1", 135, 1, -1, MM_IIF(Request.Form("eventDate"), Request.Form("eventDate"), null)) ' adDBTimeStamp
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param2", 201, 1, 500, Server.HTMLEncode(Request.Form("eventDateText"))) ' adLongVarChar
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param3", 201, 1, 500, Server.HTMLEncode(Request.Form("heading"))) ' adLongVarChar
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param4", 201, 1, 500, Request.Form("headingLink")) ' adLongVarChar
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param5", 201, 1, 5000, Server.HTMLEncode(Request.Form("description"))) ' adLongVarChar
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param6", 5, 1, -1, MM_IIF(Request.Form("MM_recordId"), Request.Form("MM_recordId"), null)) ' adDouble
    MM_editCmd.Execute
    MM_editCmd.ActiveConnection.Close

    ' append the query string to the redirect URL
    Dim MM_editRedirectUrl
    MM_editRedirectUrl = "calendar_recordList.asp"
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
Dim calendar_rst__MMColParam
calendar_rst__MMColParam = "1"
If (Request.QueryString("ID") <> "") Then 
  calendar_rst__MMColParam = Request.QueryString("ID")
End If
%>
<%
Dim calendar_rst
Dim calendar_rst_cmd
Dim calendar_rst_numRows

Set calendar_rst_cmd = Server.CreateObject ("ADODB.Command")
calendar_rst_cmd.ActiveConnection = MM_PACER_WEB_STRING
calendar_rst_cmd.CommandText = "SELECT * FROM dbo.Housing_EventsCalendar WHERE ID = ?" 
calendar_rst_cmd.Prepared = true
calendar_rst_cmd.Parameters.Append calendar_rst_cmd.CreateParameter("param1", 5, 1, -1, calendar_rst__MMColParam) ' adDouble

Set calendar_rst = calendar_rst_cmd.Execute
calendar_rst_numRows = 0
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Housing Calendar - Update Record</title>
<link href="admin_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function formCancel() {
	window.location = 'http://www.pacer.org/Housing/admin/news_recordList.asp';
}
</script>
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
			<h1 class="nounderline">Housing Calendar - Page</h1>
			
</div>

</div>



<div id="pagecontent">

<!-- ####################################### BEGIN CONTENT ########################################## -->

<form action="<%=MM_editAction%>" method="post" name="form1" id="form1">
	<table cellpadding="5" cellspacing="5">
		<tr valign="baseline">
			<td nowrap="nowrap" align="right">Event Start Date:</td>
			<td><input type="text" name="eventDate" value="<%=Trim(calendar_rst.Fields.Item("eventDate").Value)%>" size="60" /></td>
			<td>11/3/2010</td>
			</tr>
		<tr valign="baseline">
			<td nowrap="nowrap" align="right">Event Date Display Text:</td>
			<td><input type="text" name="eventDateText" value="<%=Trim(calendar_rst.Fields.Item("eventDateText").Value)%>" size="60" /></td>
			<td>NOV 3 - 5, 2010</td>
			</tr>
		<tr valign="baseline">
			<td nowrap="nowrap" align="right">Heading:</td>
			<td><input type="text" name="heading" value="<%=Trim(calendar_rst.Fields.Item("heading").Value)%>" size="60" /></td>
			<td>27TH ANNUAL CONFERENCE AND EXHIBIT SHOW</td>
			</tr>
		<tr valign="baseline">
			<td nowrap="nowrap" align="right">HeadingLink:</td>
			<td><input type="text" name="headingLink" value="<%=Trim(calendar_rst.Fields.Item("headingLink").Value)%>" size="60" /></td>
			<td>http://www.thenadd.org/cfp/index.shtml</td>
			</tr>
		<tr valign="baseline">
			<td nowrap="nowrap" align="right">Sponsor &amp; Location:</td>
			<td><textarea name="description" value="" cols="60" rows="10"><%=Trim(calendar_rst.Fields.Item("description").Value)%></textarea></td>
			<td>Sponsored by the National Alliance for the Dually Diagnosed and held in Seattle, WA</td>
			</tr>
		<tr valign="baseline">
			<td nowrap="nowrap" align="right">&nbsp;</td>
			<td><input type="submit" value="Update record" /> <input type="button" value="Cancel" onclick="formCancel()" /></td>
			<td>&nbsp;</td>
			</tr>
	</table>
	<input type="hidden" name="MM_update" value="form1" />
	<input type="hidden" name="MM_recordId" value="<%= calendar_rst.Fields.Item("ID").Value %>" />
</form>
<p>&nbsp;</p>
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
