<%
Dim ConStr, rs, conn, sql, i

ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
Set conn = Server.CreateObject("ADODB.Connection")
conn.open ConStr

SetLocale(2058)
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="description" content="PACER workshops presented in Spanish" />
<meta name="keywords" content="pacer, children with disabibilities, special needs children, parent programs, parents of disabled child, child development, blind deaf autistic children education programs, pacer center, pacer org, workshop mn" />

<title>PACER Espa&Ntilde;iol - Workshops</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/style.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />

<script type="text/javascript" src="/css/menu.js"></script>
</head>

<body>

<div id="skiptocontent">
<a href="#maincontent">Skip to main content</a>
</div>
<!--#include virtual="/es/returnlinks.htm"-->
<div id="wrapper" style="position:relative">

<div id="main">
<div id="header">
	<div>			
<a href="/es/"><img src="/es/images/PACERLogo-es.gif" alt="PACER Center Logo: Campeones para Ni&Ntilde;os con Discapacidades" class="logoImg" /></a>
	</div>
	<!--#include virtual="/es/dynamicheader.htm"-->
</div>

<div id="rightBar">
<!--#include virtual="/es/infobox1.htm"-->
</div>
</div>
<div id="maincontent">
	<div id="pagetoporange">
	<div id="breadcrumb">
	  <h1>Workshops (presented in Spanish)</h1>
</div>
</div>

<div id="pagecontent">

<ul class="nobullet">

<%
sql = "SELECT * FROM Workshops WHERE workshop_date >= DATEADD(day, -1, getdate()) AND workshop_workshop = 'yes' AND workshop_spanish = 'yes' ORDER BY workshop_date"
set rs = conn.execute(sql)
Dim WID 
Do until rs.eof
	WID = rs("workshop_id")
	WID = Replace(WID, "{", "")
	WID = Replace(WID, "}", "")
%>
		<li>
			<strong><span style="font-size: 110%;"><%=FormatDateTime(rs("workshop_date"), 1)%></span> - </strong><%=rs("workshop_time")%>

			<br />
			<strong><%=rs("workshop_name")%></strong>
        <%If rs("workshop_flyer") <> "" Then%>
         - <a href="http://www.pacer.org/workshops/flyer/<%=rs("workshop_flyer")%>" target="_blank">see flyer</a> <img src="http://www.pacer.org/images/pdficon_small.gif" alt="pdf icon" width="15" height="15" />
        <%End If%>
        <br />
        <%=rs("workshop_description")%>
        <br />
		Loaction:<em>
        <%
		If rs("workshop_directions") <> "" Then
		%>
        	<a href="<%=rs("workshop_directions")%>"><%=rs("workshop_location")%></a> - see Map</em>)
		<%
		Else
        	rs("workshop_location")
        End If
		%>
		<br />			
		<strong><a href="
        <%If rs("workshop_link") <> "" Then
			response.Write(rs("workshop_link"))
		Else
			response.Write("/es/registration.asp?wksp=" & WID)
		End If%>
        ">Register for this workshop</a></strong>			
		<br /><br />
		</li>
        <%
		rs.MoveNext
		Loop
		%>			
	</ul>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/es/footer.htm"-->
</div>


</body>
</html>
<%
rs.close
set rs = nothing
%>
