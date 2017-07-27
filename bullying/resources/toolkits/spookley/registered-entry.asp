<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
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


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="robots" content="noindex,nofollow" />

<title>Spookley the Square Pumpkin Calssroom Education Resources - National Bullying Prevention Center</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--></head>

<body class="threecol">
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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/resources/">Resources</a> / <a href="/bullying/resources/toolkits/">Classroom Toolkits</a> / <a href="/bullying/resources/toolkits/spookley/">Spookley the Square Pumpkin</a> / </div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/resources/nav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="class-toolkits-spookley";	
	var showTree = "toolkits-sub";
	var showTree2 = "class-toolkits-sub";
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
</div>
  <!-- ###################### END Navigation ############################## -->
  
  <div class="content"> 
    <h1 id="maincontent" style="text-align:center"><img src="/bullying/images/partners/spookley-banner.jpg" width="549" height="141" alt="Spookley the square pumpkin" /><br />
      <strong>&ldquo;Stop Bullying Before it Starts&rdquo;</strong><br />
      <strong><span style="font-size:.7em">Complete Digital Teacher Toolkit (pre-school, K-3)</span></strong></h1>
<p>Start  by reading <em>The Legend of Spookley the Square Pumpkin</em>.&nbsp; If you do  not have the book, you can stream an audio visual reading for free below.</p>
<table cellpadding="5" cellspacing="5">
<tr>
<td><img src="/bullying/resources/toolkits/spookley/images/Spookley-poster.jpg" alt="" width="150" /></td>
<td><a href="/bullying/resources/toolkits/spookley/streaming-spookley-movie.asp?ts=<%=GenerateCode("current")%>">Free Video Streaming of the Spookley Movie</a> <a href="/bullying/resources/toolkits/spookley/streaming-spookley-reading.asp?ts=<%=GenerateCode("current")%>"></a></td>
</tr><tr>
<td><img src="/bullying/resources/toolkits/spookley/images/Spookley-Cover.jpg" alt="" width="150" /></td>
<td><a href="/bullying/resources/toolkits/spookley/streaming-spookley-reading.asp?ts=<%=GenerateCode("current")%>">Free Video Streaming Reading of the Story </a>narrated by Bobby “Boris” Pickett, writer and performer of the hit song, “The Monster Mash.”</td>
</tr>
</table>

<p>You can supplement the reading with these <a href="/bullying/resources/toolkits/spookley/pdf/SSP-Basic-Discussion-Guidelines-and-Learning-Activities.pdf" target="_blank">discussions guidelines and learning activities<img src="/images/pdficon_small.gif" width="15" height="15" alt="" /></a> and the additional resources below.</p>



    <!--
   <p style="text-align:right; font-style:italic; font-size:.8em">- Use of any element of the Digital Teacher Toolkit signifies your agreement to the <a href="#">terms of use</a>. </p>
 -->
    
    <h2>Additional Resources</h2>
    <h3>NEW: Bring Spookley’s story to life with the Spookley Storybook Trail!</h3>
      <p>The Spookley Storybook Trail is a walking path along which you and your students can read Spookley&rsquo;s story.  It presents a great way to get your students moving and engaged in the story, and it also presents opportunities to collaborate across classrooms to reinforce the learning opportunities presented in the &ldquo;The Legend of Spookley the Square Pumpkin.&rdquo;  (NOTE: This activity is inspired by attractions at Spookley-themed pumpkin patches and farms where farmers have created corn mazes in the shape of Spookley and placed Spookley&rsquo;s story on signs through the corn maze!)</p>
    <ul>
        <li class="pdficonlist"><a href="/bullying/resources/toolkits/spookley/pdf/Spookley-Storybook-Trail.pdf" target="_blank">Spookley Storybook Trail</a></li>
    <li class="pdficonlist"><a href="/bullying/resources/toolkits/spookley/pdf/SSP-storybook-instructions.pdf" target="_blank">Spookley Storybook Trail Instructions</a></li></ul>
    <ul>
    <li class="pdficonlist"><a href="/bullying/resources/toolkits/spookley/pdf/Spookley-Classroom-Play.pdf" target="_blank">Spookley Classroom Play</a></li>
    <li class="pdficonlist"><a href="/bullying/resources/toolkits/spookley/pdf/Classroom-Play-Handbook.pdf" target="_blank">Spookley Classroom Play Handbook</a></li>
    <li class="pdficonlist"><a href="/bullying/resources/toolkits/spookley/pdf/SSP-Multi-Subject-Learning.pdf" target="_blank">Multi-Subject Learning Examples</a></li>
    <li><a href="http://www.spookley.com/farm_affiliates.html" target="_blank">Visit a Spookley pumpkin patch</a> <strong>&ndash; </strong>find a farm near you that hosts Spookley field trips</li>

