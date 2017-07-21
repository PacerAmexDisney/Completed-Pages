<%
Dim ConStr, rs, conn, sql

ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
Set conn = Server.CreateObject("ADODB.Connection")
conn.open ConStr
sql = "SELECT * FROM Publications WHERE pub_type = 'handout' ORDER BY pub_code"
set rs = conn.execute(sql)
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="robots" content="noindex,nofollow" />

<title>Publication Catalog: All Handouts Ordered by Code</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/stylenoleftright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />
<link rel="stylesheet" type="text/css" href="/js/DataTables-1.9.2/media/css/jquery.dataTables.css"/>

<script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/js/DataTables-1.9.2/media/js/jquery.dataTables.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	$('#handoutTable').dataTable({
    "iDisplayLength": 50,
	"bFilter": true,
	"bSort": true
  } );
});
</script>



<style type="text/css">
tr.inactive td {
	color:#666;
}
#handoutTable{
	margin-bottom:50px;
}
#handoutTable th{
	padding-top:20px;
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
<div id="maincontent">
  
  <div id="pagetoporange">
	
	<div id="breadcrumb">
	<a href="/index.asp">Home</a> / <a href="/pandr/index.asp">Programs &amp; Resources</a> / 
	<a href="../index.asp">Publications</a> /
	
	<h1>Publications Handouts Internal Listing</h1>
	
</div>

<!--BEGIN CONTENT-->

</div>

<div id="pagecontent">


	
<h3 class="pubcat" style="margin-bottom: .5em;">Handouts <img src="../images/square.png" width="16" height="12" alt="square" /><span style="font-size: 75%;">Free to Download
<img src="/images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /> | $1.50 per request | 10+ copies, $.50 each</span></h3>

		<table id="handoutTable" width="100%" cellpadding="5">
		<thead>
        <tr>
        	<th>Title</th><th>Pub Code</th><th>Date</th><th>Publication Pages Listed On</th>
        </tr>
		</thead>
        <tbody>
		<%
		Dim categories
		Do Until rs.EOF
			categories = ""
			
			If  rs("pub_alliance") = "yes" Then
				categories = categories & "Alliance, "
			End If
			If  rs("pub_AT") = "yes" Then
				categories = categories & "STC, "
			End If
			If  rs("pub_bp") = "yes" Then
				categories = categories & "Bully, "
			End If
			If  rs("pub_daap") = "yes" Then
				categories = categories & "Disability Awareness And Abuse Prevention, "
			End If
			If  rs("pub_dr") = "yes" Then
				categories = categories & "Dispute Resolution, "
			End If
			If  rs("pub_ec") = "yes" Then
				categories = categories & "Early Childhood, "
			End If
			If  rs("pub_ebd") = "yes" Then
				categories = categories & "EBD, "
			End If
			If  rs("pub_health") = "yes" Then
				categories = categories & "Health, "
			End If
			If  rs("pub_jj") = "yes" Then
				categories = categories & "JJ, "
			End If
			If  rs("pub_mpc") = "yes" Then
				categories = categories & "MPC, "
			End If
			If  rs("pub_op") = "yes" Then
				categories = categories & "Other Products, "
			End If
			If  rs("pub_ser") = "yes" Then
				categories = categories & "Spec Ed Rights, "
			End If
			If  rs("pub_surrogate") = "yes" Then
				categories = categories & "Surrogate, "
			End If
			If  rs("pub_transition") = "yes" Then
				categories = categories & "Transition, "
			End If
			If  rs("pub_transNCSET") = "yes" Then
				categories = categories & "Transitional Parent Briefs, "
			End If
			If  rs("pub_spanish") = "yes" Then
				categories = categories & "SPANISH, "
			End If
			If  rs("pub_somali") = "yes" Then
				categories = categories & "SOMALI, "
			End If
			If  rs("pub_hmong") = "yes" Then
				categories = categories & "HMONG, "
			End If
			If  rs("pub_msfn") = "yes" Then
				categories = categories & "MSFN, "
			End If
		%>

        <tr
        <%If categories = "" Then Response.Write(" class = ""inactive""")%>
        >
            <td>
            <%If Trim(rs("pub_link")) <> "nolink" And Len(rs("pub_link")) > 0 And categories <> "" Then%>
                <a href="<%=rs("pub_link")%>" target="_blank"><%=rs("pub_name")%></a>
            <%Else%>
                <%=rs("pub_name")%>
            <%End If%>
            </td>
            <td class="handoutcode">
                <%=rs("pub_code")%>
            </td>
            <td>
                <%=rs("pub_date")%>
            </td>
            <td>
            	<%If categories = "" Then
					Response.Write("Not Active")
				Else
					Response.Write(categories)
				End If%>
            </td>
        </tr>
    <%
    rs.MoveNext
    Loop
		%>
		</tbody>
		</table>
		
	<%
    rs.close
    set rs = nothing
    %>
<div style="height:30px; display:block;">&nbsp;</div>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>