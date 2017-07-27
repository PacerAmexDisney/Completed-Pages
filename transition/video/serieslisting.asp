<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim seriesList, videoList
Dim video_cmd

Set video_cmd = Server.CreateObject ("ADODB.Command")
video_cmd.ActiveConnection = MM_PACER_WEB_STRING
video_cmd.CommandText = "SELECT transVideoSeries.id, transVideoSeries.visible, transVideoSeries.title, transVideoSeries.description, transVideoSeries.image_url, transVideoSeries.company, transVideoSeries.company_url, Count(transVideos.id) AS videoCount" & _
						" FROM transVideoSeries LEFT JOIN transVideos ON transVideoSeries.id = transVideos.series_id" & _
						" GROUP BY transVideoSeries.id, transVideoSeries.visible, transVideoSeries.title, transVideoSeries.description, transVideoSeries.image_url, transVideoSeries.company, transVideoSeries.company_url" & _
						" HAVING transVideoSeries.visible = 'true'" & _
						" ORDER BY transVideoSeries.title;"

video_cmd.Prepared = true
Set seriesList = video_cmd.Execute

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Video Series List - National Parent Center on Transition and Employment</title>

<meta name="description" content="Video Series List from the National Parent Center on Transition and Employment">
<!-- for Facebook -->          
<meta property="og:title" content="Video Series List - National Parent Center on Transition and Employment" />
<meta property="og:type" content="video.other" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/video/serieslisting.asp"  />
<meta property="og:description" content="Video Series List from the National Parent Center on Transition and Employment" />
<link rel="icon" href="http://www.pacer.org/transition/favicon.ico" />
<link href="/transition/css/style.css" rel="stylesheet" type="text/css" />

<!--#include virtual="/transition/dynamic-head-items.html"-->
<style type="text/css">
	.seriesWrapper {
		margin-top:10px;
		margin-left:7px;
		padding:30px;
		border-top:2px solid #373566;
	}
	.content {
		background:none;
	}
	.seriesWrapper p {
		max-width:400px;
	}
	.goToSeries {
		margin-left:50px;
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
	var currId = "series";
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
<%If Not seriesList.EOF Then%>
	
	
	
	<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>
    <div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>
    <div id="topicHeader">
        <h1 id="maincontent">Video Series</h1>
    </div>

<%
Do Until seriesList.EOF
%>

<div class="seriesWrapper" style="background:#fff url(<%=seriesList("image_url")%>) no-repeat top 41px right;">
	<h2><%=seriesList("title")%></h2>
    <p><%=seriesList("description")%></p>
    <p><%=seriesList("videoCount")%> Videos  <span class="goToSeries"><a href="/transition/video/series.asp?se=<%=seriesList("id")%>">View This Series &gt;&gt;&gt;</a></span></p>
</div>
        
        
<%
  seriesList.MoveNext
Loop
%>

        
<%Else ' videoSeries or videoList is blank %>

<h1 style="color:red;">Error - No Video Series where found</h1>

<%End If

Set seriesList = nothing
%>   
    <!-- end .content -->
  </div>
  
<!--#include virtual="/transition/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
