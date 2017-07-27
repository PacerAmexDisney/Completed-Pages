<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->

<%
Dim rs__MMColParam
rs__MMColParam = "1"
If (Request.QueryString("ID") <> "") Then 
  rs__MMColParam = Request.QueryString("ID")
End If
%>
<%
Dim rs
Dim rs_cmd
Dim rs_numRows

Set rs_cmd = Server.CreateObject ("ADODB.Command")
rs_cmd.ActiveConnection = MM_PACER_WEB_STRING
rs_cmd.CommandText = "SELECT * FROM dbo.bullyNews WHERE ID = ? ORDER BY posted_date DESC" 
rs_cmd.Prepared = true
rs_cmd.Parameters.Append rs_cmd.CreateParameter("param1", 5, 1, -1, rs__MMColParam) ' adDouble

Set rs = rs_cmd.Execute
rs_numRows = 0
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<table align="center" border="1">
  <tr>
    <td align="left" width="50%">ID</td>
    <td align="left" width="50%"><%=(rs.Fields.Item("ID").Value)%></td>
  </tr>
  <tr>
    <td align="left" width="50%">type</td>
    <td align="left" width="50%"><%=(rs.Fields.Item("type").Value)%></td>
  </tr>
  <tr>
    <td align="left" width="50%">posted_date</td>
    <td align="left" width="50%"><%=(rs.Fields.Item("posted_date").Value)%></td>
  </tr>
  <tr>
    <td align="left" width="50%">heading</td>
    <td align="left" width="50%"><%=(rs.Fields.Item("heading").Value)%></td>
  </tr>
  <tr>
    <td align="left" width="50%">blurb</td>
    <td align="left" width="50%"><%=(rs.Fields.Item("blurb").Value)%></td>
  </tr>
  <tr>
    <td align="left" width="50%">long_blurb</td>
    <td align="left" width="50%"><%=(rs.Fields.Item("long_blurb").Value)%></td>
  </tr>
  <tr>
    <td align="left" width="50%">TAB_story</td>
    <td align="left" width="50%"><%=(rs.Fields.Item("TAB_story").Value)%></td>
  </tr>
</table>
</body>
</html>
<%
rs.Close()
Set rs = Nothing
%>

