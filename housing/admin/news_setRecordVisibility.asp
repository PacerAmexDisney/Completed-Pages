<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
' boolean to abort record edit
Dim MM_abortEdit
MM_abortEdit = false
%>
<%
' *** Delete Record: construct a sql delete statement and execute it
Dim redirectURL
If (Trim(Request.QueryString("id")) <> "" and Trim(Request.QueryString("formAction")) <> "") Then

  If (Not MM_abortEdit) Then
    ' execute the delete
    Set MM_editCmd = Server.CreateObject ("ADODB.Command")
    MM_editCmd.ActiveConnection = MM_PACER_WEB_STRING
    if Trim(Request.QueryString("formAction")) = "delete" then
		MM_editCmd.CommandText = "UPDATE dbo.Housing_News SET expired = 'True' WHERE id = ?" 
		redirectURL = "news_recordList.asp"
	elseif Trim(Request.QueryString("formAction")) = "activate" then
		MM_editCmd.CommandText = "UPDATE dbo.Housing_News SET expired = 'False' WHERE id = ?"
		redirectURL =  "news_expiredRecordList.asp"
	elseif Trim(Request.QueryString("formAction")) = "refresh" then
		MM_editCmd.CommandText = "UPDATE dbo.Housing_News SET date_posted = '" & Date() & "' WHERE id = ?"
		redirectURL =  "news_expiredRecordList.asp"
	end if
    MM_editCmd.Prepared = true
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param1", 5, 1, -1, Trim(Request.QueryString("id"))) ' adDouble
    MM_editCmd.Execute
    MM_editCmd.ActiveConnection.Close
	Response.Redirect(redirectURL)
  End If

End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Housing News - Remove Record</title>
</head>

<body class="oneColumn">

<h1 align="center">Error - No Record ID found ...</h1>
<p align="center"><a href="news_recordList.asp">go back</a></p>
</body>
</html>