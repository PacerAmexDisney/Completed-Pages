<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim rs, rsYears
Dim rs_cmd
Dim sqlWhere, fYear, recent

recent = true
sqlWhere = "WHERE press_bullying = 'yes'"

If Len(request.QueryString("year")) > 0 And IsNumeric(request.QueryString("year")) Then
	fYear = cInt(request.QueryString("year"))
	If fYear > 2007 Then
		recent = false
		fYear = request.QueryString("year")
		sqlWhere = sqlWhere & " AND DATEPART(yyyy,press_date) = " & fYear 
	End If
Else
	sqlWhere = sqlWhere & " AND press_date > DATEADD(month, -12, GETDATE())"
End If

Set rs_cmd = Server.CreateObject ("ADODB.Command")
rs_cmd.ActiveConnection = MM_PACER_WEB_STRING
rs_cmd.CommandText = "SELECT *, DATEPART(yyyy,press_date) AS press_year FROM dbo.pressreleases " & sqlWhere & " ORDER BY press_date DESC" 
rs_cmd.Prepared = true
Set rs = rs_cmd.Execute

rs_cmd.CommandText = "SELECT DISTINCT DATEPART(yyyy,press_date) AS press_year FROM dbo.pressreleases ORDER BY press_year DESC" 
rs_cmd.Prepared = true
Set rsYear = rs_cmd.Execute

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Pressroom - National Bullying Prevention Center</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--><style type="text/css">
#releases {
	width:95%;
	margin:5px auto;
	font-size:.9em;
}
#releases td, #releases th{
	padding:5px;
	border:1px solid #FED;
}
#releases th{
	text-align:left;
	background:#FED;
}
#interview{
	font-size:.8em;
	width:400px;
	float:right;
	margin-right:5px;
	margin-left:5px;
}
</style>
</head>

<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>
 
 <!--#include virtual="/bullying/dynamic-header.html"--> 
 <!--#include virtual="/bullying/topnav.html"--> 
 
 <script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>
 <div class="breadcrumb"> <a href="/bullying/">Home</a> /</div>
 
 <!-- ######################### NAVIGATION ################################# -->
 <div class="sidebar1"> 
 <!--#include virtual="/bullying/about/nav.html"--> 
 <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="pressroom";
	var showTree = "pressroom-sub";
	var showTree2 = "media-kit-sub";
	if (document.getElementById(currId)){
       document.getElementById(currId).className = "active";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "submenu") {
			if (subTrees[i].id != showTree && subTrees[i].id != showTree2) {
				subTrees[i].className = "submenuhidden";
			}
		}
	}
    </script> 
 </div>
 <!-- ###################### END Navigation ############################## -->
 
 <div class="content"> 
 
 <div id="interview">
  <h2><strong>Interviews</strong></h2>
  <p>Working on a news story or print article? Need the viewpoint of someone with years of experience in addressing bullying prevention? </p>
<p>Request an interview through Bailey Lindgren, (952.838.9000 or <a href="mailto:Bailey.Lindgren@PACER.org">Bailey.Lindgren@PACER.org</a>) or Julie Hertzog, Director of PACER’s National Bullying Prevention Center at <a href="mailto:Julie.Hertzog@PACER.org">Julie.Hertzog@PACER.org</a>.</p>
 </div>
 
 
 <h1 id="maincontent">Press Releases</h1>
 
 
 <p style="font-size:.8em">Sort by year: 
<%
  If recent Then
%>
 	<strong>Recent Releases</strong>&nbsp;
<%  
  Else
%>
 	<a href="/bullying/about/pressroom.asp">Recent Releases</a>&nbsp;
<%
  End If
  Do Until rsYear.EOF
  	If cInt(rsYear("press_year")) = cInt(fYear) Then
%>
		<strong><%=rsYear("press_year")%></strong>&nbsp;
<%    
    Else
%>
    <a href="/bullying/about/pressroom.asp?year=<%=rsYear("press_year")%>"><%=rsYear("press_year")%></a>&nbsp;
<%
	End If
   	rsYear.MoveNext
  Loop
%>
</p>
 <table id="releases">
 
 <tr><th style="width:8em;">Date</th><th>Title</th></tr>
 <%Do Until rs.EOF%>
 	<tr><td><%=FormatDateTime(rs.Fields.Item("press_date").Value, 2)%></td><td><a href="pressrelease.asp?file=<%=(rs.Fields.Item("press_filename").Value)%>"><%=(rs.Fields.Item("press_title").Value)%></a></td></tr>
 	
 <%rs.MoveNext
   Loop
 %> 
 </table>
 
 
 
<br class="clearfloat" />
 
 <!-- end .content --></div>
 <!--#include virtual="/bullying/footer.html"--> 
 <!-- end .container --></div>
</body>
</html>
<%
rs.Close()
Set rs = Nothing
%>
