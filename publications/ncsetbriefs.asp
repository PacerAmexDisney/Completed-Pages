<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Publications: Transition Parent Briefs</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/style.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

<script type="text/javascript" src="../css/menu.js"></script>
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
<a href="../"><img src="../images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="rightBar">


<p class="pubinfo">
<a href="../forms/request.asp">Reprint Request Form</a><br /><br />

<a href="OrderForm.pdf">Publication Order Form</a>
<img src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /><br /><br />
Items marked <img src="images/square.png" width="16" height="12" alt="square" />are FREE to Minnesota parents of children and young adults with disabilities.<br /><br /> 
<img src="images/star.png" width="16" height="13" alt="star" />items are free to young adults, high school or older, with disabilities and their families.<br /><br />
Please limit requests for free items to 10 or less per order.
</p>
<div id="submenu">
<h3 style="display: none;">Publications Menu</h3>
<!--#include virtual="/publications/rightNav.html"-->
</div>
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="tpb";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
</script>
<p class="rightsidebarpic">&nbsp;
</p>
</div>

<div id="maincontent">

	<div id="pagetoporange">
	<div class="printemail">
		<p>
		<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>
		
		</p>
	</div>
	<div id="breadcrumb">
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Publications</a> / Transition Parent Briefs
	
	<h1>Publications</h1>	
	
</div>

<!--BEGIN CONTENT-->

<%
Dim ConStr, rs, conn, sql, i

ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
Set conn = Server.CreateObject("ADODB.Connection")
conn.open ConStr
%>

</div>

<div id="pagecontent">

<h2 class="nounderline">Transition Parent Briefs</h2>
<p>The parent briefs below,  which were authored by PACER  staff, were created in partnership with other transition-related technical  assistance centers. </p>
<table cellpadding="5"><tr><th style="width:9em;">Published</th><th>Brief</th></tr>

		<%
		sql = "SELECT * FROM Publications WHERE pub_transNCSET = 'yes' AND pub_type = 'brief' ORDER BY pub_date DESC"
		set rs = conn.execute(sql)
		
		do until rs.eof	%>
		<tr><td><%=MonthName(DatePart("m", rs("pub_date"))) & " " & DatePart("yyyy", rs("pub_date"))%></td><td style="margin-top:10px; padding-top:10px; border-top:5px solid #ececec">
			<p>
        <%
			Dim checkforlink
			checkforlink = Trim(rs("pub_link"))
			if checkforlink <> "nolink" then
		%>
				<strong><em><a href="<%=rs("pub_link")%>" target="_blank"><%=rs("pub_name")%></a></em></strong><br />
		  <%else%>
            	<strong><em><%=rs("pub_name")%></em></strong><br />
				
		<%
			end if
		%>
		
		<%=rs("pub_description")%>
		
		</p></td></tr>
		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		%>
</table>

<div id="pageextender" style="clear:both">&nbsp;</div>


</div>


<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

<script type="text/javascript">
	if (document.getElementById(self.document.location.hash.substring(1))){
		document.getElementById(self.document.location.hash.substring(1)).className = "highlight";
	}
</script>
</body>
</html>