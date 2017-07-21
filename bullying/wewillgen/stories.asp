<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%

Function RoundUp(a)
	RoundUp = int(a+(abs(fix(a)<>a)))
End Function

Dim RecordsPerPage
RecordsPerPage = 5
Dim rs
Dim rs_cmd
Dim rs_numRows
Set rs_cmd = Server.CreateObject ("ADODB.Command")
rs_cmd.ActiveConnection = MM_PACER_WEB_STRING
rs_cmd.CommandText = "SELECT * FROM dbo.bullyStories WHERE category LIKE '%wwg%' ORDER BY date_added DESC" 
rs_cmd.Prepared = true

Set rs = rs_cmd.Execute
rs_numRows = 0
%>
<%
Dim Repeat1__numRows
Dim Repeat1__index

Repeat1__numRows = RecordsPerPage
Repeat1__index = 0
rs_numRows = rs_numRows + Repeat1__numRows
%>
<%
'  *** Recordset Stats, Move To Record, and Go To Record: declare stats variables

Dim rs_total
Dim rs_first
Dim rs_last

' set the record count
rs_total = rs.RecordCount

' set the number of rows displayed on this page
If (rs_numRows < 0) Then
  rs_numRows = rs_total
Elseif (rs_numRows = 0) Then
  rs_numRows = 1
End If

' set the first and last displayed record
rs_first = 1
rs_last  = rs_first + rs_numRows - 1

' if we have the correct record count, check the other stats
If (rs_total <> -1) Then
  If (rs_first > rs_total) Then
    rs_first = rs_total
  End If
  If (rs_last > rs_total) Then
    rs_last = rs_total
  End If
  If (rs_numRows > rs_total) Then
    rs_numRows = rs_total
  End If
End If
%>
<%
' *** Recordset Stats: if we don't know the record count, manually count them

If (rs_total = -1) Then

  ' count the total records by iterating through the recordset
  rs_total=0
  While (Not rs.EOF)
    rs_total = rs_total + 1
    rs.MoveNext
  Wend

  ' reset the cursor to the beginning
  If (rs.CursorType > 0) Then
    rs.MoveFirst
  Else
    rs.Requery
  End If

  ' set the number of rows displayed on this page
  If (rs_numRows < 0 Or rs_numRows > rs_total) Then
    rs_numRows = rs_total
  End If

  ' set the first and last displayed record
  rs_first = 1
  rs_last = rs_first + rs_numRows - 1
  
  If (rs_first > rs_total) Then
    rs_first = rs_total
  End If
  If (rs_last > rs_total) Then
    rs_last = rs_total
  End If

End If
%>
<%
Dim MM_paramName 
%>
<%
' *** Move To Record and Go To Record: declare variables

Dim MM_rs
Dim MM_rsCount
Dim MM_size
Dim MM_uniqueCol
Dim MM_offset
Dim MM_atTotal
Dim MM_paramIsDefined

Dim MM_param
Dim MM_index

Set MM_rs    = rs
MM_rsCount   = rs_total
MM_size      = rs_numRows
MM_uniqueCol = ""
MM_paramName = ""
MM_offset = 0
MM_atTotal = false
MM_paramIsDefined = false
If (MM_paramName <> "") Then
  MM_paramIsDefined = (Request.QueryString(MM_paramName) <> "")
End If
%>
<%
' *** Move To Record: handle 'index' or 'offset' parameter

if (Not MM_paramIsDefined And MM_rsCount <> 0) then

  ' use index parameter if defined, otherwise use offset parameter
  MM_param = Request.QueryString("index")
  If (MM_param = "") Then
    MM_param = Request.QueryString("offset")
  End If
  If (MM_param <> "") Then
    MM_offset = Int(MM_param)
  End If

  ' if we have a record count, check if we are past the end of the recordset
  If (MM_rsCount <> -1) Then
    If (MM_offset >= MM_rsCount Or MM_offset = -1) Then  ' past end or move last
      If ((MM_rsCount Mod MM_size) > 0) Then         ' last page not a full repeat region
        MM_offset = MM_rsCount - (MM_rsCount Mod MM_size)
      Else
        MM_offset = MM_rsCount - MM_size
      End If
    End If
  End If

  ' move the cursor to the selected record
  MM_index = 0
  While ((Not MM_rs.EOF) And (MM_index < MM_offset Or MM_offset = -1))
    MM_rs.MoveNext
    MM_index = MM_index + 1
  Wend
  If (MM_rs.EOF) Then 
    MM_offset = MM_index  ' set MM_offset to the last possible record
  End If

