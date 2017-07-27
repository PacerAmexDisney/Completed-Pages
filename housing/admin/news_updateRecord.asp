<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
Private Function HTMLDecode(byVal encodedstring)
	Dim tmp, i
	tmp = encodedstring
	tmp = Replace( tmp, "&quot;", chr(34) )
	tmp = Replace( tmp, "&lt;"  , chr(60) )
	tmp = Replace( tmp, "&gt;"  , chr(62) )
	tmp = Replace( tmp, "&amp;" , chr(38) )
	tmp = Replace( tmp, "&nbsp;", chr(32) )
	For i = 1 to 255
		tmp = Replace( tmp, "&#" & i & ";", chr( i ) )
	Next
	HTMLDecode = tmp
End Function
%>

<!--#include virtual="/Connections/PACER_WEB.asp" -->
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
    MM_editCmd.CommandText = "UPDATE dbo.Housing_News SET title = ?, date_posted = ?, link = ?, [description] = ? WHERE id = ?" 
    MM_editCmd.Prepared = true
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param1", 201, 1, 300, Server.HTMLEncode(Request.Form("title"))) ' adLongVarChar
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param2", 135, 1, -1, MM_IIF(Request.Form("date_posted"), Request.Form("date_posted"), null)) ' adDBTimeStamp
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param3", 201, 1, 300, Request.Form("link")) ' adLongVarChar
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param4", 201, 1, 5000, Server.HTMLEncode(Request.Form("description"))) ' adLongVarChar
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param5", 5, 1, -1, MM_IIF(Request.Form("MM_recordId"), Request.Form("MM_recordId"), null)) ' adDouble
    MM_editCmd.Execute
    MM_editCmd.ActiveConnection.Close

    ' append the query string to the redirect URL
    Dim MM_editRedirectUrl
    MM_editRedirectUrl = "news_recordList.asp"
    If (Request.QueryString <> "") Then
      If (InStr(1, MM_editRedirectUrl, "?", vbTextCompare) = 0) Then
        'MM_editRedirectUrl = MM_editRedirectUrl & "?" & Request.QueryString
      Else
        MM_editRedirectUrl = MM_editRedirectUrl & "&" & Request.QueryString
      End If
    End If
    Response.Redirect(MM_editRedirectUrl)
  End If
End If
%>
<%
Dim news_rst__MMColParam
news_rst__MMColParam = "1"
If (Request.QueryString("id") <> "") Then 
  news_rst__MMColParam = Request.QueryString("id")
End If
%>
<%
Dim news_rst
Dim news_rst_cmd
Dim news_rst_numRows

Set news_rst_cmd = Server.CreateObject ("ADODB.Command")
news_rst_cmd.ActiveConnection = MM_PACER_WEB_STRING
news_rst_cmd.CommandText = "SELECT * FROM dbo.Housing_News  WHERE id = ?" 
news_rst_cmd.Prepared = true
news_rst_cmd.Parameters.Append news_rst_cmd.CreateParameter("param1", 5, 1, -1, news_rst__MMColParam) ' adDouble

Set news_rst = news_rst_cmd.Execute
news_rst_numRows = 0
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript">
function formCancel() {
	window.location = 'http://www.pacer.org/Housing/admin/news_recordList.asp';
}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Housing News - Update Record</title>
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
<h1 class="nounderline">Housing News - Update Record</h1>
			
</div>

</div>



<div id="pagecontent">

<!-- ####################################### BEGIN CONTENT ########################################## -->




<form action="<%=MM_editAction%>" method="post" name="form1" id="form1">
	<table bgcolor="#D3D3D3">
		<tr valign="baseline">
			<td nowrap="nowrap" align="right"><strong>Title:</strong></td>
			<td><input type="text" name="title" value="<%=Trim(news_rst.Fields.Item("title").Value)%>" size="60" /></td>
			<td>&nbsp;</td>
		</tr>
		<tr valign="baseline">
			<td nowrap="nowrap" align="right"><strong>Date_posted:</strong></td>
			<td><input type="text" name="date_posted" value="<%=Trim(news_rst.Fields.Item("date_posted").Value)%>" size="60" /></td>
			<td>&nbsp;</td>
		</tr>
		<tr valign="baseline">
			<td nowrap="nowrap" align="right"><strong>Link:</strong></td>
			<td><input type="text" name="link" value="<%=Trim(news_rst.Fields.Item("link").Value)%>" size="60" /></td>
			<td>*optional</td>
		</tr>
		<tr valign="baseline">
			<td nowrap="nowrap" align="right"><strong>Description:</strong></td>
			<td><textarea name="description" cols="60" rows="10"><%= Trim(news_rst.Fields.Item("description").Value)%></textarea>
			
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr valign="baseline">
			<td nowrap="nowrap" align="right">&nbsp;</td>
			<td><input type="submit" value="Update record" /> <input type="button" value="Cancel" onclick="formCancel()" /></td>
			<td>&nbsp;</td>
		</tr>
	</table>
	<input type="hidden" name="MM_update" value="form1" />
	<input type="hidden" name="MM_recordId" value="<%= news_rst.Fields.Item("id").Value %>" />
</form>

	<!-- ####################################### END CONTENT ########################################## -->
</h2>
<div id="pageextender" style="clear:both">&nbsp;</div>
</div> <!-- close pagecontent -->
</div> <!--close maincontent-->
</div> <!--close main-->
	<!--#include virtual="/Housing/admin/admin_footer.html" -->
</div> <!--close wrapper-->
</body>
</html>
<%
news_rst.Close()
Set news_rst = Nothing
%>

