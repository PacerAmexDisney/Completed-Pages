<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
Dim ConStr, rs, conn, sql, i, iMax, standardList
Dim currentYear
ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
Set conn = Server.CreateObject("ADODB.Connection")
conn.open ConStr

if Request.QueryString("year") then
	currentYear = Request.QueryString("year")
	iMax = 0
	standardList = false
else
	currentYear = datepart("yyyy", date)
	iMax = 1
	standardList = true
end if
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>National Bullying Prevention Center - Become a Champion Against Bullying</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--><style type="text/css">
table.partnerTable {
	font-size:.8em;
	border:1px solid #000;
	border-collapse:collapse;
	margin:10px;
	}
table.partnerTable td, #pagecontent table.partnerTable th{
	word-wrap:break-word;
	vertical-align:top;
	padding-top:5px;
	border-bottom:1px solid #CCC;
	border-collapse:collapse;
	padding:5px 10px 15px 5px;
	}	
</style>
</head>

<body class="threecol">

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

  <!-- end .sidebar1 --></div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="champion";
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
  <h1 id="maincontent">Become a Champion Against Bullying</h1>
<%If standardList Then%>
<p>Throughout the community,&nbsp;there are nonprofits, schools, and  community groups that directly collaborate with PACER&rsquo;s National Bullying Prevention Center using resources – such as classroom toolkits, free bookmarks, awareness raising  ideas, petition signing - to directly inspire, educate and involve students.</p>
<p>  These organizations are eligible to submit the names of their  nonprofits, schools, or community group, which will be posted to PACER&rsquo;s  bullying prevention website, along with links to their sites and an overview of  their bullying prevention efforts.&nbsp;They also have access to PACER&rsquo;s  bullying prevention resources, including exciting new activities, information,  and contests that will engage youth, educators, and parents in creating a safer  world for children with and without disabilities.</p>
<p>Champions are invited to distribute <a href="/bullying/nbpm/spreadtheword/">information about bullying prevention</a> through their print and electronic newsletters. Become a champion with PACER&rsquo;s National Bullying Prevention Center and join this expanded effort to reach schools and organizations nationwide.&nbsp; We appreciate their community leadership and dedication to helping all children.</p>
<p><strong>Become a champion! To include your organization, please <a href="http://www.surveymonkey.com/s/TCLLTZX" target="_blank">fill out this form</a>. </strong><br />
</p>

<%
End If
Dim currentYearCount
For i = 0 to iMax
	If currentYearCount > 40 Then
		iMax = 0
		Exit For
	End If
	sql = "SELECT * FROM bullypartners WHERE partner_country = 'US' and partner_registration_year = " & currentyear - i & " ORDER BY partner_state"
	set rs = conn.execute(sql)
	if not rs.eof then
    	%>
<%If standardList Then%>
<img style="position:absolute; left:-160px" src="/bullying/getinvolved/partners/images/Champions-Stamp.png" width="150" height="116" alt=""/>
<%End If%>
		<h3><%=currentYear-i%> Champions&#8212;<strong>Supporting and Promoting Bullying Prevention In Their  Community</strong></h3>
    <table class="partnerTable">
	<%End If%>
	<%do until rs.eof 
		If i = 0 Then
			currentYearCount = currentYearCount + 1
		End If
		%>
		<tr><td><%=rs("partner_state")%></td>
    <%If rs("partner_url_approved") = "yes" And Len(rs("partner_url")) > 0 And (currentYear-i) > (datepart("yyyy", date) - 2) Then %>
    	<td><a href="<%=rs("partner_url")%>" target="_blank"><%=rs("partner_organization_name")%></a></td>
    <%Else%>
    	<td><%=rs("partner_organization_name")%></td>
    <%End If%>
    
    <td><%=rs("partner_description")%></td></tr>
      
	<% 
	rs.Movenext
	loop 
	rs.close
	%>  
  </table>
  <%
  sql = "SELECT * FROM bullypartners WHERE partner_country <> 'US' and partner_registration_year = " & currentyear - i & " ORDER BY partner_city, partner_country"
	set rs = conn.execute(sql)
	If Not rs.EOF Then %>
		
<%If standardList Then%>
<img style="position:absolute; left:-160px" src="/bullying/getinvolved/partners/images/Champions-Stamp.png" width="150" height="116" alt=""/>
<%End If%>
        <h3><%=currentYear-i%> Bullying Champions from Around the World - <strong>Supporting and Promoting Bullying Prevention In Their  Community</strong></h3>
    <table class="partnerTable">
  <%End If %>
  <%Do Until rs.eof %>
		<tr><td><%=rs("partner_city")%> - <%=rs("partner_country")%></td>
    <%If rs("partner_url_approved") = "yes" And Len(rs("partner_url")) > 0 And (currentYear-i) > (datepart("yyyy", date) - 2) Then %>
    	<td><a href="<%=rs("partner_url")%>" target="_blank"><%=rs("partner_organization_name")%></a></td>
    <%Else%>
    	<td><%=rs("partner_organization_name")%></td>
    <%End If%>
    
    <td><%=rs("partner_description")%></td></tr>
      
	<% 
	rs.Movenext
	loop 
	rs.close
	%>  
  </table>
<%
Next
iMax = 0
If not standardList Then 'We are looking at a specific year and need to list all years.
	currentYear = datepart("yyyy", date)
	iMax = -1
End If
iMax = iMax + 1
Do Until currentYear - iMax < 2008

%>
	<p><a href="/bullying/getinvolved/partners/champions.asp?year=<%=currentYear - iMax%>">See the <%=currentYear - iMax%> Champions</a></p>
<% 
	iMax = iMax + 1 
Loop
%>




<br class="clearfloat" />
 <!-- end .content --></div>
 
<div class="sidebar2">
<div id="callingallstudents" class="sidenote">
 <h3>Calling ALL Students!</h3>
 <p>Take the first step in getting your school involved! Ask your principal, superintendent, teacher or school counselor to sign on as a <strong>CHAMPION AGAINST BULLYING</strong>! </p>
 <p>Champions are schools and organizations that support the cause and are taking part in some way. It&rsquo;s a great way to show you care!</p>
 <p><a href="/bullying/pdf/Become-a-Partner-or-Champion.pdf" target="_blank">Download the PDF <span class="fa fa-file-pdf-o"></span> <span class="fa fa-external-link"></span></a>, bring it to your school, and ask them to send to PACER.<a href="/bullying/digitalpetition/"></a></p>
</div>
<div id="otheryears">
<h3>See the Champions From Previous Years</h3>
<%
iMax = 0
If not standardList Then 'We are looking at a specific year and need to list all years.
	currentYear = datepart("yyyy", date)
	iMax = -1
End If
iMax = iMax + 1
Do Until currentYear - iMax < 2008

%>
	<p><a href="/bullying/getinvolved/partners/champions.asp?year=<%=currentYear - iMax%>"><%=currentYear - iMax%> Champions</a></p>
<% 
	iMax = iMax + 1 
Loop
%>
</div>
  
<!-- end .sidebar2 --></div>

 
 
<!--#include virtual="/bullying/footer.html"-->
 <!-- end .container --></div>
</body>
</html>
