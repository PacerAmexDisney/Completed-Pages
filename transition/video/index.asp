<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%

Function SortDictionary(objDict)
  ' declare our variables
  Dim strDict()
  Dim objKey
  Dim strKey,strItem
  Dim X,Y,Z
  Dim intSort
  
  intSort = 2
  ' get the dictionary count
  Z = objDict.Count

  ' we need more than one item to warrant sorting
  If Z > 1 Then
    ' create an array to store dictionary information
    ReDim strDict(Z,2)
    X = 0
    ' populate the string array
    For Each objKey In objDict
        strDict(X,dictKey)  = CStr(objKey)
        strDict(X,dictItem) = CStr(objDict(objKey))
        X = X + 1
    Next

    ' perform a a shell sort of the string array
    For X = 0 to (Z - 2)
      For Y = X to (Z - 1)
			If cInt(strDict(X,intSort)) < cInt(strDict(Y,intSort)) Then
				strKey  = strDict(X,dictKey)
				strItem = strDict(X,dictItem)
				strDict(X,dictKey)  = strDict(Y,dictKey)
				strDict(X,dictItem) = strDict(Y,dictItem)
				strDict(Y,dictKey)  = strKey
				strDict(Y,dictItem) = strItem
			End If
      Next
    Next

    ' erase the contents of the dictionary object
    objDict.RemoveAll

    ' repopulate the dictionary with the sorted information
    For X = 0 to (Z - 1)
      objDict.Add strDict(X,dictKey), strDict(X,dictItem)
    Next

  End If

End Function

