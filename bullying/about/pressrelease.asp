<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center - Pressroom</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"-->
<style type="text/css">
.content table {margin:0px 15px;}
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
 <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/about/pressroom.asp">Pressroom</a></div>
 
 <!-- ######################### NAVIGATION ################################# -->
 <div class="sidebar1"> 
 <!--#include virtual="/bullying/about/nav.html"--> 
 <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="none";
	var showTree = "pressroom-sub";
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

 
 <h1 id="maincontent">Press Release</h1>
<%
Dim Filename
Filename = "/about/releases/" & Request.QueryString("file")    ' file to read
' file to read
Const ForReading = 1, ForWriting = 2, ForAppending = 3
Const TristateUseDefault = -2, TristateTrue = -1, TristateFalse = 0

' Create a filesystem object
Dim FSO
set FSO = server.createObject("Scripting.FileSystemObject")

' Map the logical path to the physical system path
Dim Filepath
Filepath = Server.MapPath(Filename)

if FSO.FileExists(Filepath) Then

    ' Get a handle to the file
    Dim file    
    Set file = FSO.GetFile(Filepath)
    ' Open the file
    Dim TextStream
    Set TextStream = file.OpenAsTextStream(ForReading, TristateUseDefault)
    ' Read the file line by line
    Dim Line
	Line = ""
    Do Until InStr(1, Line, "<div id=""pagecontent"">", 1) > 0 Or TextStream.AtEndOfStream
		Line = cStr(TextStream.readline)
	Loop
	If Not TextStream.AtEndOfStream Then
		Line = TextStream.readline
	End If
	Dim divCount
	divCount = 0
	Do Until (InStr(1, Line, "</div>", 1) > 0 And divCount <= 0) Or TextStream.AtEndOfStream
    	'check for opening divs
		If InStr(1, Line, "<div", 1) > 0 Then
			divCount = divCount + 1
		End If
		'check for closing divs
		If InStr(1, Line, "</div>", 1) > 0 Then
			divCount = divCount - 1
		End If
        Response.write Line & vbCrLf
		Line = TextStream.readline
    Loop
	
    Set TextStream = nothing
	
Else
Dim cFile
If Request.QueryString("file") = "" Then
	cFile = "<none specified>"
Else
	cFile = Request.QueryString("file")
End If
    Response.Write "<h3><i><font color=red> File " & cFile &_
                       " does not exist</font></i></h3>"

End If

Set FSO = nothing
%>
 
 
 
 
<br class="clearfloat" />
 
 <!-- end .content --></div>
 <!--#include virtual="/bullying/footer.html"--> 
 <!-- end .container --></div>
</body>
</html>