End If
%>
<%
' *** Move To Record: if we dont know the record count, check the display range

If (MM_rsCount = -1) Then

  ' walk to the end of the display range for this page
  MM_index = MM_offset
  While (Not MM_rs.EOF And (MM_size < 0 Or MM_index < MM_offset + MM_size))
    MM_rs.MoveNext
    MM_index = MM_index + 1

  Wend

  ' if we walked off the end of the recordset, set MM_rsCount and MM_size
  If (MM_rs.EOF) Then
    MM_rsCount = MM_index
    If (MM_size < 0 Or MM_size > MM_rsCount) Then
      MM_size = MM_rsCount
    End If
  End If

  ' if we walked off the end, set the offset based on page size
  If (MM_rs.EOF And Not MM_paramIsDefined) Then
    If (MM_offset > MM_rsCount - MM_size Or MM_offset = -1) Then
      If ((MM_rsCount Mod MM_size) > 0) Then
        MM_offset = MM_rsCount - (MM_rsCount Mod MM_size)
      Else
        MM_offset = MM_rsCount - MM_size
      End If
    End If
  End If

  ' reset the cursor to the beginning
  If (MM_rs.CursorType > 0) Then
    MM_rs.MoveFirst
  Else
    MM_rs.Requery
  End If

  ' move the cursor to the selected record
  MM_index = 0
  While (Not MM_rs.EOF And MM_index < MM_offset)
    MM_rs.MoveNext
    MM_index = MM_index + 1
  Wend
End If
%>
<%
' *** Move To Record: update recordset stats

' set the first and last displayed record
rs_first = MM_offset + 1
rs_last  = MM_offset + MM_size

If (MM_rsCount <> -1) Then
  If (rs_first > MM_rsCount) Then
    rs_first = MM_rsCount
  End If
  If (rs_last > MM_rsCount) Then
    rs_last = MM_rsCount
  End If
End If

' set the boolean used by hide region to check if we are on the last record
MM_atTotal = (MM_rsCount <> -1 And MM_offset + MM_size >= MM_rsCount)
%>
<%
' *** Go To Record and Move To Record: create strings for maintaining URL and Form parameters

Dim MM_keepNone
Dim MM_keepURL
Dim MM_keepForm
Dim MM_keepBoth

Dim MM_removeList
Dim MM_item
Dim MM_nextItem

' create the list of parameters which should not be maintained
MM_removeList = "&index="
If (MM_paramName <> "") Then
  MM_removeList = MM_removeList & "&amp;" & MM_paramName & "="
End If

MM_keepURL=""
MM_keepForm=""
MM_keepBoth=""
MM_keepNone=""

' add the URL parameters to the MM_keepURL string
For Each MM_item In Request.QueryString
  MM_nextItem = "&" & MM_item & "="
  If (InStr(1,MM_removeList,MM_nextItem,1) = 0) Then
    MM_keepURL = MM_keepURL & MM_nextItem & Server.URLencode(Request.QueryString(MM_item))
  End If
Next

' add the Form variables to the MM_keepForm string
For Each MM_item In Request.Form
  MM_nextItem = "&" & MM_item & "="
  If (InStr(1,MM_removeList,MM_nextItem,1) = 0) Then
    MM_keepForm = MM_keepForm & MM_nextItem & Server.URLencode(Request.Form(MM_item))
  End If
Next

' create the Form + URL string and remove the intial '&' from each of the strings
MM_keepBoth = MM_keepURL & MM_keepForm
If (MM_keepBoth <> "") Then 
  MM_keepBoth = Right(MM_keepBoth, Len(MM_keepBoth) - 1)
End If
If (MM_keepURL <> "")  Then
  MM_keepURL  = Right(MM_keepURL, Len(MM_keepURL) - 1)
End If
If (MM_keepForm <> "") Then
  MM_keepForm = Right(MM_keepForm, Len(MM_keepForm) - 1)
End If

' a utility function used for adding additional parameters to these strings
Function MM_joinChar(firstItem)
  If (firstItem <> "") Then
    MM_joinChar = "&"
  Else
    MM_joinChar = ""
  End If
