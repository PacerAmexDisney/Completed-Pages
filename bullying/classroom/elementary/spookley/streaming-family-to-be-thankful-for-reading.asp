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

<title>Streaming Video - Spookley the Square Pumpkin - A Family To Be Thankful For</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--></head>

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
<div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/classroom/">Classroom</a> / <a href="/bullying/classroom/elementary/">Elementary School</a> / <a href="/bullying/classroom/elementary/spookley">Spookley the Square Pumpkin</a> /</div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
 <!--#include virtual="/bullying/classroom/nav.html"--> 
  <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="ele-spookley";	
	var showTree = "ele-sub";
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
</div>
  <!-- ###################### END Navigation ############################## -->
  
  <div class="content"> 
       <script type="text/javascript">
		if (history.length > 1) {
		document.write('<p><a href="javascript:history.back();">&lt;&lt;&lt; Return to Previous Page</a></p>');
		}
	</script>
    <h1 id="maincontent" align="center">Spookley The Square Pumpkin, A Family To Be Thankful For &ndash; Book Reading</h1>
	
<div style="width:640px; margin:20px auto;">
	
	
	<iframe src="https://player.vimeo.com/video/52580925" width="640" height="480" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
</div>    

    
    <div id="pageextender" style="clear:both">&nbsp;
    </div>
  <!-- end .content --></div>
    
  
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
