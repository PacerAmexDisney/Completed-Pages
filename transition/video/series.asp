<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim videoList, videoSeries
Dim video_cmd, seriesId

seriesId = 1
If Len(Request.QueryString("se")) > 0 And IsNumeric(Request.QueryString("se")) Then
	seriesID = Request.QueryString("se")
End If
Set video_cmd = Server.CreateObject ("ADODB.Command")
video_cmd.ActiveConnection = MM_PACER_WEB_STRING
video_cmd.CommandText = "SELECT * FROM transVideos WHERE (series_id = " & seriesId & " AND visible <> 'false') ORDER BY series_category ASC, series_category_pos ASC;"
video_cmd.Prepared = true
Set videoList = video_cmd.Execute

video_cmd.CommandText = "SELECT * FROM transVideoSeries WHERE (id = " & seriesId & " AND visible <> 'false');"
Set videoSeries = video_cmd.Execute
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%If Not videoSeries.EOF Then%>
<title>Series: <%=videoSeries("title")%> - National Parent Center on Transition and Employment</title>

<meta name="description" content="<%=videoSeries("description")%>">
<!-- for Facebook -->          
<meta property="og:title" content="Video Series: <%=videoSeries("title")%> - National Parent Center on Transition and Employment" />
<meta property="og:type" content="video.other" />
<meta property="og:image" content="http://www.pacer.org<%=videoSeries("image_thumb_url")%>" />
<meta property="og:url" content="http://www.pacer.org/transition/video/series.asp?se=<%=seriesId%>"  />
<meta property="og:description" content="<%=videoSeries("description")%>" />
<%End If%>
<link rel="icon" href="http://www.pacer.org/transition/favicon.ico" />
<link href="/transition/css/style.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/transition/dynamic-head-items.html"-->
<style type="text/css">
	#seriesHeader {
		margin-bottom:35px;
		min-height:275px;
<%	If Not videoSeries.EOF Then
	If Len(videoSeries("image_url")) > 0 Then
%>		
		background:#fff url(<%=videoSeries("image_url")%>) top 36px right 10px no-repeat;
<%
	End If
	End If
%>
	}
	#seriesHeader img {
		float:right;
		margin:0px 10px;
	}
	.videoThumb {
		float:left;
		margin-right:15px;
		margin-left:10px;
	}
	.extraInfo {
		margin-left:220px;
	}
	.seriesItem {
		min-height:220px;
		margin:10px;
	}
	.seriesCategory {
		background:#ccc;
		border-radius:8px;
		margin:20px 10px;
		border:1px solid #ccc;
		clear:right;
	}
	.topics {
		color:#888888;
	}
	#mainSeriesDescription {
		width:490px;
	}
	.addDivider {
		padding-top:10px;
		border-top:1px solid #ccc;
	}
	.fa-youtube-play, .fa-play-circle {
		color:#ed1c24;
	}
	a:hover .fa-play-circle {
		color:#798ec6;
		color: rgba(121, 142, 209, 0.4);
	}
</style>
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
	var currId="series<%=videoSeries("id")%>";
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
<%If Not (videoSeries.EOF Or videoList.EOF) Then%>
	
	
	
	<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>
    <div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>
    <div id="seriesHeader">
        <h1 id="maincontent"><%=videoSeries("title")%></h1>
        <!--<img src="<%=videoSeries("image_url")%>" width="200" height="200" alt="" />-->
        <div id="mainSeriesDescription"><p><%=videoSeries("description")%></p></div>
    </div>
        
    <%
	Dim currVideoCat
	Do Until videoList.EOF
    	If currVideoCat <> videoList("series_category") Then
			currVideoCat = videoList("series_category")
			dividerClass = ""
	%>
        	<h2 class="seriesCategory"><%=Right(videoList("series_category"), Len(videoList("series_category")) - 3)%></h2>
    <%
		End If
	%>
        <div class="seriesItem <%=dividerClass%>">
        	<%dividerClass = "addDivider"%>
            <%If Len(videoList("image_url")) > 0 Then%>
            <a href="/transition/video/player.asp?video=<%=videoList("id")%>" title="Play Video"><img class="videoThumb" src="<%=videoList("image_url")%>" width="200" height="200" alt="Watch - <%=videoList("title")%>" /></a>
            <%End If%>
            <h3><a href="/transition/video/player.asp?video=<%=videoList("id")%>"><%=videoList("title")%> <span class="fa fa-play-circle"></span></a></h3>
            <%=videoList("description")%>
            <div class="extraInfo">
                <ul>
				<%If Len(videoList("topics")) > 0 Then%>
                    <li><strong>Topics:</strong> <span class="topics"><%=videoList("topics")%></span></li>
                <%End If%>
                <%If Len(videoList("date_posted")) > 0 Then%>    
                    <li><strong>Date Posted:</strong> <%=videoList("date_posted")%></li>
                <%End If%>
                <%If Len(videoList("duration_min")) > 0 Then%>    
                    <li><strong>Duration:</strong> <%=videoList("duration_min")%> min</li>
                <%End If%>
                </ul>
            </div>
        </div>
    <%
        videoList.MoveNext
	Loop
	%>
<%Else ' videoSeries or videoList is blank %>

<h1 style="color:red;">Video Series Not Found</h1>
<p>The Video Series you are looking for can not be found.</p>

<%End If

Set videoList = nothing
Set videoSeries = nothing
%>   
    <!-- end .content -->
  </div>
  
<!--#include virtual="/transition/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
