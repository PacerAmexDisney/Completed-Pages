<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim video_rs, videoID
Dim video_cmd
videoID = 2
If Request.QueryString("video") <> "" Then
	videoID = Replace(Request.QueryString("video"), "'", "''")
End If

Set video_cmd = Server.CreateObject ("ADODB.Command")
video_cmd.ActiveConnection = MM_PACER_WEB_STRING
video_cmd.CommandText = "SELECT * FROM bullyVideos WHERE video_ID = " & videoID & " AND visible <> 'false';" 
video_cmd.Prepared = true

Set video_rs = video_cmd.Execute
If video_rs.EOF Then
	Response.Status = "404 Not Found"
	'Response.write "--Not Found"
	Server.Transfer("video-not-found.asp")
ElseIf Request.QueryString("local") = "true" And (Len(video_rs("videoURL")) = 0 Or Instr(video_rs("videoURL"), ".flv") > 0) Then ' No Local Video Availible - Redirect to default page
	Response.Redirect "/bullying/video/player.asp?video=" & Request.QueryString("video")
End If

Function RemoveHTML( strText )
	Dim strTextFix
	Dim RegEx
	
	strTextFix = Replace(strText, """", "'")
	
	Set RegEx = New RegExp

	RegEx.Pattern = "<[^>]*>"
	RegEx.Global = True

	RemoveHTML = RegEx.Replace(strTextFix, "")
	
End Function
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title><%=RemoveHTML(video_rs("title"))%> - National Bullying Prevention Center</title>
<!-- for Facebook ## images 600x315/1200x630 -->     
<meta property="fb:app_id" content="271376943231875"  />        
<meta property="og:title" content="<%=RemoveHTML(video_rs("title"))%>" />
<meta property="og:type" content="article" />

<%If Instr(video_rs("altURL"), "www.youtube.com") > 0 Then %>
	<meta property="og:image" content="http://img.youtube.com/vi/<%=Split(video_rs("altURL"), "v=", -1, 1)(1)%>/maxresdefault.jpg" />
<% Else %>
<meta property="og:image" content="http://www.pacer.org/bullying/images/NBPC-homepage-fb.jpg" />
<% End If %>


<meta property="og:url" content="http://www.pacer.org/bullying/video/player.asp?video=<%=video_rs("video_ID")%>" />
<meta property="og:description" content="<%=RemoveHTML(video_rs("description"))%>" />
<meta name="description" content="<%=RemoveHTML(video_rs("description"))%>" />


<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"-->
<script type="text/javascript" language="javascript" src="/bullying/video/problem-form/js/actions.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.6.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
var youTubeImage = new Image();
youTubeImage.onerror = function(){
$('#reportProblem').hide();
$('#altPlayerMsg').hide();
$('#prevPage').hide();	
$('#youTubeBlocked').show();
};

$(document).ready(function() {

youTubeImage.src = "http://www.youtube.com/favicon.ico";
 });

</script>

<style type="text/css">
#flash {
	margin:0px auto;
	width:700px;
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
#youTubeBlocked{
	font-size:1.3em;
	color:red;
	font-weight:bold;
	text-align:center;
	display:none;
}
</style>

</head>

<body>
<!-- ######################## POP UP FORM ###################### -->
<div id="overlay" style="display:none">&nbsp;</div>
<iframe frameborder="0" marginheight="0" marginwidth="0" allowtransparency="1" scrolling="no" width="600" height="300" id="problem_form" src="/bullying/video/problem-form/" class="fixedcentered" style="display:none;"></iframe>
<!-- ######################## END FORM ######################## -->



<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<!--Counter Script-->
<script type="application/javascript">
<%'Call the script via jquery that will add 1 to the hit_count field for this video%>
	$.get("counter.asp", { ID: "<%=Request.QueryString("video")%>" });
</script>

<!--#include virtual="/bullying/dynamic-header.html"-->
<!--#include virtual="/bullying/topnav.html"-->
<!--Highlight topnav-->
  <script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>


<div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/video/">Videos</a> / </div>

  <div class="content">
  
  
    
    <script type="text/javascript">
    document.write('<div id="reportProblem" style="width:20em; text-align:right; font-size:.8em; padding-right:5px;" class="fltrt"><a href="/bullying/video/problem-form/?video=<%=Request.QueryString("video")%>" onclick="ShowForm(); return false">Report a problem viewing this video</a></div>');
	</script>


<h1 id="video-title" style="clear:right">Video - <%=video_rs("title")%></h1>
<!--Return to previous-->
    <script type="text/javascript">
		if (history.length > 1) {
		document.write('<p id="prevPage"><a href="javascript:history.back();">&lt;&lt;&lt; Return to Previous Page</a></p>');
		}
	</script>



<%
If Instr(video_rs("altURL"), "www.youtube.com") > 0 And Request.QueryString("local") <> "true" Then
%>
	<div id="flash">
    <iframe style="margin:0px auto" width="700" height="450" src="http://www.youtube.com/embed/<%=Split(video_rs("altURL"), "v=", -1, 1)(1)%>?wmode=opaque&rel=0" frameborder="0" allowfullscreen></iframe>
	<%If InStr(video_rs("videoURL"), "mp4") > 0 Then%>
    	<p id="altPlayerMsg" style="font-size:.8em; color:#666; text-align:center">If the video won't play or if YouTube is blocked at your location, you can <a href="/bullying/video/player.asp?video=<%=Request.QueryString("video")%>&amp;local=true">view it from our player here</a>.</p>
	<%End If%>
    </div>
<%
ElseIf Instr(video_rs("altURL"), "vimeo.com") > 0 And Request.QueryString("local") <> "true" Then
%>

	<div id="flash">
	<iframe src="//player.vimeo.com/video/<%=Split(video_rs("altURL"), "vimeo.com/", -1, 1)(1)%>?byline=0&amp;color=ff9933" width="700" height="393" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
	<%If Len(video_rs("videoURL")) > 0 Then%>
		<p id="altPlayerMsg" style="font-size:.8em; color:#666; text-align:center">If the video won't play or if Vimeo is blocked at your location, you can <a href="/bullying/video/player.asp?video=<%=Request.QueryString("video")%>&amp;local=true">view it from our player here</a>.</p>
	<%End If%>
    </div>
<%
ElseIf Instr(video_rs("videoURL"), ".mp4") > 0 Then
%>

	<div id="flash">
 		<video width="700" height="450" controls>
  			<source src="<%=video_rs("videoURL")%>" type="video/mp4">
			Your browser does not support the video tag.
		</video> 
    </div>

<%End If%>

  <noscript>
  <h2 align="center">JavaScript is required to view these videos.  Please enable JavaScript and refresh this window.</h2>
  </noscript>
  <div id="youTubeBlocked">
  	<p>This is a YouTube Video: It appears that YouTube is blocked on this computer. </p> 
<%
If Instr(video_rs("altURL"), "www.youtube.com") > 0 And Request.QueryString("local") <> "true" And Len(video_rs("videoURL")) > 0 Then%>
    	<p><a href="/bullying/video/player.asp?video=<%=Request.QueryString("video")%>&amp;local=true">Click Here to view this video from our alternative video player/location.</a>.</p>
<%Else%>
	<p>We apologize for the inconvenience, but an alternative viewing location for this video can not be found. <a href="/bullying/video/"><br />
	Return to main video page to find other videos</a></p>
	<%End If%>
</div>

<p><%=video_rs("description")%></p>


<%If Len(video_rs("additionalHTML")) > 0 Then%>
	<hr />
    <p><%=video_rs("additionalHTML")%></p>
<%End If%>


<div id="pageextender" style="clear:both">&nbsp;</div>




  <!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>

</body>
</html>
