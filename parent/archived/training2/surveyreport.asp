<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <meta name="generator" content="UIUC Web Publishing Accessibility Wizard 2.1" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Training for Surrogate Parents</title>
    <link rel="stylesheet" href="index_files/officeexport.css" type="text/css" />
    <style type="text/css">
		table#results {
			text-align: center;
			font-size: .8em;
			font-family: arial, sans-serif;
			border-collapse: collapse;
			border-spacing: 0;
			width: 95%;
			border: dotted 1px black;
		}
		
		#results td, .count td {
			border: dotted 1px black;
			background-color: #EFEFEF;
		}
		
		#results th, .count th {
			border: dotted 1px black;
			text-align: center;
		}
		
		#results tr, .count tr {
			padding: .2em;
			border-bottom: solid 1px black;
		}
		
	</style>
    <%
		Dim ConStr, rs, SQL, strErr
		ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
		Set rs = Server.CreateObject("ADODB.Recordset")
		SQL = "SELECT survey_Q1, survey_Q2, survey_Q3, survey_Q4, survey_date FROM [surrogatesurvey] ORDER BY survey_date;"
		rs.open SQL, ConStr
	%>
    
  </head>
  <body>
    <a href="http://www.pacer.org">Back to PACER Home</a>
    <div class="outerframe">
      <div class="header">
        <h1 class="headertext">Online Training for Surrogate Parents</h1>
        <h2 class="headertext">Carolyn Anderson</h2>
      </div>
      <div class="content">
        <h2>Feedback Report</h2>
        <%
if rs.eof then
%>
<p>
No Data Found
</p>
<%
else
%>
<table id="results">
	<thead>
		<tr>
			<th>Date</th>
			<th>I am a:</th>
			<th>The information was helpful.</th>
			<th>I learned something new.</th>
			<th>Comments</th>
		</tr>
	</thead>
	<tbody>
<%
rs.movefirst
do until rs.eof
%>
	<tr>
		<td><%=rs("survey_date")%></td>
		<td style="text-align:left;"><%=rs("survey_Q1")%></td>
		<td><%=rs("survey_Q2")%></td>
		<td><%=rs("survey_Q3")%></td>
		<td style="text-align:left;"><%=rs("survey_Q4")%></td>
	</tr>
<%
	rs.movenext
loop
%>
	</tbody>
</table>

<%
end if
rs.close
set rs = nothing
%>
<p>
<br />
</p>
      </div>
    </div>
    <p><a href="http://www.pacer.org">Back to PACER Home</a></p>
    <script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-2136885-1");
pageTracker._initData();
pageTracker._trackPageview();
</script>
    
  </body>
</html>