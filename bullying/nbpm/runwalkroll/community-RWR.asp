<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim rs__MMColParam
rs__MMColParam = DateAdd("m", -2, Date)
Dim rs, rsEvents, rsState, rsStateTitle, eventID
Dim rs_cmd


eventID = 0
If Request.QueryString("evt") <> "" Then
	If IsNumeric(Request.QueryString("evt")) Then
		eventID = cInt(Request.QueryString("evt"))
	End If
End If

Set rs_cmd = Server.CreateObject ("ADODB.Command")
rs_cmd.ActiveConnection = MM_PACER_WEB_STRING
rs_cmd.CommandText = "SELECT  event_name, event_date, event_time, event_state, event_city, event_locationaddress, event_description, event_website FROM bullyEvents WHERE event_date > ? AND event_ID = " & eventID & " AND event_approved = 'y' AND event_rwr = 'y'" 

rs_cmd.Prepared = true
rs_cmd.Parameters.Append rs_cmd.CreateParameter("param1", 135, 1, -1, rs__MMColParam) ' adDBTimeStamp

Set rs = rs_cmd.Execute

If Not rs.EOF Then
	rsStateTitle = rs.Fields.Item("event_state").Value
	If rs.Fields.Item("event_state").Value = "NotInUSA" Then rsState = ""
Else
	rsStateTitle = "Community"
End If

rs_cmd.CommandText = "SELECT event_ID, event_date, event_state, event_city FROM bullyEvents WHERE event_date > ? AND event_approved = 'y' AND event_rwr = 'y' ORDER BY event_state, event_city" 

Set rsEvents = rs_cmd.Execute
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />

<!-- Facebook share meta -->
<meta name="title" content="PACER&rsquo;s Run, Walk, Roll Against Bullying! The End of Bullying Begins With You!!" />
<link rel="image_src" href="http://www.pacer.org/bullying/images/nbpc-logo.png" />
<!-- End Facebook Share Meta -->


<title><%=rsStateTitle%> - Run, Walk, Roll Against Bullying - National Bullying Prevention Center</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--><link rel="stylesheet" href="/js/lightbox/css/lightbox.css" type="text/css" media="screen" />
<script type="text/javascript" src="/js/lightbox/js/prototype.js"></script>
<script type="text/javascript" src="/js/lightbox/js/scriptaculous.js?load=effects,builder"></script>
<script type="text/javascript" src="/js/lightbox/js/lightbox.js"></script>
<style type="text/css">
#Sponsors img {
	margin:10px 0px;
}
#imageGallery {
	text-align:center;
	padding-top:10px;
	margin-top:10px;
	border-top:1px solid #ccc;
}
#imageGallery img {
	margin:3px;
}
.content div.greybox{
	border: 1px solid #666;
	margin: 5px;
	padding: 10px;
	background:#CCC
}
.sponsor{
text-align:center; 
margin-bottom:20px; 
font-weight:bold; 
font-size:1.4em;"
}
#Community-RWR h3 {
	line-height:normal;
	margin:5px;
	padding:0px;
}
#Community-RWR ul{
	padding-left:10px;
	list-style:none;
}
#Community-RWR img {
	display:block;
	margin:5px auto;
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


<div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/nbpm/">National Bullying Prevention Month</a> / <a href="/bullying/nbpm/runwalkroll/events-around-the-country.asp">RWR Across the Country</a> /</div>
 <div class="sidebar1">
<!--#include virtual="/bullying/nbpm/nav.html"-->



<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="rwr-national";
	var showTree = "none";
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
<%If Not rsEvents.EOF Then%>
<div id="Community-RWR"><img src="/bullying/nbpm/runwalkroll/images/rwr-us-map.png" width="160" height="121" alt="" />
<h3>Run, Walk Roll Events Around the Country</h3>
<ul>

    <%
	Do until rsEvents.eof%>
    <%
	  rsState = ", " & rsEvents.Fields.Item("event_state").Value
	  If rsEvents.Fields.Item("event_state").Value = "NotInUSA" Then rsState = ""
	%>
	<li><a href="/bullying/nbpm/runwalkroll/community-RWR.asp?evt=<%=rsEvents.Fields.Item("event_ID").Value%>"><%=(rsEvents.Fields.Item("event_city").Value)%><%=rsState%></a><br />   
    <span class="date"><%=FormatDateTime(rsEvents.Fields.Item("event_date").Value, vbShortDate)%></span>
    </li>
    <%
	rsEvents.MoveNext
	Loop
	%>
</ul>


</div>
<%End If
rsEvents.close
%>

  <!-- end .sidebar1 --></div>

 <div class="content" style="padding-bottom:25px;">
        <script type="text/javascript">
		if (history.length > 1) {
		document.write('<p><a href="javascript:history.back();">&lt;&lt;&lt; Return to Previous Page</a></p>');
		}
	</script>

  <h1 id="maincontent" class="centered">
  <img src="images/RWRGraphicHorizontalReverse-515w.png" width="515" height="50" alt="Run, Walk, Roll Against Bullying" /></h1>
  

  
  
  
  <br />

    
	<%If rs.EOF Then%>
    	<h1 align="center">Event Not Found</h1>
    <%Else
		  rsState = ", " & rs.Fields.Item("event_state").Value
		  If rs.Fields.Item("event_state").Value = "NotInUSA" Then rsState = ""
		%>
		<h2><strong><%=(rs.Fields.Item("event_city").Value)%><%=rsState%></strong> &mdash; <%=(rs.Fields.Item("event_name").Value)%></h2>
		<%If Len(rs.Fields.Item("event_website").Value) > 0 Then%>
			<p><a href="<%=(rs.Fields.Item("event_website").Value)%>" target="_blank">Event Website</a></p>
		<%Else%>
        <p>No website currently listed for this event</p>
		<%End If%>
		
		<%If (rs.Fields.Item("event_date").Value < Now) Then %>
			<div style="color:#666; font-weight:bold; width:16em;" class="fltrt">(Note: This event is in the past.)</div>
		<%End If%>

		
		<p><strong>Date:</strong> <span
		<%If (rs.Fields.Item("event_date").Value < Now) Then %> 
			style="color:#666; font-style:italic;"
		<%End If%>
		>
		<%=(rs.Fields.Item("event_date").Value)%></span>
				
		<%If Len(rs.Fields.Item("event_time").Value) > 0 Then%>
			<br /><strong>Time:</strong> <%=(rs.Fields.Item("event_time").Value)%>
		<%End If%>
		</p>
		<p><strong><%=(rs.Fields.Item("event_city").Value)%><%=rsState%></strong><br />
		<%=(rs.Fields.Item("event_locationaddress").Value)%></p>    
		
		<pre><%=(rs.Fields.Item("event_description").Value)%></pre>
    <%End If
	
	rs.close

	%>



<br class="clearfloat" />
 <!-- end .content --></div>
 
 
 
 

 <%'---------------------------------- SIDEBAR2 --------------------------------------%>
<div class="sidebar2">
<img src="images/tieshoe.jpg" width="180" height="152"  alt="" style="display:block; margin:15px auto;" />
<p><strong>Hold a Run, Walk, Roll in your Community.</strong></p>
<p><a href="/bullying/nbpm/runwalkroll/events-around-the-country.asp">Find out More</a></p>
 </div>
 
<!--#include virtual="/bullying/footer.html"-->
<!-- end .container --></div>
</body>
</html>
