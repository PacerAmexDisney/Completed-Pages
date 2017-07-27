<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim rs__MMColParam
rs__MMColParam = DateAdd("m", -2, Date)
Dim rs
Dim rs_cmd
Dim rs_numRows

Set rs_cmd = Server.CreateObject ("ADODB.Command")
rs_cmd.ActiveConnection = MM_PACER_WEB_STRING
rs_cmd.CommandText = "SELECT event_ID, event_date, event_state, event_city FROM bullyEvents WHERE event_date > ? AND event_approved = 'y' AND event_rwr = 'y' ORDER BY event_state, event_city" 

rs_cmd.Prepared = true
rs_cmd.Parameters.Append rs_cmd.CreateParameter("param1", 135, 1, -1, rs__MMColParam) ' adDBTimeStamp '

Set rs = rs_cmd.Execute
rs_numRows = 0
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />

<!-- Facebook share meta -->
<meta name="title" content="PACER&rsquo;s Run, Walk, Roll Against Bullying! The End of Bullying Begins With You!!" />
<link rel="image_src" href="http://www.pacer.org/bullying/images/nbpc-logo.png" />
<!-- End Facebook Share Meta -->


<title>National Bullying Prevention Center - Run, Walk, Roll Against Bullying</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--><link rel="stylesheet" href="/js/lightbox/css/lightbox.css" type="text/css" media="screen" />
<script type="text/javascript" src="/js/lightbox/js/prototype.js"></script>
<script type="text/javascript" src="/js/lightbox/js/scriptaculous.js?load=effects,builder"></script>
<script type="text/javascript" src="/js/lightbox/js/lightbox.js"></script>
<style type="text/css">
#imageGallery {
	text-align:center;
	padding-top:10px;
	margin-top:10px;
	border-top:1px solid #ccc;
}
#imageGallery img {
	margin:3px;
}
#rwrEvents{
	width:100%;
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
#Community-RWR ul li {
	display:block;
	width:14em;
	padding:5px;
	float:left;
	min-height:72px;
}
#Community-RWR img {
	float:right;
}
.pastDate{
	font-style:italic;
	color:#666;
}
#imageGallery {
	float:right;
	width:200px;
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


<div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/nbpm/">National Bullying Prevention Month</a> /</div>
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

  <!-- end .sidebar1 --></div>

 <div class="content">
  <h1 id="maincontent" class="centered"><img src="images/RWRGraphicHorizontalReverse-515w.png" width="515" height="50" alt="Run, Walk, Roll Against Bullying" /></h1>

<div id="rwrEvents">
<h2><strong><img class="fltrt" src="/bullying/nbpm/runwalkroll/images/rwr-us-map.png" width="104" height="78" alt="" />Events Across the Country</strong></h2>

<%If Not rs.EOF Then%>
<div id="Community-RWR" style="clear:right;">
	<ul>
		
		<%
	Dim rsState
	Dim dateClass
	
	
	Do until rs.eof%>
    <%
	If (rs.Fields.Item("event_date").Value < Now) Then 
		dateClass = "pastDate"
	Else
		dateClass = "date"
	End If
	
	  rsState = ", " & rs.Fields.Item("event_state").Value
	  If rs.Fields.Item("event_state").Value = "NotInUSA" Then rsState = ""
	%>
	<li><a href="/bullying/nbpm/runwalkroll/community-RWR.asp?evt=<%=rs.Fields.Item("event_ID").Value%>"><%=(rs.Fields.Item("event_city").Value)%><%=rsState%></a><br />   
    <span class="<%=dateClass%>"><%=FormatDateTime(rs.Fields.Item("event_date").Value, vbShortDate)%><%If rs.Fields.Item("event_date").Value < Now Then%> (past) <%End If%></span>
    </li>
    <%
	rs.MoveNext
	Loop
	rs.close
	%>
</ul>


</div>
<%Else%>

<p>No events are scheduled at this time</p>

<%End If%>
<br class="clearfloat" />
</div>
<h3>Coordinate a Run, Walk, Roll, Against Bullying in your community!</h3>
<p><strong>Communities nationwide are invited</strong> to hold a Run, Walk, Roll Against Bullying in October as a kick off to National  Bullying Prevention Month or on another date during the year.</p>
<blockquote>&ldquo;<em>So many students are  in need of support from adults, other students, and community members to  address this issue</em>,&rdquo; said Julie Hertzog, director of PACER&rsquo;s National  Bullying Prevention Center, based in Minneapolis. &ldquo;<em>Community-wide efforts  like this show students that there are people who really want to help</em>.&rdquo;&nbsp;</blockquote>
<p>A Run, Walk, Roll Against Bullying is a family-friendly event held  by schools, businesses and/or communities to show the nation&rsquo;s commitment to  keeping students safe while at school, in the community, and on-line.</p>
<ul>
	<li><strong style="color:#F15C32"><em>Supportive:</em></strong> A time for students, parents and communities to show they care</li>
	<li><strong style="color:#F15C32"><em>Educational:</em></strong> An  opportunity to provide information on how to address bullying</li>
	<li><strong style="color:#F15C32"><em>Memorable:</em></strong> An  event that inspires and makes a difference</li>
