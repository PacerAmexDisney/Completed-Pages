<%@LANGUAGE="VBSCRIPT"%>

<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim video_cmd
If IsNumeric(Request.QueryString("ID")) Then
	Set video_cmd = Server.CreateObject ("ADODB.Command")
	video_cmd.ActiveConnection = MM_PACER_WEB_STRING
	video_cmd.CommandText = "UPDATE transVideos SET hit_count = hit_count + 1 WHERE id = '" & Request.QueryString("ID") & "';"
	video_cmd.Prepared = true
	video_cmd.Execute
End If
%>