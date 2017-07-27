<%@LANGUAGE="VBSCRIPT"%>
<%
Dim ConStr2, rs2, conn2, sql2, i2, strComment

ConStr2 = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
sql2 = "SELECT TOP 20 * FROM icarebecause WHERE bullysupport_online = 'Approve' OR bullysupport_online = 'Approve-NoKids' ORDER BY NEWID()"
Set conn2 = Server.CreateObject("ADODB.Connection")
conn2.open ConStr2
set rs2 = conn2.execute(sql2)

	for i2 = 0 to 19
	    if not rs2.eof then
			if i2 > 0 then response.write  "&"
			strComment = rs2("bullysupport_comment")
			strComment = Replace(strComment, "&#39;","'" )
			strComment = Replace(strComment, "&quot;","""" )
            response.write "name" & i2 & "=" & Server.URLEncode(rs2("bullysupport_fname"))
            response.write "&state" & i2 & "=" & Server.URLEncode(rs2("bullysupport_state"))
            response.write "&age" & i2 & "=" & Server.URLEncode(rs2("bullysupport_age"))
            response.write "&comment" & i2 & "=" & Server.URLEncode(strComment)
            response.write "&date" & i2 & "=" & Server.URLEncode(rs2("bullysupport_date"))
	        rs2.movenext
	    end if
	next
rs2.close
set rs2 = nothing
%>