Function RemoveQuotes(textitem)
	RemoveQuotes = Replace(textitem, """", "&quot;")
End Function


Dim videoList, rsPopular, catList
Dim video_cmd 

Set video_cmd = Server.CreateObject ("ADODB.Command")
video_cmd.ActiveConnection = MM_PACER_WEB_STRING
video_cmd.CommandText = "SELECT TOP 2 transVideos.*, transVideoSeries.title as seriesTitle, transVideoSeries.id as seriesId" & _
	" FROM transVideoSeries RIGHT JOIN transVideos ON transVideoSeries.id = transVideos.series_id" & _
	" WHERE (transVideos.feature = 'true' AND transVideos.visible <> 'false') ORDER BY date_posted DESC;"

video_cmd.Prepared = true
Set videoList = video_cmd.Execute

video_cmd.CommandText = "SELECT TOP 8 transVideos.*, transVideoSeries.title as seriesTitle, transVideoSeries.id as seriesId, hit_count/(DATEDIFF(d, transVideos.date_posted, GETDATE())+1) as currentPopularity" & _
	" FROM transVideoSeries RIGHT JOIN transVideos ON transVideoSeries.id = transVideos.series_id" & _
	" WHERE (transVideos.feature <> 'true' AND transVideos.visible <> 'false') ORDER BY currentPopularity DESC;"
Set rsPopular = video_cmd.Execute

video_cmd.CommandText = "SELECT topics FROM transVideos WHERE visible <> 'false';"
Set catList = video_cmd.Execute

Const dictKey  = 1
Const dictItem = 2

Dim topicListing, videoCount
fCount = 0
Set topicListing = Server.CreateObject("Scripting.Dictionary")

Do Until catList.EOF
	Dim fItem, fArray, fItemVal
	fArray = Split(catList("topics"), ",")
	For Each fItem in fArray
		fItemVal = CStr(Trim(lCase(fItem)))
		If topicListing.Exists(CStr(fItemVal)) Then
			topicListing.Item(CStr(fItemVal)) = topicListing.Item(CStr(fItemVal)) + 1
		Else
			topicListing.Add fItemVal, 1
		End If
	Next
	videoCount = videoCount + 1
	catList.MoveNext
Loop

SortDictionary topicListing

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%If Not videoList.EOF Then%>
<title>Featured Videos - National Parent Center on Transition and Employment</title>

<meta name="description" content="Featured Videos from the National Parent Center on Transition and Employment">
<!-- for Facebook -->          
<meta property="og:title" content="Featured Videos - National Parent Center on Transition and Employment" />
<meta property="og:type" content="video.other" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/video/"  />
<meta property="og:description" content="Featured Videos from the National Parent Center on Transition and Employment" />
<%End If%>
<link rel="icon" href="http://www.pacer.org/transition/favicon.ico" />
<link href="/transition/css/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
	#allvideo {
		margin-left:10px;
	}
	.videoDesc h3 {
		margin-top:5px;
		padding-top:5px;
		border-top:2px solid #363465;
	}
	.videocontainer {
		font-size:.7em;	
		width:175px; 
		float:left;
		margin:5px 15px;
		min-height:175px;
	}
	.imagewrapper {
		position:relative;
		width:150px; 
		height:100px; 
		border:2px solid #333;
		border-radius:5px;	
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
		color:#363465;
		border-bottom:2px solid #363465;
		padding:3px 20px;
		margin: 10px 5px;
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
	.videoCategory a{
		width:16em;
		background:#e9c300;
		border:1px solid #aa8e00;
		margin:10px;
		padding:10px;
		float:left;
		box-shadow:#000 3px 3px 5px;
		border-radius:8px;
		font-size:.9em;
	}
	.videoCount {
		display:block;
		float:right;
		width:2em;
		text-align:center;
		margin-right:3px;
		color:#A2A2A2;
	}
	.ReadMore {
		color:#000;
		font-weight:bold;
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
	var currId = "featured";
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
        <h1 id="maincontent">Featured Videos</h1>
    </div>
    <table class="videoTable" id="allvideo">
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
                    <li><strong>Date Posted:</strong> <%=dateVal%></li>
                <%If Len(videoList("duration_min")) > 0 Then%>    
                    <li><strong>Duration:</strong> <%=videoList("duration_min")%> min</li>
                <%End If%>
                </ul>
            </div>
        <a class="viewthisvideo" href="/transition/video/player.asp?video=<%=videoList.Fields.Item("id")%>"><span>View - <%=videoList.Fields.Item("title").Value%></span></a>

    	</td>
        </tr>
	  <%
      videoList.MoveNext
      Loop
      Set videoList = nothing
      %>
    </table>
<%End If


Set videoList = nothing
%> 
<%' --------------------------------------------------------------------------- Popular VIDEOS ------------------------------------------------------------------ %>
<h2 class="categoryheading">Popular</h2>
<%
	Do Until rsPopular.EOF
%>    
		<div class="videocontainer">
  			<div class="imagewrapper">
  				<a href="/transition/video/player.asp?video=<%=rsPopular("id")%>" title="Play <%=RemoveQuotes(rsPopular("title"))%>">
            	<img src="<%=rsPopular("image_url")%>" width="150" alt="" /></a>
            </div>
  			<a href="/transition/video/player.asp?video=<%=rsPopular("id")%>" title="Play <%=RemoveQuotes(rsPopular("title"))%>">
			<%=rsPopular("title")%></a><br />
            Views: <%=rsPopular("hit_count")%>
        </div>
            
<%
	rsPopular.MoveNext
	Loop
	Set rsPopular = Nothing
%>  

<%' --------------------------------------------------------------------------- ALL VIDEOS ------------------------------------------------------------------ %>
<hr style="clear:left;" />
<span class="videoCount" style="width:4em; font-size:1.1em; position:absolute; right:15px;">(<%=videoCount%> <span class="fa fa-video-camera"></span>)</span>
<h2 style="text-align:center"><a href="/transition/video/listing.asp">See All Videos</a></h2>



<%' --------------------------------------------------------------------------- TOPICS ------------------------------------------------------------------ %>
<p>Choose a Topic:</p>
<%
Dim topicCount
topicCount = 0
For Each fCategory in topicListing
	topicCount = topicCount + 1
	If topicCount <= 9 Then
%>		
	<div class="videoCategory"><a href="/transition/video/topic.asp?se=<%=fCategory%>"><%=fCategory%><span class="videoCount">(<%=topicListing.Item(fCategory)%>)</span></a> </div>
<%
	End If
Next
Set topicListing = nothing
%>
		<div class="ReadMore" style="width:10em; text-align:center; padding:10px; margin:40px auto 10px; clear:left; font-size:1.1em;"><a href="/transition/video/topiclisting.asp">Show More Topics</a></div>

<div id="pageextender" style="clear:both">&nbsp;</div>
    <!-- end .content -->
  </div>
  
<!--#include virtual="/transition/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