<!--  <li><em>(Through November)</em> <a href="/bullying/resources/toolkits/spookley/streaming-spookley-movie.asp?ts=<%=GenerateCode("current")%>">Free Video Streaming of the Spookley Movie</a>
    or find a <a href="https://docs.google.com/document/d/1O3xujAbdDY9uCycrqaRdrKTYWxlFldH8gp7LRzS0tPk/edit" target="_blank">special screening venue</a> near your school.</li>  
-->  
    <!--<li>During  October, in support of National Bullying Prevention Month, free Spookley prizes  are available via a <a href="http://promoshq.wildfireapp.com/website/6/contests/294381" target="_blank">Spookley Photo Contest</a></li>-->

    </ul>
	
	<hr />
	<h3>New Book with Activities - A Family to be Thankful For</h3>
    <table cellpadding="5" cellspacing="5">
    	<tr>
    		<td><img src="/bullying/resources/toolkits/spookley/images/Spookley-family-to-be-thankful-for-Cover.jpg" alt="" width="150" /></td>
    		<td><a href="/bullying/resources/toolkits/spookley/streaming-family-to-be-thankful-for-reading.asp?ts=<%=GenerateCode("current")%>">Free Video Streaming Reading of &ldquo;A Family to be Thankful For&rdquo;</a></td>
    		</tr>
    	</table>
	<p>You can supplement the reading with these <a href="/bullying/resources/toolkits/spookley/pdf/SSP-Thanksgiving-Discussion Guidelines.pdf" target="_blank">discussions guidelines and learning activities<img src="/images/pdficon_small.gif" width="15" height="15" alt="" /></a></p>
	
	<hr />
	<img class="fltrt" src="/bullying/resources/toolkits/spookley/images/Spookley-poster.jpg" width="150" height="177" alt="" />
    <h2>Purchasing the Spookley Products</h2>
    <ul>
    <li>The <a href="http://www.holidayhillfarm.com/farmstand" target="_blank">Holiday  Hill Farm Online Farmstand</a></li>
      <li><a href="http://www.barnesandnoble.com/s/joe-troiano" target="_blank">Barnes  &amp; Noble</a></li>
      <li>Also  available as an <a href="http://www.oceanhousemedia.com/products/spookleybook/" target="_blank">interactive  storybook app</a> for the Nook, iOS, and Android platforms.</li>
    </ul>
    <div id="pageextender" style="clear:both">&nbsp;</div>
  <!-- end .content --></div>
  
  
  <div class="sidebar2">
   <img src="/bullying/resources/toolkits/spookley/images/2013/spookley-giving-hug.jpg" width="195" height="157" alt="" />
   <img src="/bullying/resources/toolkits/spookley/images/2013/spookley-and-class.jpg" width="195" height="139" alt="" />
   <img src="/bullying/resources/toolkits/spookley/images/2013/pumpkin-patch-of-respect.jpg" width="195" height="109" alt="" />
   <img src="/bullying/resources/toolkits/spookley/images/2013/spookley-and-girl.jpg" width="195" height="165" alt="" />
   <img src="/bullying/resources/toolkits/spookley/images/2013/spookley-photo-pair.jpg" width="195" height="125" alt="" />
   <img src="/bullying/resources/toolkits/spookley/images/2013/elgin-winner.jpg" width="195" height="144" alt="" />
   <img src="/bullying/resources/toolkits/spookley/images/2013/Spookley-Play.jpg" width="195" height="91" alt="" />
   <img src="/bullying/resources/toolkits/spookley/images/2013/students-with-coloring-pages.jpg" width="195" height="161" alt="" />
   <img src="/bullying/resources/toolkits/spookley/images/2013/spookleyblowup-with-class.jpg" width="195" height="92" alt="" />
   <img src="/bullying/resources/toolkits/spookley/images/2013/boys-with-coloring-pages.jpg" width="195" height="145" alt="" />


<!-- end .sidebar2 -->
  </div>
  
  
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
