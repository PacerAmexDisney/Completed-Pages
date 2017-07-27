<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>


<%
 html = GetHtmlForObject("Bullying-ThirdLevelNav")

Function GetHtmlForObject(selectName)
   If IsEmpty(Application(selectName)) Or DateAdd("s", 4, Application(selectName & "-lastEdited")) < Now Then
      
      tempHtml = BuildHtmlFromFiles(selectName)
      Application.Lock
      Application(selectName & "-lastEdited") = Now
	  Application(selectName) = tempHtml
      Application.UnLock
   End If
   GetHtmlForObject = Application(selectName)
End Function

Function GetFileTextData(txtFile)
    Dim fso, f, s
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set f = fso.OpenTextFile(Server.MapPath(txtFile) , 1)
    s = f.ReadAll()
    f.Close 
    Set fso = nothing
    set f = nothing
    GetFileTextData = s
End Function


Function BuildHtmlFromFiles(selectName)

	Dim navFileList

	navFileList = Array( _
			"/bullying/resources/nav.html", _
      "/bullying/about/nav.html", _
      "/bullying/nbpm/nav.html", _
      "/bullying/video/nav.html", _
      "/bullying/classroom/nav.html" _
		)

	For Each fItem in navFileList
		BuildHtmlFromFiles = BuildHtmlFromFiles & vbCrLf & "<h1>" & fItem & "</h1>" & vbCrLf & GetFileTextData(fItem)
	Next
End Function
%>




<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Bullying - Third Level Nav Mater File</title>
</head>

<body>



<div id="nav-menus"> 

	<%=Response.Write(html)%>

</div>

</body>
</html>
