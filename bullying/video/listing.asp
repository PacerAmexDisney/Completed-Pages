<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim video
Dim video_cmd

Set video_cmd = Server.CreateObject ("ADODB.Command")
video_cmd.ActiveConnection = MM_PACER_WEB_STRING
If Request.QueryString("category") = "featured" Then
	video_cmd.CommandText = "SELECT * FROM bullyVideos WHERE (pageName = '" & Request.QueryString("category") & "' AND visible <> 'false') OR visible = 'feature' ORDER BY date_posted DESC;"
Else
	video_cmd.CommandText = "SELECT * FROM bullyVideos WHERE pageName = '" & Request.QueryString("category") & "' AND visible <> 'false' ORDER BY date_posted DESC;"
End If
video_cmd.Prepared = true

Set video = video_cmd.Execute
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center - Videos
<%If Request.QueryString("category") <> "" Then%>
From <%=Request.QueryString("category")%>
<%End If%>
</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/js/DataTables-1.9.2/media/css/jquery.dataTables.css"/>

<!--#include virtual="/bullying/dynamic-head-items.html"--><script type="text/javascript" language="javascript" src="/bullying/video/problem-form/js/actions.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.7.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script type="text/javascript" src="/js/DataTables-1.9.2/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/js/DataTables-1.9.2/media/js/jquery.dataTables.month-year-sort.js"></script>

<style type="text/css">
 table.videoTable {
	width:834px;
	margin:20px auto;
}
 table.videoTable td {
	vertical-align:top;
	padding:20px 0px;
	border-bottom: solid 3px #343263;
}
table.videoTable tr {
	
	border-top: navy solid thin;
	border-left: none;
	border-right: none;
	font-size: .9em;
}

 table.videoTable td.videoImage {
	width:200px;
}
 table.videoTable td.videoDesc {
	padding-left:20px;
}
.CategoryHeading {
	background-color:#b1221c;
	background:url(/bullying/images/header-bg.jpg) repeat-y right;
	color:#FFF;
	padding:3px 20px;
	margin: 0px 15px;
}
.viewthisvideo
{
  display: block;
  width: 120px;
  height: 23px;
  margin-bottom:20px;
  margin-left:50px;
  background: url("/bullying/video/images/viewthisvideo.png") no-repeat 0 0;
}
.viewthisvideo:hover
{ 
  background-position: 0 -23px;
}

.viewthisvideo span
{
  position: absolute;
  top: -999em;
}
.fixedcentered {
	background-color:transparent;
  	position: fixed;
  	top: 50%;
  	left: 50%;
  	margin-left: -350px;
  	margin-top: -150px;
  	width:700px;
  	height:300px;
  	z-index:1500;
}
#overlay{
	background-color:#000000;
	position:fixed; top:0px; left:0px; width:100%; height:100%; text-align:center; vertical-align:middle;	
	z-index:1000;
}
/******************DATA TABLES STYLES**********************/
.dataTables_filter{
	margin-right:15px;
	font-size:1.1em;
	font-weight:bold;
}
.dataTables_length{
	margin-left:15px;
}
.dataTables_info{
	margin-left:15px;
}
table.dataTable tr.odd {
    background-color: transparent;
}
table.dataTable tr.odd td.sorting_1 {
    background-color: transparent;
}
table.dataTable tr.even td.sorting_1 {
    background-color: transparent;
}
table.videoTable td.month-year-field {
	white-space:nowrap;
	color:#666;
	font-style:italic;
}
table.videoTable td.views {
	text-align:right;
	padding-right:10px;
	white-space:nowrap;
}

.dataTables_wrapper .bottom {
	background-color:#ccc;
	padding:20px 10px;
}
.infosection{
	height:40px;
}
.clear {
	clear:both;
}
</style>

<script type="text/javascript">
$(document).ready(function() {
    $('#allvideo').dataTable( {
		"sPaginationType":"two_button",
		"iDisplayLength": 10,
		"aLengthMenu": [[10, 25, 50, 100, -1], [10, 25, 50, 100, "All"]],
		"sDom": '<"top"<"infosection"ip><"clear"><"searchsection"fl><"clear">>rt<"bottom"ip<"clear">>',
		"aoColumnDefs": [
      		{ "bSortable": false, "aTargets": [ 0 ] },
      		{ "asSorting": [ "desc", "asc" ], "aTargets": [2] },
      		{ "asSorting": [ "desc", "asc" ], "aTargets": [3] }
    	],
		"oLanguage": {
			"sInfo": "Showing _START_ to _END_ of _TOTAL_ records",
 			"sInfoFiltered": " (this table contains _MAX_ records total)",
			"sSearch": "Search Videos: ",
			"oPaginate": {
		        "sPrevious": "Previous page",
		        "sNext": "Next page"
			}
    	}
    } );
});
</script>


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


