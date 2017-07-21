<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>National Bullying Prevention Center - Become a National Partner</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--><style type="text/css">
table.partnerTable {
	table-layout:fixed;
	font-size:.8em;
	border:1px solid #000;
	border-collapse:collapse;
	margin:10px;
	}
table.partnerTable td {
	word-wrap:break-word;
	vertical-align:top;
	border-bottom:1px solid #CCC;
	border-collapse:collapse;
	padding:20px;
	}
.sidebar1 {
	position:relative;
}
#featuredpartners {
	position:absolute;
	top:191px;
	left:0px;
	width:175px;
	margin-left:5px;
	margin-right:5px;
	clear:left;
	}
#featuredpartners h2 {
	font-size:17px;
}
#featuredpartners img {
	padding:30px 0px;
	margin:0px auto;
	float:left;
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


<div class="breadcrumb"> <a href="/bullying/">Home</a> /<a href="/bullying/getinvolved/">Get Involved</a> / <a href="/bullying/getinvolved/partners/">Partners</a> /</div>
 <div class="sidebar1">
<!--#include virtual="/bullying/getinvolved/partners/nav.html"-->


<div id="featuredpartners" class="sidenote centered">
<h2>Featured Partners</h2>
<a href="http://www.pta.org/bullying.asp" target="_blank"><img src="/bullying/nbpm/images/partners/national-pta.png" width="160" alt="National PTA - Connect For Respect" /></a><br />

<%
'<a href="http://www.stopbullyingnow.hrsa.gov/" target="_blank"><img src="/bullying/nbpm/images/partners/sbn-logo.gif" width="200" height="143" alt="" /></a>
'<p>The U.S. Department of Health and Human Services&rsquo; (HHS) Health Resources and Services Administration (HRSA) launched the Stop Bullying Now! Campaign to raise awareness about bullying prevention and intervention among youth and the adults who influence them. The Campaign&rsquo;s website includes tips and resources for adults and games, video Webisodes, and advice for youth.</p>
%>
<%
'<a href="http://www.aft.org/" target="_blank"><img src="/bullying/nbpm/images/partners/AFT-logo.png" width="200" alt="" /></a>
'<p class="centered"><a href="http://www.aft.org/" target="_blank">American Federation of Teachers - AFT</a></p>
%>

<%
'<div class="centered"><a href="http://www.ncpie.org/" target="_blank"><img src="/bullying/nbpm/images/partners/ncpie-logo.gif" width="78" height="78" alt="" /></a></div>
'<p class="centered"><a href="http://www.ncpie.org/" target="_blank">NCPIE - National Coalition for Parent Involvement in Education</a></p>
%>

<a href="http://www.nea.org/" target="_blank"><img src="/bullying/nbpm/images/partners/neaLogo.gif" width="160" alt="" /></a><br />

<a href="http://www.nasdse.org/" target="_blank"><img src="/bullying/nbpm/images/partners/nasdse-logo.jpg" width="160" height="160" alt="" /></a><br />

<a href="http://www.tourette.org" target="_blank"><img src="/bullying/nbpm/images/partners/TAA_Logo_160px.jpg" width="160" height="73" alt="" /></a><br />

<a href="http://www.cartoonnetwork.com/promos/stopbullying/adult-resources/index.html " target="_blank"><img src="/bullying/nbpm/partners/images/CN-SBSP-Logo.jpg" width="160" alt="Bully Bust" /></a><br />

<a href="http://www.thebullyproject.com/" target="_blank"><img src="/bullying/nbpm/partners/images/TBP-Logo.jpg" width="160" alt="The Bully Project" /></a><br />

<a href="http://nobullgreatamerican.votigo.com/nobullgreatamerican" target="_blank"><img src="/bullying/nbpm/partners/images/No_BULL.jpg" width="160" alt="No Bull" /></a><br />

<a href="http://www.schoolclimate.org/bullybust/" target="_blank"><img src="/bullying/nbpm/images/partners/bullybust-nscc.png" width="160" alt="Bully Bust" /></a>

<a href="http://www.bystanderrevolution.org/" target="_blank"><img src="/bullying/getinvolved/partners/images/BystanderRevolution-160w.jpg" width="160" height="80" alt="Bystander Revolution"/></a>

