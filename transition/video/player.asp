<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Function RemoveHTML( strText )
	Dim RegEx

	Set RegEx = New RegExp

	RegEx.Pattern = "<[^>]*>"
	RegEx.Global = True

	RemoveHTML = RegEx.Replace(strText, "")
End Function


Dim video_rs, series_rs, videoID
Dim video_cmd, lineData, fso
Set fso = Server.CreateObject("Scripting.FileSystemObject") 

videoID = 1
If Request.QueryString("video") <> "" Then
	videoID = Replace(Request.QueryString("video"), "'", "''")
End If

Set video_cmd = Server.CreateObject ("ADODB.Command")
video_cmd.ActiveConnection = MM_PACER_WEB_STRING
video_cmd.CommandText = "SELECT * FROM transVideos WHERE id = " & videoID & " AND visible = 'true';" 
video_cmd.Prepared = true

Set video_rs = video_cmd.Execute
If video_rs.EOF Then
	Response.Redirect("video-not-found.asp")
End If

If video_rs("series_id") > 0 Then
	video_cmd.CommandText = "SELECT * FROM transVideos WHERE series_id = " & video_rs("series_id") & " AND visible = 'true'" & _
								" ORDER BY series_category, series_category_pos;" 
	Set series_rs = video_cmd.Execute
End If

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%If Not video_rs.EOF Then%>
	<title><%=Replace(video_rs("title"), """", "&quot;")%> - National Parent Center on Transition and Employment</title>
<%Else%>
	<title>Video Not Found - National Parent Center on Transition and Employment</title>
<%End If%>
<meta name="description" content="<%=RemoveHTML(Replace(video_rs("description"), """", "&quot;"))%>" />
<!-- for Facebook -->          
<%If Not video_rs.EOF Then%>
<meta property="og:title" content="<%=Replace(video_rs("title"), """", "&quot;")%> - National Parent Center on Transition and Employment" />
<meta property="og:type" content="video.other" />
<meta property="og:image" content="http://www.pacer.org<%=video_rs("image_url")%>" />
<meta property="og:url" content="http://www.pacer.org/transition/video/player.asp?video=<%=video_rs("id")%>" />
<meta property="og:description" content="<%=RemoveHTML(Replace(video_rs("description"), """", "&quot;"))%>" />
<%End If%>
<link rel="icon" href="http://www.pacer.org/transition/favicon.ico" />

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}

var youTubeImage = new Image();
youTubeImage.onerror = function(){
$('#altPlayerMsg').hide();
$('#prevPage').hide();	
$('#youTubeBlocked').show();
};
// Google Analytics Event Tracking Using jQuery Event API v1.3

$(document).ready(function() {
	youTubeImage.src = "http://www.youtube.com/favicon.ico";
	 $( "#tabs" ).tabs({
		collapsible: true
	 });
	$('#likeButton').on('click', function() {
	  ga("send", "event", "Transition Video", "Like", "ID<%=video_rs("id")%>-<%=Replace(video_rs("title"), """", "&quot;")%>");
	  $('#helpfulQuestion').html('<p>Thank you for your response.</p>');
	});
	$('#dislikeButton').on('click', function() {
	  ga("send", "event", "Transition Video", "Dislike", "ID<%=video_rs("id")%>-<%=Replace(video_rs("title"), """", "&quot;")%>");
	  $('#helpfulQuestion').html('<p>Thank you for your response.</p>');
	});
	 });
</script>


<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css" />
<link href="/transition/css/style.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/transition/dynamic-head-items.html"-->


<style type="text/css">
.breadcrumb {
	min-height:27px;
}
.infoWrapper {
	margin:20px 10px; 
	font-size:.8em;
	position:static;
}
#tabs {overflow:hidden;}
.seriesPage {
	margin-left:300px;
}
.seriesPage #descriptionTitle {
	clear:right;
}
#seriesList {
	width:270px;
	float:left;
	border:1px solid #ccc;
	border-radius:5px;
	background:#fff;
	padding:10px;
	margin-left:5px;
}
#seriesList h4 {
	margin-bottom:5px;
	padding:5px;
	background:#ccc;
	border-radius:5px;
	clear:both;
}
#seriesList .seriesItem {
	padding:10px;
}
#seriesList .seriesItem a{
	max-width:210px;
	display:block;
	text-indent:-9px;
	margin-left:10px;
}

