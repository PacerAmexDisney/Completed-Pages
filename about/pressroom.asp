<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>

<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim rs, rsYears
Dim rs_cmd
Dim sqlWhere, fYear, recent

recent = true
sqlWhere = ""

If Len(request.QueryString("year")) > 0 And IsNumeric(request.QueryString("year")) Then
	fYear = cInt(request.QueryString("year"))
	If fYear > 2007 Then
		recent = false
		fYear = request.QueryString("year")
		sqlWhere = sqlWhere & "WHERE DATEPART(yyyy,press_date) = " & fYear 
	End If
Else
	sqlWhere = sqlWhere & "WHERE press_date > DATEADD(month, -4, GETDATE())"
End If

Set rs_cmd = Server.CreateObject ("ADODB.Command")
rs_cmd.ActiveConnection = MM_PACER_WEB_STRING
rs_cmd.CommandText = "SELECT *, DATEPART(yyyy,press_date) AS press_year FROM dbo.pressreleases " & sqlWhere & " ORDER BY press_date DESC" 
rs_cmd.Prepared = true
Set rs = rs_cmd.Execute

rs_cmd.CommandText = "SELECT DISTINCT TOP 3 DATEPART(yyyy,press_date) AS press_year FROM dbo.pressreleases ORDER BY press_year DESC" 
rs_cmd.Prepared = true
Set rsYear = rs_cmd.Execute

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="Sign up to receive updates and information about PACER Programs, bullying prevention, special education topics for childrens with special needs.
" />
<meta name="keywords" content="news, press releases, pacer workshops, children with disabibilities, special needs children, teen bullying, parent programs, parents of disabled child, child development, blind deaf autistic children education programs, pacer center, pacer org
" />

<title>About PACER Center - News related to Teen Bullying and Children with Disabilities</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />

<script type="text/javascript" src="/css/menu.js"></script>
<style type="text/css">
#releases {
	width:95%;
	margin:5px auto;
	font-size:.9em;
}
#releases td, #releases th{
	padding:5px;
	border:1px solid #F6E0C1;
}
#releases th{
	text-align:left;
	background:#ffbb77;
}
#interview{
	font-size:.9em;
	width:400px;
	float:right;
	margin-right:5px;
	margin-left:5px;
}
</style>
</head>

<body>

<div id="skiptocontent">
<a href="#maincontent">Skip to main content</a>
</div>

<div id="wrapper">

<div id="main">

<div id="header">
	<div>			<!--#include virtual="/googleSearchBox.htm"-->
            <!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>
<div id="topbar">
  <div id="breadcrumb">

	<a href="/">Home</a> / <a href="/about/">About PACER</a> /
	
	<h1>Press Room</h1>
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">About PACER Navigation Menu</h2>
<ul>
	<li><a href="PACERfacts.asp">PACER Facts</a></li>
	<li><a href="history.asp">History of PACER Center</a></li>
	<li><a href="leadership.asp">Leadership of PACER Center</a></li>
	<li><a class="page" href="pressroom.asp">PACER's Press Room</a></li>
</ul>
</div>

<div id="maincontent">

<div id="pagecontent">
<!--BEGIN CONTENT-->
 
 <div id="interview">
  <h2><strong>Interviews</strong></h2>
  <p>Working on a news story concerning disability issues? Request an  interview through PACER's Communications Department (952.838.9000) or email PACER Communications Director  at <a href="mailto:Communications@PACER.org">Communications@PACER.org</a></p>
 </div>
 
 
 <h1 id="maincontent">News Releases</h1>
 
 
 <p style="font-size:.9em">Sort by year: 
<%
  If recent Then
%>
 	<strong>Recent Releases</strong>&nbsp;
<%  
  Else
%>
 	<a href="/about/pressroom.asp">Recent Releases</a>&nbsp;
<%
  End If
  Do Until rsYear.EOF
  	If cInt(rsYear("press_year")) = cInt(fYear) Then
%>
		<strong><%=rsYear("press_year")%></strong>&nbsp;
<%    
    Else
%>
    <a href="/about/pressroom.asp?year=<%=rsYear("press_year")%>"><%=rsYear("press_year")%></a>&nbsp;
<%
	End If
   	rsYear.MoveNext
  Loop
  rsYear.Close()
%>
</p>
 <table id="releases" style="clear:right">
 
 <tr><th style="width:8em;">Date</th><th>Title</th></tr>
 <%Do Until rs.EOF%>
 	<tr><td><%=FormatDateTime(rs.Fields.Item("press_date").Value, 2)%></td><td><a href="/about/releases/<%=(rs.Fields.Item("press_filename").Value)%>"><%=(rs.Fields.Item("press_title").Value)%></a></td></tr>
 	
 <%rs.MoveNext
   Loop
 %> 
 </table>
 
 
 
 <div id="pageextender" style="clear:both">&nbsp;</div>

 <!-- end .content --></div> 


<!--END CONTENT-->
</div>

</div>
<!--#include virtual="/footer.htm"-->
</div>
</body>
</html>
<%
rs.Close()
Set rs = Nothing
%>