<a href="https://www.dosomething.org/facts/11-facts-about-bullying" target="_blank"><img src="/bullying/getinvolved/partners/images/dosomething-160w.jpg" width="160" height="127" alt="Do Something dot Org"/></a>



<%
'<a href="http://www.adl.org/" target="_blank"><img src="/bullying/nbpm/images/partners/anti_defamation_league.png" width="200" height="89" alt="Anti-Defamation League" /></a>
'<p class="centered"><br /> 
'<a href="http://www.adl.org/" target="_blank">Anti-Defamation League
'</a></p>
%>
</div>

 <!-- end .sidebar1 --></div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="nationalpartners";
	var showTree = "partners-sub";
	var currSubId="none";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "active";
	}
	if (document.getElementById(currSubId)){
		document.getElementById(currSubId).className = "active";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "submenu") {
			if (subTrees[i].id != showTree) {
				subTrees[i].className = "submenuhidden";
			}
		}
	}
</script>




 <div class="content">
 <h1 id="maincontent">National Partners</h1>
<p>PACER gratefully acknowledges the generous support of the many national nonprofit organizations that raise awareness of bullying prevention. Partners include organizations that reach a nationwide audience and have a focus on bullying prevention, child and youth, disability or education issues. Partners support and promote the activities of PACER&rsquo;s National Bullying Prevention Center on their social media channels, e-newsletters, and printed materials.</p>
<h3><strong>Become a Champion Against  Bullying&nbsp;</strong></h3>
  <p>Nonprofits, schools, and  community groups that serve local and statewide communities are invited to <a href="/bullying/getinvolved/partners/champions.asp"><strong>Become Champions Against Bullying</strong></a><strong>.</strong></p>
  <p>
    <%
Dim ConStr, rs, conn, sql, i, addtable
Dim currentYear, partnerCount
addtable = false
partnerCount = 0
ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
Set conn = Server.CreateObject("ADODB.Connection")
conn.open ConStr

currentYear = datepart("yyyy", date)

For i = 0 to 1 

	sql = "SELECT *, ISNULL(National_rank, 999999999) AS nrank FROM bullynationalpartners WHERE national_country = 'US' and national_registration_year = " & currentyear - i & " ORDER BY nrank, national_organization_name"
	set rs = conn.execute(sql)
	if not rs.eof then 
		addtable = true
%>
  </p>
  <h3><%=currentYear-i%> National Partners</h3>
  <table class="partnerTable">
	<%End If%>
	<%do until rs.eof 
		partnerCount = partnerCount + 1
	%>
		
		<tr>
  <td width="275">
		<%If rs("national_url_approved") = "yes" Then %>
  	<a href="<%=rs("national_url")%>" target="_blank"><%=rs("national_organization_name")%> <span class="fa fa-external-link"></span></a>
  <%Else%>
  	<%=rs("national_organization_name")%>
  <%End If%>
  </td>
  <td><%=rs("national_description")%></td></tr>
   
	<% 
	rs.Movenext
	loop 
	rs.close
	If addtable Then
		addtable = false
	%> 
 	</table>
 <%
	End If
 sql = "SELECT *, ISNULL(National_rank, 999999999) AS nrank FROM bullynationalpartners WHERE national_country <> 'US' and national_registration_year = " & currentyear - i & " ORDER BY national_city, national_country, nrank"
	set rs = conn.execute(sql)
	If Not rs.EOF Then 
	 	addtable = true
%>
 	
		<h3><%=currentYear-i%> Partners Around the World</h3>
  <table class="partnerTable">
 <%End If %>
 <%Do Until rs.eof %>
		<tr>
  <td width="275">
		<%If rs("national_url_approved") = "yes" Then %>
  	<a href="<%=rs("national_url")%>" target="_blank"><%=rs("national_organization_name")%> <span class="fa fa-external-link"></span></a>
  <%Else%>
  	<%=rs("national_organization_name")%>
  <%End If%>
  </td>
  <td><%=rs("national_description")%></td></tr>
   
<% 
	rs.Movenext
	Loop 
	rs.close
	If addtable Then
		addtable = false
%>
		</table>
<%
	End If
	
	If partnerCount > 15 Then Exit For
 Next
%>
 


<br class="clearfloat" />
 <!-- end .content --></div>
 
 
<!--#include virtual="/bullying/footer.html"-->
 <!-- end .container --></div>
</body>
</html>