#seriesList .currItem {
	background:#FAE2C9;
	padding-left:20px;
	border-radius:5px;
	margin-bottom:5px;
}
#seriesList .duration {
	font-size:.9em;
	float:right;
	display:block;
	color:#888;
}
#videowrapper {
	margin:-65px auto 5px;
	width:700px;
	background:#fff;
}
#videowrapper.localVideo {
	margin-top:-65px;
}

#youTubeBlocked{
	font-size:1.3em;
	color:red;
	font-weight:bold;
	text-align:center;
	display:none;
}
.video-author {
	font-size:.6em;
	color:#A2A2A2;
	text-shadow:none;
}
#videoHeader{
	background:#22B300 url(/transition/video/images/video-header-bg2.jpg) no-repeat;	
	padding:30px 10px 49px 10px;	
}
#videoHeader h1 {
	text-shadow:none;
	width:680px;
	font-size:1.5em;
	margin:0px auto;
	padding:10px;
	background:#fff;
	border-radius:8px 8px 0px 0px;
}
.additionalhtml {
	font-style:italic;
	font-size:.9em;
	padding-top:10px;
	margin-top:20px;
	border-top:1px solid #ccc;
}
.topics {
	color:#888888;
}
#transcriptcontainer, #faqcontainer {
	height:500px;
	overflow:auto;
}
#faqcontainer .answer {
	padding-left:60px;
	margin-bottom:20px;
}
#faqcontainer #questionbutton {
	margin-top:50px;
}
#prevPage a{
	display:block;
	width:75px;
	height:50px;
	position:absolute;
	left:0px;
	top:162px;
}
.addthis_sharing_toolbox {
  padding-right: 156px;
}
#descriptionText {
	clear:right;
}
.btn {
	box-shadow:#000 1px 1px 2px;
}
</style>
</head>

<body>
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<!--Counter Script-->
<script type="application/javascript">
<%'Call the script via jquery that will add 1 to the hit_count field for this video%>
	$.get("counter.asp", { ID: "<%=Request.QueryString("video")%>" });
</script>

<!--#include virtual="/transition/dynamic-header.html"-->
<!--#include virtual="/transition/topnav.html"-->

<div class="breadcrumb"> <a href="/transition/">Home</a> / <a href="/transition/video/">Videos</a> / 
	<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>
    <div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>


</div>

  <div class="content">
  
  
<div id="videoHeader">
<h1 id="video-title" style="clear:right"><%=video_rs("title")%></h1>
</div>
<!--Return to previous-->
    <script type="text/javascript">
		if (history.length > 1) {
		document.write('<p id="prevPage"><a href="javascript:history.back();" title="Return To Previous Page"><img src="/transition/images/arrow-left-orange.png" alt="Return To Previous Page" width="75" height="50" style="float:left" /></a></p>');
		}
	</script>



<%
If Instr(video_rs("primary_url"), "www.youtube.com") > 0 And Request.QueryString("local") <> "true" Then
%>
	<div id="videowrapper">
    <iframe style="margin:0px auto" width="700" height="450" src="http://www.youtube.com/embed/<%=Split(video_rs("primary_url"), "v=", -1, 1)(1)%>?wmode=opaque&rel=0" frameborder="0" allowfullscreen></iframe>
	<%If Len(video_rs("fallback_url")) > 0 Then%>
    	<p id="altPlayerMsg" style="font-size:.8em; color:#666; text-align:center">If the video won't play or if YouTube is blocked at your location, you can <a href="/transition/video/player.asp?video=<%=Request.QueryString("video")%>&amp;local=true">view it from our player here</a>.</p>
	<%End If%>
    </div>
