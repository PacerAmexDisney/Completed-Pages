<%@LANGUAGE="VBSCRIPT"%>

<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim video_cmd, videoId, vote

If IsNumeric(Request.QueryString("id")) And Len(Request.QueryString("vote")) > 1 And Len(Request.QueryString("vote")) < 4 Then
	Set video_cmd = Server.CreateObject ("ADODB.Command")
	video_cmd.ActiveConnection = MM_PACER_WEB_STRING
	'We don't have to clean the variables because the above validation means that they aren't suseptable to sql injection
	video_cmd.CommandText = "INSERT INTO Parent_VideoPollVotes (video_id, vote, date_time)" & _
								" VALUES (" & Request.QueryString("id") & ", '" & Request.QueryString("vote") & "', '" & Now() & "');"
	video_cmd.Execute
	Response.Write("Done")
Else
	Response.Write("Did Nothing: i: " & Request.QueryString("id") & " , v: " & Request.QueryString("vote"))	
End If
%>