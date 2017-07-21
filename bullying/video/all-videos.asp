<%@LANGUAGE="VBSCRIPT"%>

<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/bullying/video/"
%>





<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim rsAll, rsPopular, rsRecent, rsFeatured, sql, fSort
Dim video_cmd

Set video_cmd = Server.CreateObject ("ADODB.Command")
video_cmd.ActiveConnection = MM_PACER_WEB_STRING

fSort = Request.QueryString("sort_by")

sql = "SELECT * FROM bullyVideos WHERE visible <> 'false' "

If fSort = "date-desc" Then
	sql = sql & "ORDER BY date_posted DESC;"
ElseIf fSort = "date-asc" Then
	sql = sql & "ORDER BY date_posted;"
ElseIf fSort = "title-desc" Then
	sql = sql & "ORDER BY title DESC;"
ElseIf fSort = "title-asc" Then
	sql = sql & "ORDER BY title;"
ElseIf fSort = "count-asc" Then
	sql = sql & "ORDER BY hit_count"
Else
	sql = sql & "ORDER BY hit_count DESC;"
End If
video_cmd.CommandText = sql
video_cmd.Prepared = true
Set rsAll = video_cmd.Execute

video_cmd.CommandText = "SELECT TOP 6 * FROM bullyVideos WHERE visible <> 'false' ORDER BY hit_count DESC;"
Set rsPopular = video_cmd.Execute

video_cmd.CommandText = "SELECT TOP 6 * FROM bullyVideos WHERE visible <> 'false' ORDER BY date_posted DESC;"
Set rsRecent = video_cmd.Execute