End Function
%>
<%
' *** Move To Record: set the strings for the first, last, next, and previous links

Dim MM_keepMove
Dim MM_moveParam
Dim MM_moveFirst
Dim MM_moveLast
Dim MM_moveNext
Dim MM_movePrev

Dim MM_urlStr
Dim MM_paramList
Dim MM_paramIndex
Dim MM_nextParam

MM_keepMove = MM_keepBoth
MM_moveParam = "index"

' if the page has a repeated region, remove 'offset' from the maintained parameters
If (MM_size > 1) Then
  MM_moveParam = "offset"
  If (MM_keepMove <> "") Then
    MM_paramList = Split(MM_keepMove, "&")
    MM_keepMove = ""
    For MM_paramIndex = 0 To UBound(MM_paramList)
      MM_nextParam = Left(MM_paramList(MM_paramIndex), InStr(MM_paramList(MM_paramIndex),"=") - 1)
      If (StrComp(MM_nextParam,MM_moveParam,1) <> 0) Then
        MM_keepMove = MM_keepMove & "&" & MM_paramList(MM_paramIndex)
      End If
    Next
    If (MM_keepMove <> "") Then
      MM_keepMove = Right(MM_keepMove, Len(MM_keepMove) - 1)
    End If
  End If
End If

' set the strings for the move to links
If (MM_keepMove <> "") Then 
  MM_keepMove = Server.HTMLEncode(MM_keepMove) & "&"
End If

MM_urlStr = Request.ServerVariables("URL") & "?" & MM_keepMove & MM_moveParam & "="

MM_moveFirst = MM_urlStr & "0"
MM_moveLast  = MM_urlStr & "-1"
MM_moveNext  = MM_urlStr & CStr(MM_offset + MM_size)
If (MM_offset - MM_size < 0) Then
  MM_movePrev = MM_urlStr & "0"
Else
  MM_movePrev = MM_urlStr & CStr(MM_offset - MM_size)
End If
%>

<!DOCTYPE html 
   PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Stories We Love - NBPC</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link href="/bullying/wewillgen/css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/bullying/css/scrolling.css"/>

<!--#include virtual="/bullying/dynamic-head-items.html"-->
<style type="text/css">
#storyitems {
	width: 70%;
	margin: -15px auto 0px auto;
}

#storyitems h3 {
	border-top: 1px solid #ccc;
	padding-top: 5px;
	margin-top: 5px;
	padding-left: 0px;
	margin-left: 0px;
}

#storyitems h3:first-child { border: none; }

.written {
	color: #393766;
	font-weight: 400;
	font-style: italic;
}

.sideArticle {
	border-top: 1px solid #ccc;
	border-left: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	background-color: #FFFFC4;
	margin-bottom: 15px;
	padding-top: 5px;
}
</style>
</head>

<body class="subpage">
<div class="container"> <a id="skiptocontent" href="#maincontent">Skip to main content</a> 
	
	<!--#include virtual="/bullying/dynamic-header.html"--> 
	<!--#include virtual="/bullying/topnav.html"--> 
	<script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>
	<div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/wewillgen/">We Will Generation</a> /</div>
	<div class="content">
		<div class="contentrow row-orange row-shadow">
			<div class="singlecolumn"> 
			<a id="pageBack" href="/bullying/wewillgen/">Back to we classroom activities</a>
				<h1 id="maincontent">Stories We Love</h1>
				<div>&nbsp;</div>
				<div id="navcontainer1">
					<table class="infobox datasetnav">
						<tr>
							<td align="center" colspan="4">Page <%=cInt(rs_last / RecordsPerPage)%> of <%=RoundUp(rs_total / RecordsPerPage)%></td>
						</tr>
						<tr class="centered">
							<td><% If MM_offset <> 0 Then %>
									<a href="<%=Replace(MM_moveFirst, "&", "&amp;")%>">First</a>
									<% Else %>
									<span style="color:#999">First</span>
									<% End If ' end MM_offset <> 0 %></td>
							<td><% If MM_offset <> 0 Then %>
									<a href="<%=Replace(MM_movePrev, "&", "&amp;")%>">Previous</a>
									<% Else %>
									<span style="color:#999">Previous</span>
									<% End If ' end MM_offset <> 0 %></td>
							<td><% If Not MM_atTotal Then %>
									<a href="<%=Replace(MM_moveNext, "&", "&amp;")%>">Next</a>
									<% Else %>
									<span style="color:#999">Next</span>
									<% End If ' end Not MM_atTotal %></td>
							<td><% If Not MM_atTotal Then %>
									<a href="<%=Replace(MM_moveLast, "&", "&amp;")%>">Last</a>
									<% Else %>
									<span style="color:#999">Last</span>
									<% End If ' end Not MM_atTotal %></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="contentrow row-whiteblue">
			<div class="singlecolumn">
				<% 
 Dim flashCount
 flashCount = 1
