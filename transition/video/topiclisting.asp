<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Const dictKey  = 1
Const dictItem = 2

Function SortDictionary(objDict,intSort)
  ' declare our variables
  Dim strDict()
  Dim objKey
  Dim strKey,strItem
  Dim X,Y,Z

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
        Set strDict(X,dictItem) = objDict(objKey)
        X = X + 1
    Next

    ' perform a a shell sort of the string array
    For X = 0 to (Z - 2)
      For Y = X to (Z - 1)
			If StrComp(strDict(X,intSort),strDict(Y,intSort),vbTextCompare) > 0 Then
				strKey  = strDict(X,dictKey)
				Set strItem = strDict(X,dictItem)
				strDict(X,dictKey)  = strDict(Y,dictKey)
				Set strDict(X,dictItem) = strDict(Y,dictItem)
				strDict(Y,dictKey)  = strKey
				Set strDict(Y,dictItem) = strItem
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


Dim catList
Dim video_cmd 

Set video_cmd = Server.CreateObject ("ADODB.Command")
video_cmd.ActiveConnection = MM_PACER_WEB_STRING
video_cmd.CommandText = "SELECT id, topics, title, hit_count FROM transVideos WHERE visible <> 'false' ORDER BY hit_count;"
video_cmd.Prepared = true
Set catList = video_cmd.Execute

Dim topicListing, topicCounts, videoCount, newDict, currDict, topicTitles
Set topicListing = Server.CreateObject("Scripting.Dictionary") ' lCase Topic, Dictionary(VideoTitles, VideoID's)
Set topicCounts = Server.CreateObject("Scripting.Dictionary") ' lCase Topic, Int Count of Videos that contain that topic
Set topicTitles = Server.CreateObject("Scripting.Dictionary") 'lCase Topic, Original 1st Topic with Capitalization
Do Until catList.EOF
	Dim fItem, fArray, fItemVal
	fArray = Split(catList("topics"), ",")
	For Each fItem in fArray
		fItemVal = CStr(Trim(lCase(fItem)))
		If topicListing.Exists(CStr(fItemVal)) Then
			' Topic exists check to see if it has 3 items yet
			topicCounts.Item(CStr(fItemVal)) = topicCounts.Item(CStr(fItemVal)) + 1
			set currDict = topicListing.Item(CStr(fItemVal))
			If currDict.count < 3 Then
				If Not currDict.Exists(CStr(catList("title"))) Then
					currDict.Add CStr(catList("title")), CStr(catList("id"))
				End If
			End If
		Else
			set newDict = Server.CreateObject("Scripting.Dictionary")
			newDict.Add CStr(catList("title")), CStr(catList("id"))
			topicListing.Add fItemVal, newDict
			topicCounts.Add fItemVal, 1
			topicTitles.Add fItemVal, Trim(cStr(fItem))			
		End If
	Next
	videoCount = videoCount + 1
	catList.MoveNext
Loop

Set catList = nothing
SortDictionary topicListing,dictKey
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Video Topic Listing - National Parent Center on Transition and Employment</title>

<meta name="description" content="Video Topic Listing from the National Parent Center on Transition and Employment">
<!-- for Facebook -->          
<meta property="og:title" content="Video Topic Listing - National Parent Center on Transition and Employment" />
<meta property="og:type" content="video.other" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/video/topiclisting.asp" />
<meta property="og:description" content="Video Topic Listing from the National Parent Center on Transition and Employment" />
<link rel="icon" href="http://www.pacer.org/transition/favicon.ico" />
<link href="/transition/css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/js/DataTables-1.9.2/media/css/jquery.dataTables.css"/>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
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
table.videoTable td.videoCount {
	padding:23px;
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
    background-color: #EEEEF2;
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
	display:none;
}
.clear {
	clear:both;
}
.topicsCol, .seriesCol {
	display:none;
}
.topics {
	color:#888888;
}

</style>

<script type="text/javascript">
$(document).ready(function() {
    $('#allvideo').dataTable( {
		"bPaginate": false,
		"sPaginationType":"two_button",
		"aLengthMenu": [[10, 25, 50, 100, -1], [10, 25, 50, 100, "All"]],
		"sDom": '<"top"<"infosection"ip><"clear"><"searchsection"fl><"clear">>rt<"bottom"ip<"clear">>',
		"aoColumnDefs": [
      		{ "asSorting": [ "asc", "desc" ], "aTargets": [0] },
      		{ "asSorting": [ "desc", "asc" ], "sType": "numeric", "aTargets": [1] },
      		{ "bSortable": false, "aTargets": [ 2 ] }
    	],
		"oLanguage": {
			"sInfo": "Showing _START_ to _END_ of _TOTAL_ records",
 			"sInfoFiltered": " (this table contains _MAX_ records total)",
			"sSearch": "Search Topics: ",
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
	var currId = "<%=Replace(lCase(topicQry), " ", "")%>";
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
	<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>
    <div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>
    <div id="topicHeader">
        <h1 id="maincontent">All Available Video Topics</h1>
    </div>
        
        
    <table class="videoTable" id="allvideo">
    <thead>
    <th>Topics</th>
    <th width="90px;"># Videos</th>
    <th>Popular Titles</th>
    </thead><tbody>
    <%
	For Each fTopic in topicListing
	%>		
  		<tr>
  		<td class="topicTitle">
    	<h3><a href="/transition/video/topic.asp?se=<%=Trim(topicTitles.Item(fTopic))%>"><%=topicTitles.Item(fTopic)%></a></h3>
    	</td>
        <td class="videoCount"><%=topicCounts.Item(fTopic)%></td>
        <td class="popularTitle">
			<ul>
			<%
			For Each fTitle in topicListing.Item(fTopic)
			%>
            	<li><%=fTitle%></li>
            <%
            Next
			%>
            </ul>
        </td>
  </tr>
  <%
  	Next
  %>

</tbody>
</table>
        
<%
Set videoList = nothing
Set topicListing = nothing
Set topicCounts = nothing
%>   
    <!-- end .content -->
  </div>
  
<!--#include virtual="/transition/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