</ul>



<hr style="clear:left;" />

<!--
<div class="alertBox" style="width:180px; margin:0px; margin-left:10px; margin-right:5px; text-align:left">
<p align="center"><strong>Downloads</strong></p>
<p><a href="/bullying/nbpm/runwalkroll/pdf/RWR-EventPlanningToolkit.pdf" target="_blank">Run / Walk / Roll Toolkit (.pdf)</a></p>
<p><a href="images/RWR-Graphics.zip" target="_blank">Graphics (.zip)</a></p>
<p><a href="pdf/RWR-Sample-PressRelease.doc" target="_blank">Press Release (.doc)</a> or <br />
 <a href="pdf/RWR-Sample-PressRelease.pdf" target="_blank">(.pdf) version</a></p>
</div>
-->
<h3>Plan the event to fit your community or school</h3>
<p>Make this event your  own. Whether you have 25 or 2500 participants, design the event to fit your  audience. Be creative&mdash;add informational tables, include musical performance at  the post-race activities or invite local celebrities. Ideas to host an event  include:</p>
<ul>
	<li>During school at the track. Invite a guest speaker, then have each  student sign &ldquo;The End of Bullying Begins With Me&rdquo; pledge </li>
	<li>On a Saturday at a community park, set up tables with activities  for kids and a photo booth. After the event, feature music by local performers</li>
	<li>Over lunch hour at your workplace, distribute information about  bullying to all participants. Invite a guest speaker and each employee sign a  banner that says &ldquo;I Care About Bullying Prevention Because&hellip;&rdquo;</li>
</ul>
<h4 style="color:#000;"><strong>Getting  Started</strong></h4>
<p>	Use <a href="http://www.pacer.org/bullying/nbpm/runwalkroll/pdf/RWR-EventPlanningToolkit.pdf" target="_blank">PACER&rsquo;s free toolkit</a> <img src="/images/pdficon_small.gif" width="15" height="15" alt=""/>, which shows how to  plan a Run, Walk, Roll in five easy steps. It also includes tips, ideas, and  resources such as checklists and sample forms to design your own event. Event  organizers are encouraged to add their own innovative ideas, such as adding music  to the post&#8208;race activities or incorporating pledges for bullying prevention  efforts. </p>
<ul>
	<li><a href="/bullying/nbpm/communityevents.asp">Register</a> your  school, business, or organization&rsquo;s event and it will be posted to PACER&rsquo;s  websites. </li>
	<li>		Download <a href="/bullying/nbpm/runwalkroll/images/RWR-Graphics.zip" target="_blank">Run, Walk, Roll graphics</a>.</li>
	<li>		Download  the <a href="/bullying/nbpm/runwalkroll/pdf/RWR-Sample-PressRelease.doc" target="_blank">Run, Walk, Roll Against Bullying  press release</a>, which can be customized for  your event.</li>
</ul>
<br class="clearfloat" />
 <!-- end .content --></div>
 
<%'---------------------------------- SIDEBAR2 --------------------------------------%>
<div class="sidebar2"> 


<% ' -------------------------- CUSTOM INK AD ------------------------------- %>
<!--<%If date > cDate("7/31/2016") Then%>
<a aria-hidden="true" href="http://www.customink.com/stopbullying" target="_blank">
  	<img src="/bullying/images/2016-tshirt-front-400w.jpg" width="200" height="191" alt="Unity Day tshirt" />
    <img src="/bullying/images/2016-tshirt-back-400w.jpg" width="200" height="191" alt="Unity Day tshirt" />
</a>
<p>The official 2016 PACER t-shirt commemorating the 10th anniversary of National Bullying Prevention Month will be available for online orders from Aug. 1 - Oct. 31, through our partner CustomInk and its sixth annual <a href="http://www.customink.com/stopbullying" target="_blank">Be Good to Each Other <span class="fa fa-external-link"></span></a> campaign.</p>