While ((Repeat1__numRows <> 0) AND (NOT rs.EOF)) 
%>
					<div class="centered">
					<h3><%=(rs.Fields.Item("heading").Value)%></h3>
					<p class="date">Posted: <%=FormatDateTime(rs.Fields.Item("date_added").Value, 2)%></p>
					</div>
					<%
'CHECK FOR VIDEO URL TO ADD
If Len(rs.Fields.Item("video").Value) > 0 Then

	If Instr(rs.Fields.Item("video").Value, "www.youtube.com") > 0 Then
	'EMBED THE YOUTUBE IFRAME FOR THE VIDEO
	%>
					<iframe style="margin:10px auto" width="700" height="450" src="http://www.youtube.com/embed/<%=Split(rs.Fields.Item("video").Value, "v=", -1, 1)(1)%>?rel=0&wmode=opaque" frameborder="0" allowfullscreen></iframe>
					
					<%
    End If
End If







  If Len(rs.Fields.Item("image").Value) > 0 Then
%>
					<img src="<%=(rs.Fields.Item("image").Value)%>" alt="" width="150" class="fltlft" style="margin:0px 15px 5px 15px;" />
					<%
  End If
%>
					<%=(rs.Fields.Item("mainText").Value)%>
					<p style="text-align:right; font-size:.8em;"> <a href="/bullying/stories/?id=<%=(rs.Fields.Item("ID").Value)%>" title="Permalink for <%=(rs.Fields.Item("heading").Value)%>">Permalink<span class="extralinktext"> for <%=(rs.Fields.Item("heading").Value)%></span></a></p>
					<%  
  If Len(rs.Fields.Item("additional_info")) > 0 Then
%>
					<p>Notes:</p>
					<%=rs.Fields.Item("additional_info").Value%>
					<%
  End If
%>
					<div class="pageextender" style="clear:both">&nbsp;</div>
					<%
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  rs.MoveNext()
Wend
%>
			<table class="infobox datasetnav" id="bottomdataset">
				<tr>
					<td align="center" colspan="4">Page <%=cInt(rs_last / RecordsPerPage)%> of <%=RoundUp(rs_total / RecordsPerPage)%></td>
				</tr>
				<tr class="centered">
					<td><% If MM_offset <> 0 Then %>
							<a href="<%=Replace(MM_moveFirst, "&", "&amp;")%>">First</a>
							<% Else %>
							<span style="color:#ccc">First</span>
							<% End If ' end MM_offset <> 0 %></td>
					<td><% If MM_offset <> 0 Then %>
							<a href="<%=Replace(MM_movePrev, "&", "&amp;")%>">Previous</a>
							<% Else %>
							<span style="color:#ccc">Previous</span>
							<% End If ' end MM_offset <> 0 %></td>
					<td><% If Not MM_atTotal Then %>
							<a href="<%=Replace(MM_moveNext, "&", "&amp;")%>">Next</a>
							<% Else %>
							<span style="color:#ccc">Next</span>
							<% End If ' end Not MM_atTotal %></td>
					<td><% If Not MM_atTotal Then %>
							<a href="<%=Replace(MM_moveLast, "&", "&amp;")%>">Last</a>
							<% Else %>
							<span style="color:#ccc">Last</span>
							<% End If ' end Not MM_atTotal %></td>
				</tr>
			</table>
		</div>
		</div>
		<br class="clearfloat" />
		<!-- end .content --></div>
	
	<!--#include virtual="/bullying/footer.html"--> 
	<!-- end .container --></div>
</body>
</html>
<%
rs.Close()
Set rs = Nothing
%>
