<!--#include virtual="/bullying/templates/header.asp"-->
<%
Function GenerateCode(fWhichCode)

	Dim fDay, fTime, fSeed, fCode, fHour
	If fWhichCode = "previous" Then
		fHour = DatePart("h", DateAdd("h", -6, Now))
	Else
		fHour = DatePart("h", Now)
	End If
	fDay = DatePart("d", Now)
	
	If DatePart("h", Now) < 6 Then
		fTime = "AM1"
	ElseIf DatePart("h", Now) < 12 Then
		fTime = "AM2"
	ElseIf DatePart("h", Now) < 18 Then
		fTime = "PM1"
	Else
		fTime = "PM2"
	End If
	
	fSeed = "Spookley" & fDay & fTime
	
	fCode = 0
	For i = 1 to Len(fSeed)
		fCode = fCode + Asc(Mid(fSeed, i, 1))
	Next 
	fCode = fCode * 576
	fCode = Hex(fCode)
	GenerateCode = "df4rLFv" & fCode & "v4456zkd"
End Function

If  Request.QueryString("ts") <> GenerateCode("current") And Request.QueryString("ts") <> GenerateCode("previous")Then
	Response.Redirect("./")
End If

%>
<meta name="robots" content="noindex,nofollow" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="--- Registration Required to Access -----" />
<title>Streaming Video A Family To Be Thankful For - Spookley the Square Pumpkin - National Bullying Prevention Center</title>

<meta property="og:title" content="Streaming Video A Family To Be Thankful For - Spookley the Square Pumpkin" />
<meta property="og:url" content="http://www.pacer.org/bullying/classroom/elementary/spookley/streaming-family-to-be-thankful-for-reading.asp" />
<meta property="og:image" content="http://www.pacer.org/bullying/nbpm/images/unityDay-fb.jpg" />
<meta property="og:description" content="--- Registration Required to Access -----" />

<style type="text/css">
   .videoWrapper {
	   width:640px; 
	   margin:20px auto;
	}
	@media all and (max-width: 900px) {
		.videoWrapper {
			width: 100%;
			height: 480px;
			max-height: 100%;
		}
		.videoWrapper > iframe {
			padding: 0;
			width: 100% !important;
			height: 450px !important;
			max-height: 100% !important;
		}
	}
</style>

</head>
<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<!--#include virtual="/bullying/templates/page-header-nav.asp"-->

<div class="breadcrumb"> <a href="/bullying/">Home</a> /</div>

<!-- ########################## LEFT NAV ########################################### -->
<div class="sidebar1">
 <!--#include virtual="/bullying/classroom/nav.html"--> 
</div>
<script type="text/javascript">
	var currId="ele-spookley";	
	var showTree = "ele-sub";
	var showTree2 = "none";
</script>

<script type="text/javascript">
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

<!-- ########################## MAIN CONTENT ########################################### -->


<div class="content">


       <script type="text/javascript">
//<![CDATA[

		if (history.length > 1) {
		document.write('<p><a href="javascript:history.back();">&lt;&lt;&lt; Return to Previous Page</a></p>');
		}
//]]>	
	</script>
    <h1 id="maincontent" class="centered">Spookley The Square Pumpkin, A Family To Be Thankful For &ndash; Book Reading</h1>
	<div class="videoWrapper">
     <iframe src="https://player.vimeo.com/video/52580925" width="640" height="480" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
		<p class="centered">Password: SPOOKLEY</p>
	</div>    

	
<!--#include virtual="/bullying/templates/footer.asp"-->