<%Else%>

  <img src="/bullying/nbpm/images/2015-UD-Tshirt-Front.jpg" width="200" height="202" alt="Unity Day tshirt" />
    <img src="/bullying/nbpm/images/2015-UD-Tshirt-Back.jpg" width="200" height="202" alt="Unity Day tshirt" />
  <p>The 2016 official Unity Day T-shirt will be available for on-line orders, through our partner CustomInk and their Sixth Annual <a href="http://www.customink.com/stopbullying/2015?pc=PR-147031&amp;utm_source=stopbullying&amp;utm_medium=pr&amp;utm_campaign=stopbullying%200915&amp;cm_mmc=PR-_-Stopbullying-_-0915-_-" target="_blank">&ldquo;Be Good to Each Other&rdquo; </a>campaign, starting summer 2016.</p>
  
<%End If%>-->
<% ' -------------------------- END CUSTOM INK AD ------------------------------- %>
  
<div id="imageGallery">
  <a href="/bullying/nbpm/runwalkroll/images/country/RWR-Country-02.jpg" rel="lightbox[rwr]" title="click right side of image to move forward or use right arrow key."><img src="/bullying/nbpm/runwalkroll/images/country/thumb/RWR-Country-02.jpg" width="175" height="117" alt="" /></a>
  <a href="/bullying/nbpm/runwalkroll/images/country/RWR-Country-08.jpg" rel="lightbox[rwr]" title="click right side of image to move forward or use right arrow key."><img src="/bullying/nbpm/runwalkroll/images/country/thumb/RWR-Country-08.jpg" width="175" height="117" alt="" /></a>
  <a href="/bullying/nbpm/runwalkroll/images/country/RWR-Country-11.jpg" rel="lightbox[rwr]" title="click right side of image to move forward or use right arrow key."><img src="/bullying/nbpm/runwalkroll/images/country/thumb/RWR-Country-11.jpg" width="83" height="124" alt="" /></a>
  <a href="/bullying/nbpm/runwalkroll/images/country/RWR-Country-12.jpg" rel="lightbox[rwr]" title="click right side of image to move forward or use right arrow key."><img src="/bullying/nbpm/runwalkroll/images/country/thumb/RWR-Country-12.jpg" width="83" height="124" alt="" /></a>
  <a href="/bullying/nbpm/runwalkroll/images/country/RWR-Country-04.jpg" rel="lightbox[rwr]" title="click right side of image to move forward or use right arrow key."><img src="/bullying/nbpm/runwalkroll/images/country/thumb/RWR-Country-04.jpg" width="175" height="117" alt="" /></a>
  <a href="/bullying/nbpm/runwalkroll/images/country/RWR-Country-07.jpg" rel="lightbox[rwr]" title="click right side of image to move forward or use right arrow key."><img src="/bullying/nbpm/runwalkroll/images/country/thumb/RWR-Country-07.jpg" width="175" height="117" alt="" /></a>
  <a href="/bullying/nbpm/runwalkroll/images/country/RWR-Country-01.jpg" rel="lightbox[rwr]" title="click right side of image to move forward or use right arrow key."><img src="/bullying/nbpm/runwalkroll/images/country/thumb/RWR-Country-01.jpg" width="175" height="117" alt="" /></a>
  <a href="/bullying/nbpm/runwalkroll/images/country/RWR-Country-03.jpg" rel="lightbox[rwr]" title="click right side of image to move forward or use right arrow key."><img src="/bullying/nbpm/runwalkroll/images/country/thumb/RWR-Country-03.jpg" width="175" height="117" alt="" /></a>
  <a href="/bullying/nbpm/runwalkroll/images/country/RWR-Country-06.jpg" rel="lightbox[rwr]" title="click right side of image to move forward or use right arrow key."><img src="/bullying/nbpm/runwalkroll/images/country/thumb/RWR-Country-06.jpg" width="175" height="117" alt="" /></a>
  <div class="hidden" style="display:none">
<a href="/bullying/nbpm/runwalkroll/images/country/RWR-Country-05.jpg" rel="lightbox[rwr]" title="click right side of image to move forward or use right arrow key."><img src="/bullying/nbpm/runwalkroll/images/country/thumb/RWR-Country-05.jpg" width="175" height="117" alt="" /></a>
<a href="/bullying/nbpm/runwalkroll/images/country/RWR-Country-09.jpg" rel="lightbox[rwr]" title="click right side of image to move forward or use right arrow key."><img src="/bullying/nbpm/runwalkroll/images/country/thumb/RWR-Country-09.jpg" width="175" height="117" alt="" /></a>
</div>

<!-- end #imageGallery --></div>


<!-- end .sidebar2 --></div>

 
 
<!--#include virtual="/bullying/footer.html"-->
<!-- end .container --></div>
</body>
</html>
