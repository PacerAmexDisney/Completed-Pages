<html><head></head>
<body>

<%
response.write("Update Database")
%>
<br />
<%
Dim connUpd, SQLupd, supporterid, supporterapprovalfor, supporteractionrequest, ConStr, rs, conn, sql

supporterid=replace(Request.Form("actionID"), "'", "''")
supporterapprovalfor=Replace(Request.Form("actionApprovedFor"), "'", "''")
supporteractionrequest=Replace(Request.Form("actionRequest"), "'", "''")

response.write("ID: " & supporterid & "<br />")
response.Write("SET TO: " & Request.Form("actionApprovedFor") & "<br />")
response.Write("ACCEPT / DENY: " & Request.Form("actionRequest") & "<br />")

SQLupd = "Null"
ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=pacer;Password=dataAccess"
Set connUpd = Server.CreateObject("ADODB.Connection")
if supporteractionrequest = "Approve" then
	SQLupd = "UPDATE icarebecause SET bullysupport_online = '" & supporterapprovalfor & "', bullysupport_approvaldate = '" & date & "' WHERE bullysupport_ID = " & supporterid & ";"
elseif supporteractionrequest = "Disapprove" then
	SQLupd = "UPDATE icarebecause SET bullysupport_online = 'not ok' WHERE bullysupport_ID = " & supporterid & ";"
else
	response.write("<br /> Nothing Done ..." & supporteractionrequest)
end if

if SQLupd <> "Null" then
	connUpd.open(ConStr)
	connUpd.execute SQLupd
	connUpd.close
	set connUpd = nothing
end if
%>

<%
Response.Redirect(Request.Form("returnUrl"))
%>

</body>
</html>