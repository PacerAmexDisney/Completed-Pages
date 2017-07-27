<%Response.Redirect("/publications/internal/")%>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Publication Catalog: All Handouts Ordered by Name</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../../css/style.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../../css/print.css" media="print" />

<script type="text/javascript" src="../../css/menu.js"></script>
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
<div id="rightBar">


<p class="pacerinfo">
<strong>PACER Center<br />
952-838-9000</strong>
</p>
<p class="pacerinfo2">
Champions for Children with Disabilities
</p>
<p class="pacerinfo3">
<a href="http://www.pacer.org/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a>
</p>
</div>

<div id="maincontent">

	<div id="pagetoporange">
	<div class="printemail">
		<p>
		<img src="../../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>
		
		</p>
	</div>
	<div id="breadcrumb">
	<a href="../../index.asp">Home</a> / <a href="../../pandr/index.asp">Programs &amp; Resources</a> / 
	<a href="../index.asp">Publications</a> / Publication Handouts Ordered by 
	Publication Name
	
	<h1>Publications</h1>
	
</div>

<!--BEGIN CONTENT-->

</div>

<div id="pagecontent">

<h2 class="nounderline"><a name="maincontent">Publication Handouts Ordered by Publication Name</a></h2>

<p>
See all publication handouts <a href="index.asp">ordered by publication code</a>.
</p>

<%
Dim ConStr, rs, conn, sql, i

ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
Set conn = Server.CreateObject("ADODB.Connection")
conn.open ConStr
%>

	
<h3 class="pubcat" style="margin-bottom: .5em;">Handouts <img src="../images/square.png" width="16" height="12" alt="square" /><span style="font-size: 75%;">Free to Download
<img src="../../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /> | $1.50 per request | 10+ copies, $.50 each</span></h3>

		<%
		sql = "SELECT * FROM Publications WHERE pub_type = 'handout' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else
		%>
		
		<table class="handouts">
		
		<%
		rs.movefirst
		do until rs.eof
		%>
		
			<tr>
				<td>
				
				<%
				Dim checkforlink
				checkforlink = Trim(rs("pub_link"))
				if checkforlink <> "nolink" then
				%>
				
					<a href="<%=rs("pub_link")%>" target="_blank"><%=rs("pub_name")%></a>
					
				<%
				else
				%>
				
					<%=rs("pub_name")%>
				
				<%
				end if
				%>
				</td>
				<td class="handoutcode">
					<%=rs("pub_code")%>
				</td>
			</tr>
				
		<%
		rs.movenext
		loop
		%>
		
		</table>
		
		<%
		rs.close
		set rs = nothing
		end if
		%>

</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>