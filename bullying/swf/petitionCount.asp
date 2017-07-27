<%
Dim ConStr
Dim rs
Dim conn
Dim sql

set conn=Server.CreateObject("ADODB.Connection")
ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
conn.Open(ConStr)

sql = "SELECT Count(ID) AS CountOfID FROM bullyPetition;"

set rs = conn.execute(sql)

Response.Write("totalCount=" & rs("CountOfID"))
rs.Close
conn.Close
%>