<%
ElseIf Instr(video_rs("primary_url"), "vimeo.com") > 0 And Request.QueryString("local") <> "true" Then
%>

	<div id="videowrapper">
	<iframe src="//player.vimeo.com/video/<%=Split(video_rs("primary_url"), "vimeo.com/", -1, 1)(1)%>?byline=0&amp;color=ff9933" width="700" height="393" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
	<%If Len(video_rs("fallback_url")) > 0 Then%>
		<p id="altPlayerMsg" style="font-size:.8em; color:#666; text-align:center">If the video won't play or if Vimeo is blocked at your location, you can <a href="/transition/video/player.asp?video=<%=Request.QueryString("video")%>&amp;local=true">view it from our player here</a>.</p>
	<%End If%>
    </div>

<%
ElseIf Instr(video_rs("primary_url"), ".mp4") > 0 Or Request.QueryString("local") = "true" Then
	Dim videoUrl
	If Request.QueryString("local") = "true" Then
		videoUrl = video_rs("fallback_url")
    Else
    	videoUrl = video_rs("primary_url")
    End If
%>

	<div id="videowrapper" class="localVideo">
 		<video width="700" height="450" controls="controls">
  			<source src="<%=videoUrl%>" type="video/mp4">
            <%If Len(video_rs("caption_url")) > 0 Then%>
            	<track src="<%=video_rs("caption_url")%>" kind="captions" srclang="en" label="English">
            <%End If%>
			Your browser does not support the video tag.
		</video> 
    </div>



<%
Else
%>

	<div id="videowrapper" style="background:#fff; padding:50px;">
        <h3 style="color:red;">Error - Video Format not found</h3>
        <p>If this problem persists, please contact us at <a href="mailto:transition@pacer.org">transition@pacer.org</a></p>
	</div>
<%End If%>

  <noscript>
  <h2 align="center">JavaScript is required to view these videos.  Please enable JavaScript and refresh this window.</h2>
  </noscript>
  <div id="youTubeBlocked">
  	<p>This is a YouTube Video: It appears that YouTube is blocked on this computer. </p> 
<%
If Instr(video_rs("primary_url"), "www.youtube.com") > 0 And Request.QueryString("local") <> "true" And Len(video_rs("fallback_url")) > 0 Then%>
    	<p><a href="/transition/video/player.asp?video=<%=Request.QueryString("video")%>&amp;local=true">Click Here to view this video from our alternative video player/location.</a>.</p>
<%Else%>
	<p>We apologize for the inconvenience, but an alternative viewing location for this video can not be found. <a href="/transition/video/"><br />
	Return to main video page to find other videos</a></p>
	<%End If%>
</div>

<div id="bottomContent">

<%
Dim infoClass, currCategory, localVideo
infoClass = ""
If video_rs("series_id") > 0 Then 
	infoClass = "seriesPage"
%>	
	<div id="seriesList">
    	<h2>Videos in this Series</h2>
    	<% 
		currCategory = ""
		Response.Write(currCategory & vbcrlf)
		Do Until series_rs.EOF
			If series_rs("series_category") <> currCategory Then
				Response.Write("<h4>" & Right(series_rs("series_category"), Len(series_rs("series_category")) - 3) & "</h4>" & vbcrlf)
				currCategory = series_rs("series_category")
			End If
			If Request.QueryString("local") = "true" Then
				localVideo = "&amp;local=true"
			Else
				localVideo = ""
			End If
			If series_rs("title") = video_rs("title") Then
		%>
        		<div class="seriesItem currItem"><span class="duration"><%=series_rs("duration_min")%> min</span><%=series_rs("title")%> </div>
        <%	
			Else
		%>
        		<div class="seriesItem"><span class="duration"><%=series_rs("duration_min")%> min</span><a href="/transition/video/player.asp?video=<%=series_rs("id")%><%=localVideo%>"><span class="fa fa-play-circle"></span> <%=series_rs("title")%></a></div>
		<%
			End If
            series_rs.MoveNext
		Loop
		%>
             
    </div>