video_cmd.CommandText = "SELECT TOP 6 * FROM bullyVideos WHERE visible = 'feature' ORDER BY date_posted DESC;"
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
<!--#include virtual="/bullying/dynamic-head-items.html"--><style type="text/css">
#leftside {
	float:left; 
	width:528px;
	margin-left:5px;
}
#leftside h2 {
	padding:15px 5px;
	margin:0px;
}
#list {
	font-size:.7em;
	width:254px; 
	height:657px;
	overflow:auto;
	overflow-y:auto;
	overflow-x:hidden; 
	float:left; 
	margin-left:10px;
	border-left:1px solid #C60;
}
#list h2 {
	font-size:2em;
	text-align:center;
}
#list ul{
	margin:0px;
	padding:0px;
}
#list li {
	margin-left:0px;
	padding-left:10px;
}
.contentscrollwrapper {
	width:1060px; 
}
.scrollbox {
	position:relative;
	overflow-x:scroll; 
	overflow-y:hidden;
	padding-left:5px; 
	width:500px;
}
.videocontainer {
	font-size:.7em;	
	width:175px; 
	float:left;
	margin-bottom:10px;
}
.imagewrapper {
	position:relative;
	width:150px; 
	height:100px; 
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
<h1 style="margin-bottom:0px; padding-bottom:0px;">All Videos</h1>
<div id="leftside">

<h2 style="clear:left">Featured</h2>
<div class="scrollbox">
	<div class="contentscrollwrapper">
<%
	Do Until rsFeatured.EOF
%>    
		<div class="videocontainer">
  			<div class="imagewrapper">
  				<a href="/bullying/video/player.asp?video=<%=rsFeatured("video_ID")%>" title="<%=RemoveQuotes(rsFeatured("title"))%>">
            	<img src="<%=rsFeatured("imageURL")%>" width="150" alt="" /></a>
            </div>
  			<a href="/bullying/video/player.asp?video=<%=rsFeatured("video_ID")%>" title="<%=RemoveQuotes(rsFeatured("title"))%>">
			<%=Left(rsFeatured("title"), 24)%>...</a><br />
            Views: <%=rsFeatured("hit_count")%>
        </div>
            
<%
	rsFeatured.MoveNext
	Loop
	Set rsFeatured = Nothing
%>  
		<div class="clearvideos">&nbsp;</div>
	</div>
</div>



<h2>Popular</h2>
<div class="scrollbox">
	<div class="contentscrollwrapper">
<%
	Do Until rsPopular.EOF
%>    
		<div class="videocontainer">
  			<div class="imagewrapper">
  				<a href="/bullying/video/player.asp?video=<%=rsPopular("video_ID")%>" title="<%=RemoveQuotes(rsPopular("title"))%>">
            	<img src="<%=rsPopular("imageURL")%>" width="150" alt="" /></a>
            </div>
  			<a href="/bullying/video/player.asp?video=<%=rsPopular("video_ID")%>" title="<%=RemoveQuotes(rsPopular("title"))%>">
			<%=Left(rsPopular("title"), 24)%>...</a><br />
            Views: <%=rsPopular("hit_count")%>
        </div>
            
<%
	rsPopular.MoveNext
	Loop
	Set rsPopular = Nothing
%>  
        <div class="clearvideos">&nbsp;</div>
	</div>
</div>

<h2 style="clear:left">Recent</h2>
<div class="scrollbox">
	<div class="contentscrollwrapper">
		
        
<%
	Do Until rsRecent.EOF
%>    
		<div class="videocontainer">
  			<div class="imagewrapper">
  				<a href="/bullying/video/player.asp?video=<%=rsRecent("video_ID")%>" title="<%=RemoveQuotes(rsRecent("title"))%>">
            	<img src="<%=rsRecent("imageURL")%>" width="150" alt="" /></a>
            </div>
  			<a href="/bullying/video/player.asp?video=<%=rsRecent("video_ID")%>" title="<%=RemoveQuotes(rsRecent("title"))%>">
			<%=Left(rsRecent("title"), 24)%>...</a><br />
            Date: <%=rsRecent("date_posted")%>
        </div>
            
<%
	rsRecent.MoveNext
	Loop
	Set rsRecent = Nothing
%>  
        <div class="clearvideos">&nbsp;</div>
	</div>
</div>

</div>

<div id="list">
<h2>All Titles</h2>

<%
Dim dateQuery, dateTitle, dateArrow, titleQuery, titleTitle, titleArrow, countQuery, countTitle, countArrow

dateQuery = "date-desc"
dateTitle = "Sort List by Most Recent First"
dateArrow = "&darr;"

titleQuery = "title-asc"
titleTitle = "Sort List By Title Alphabetically"
titleArrow = "&uarr;"

countQuery = "count-desc"
countTitle = "Sort List By Views From Most Viewed to Least"
countArrow = "&darr;"


If fSort = "date-desc" Then
	dateQuery = "date_asc"
	dateTitle = "Sort List by Least Recent First"
	dateArrow = "&uarr;"
ElseIf fSort = "title-asc" Then
	titleQuery = "title-desc"
	titleTitle = "Sort List By Title Reverse Alphabetically"
	titleArrow = "&darr;"
ElseIf fSort = "count-desc" Or fSort = "" Then
	countQuery = "count-asc"
	countTitle = "Sort List By Views From Least Viewed to Most"
	countArrow = "&uarr;"
End If

%>


<p class="centered"><a href="all-videos.asp?sort_by=<%=dateQuery%>" title="<%=dateTitle%>">Date</a> <%=dateArrow%> | 
					<a href="all-videos.asp?sort_by=<%=titleQuery%>" title="<%=titleTitle%>">Title</a> <%=titleArrow%> | 
                    <a href="all-videos.asp?sort_by=<%=countQuery%>" title="<%=countTitle%>">Most Viewed</a> <%=countArrow%>
</p>
<ul class="nobullet">

<%
Dim titleText
Do Until rsAll.EOF
%>
	<li><a href="/bullying/video/player.asp?video=<%=rsAll("video_ID")%>"><br />
		<%=rsAll("title")%></a><br /><br />
		Date: <%=rsAll("date_posted")%><br />
		Views: <%=rsAll("hit_count")%>	</li>
<%
rsAll.MoveNext
Loop
Set rsAll = Nothing
%>
</ul>
</div>



<p>&nbsp;</p>
<div id="pageextender" style="clear:both">&nbsp;</div>
  <!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