<div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/video/">Videos</a> / </div>
  <div class="sidebar1">
<!--#include virtual="/bullying/video/nav.html"-->
    <!-- end .sidebar1 --></div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
//<![CDATA[

	// ID and SubId to be Orange
	function querySt(ji) {
		var hu = window.location.search.substring(1);
		var gy = hu.split("&");
		for (i=0;i<gy.length;i++) {
			var ft = gy[i].split("=");
			if (ft[0] == ji) {
				return ft[1];
			}
		}
	}

	
	var currId = querySt("category").toLowerCase();
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
//]]></script>

  <div class="content">


<%If video.EOF Then%>


	<h1 id="maincontent">Videos from <%=Request.QueryString("category")%></h1>
	<h2>Error - No videos where found for this category.</h2>
	    <script type="text/javascript">
    document.write('<div style="width:25em; margin-top:25px; text-align:right; font-size:.8em" class="fltrt"><a href="/bullying/video/problem-form/?video=ListingPage" onclick="ShowForm(); return false">Report a problem </a></div>');
	</script>

 <!-- ######################## POP UP FORM ###################### -->
<div id="overlay" style="display:none">&nbsp;</div>
<iframe frameborder="0" marginheight="0" marginwidth="0" allowtransparency="1" scrolling="no" width="600" height="300" id="problem_form" src="/bullying/video/problem-form/" class="fixedcentered" style="display:none;"></iframe>
<!-- ######################## END FORM ######################## -->
   
    
    
<%Else%>

	<h1 id="maincontent">
	<%If Request.QueryString("category") = "featured" Then%>
	Featured Videos
	<%Else%>
	<%=video.Fields.Item("pageName").Value%> Videos
    <%End If%>
    </h1>
    <table class="videoTable" id="allvideo" cellpadding="10" cellspacing="0">
    <thead>
    <th></th>
    <th>Videos</th>
    <th>Added</th>
    <th>Views</th>
    </thead><tbody>
<%
	Do until video.EOF
		If IsDate(video.Fields.Item("date_posted").Value) Then
			dateVal = MonthName(DatePart("m",video.Fields.Item("date_posted").Value)) & " " & Year(video.Fields.Item("date_posted").Value)
		Else
			dateVal = "January 2009"
		End If
%>		
  		<tr>
  		<td class="videoImage" id="VideoID-<%=video.Fields.Item("video_ID").Value%>" name="VideoID-<%=video.Fields.Item("video_ID").Value%>">
    	<%If Not (IsNull(video.Fields.Item("imageURL").Value) OR video.Fields.Item("imageURL").Value = "") Then%>
        	<img name="videoimage<%=video.Fields.Item("video_ID").Value%>" src="<%=video.Fields.Item("imageURL").Value%>" width="200" height="200" alt="" />
		<%End If%>        
    	</td>
  		<td class="videoDesc">
    	<h3><%=video.Fields.Item("title").Value%></h3>
        
        <p>Description: <%=video.Fields.Item("description").Value%></p>
        
        <img src="/images/movieReelIcon_small.gif" width="25" height="25" alt="" align="middle" style="float:left;" /><a class="viewthisvideo" href="player.asp?video=<%=video.Fields.Item("video_ID")%>"><span>View - <%=video.Fields.Item("title").Value%></span></a>

		<%If Not (IsNull(video.Fields.Item("orgLinkText").Value) OR video.Fields.Item("orgLinkText").Value = "") Then%>
        	<p>This Video can also be found at:<br />
			<span style="font-size:.9em"><a href="<%=video.Fields.Item("orgURL").Value%>" target="_blank"><%=video.Fields.Item("orgLinkText").Value%></a></span></p>
		<%End If%> 
        
        
    	</td>
        <td class="month-year-field"><%=dateVal%></td>
        <td class="views"><%=video.Fields.Item("hit_count").Value%></td>
  </tr>
  <%
  video.MoveNext
  Loop
  Set video = nothing
  %>

</tbody>
</table>
 <%End If%> 
<div id="pageextender" style="clear:both">&nbsp;</div>
  <!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
