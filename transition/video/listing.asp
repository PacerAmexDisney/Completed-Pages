<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim videoList
Dim video_cmd 

Set video_cmd = Server.CreateObject ("ADODB.Command")
video_cmd.ActiveConnection = MM_PACER_WEB_STRING
video_cmd.CommandText = "SELECT transVideos.*, transVideoSeries.title as seriesTitle, transVideoSeries.id as seriesId" & _
	" FROM transVideoSeries RIGHT JOIN transVideos ON transVideoSeries.id = transVideos.series_id" & _
	" WHERE (transVideos.visible <> 'false') ORDER BY date_posted DESC;"

video_cmd.Prepared = true
Set videoList = video_cmd.Execute
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%If Not videoList.EOF Then%>
<title>Video Listing - National Parent Center on Transition and Employment</title>

<meta name="description" content="Video's from the National Parent Center on Transition and Employment">
<!-- for Facebook -->          
<meta property="og:title" content="Video Listing - National Parent Center on Transition and Employment" />
<meta property="og:type" content="video.other" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/video/listing.asp"  />
<meta property="og:description" content="Video's from the National Parent Center on Transition and Employment" />
<%End If%>
<link rel="icon" href="http://www.pacer.org/transition/favicon.ico" />
<link href="/transition/css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/js/DataTables-1.9.2/media/css/jquery.dataTables.css"/>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.7.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script type="text/javascript" src="/js/DataTables-1.9.2/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/js/DataTables-1.9.2/media/js/jquery.dataTables.month-year-sort.js"></script>

<!--#include virtual="/transition/dynamic-head-items.html"-->
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
	margin-top:-30px;
}
#allvideo_paginate {
	display:none;
}
#allvideo_info {
	float:right;
	margin-right:10px;
}
.clear {
	clear:both;
}
.topicsCol, .seriesCol {
	display:none;
}
	.videoThumb {
		float:left;
		margin-right:15px;
		margin-left:10px;
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
      		{ "asSorting": [ "desc", "asc" ], "aTargets": [3] },
      		{ "bSortable": false, "aTargets": [ 4 ] },
      		{ "bSortable": false, "aTargets": [ 5 ] },
    	],
		"oLanguage": {
			"sInfo": "Showing Videos _START_ - _END_ of _TOTAL_ videos",
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

<!--#include virtual="/transition/dynamic-header.html"-->
<!--#include virtual="/transition/topnav.html"-->

<div class="breadcrumb"> <a href="/transition/">Home</a> / <a href="/transition/video/">Videos</a> /</div>

  <div class="sidebar1">
<!--#include virtual="/transition/video/nav.html"-->
    <!-- end .sidebar1 --></div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId = "listing";
	var showTree = "none";
	var showTree2 = "none";
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

  <div class="content">
<%If Not videoList.EOF Then%>
	
	
	
	<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>
    <div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>
    <div id="topicHeader">
        <h1 id="maincontent">Videos</h1>
    </div>
        
        
    <table class="videoTable" id="allvideo">
    <thead>
    <th></th>
    <th>Videos</th>
    <th>Added</th>
    <th>Views</th>
    <th class="topicsCol">Topics</th>
    <th class="seriesCol">Series</th>
    </thead><tbody>
    <%
	Do until videoList.EOF
		If IsDate(videoList.Fields.Item("date_posted").Value) Then
			dateVal = MonthName(DatePart("m",videoList.Fields.Item("date_posted").Value)) & " " & Year(videoList.Fields.Item("date_posted").Value)
		Else
			dateVal = "January 2015"
		End If
%>		
  		<tr>
  		<td class="videoImage" id="VideoID-<%=videoList.Fields.Item("id").Value%>" name="VideoID-<%=videoList.Fields.Item("id").Value%>">
    	<%If Len(videoList.Fields.Item("image_url").Value) > 0 Then%>
        	<a href="/transition/video/player.asp?video=<%=videoList.Fields.Item("id")%>" title="Play Video"><img class="videoThumb" name="videoimage<%=videoList.Fields.Item("id").Value%>" src="<%=videoList.Fields.Item("image_url").Value%>" width="200" height="200" alt="" /></a>
		<%End If%>        
    	</td>
  		<td class="videoDesc">
    	<h3><%=videoList.Fields.Item("title").Value%></h3>
        
        <p><%=videoList.Fields.Item("description").Value%></p>
            <div class="extraInfo">
                <ul>
				<%If Len(videoList("seriesTitle")) > 0 Then%>
                    <li>Part of the <a href="/transition/video/series.asp?se=<%=videoList("seriesId")%>"><%=videoList("seriesTitle")%> Series</a></li>
                <%End If%>
				<%If Len(videoList("topics")) > 0 Then%>
                    <li><strong>Topics:</strong> <span class="topics"><%=videoList("topics")%></span></li>
                <%End If%>
                <%If Len(videoList("duration_min")) > 0 Then%>    
                    <li><strong>Duration:</strong> <%=videoList("duration_min")%> min</li>
                <%End If%>
                </ul>
            </div>
        <a class="viewthisvideo" href="/transition/video/player.asp?video=<%=videoList.Fields.Item("id")%>"><span>View - <%=videoList.Fields.Item("title").Value%></span></a>

    	</td>
        <td class="month-year-field"><%=dateVal%></td>
        <td class="views"><%=videoList.Fields.Item("hit_count").Value%></td>
        <td class="topicsCol"><%=videoList.Fields.Item("topics").Value%></td>
        <td class="seriesCol"><%=videoList.Fields.Item("seriesTitle").Value%></td>
        
  </tr>
  <%
  videoList.MoveNext
  Loop
  Set videoList = nothing
  %>

</tbody>
</table>
        
<%Else ' videoSeries or videoList is blank %>

<h1 style="color:red;">0 Videos on your requested topic where found</h1>
<p>Sorry, we don't have any video's on '<%=topicQry%>' at this time.  Please check back in the future.</p>

<%End If

Set videoList = nothing
%>   
    <!-- end .content -->
  </div>
  
<!--#include virtual="/transition/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