<%	
End If
%>

<div class="infoWrapper <%=infoClass%>">

<div id="tabs">
<ul>
<li><a href="#description-1">Description</a></li>
<%If Len(video_rs("transcript_url")) > 0 Then%>
<li><a href="#transcript-2">Transcript</a></li>
<%End If%>
<li><a href="#faq-3">Have a Question?</a></li>
</ul>





<div id="description-1">
<div id="helpfulQuestion"><span id="likeButton"class="fa fa-thumbs-o-up"></span> <span id="dislikeButton" class="fa fa-thumbs-o-down"></span> Did you find this helpful?</div>
<h3 id="descriptionTitle"><%=video_rs("title")%></h3>
<div id="descriptionText">
	<%=video_rs("description")%>
</div>

<%If Len(video_rs("resources")) > 0 Then%>
	<div class="resources">
	<p><strong>Resources</strong></p>
	<%=video_rs("resources")%>
	</div>
<%End If%>
<ul>
<%If Len(video_rs("author")) > 0 Then%>
	<li><strong>Author:</strong> <%=video_rs("author")%></li>
<%End If%>
<%If Len(video_rs("duration_min")) > 0 Then%>
	<li><strong>Duration:</strong> <%=video_rs("duration_min")%> minutes</li>
<%End If%>

<%If Len(video_rs("date_posted")) > 0 Then%>
	<li><strong>Date Posted:</strong> <%=video_rs("date_posted")%></li>
<%End If%>
<%If Len(video_rs("topics")) > 0 Then%>
	<li><strong>Topics:</strong> <span class="topics"><%=video_rs("topics")%></span></li>
<%End If%>

</ul>
<%If Len(video_rs("additional_html")) > 0 Then%>
	<div class="additionalhtml">
	<%=video_rs("additional_html")%>
	</div>
<%End If%>

</div>
<%If Len(video_rs("transcript_url")) > 0 Then%>
	<div id="transcript-2">
<%		If fso.FileExists(Server.MapPath(video_rs("transcript_url")))Then%>
			<div id="transcriptcontainer">
			<h3>Transcript</h3>
			<%
				Set fs = fso.OpenTextFile(Server.MapPath(video_rs("transcript_url")), 1, true) 
				Do Until fs.AtEndOfStream 
					lineData = fs.ReadLine
					Response.Write lineData & vbcrlf
				Loop 
	
				fs.close: set fs = nothing 
			%>
			</div>
		<%End If%>
	</div>
<%End If%>

<div id="faq-3">

<h2>Frequently asked questions</h2>
	<div id="faqcontainer">
	<%
    Dim faqNoDataMsg
        faqNoDataMsg = "		<p>There are no FAQs published for " & video_rs("title") & " at this time.</p>"
    
    If Len(video_rs("faq_url")) > 0 Then
        If fso.FileExists(Server.MapPath(video_rs("faq_url"))) Then
            Set fs = fso.OpenTextFile(Server.MapPath(video_rs("faq_url")), 1, true) 
            Do Until fs.AtEndOfStream 
                lineData = fs.ReadLine
                Response.Write lineData & vbcrlf
            Loop 
    
            fs.close: set fs = nothing 
        Else
            Response.Write(faqNoDataMsg)
        End If
    Else
            Response.Write(faqNoDataMsg)
    End If
    %>
    
    
    <p id="questionbutton"><a class="btn" href="mailto:transition@pacer.org?subject=Video Question about <%=Replace(video_rs("title"), """", "&quot;")%>&body=---------------------------------------------------------%0D%0AQuestion from the Transition Video FAQs page @ www.pacer.org/transition/%0D%0A---------------------------------------------------------%0D%0AMessage:  %0D%0A">Ask a question</a></p>
	</div>
</div>


</div>
</div>
</div>
<div id="pageextender" style="clear:both">&nbsp;</div>




  <!-- end .content --></div>
<!--#include virtual="/transition/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
<%
Set fso = nothing
%>