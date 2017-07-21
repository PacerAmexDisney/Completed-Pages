<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim rsAll, rsPopular, rsRecent, rsFeatured, sql, fSort, dateVal
Dim video_cmd

Set video_cmd = Server.CreateObject ("ADODB.Command")
video_cmd.ActiveConnection = MM_PACER_WEB_STRING

fSort = Request.QueryString("sort_by")

sql = "SELECT * FROM bullyVideos WHERE visible <> 'false' ORDER BY date_posted DESC "

video_cmd.CommandText = sql
video_cmd.Prepared = true
Set rsAll = video_cmd.Execute

video_cmd.CommandText = "SELECT TOP 4 *, hit_count/(DATEDIFF(d, date_posted, GETDATE())+1) as currentPopularity FROM bullyVideos WHERE visible = 'true' ORDER BY currentPopularity DESC;"
Set rsPopular = video_cmd.Execute

video_cmd.CommandText = "SELECT TOP 4 * FROM bullyVideos WHERE visible <> 'false' ORDER BY date_posted DESC;"
Set rsRecent = video_cmd.Execute

video_cmd.CommandText = "SELECT TOP 4 * FROM bullyVideos WHERE visible = 'feature' ORDER BY date_posted DESC;"
Set rsFeatured = video_cmd.Execute
	

Function RemoveQuotes(textitem)
	RemoveQuotes = Replace(textitem, """", "&quot;")
End Function



%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center - All Videos</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
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

<!--#include virtual="/bullying/dynamic-head-items.html"-->

<style type="text/css">
.videocontainer {
	font-size:.7em;	
	width:175px; 
	float:left;
	margin:5px 15px;;
}
.imagewrapper {
	position:relative;
	width:150px; 
	height:100px; 
	border:2px solid #333;	
	overflow:hidden;
	margin-bottom:5px;
}
.imagewrapper img {
	position:relative;
	top:-15px;
}
.clearvideos {
	clear:left; 
	height:1px;
}
.categoryheading {
	/*
	background-color:#b1221c;
	background:url(/bullying/images/header-bg.jpg) repeat-y right;
	*/
	color:#363465;
	border-bottom:2px solid #363465;
	padding:3px 20px;
	margin: 10px 5px;
}
#allvideo{
	padding:10px;
}
#allvideo th{
	font-size:1.2em;
}
#allvideo img {
	border:2px solid #333;	
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
      		{ "asSorting": [ "desc", "asc" ], "aTargets": [4] },
      		{ "asSorting": [ "desc", "asc" ], "aTargets": [3] },
      		{ "sType": "month-year", "aTargets": [ 3 ] }
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


<div class="breadcrumb"> <a href="/bullying/">Home</a> /</div>
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

	
	var currId = "all";
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
<h1 style="margin-bottom:0px; padding-bottom:0px;">Videos</h1>
<div style="width:15em; position:absolute; top:0px; right:0px; text-align:center" id="gotoallvideos">
  <a href="#alltitles">View All Videos</a> </div>
<div id="videoHighlight">

<h2 class="categoryheading">Featured</h2>
<%
	Do Until rsFeatured.EOF
%>    
		<div class="videocontainer">
  			<div class="imagewrapper">
  				<a href="/bullying/video/player.asp?video=<%=rsFeatured("video_ID")%>" title="<%=RemoveQuotes(rsFeatured("title"))%>">
            	<img src="<%=rsFeatured("imageURL")%>" width="150" alt="" /></a>
            </div>
  			<a href="/bullying/video/player.asp?video=<%=rsFeatured("video_ID")%>" title="<%=RemoveQuotes(rsFeatured("title"))%>">
			<%=rsFeatured("title")%></a><br />
            Views: <%=rsFeatured("hit_count")%>
        </div>
            
<%
	rsFeatured.MoveNext
	Loop
	Set rsFeatured = Nothing
%>  
		<div class="clearvideos">&nbsp;</div>



<h2 class="categoryheading">Popular</h2>
<%
	Do Until rsPopular.EOF
%>    
		<div class="videocontainer">
  			<div class="imagewrapper">
  				<a href="/bullying/video/player.asp?video=<%=rsPopular("video_ID")%>" title="<%=RemoveQuotes(rsPopular("title"))%>">
            	<img src="<%=rsPopular("imageURL")%>" width="150" alt="" /></a>
            </div>
  			<a href="/bullying/video/player.asp?video=<%=rsPopular("video_ID")%>" title="<%=RemoveQuotes(rsPopular("title"))%>">
			<%=rsPopular("title")%></a><br />
            Views: <%=rsPopular("hit_count")%>
        </div>
            
<%
	rsPopular.MoveNext
	Loop
	Set rsPopular = Nothing
%>  
        <div class="clearvideos">&nbsp;</div>

<h2 class="categoryheading">Recent</h2>
<%
	Do Until rsRecent.EOF
%>    
		<div class="videocontainer">
  			<div class="imagewrapper">
  				<a href="/bullying/video/player.asp?video=<%=rsRecent("video_ID")%>" title="<%=RemoveQuotes(rsRecent("title"))%>">
            	<img src="<%=rsRecent("imageURL")%>" width="150" alt="" /></a>
            </div>
  			<a href="/bullying/video/player.asp?video=<%=rsRecent("video_ID")%>" title="<%=RemoveQuotes(rsRecent("title"))%>">
			<%=rsRecent("title")%></a><br />
            Date: <%=rsRecent("date_posted")%>
        </div>
            
<%
	rsRecent.MoveNext
	Loop
	Set rsRecent = Nothing
%>  
        <div class="clearvideos">&nbsp;</div>

</div><!--End videoHighlight Section -->

<h2 class="categoryheading" id="alltitles">All Titles</h2>

<table id="allvideo" cellpadding="5" cellspacing="5">
<thead>
<tr>
<th></th>
<th>Title</th>
<th>Category</th>
<th>Date</th>
<th>Views</th>
</tr>
</thead>
<tbody>
<%
Dim titleText
Do Until rsAll.EOF
	If IsDate(rsAll.Fields.Item("date_posted").Value) Then
		dateVal = MonthName(DatePart("m",rsAll.Fields.Item("date_posted").Value)) & " " & Year(rsAll.Fields.Item("date_posted").Value)
	Else
		dateVal = "January 2009"
	End If

%>
<tr>
<td><a href="/bullying/video/player.asp?video=<%=rsAll("video_ID")%>"><img src="<%=rsAll("imageURL")%>" width="150" alt="<%=RemoveQuotes(rsAll("title"))%>" /></a></td>
<td><a href="/bullying/video/player.asp?video=<%=rsAll("video_ID")%>"><%=RemoveQuotes(rsAll("title"))%></a></td>
<td><%=rsAll("pageName")%></td>
<td><%=dateVal%></td>
<td><%=rsAll("hit_count")%></td>
</tr>
<%
rsAll.MoveNext
Loop
Set rsAll = Nothing
%>
</tbody>
</table>

<div id="pageextender" style="clear:both">&nbsp;</div>
  <!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
