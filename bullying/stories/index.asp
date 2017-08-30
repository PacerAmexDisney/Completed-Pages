<!--#include virtual="/bullying/templates/header.asp"-->
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%

Function RoundUp(a)
	Dim result
	
	result = int(a+(abs(fix(a)<>a)))
	If result = 0 then
		result = 1
	end if
	RoundUp = result 
End Function

Dim rs
Dim hasVideoFirst
Dim rs_cmd
Dim rs_numRows
Set rs_cmd = Server.CreateObject ("ADODB.Command")
rs_cmd.ActiveConnection = MM_PACER_WEB_STRING
rs_cmd.CommandText = "SELECT * FROM dbo.bullyStories WHERE not category like '%Donation%' and not category like '%Hidden%' ORDER BY date_added DESC" 

If Request.QueryString("id") <> "" Then
	If IsNumeric(Request.QueryString("id")) Then
		rs_cmd.CommandText = "SELECT * FROM dbo.bullyStories WHERE ID = " & Replace(Request.QueryString("id"), "'", "''")
	End If
End If


rs_cmd.Prepared = true

Set rs = rs_cmd.Execute
rs_numRows = 0

If (Len(rs.Fields.Item("video").Value) > 0 Or Len(rs.Fields.Item("image").Value) > 0) And Request.QueryString("id") = "" And ( Request.QueryString("offset") = "0" Or Request.QueryString("offset") = "") Then
	hasVideoFirst = "videoFirst"
End If
%>
<%
Dim Repeat1__numRows
Dim Repeat1__index

Repeat1__numRows = 10
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

<!-- ******* Start Remove
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
End Remove *******-->



<title>National Bullying Prevention Center - Stories</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="Bullying can make you feel silenced, scared, and alone. By sharing your story, you can help let others know they’re not alone." />

<!-- for Facebook -->     
<meta property="og:title" content="National Bullying Prevention Center - Stories" />

<!-- ******* Start Remove
End Remove *******-->

<meta property="og:image" content="http://www.pacer.org/bullying/stories/images/stories-fb.jpg" />
<meta property="og:url" content="http://www.pacer.org/bullying/stories/" />
<meta property="og:description" content="Bullying can make you feel silenced, scared, and alone. By sharing your story, you can help let others know they’re not alone." />

<!-- ******* Start Remove
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
End Remove *******-->

<!--#include virtual="/bullying/dynamic-head-items.html"-->
<style type="text/css">
.storyNavItems {
	width:982px;
	margin:10px auto 20px;
	text-align:center;
	clear:right;
	
}
.navItem {
	width:300px;
	margin:10px 10px;
	float:left;
	
}
.navItem img {
	margin:0px;
	padding:0px;
}

#storyitems {
	width:70%;
	margin:-15px auto 0px auto;
	
}
#storyitems h3 {
	border-top:1px solid #ccc;
	padding-top:5px;
	margin-top:5px;	
	padding-left:0px;
	margin-left:0px;
}
.content .alertBox {
	clear:right;
	margin-top:15px; 
	margin-right:52px; 
	width:280px;
}
.videoFirst .storyNavItems {
	width:945px;
	margin:-15px 36px 11px;
}
.videoFirst .navItem {
	float:left;
}
.videoFirst .navItem:nth-child(3) {
	margin:10px 15px;
}
.videoFirst #storyitems {
	clear:right;
}
.videoFirst .alertBox {
	width:90%;
	float:none;
	margin:14px 43px;
	clear:both;
}
.written {
	color:#393766;
	font-weight:400;
	font-style:italic;
}
ol, ul {
	overflow:hidden;
}
</style>
</head>

<body>

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<!--#include virtual="/bullying/templates/page-header-nav.asp"-->

<script type="text/javascript">
	var navId="stories";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>

<div class="breadcrumb"> <a href="/bullying/">Home</a> /
<%If Request.QueryString("id") <> "" Then%>
	<a href="/bullying/stories/">Stories</a> /
<%End If %>

	<div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>
			<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>

</div>

  <div class="content <%=hasVideoFirst%>">
  
  
  <%If Request.QueryString("id") = "" And ( Request.QueryString("offset") = "0" Or Request.QueryString("offset") = "") Then%>
<h3>Featured Story Topics</h3>
<div class="storyNavItems">

<div class="navItem">
  <a href="/bullying/stories/student-action/"><img src="/bullying/stories/images/Nav-Student-Action.jpg" width="300" height="150" alt="" />
Students Taking Action</a> </div>
<div class="navItem">
  <a href="/bullying/stories/school-action/"><img src="/bullying/stories/images/Nav-School-Action.jpg" width="300" height="150" alt="" />
Schools Taking Action</a> </div>
<div class="navItem">
  <a href="/bullying/stories/fundraising/"><img src="/bullying/stories/images/Nav-Fundraising.jpg" width="300" height="150" alt="" />
Inspired Fundraising</a> </div>

<div class="navItem">
  <a href="/bullying/stories/disability/"><img src="/bullying/stories/images/Nav-Disability.jpg" width="300" height="150" alt="" />
Disability</a> </div>
</div>
<%If Request.QueryString("id") = "" Then%>
	<div class="alertBox">
	<h3>Send Us Your Story or Video</h3>
	<p>Submit a video, story, poem, artwork, or audio clip expressing how you feel about bullying, how you think it affects students and schools, what you have done to prevent bullying, or what others can do to prevent bullying.</p>
	<p><a href="mailto:Bullying411@PACER.org">Bullying411@PACER.org</a></p>
	</div>
<%End If%>

<%End If%>

  
  
  
  
  
  <div id="navcontainer1" class="fltrt" style="width:375px; clear:right;">
  <table border="0" class="datasetnav fltrt">
  <tr>
  <td align="center" colspan="4">Page <%=RoundUp(cInt(rs_last / 10))%> of <%=RoundUp(rs_total / 10)%>
	</td></tr>
    <tr>
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
<%If Request.QueryString("id") <> "" Then%>
	<div style="position:absolute; width:100%; text-align:center;"><a href="/bullying/stories/">View All Stories</a></div>
<%End If%>
    <h1 id="maincontent" style="clear:both;">All Stories</h1> 












<div id="storyitems">
  <% 
 Dim flashCount
 flashCount = 1
While ((Repeat1__numRows <> 0) AND (NOT rs.EOF)) 
%>


<h3 style="clear:left;"><%=(rs.Fields.Item("heading").Value)%></h3>
<p class="date">Posted: <%=FormatDateTime(rs.Fields.Item("date_added").Value, 2)%></p>

<%
'CHECK FOR VIDEO URL TO ADD
If Len(rs.Fields.Item("video").Value) > 0 Then

	If Instr(rs.Fields.Item("video").Value, "www.youtube.com") > 0 Then
	'EMBED THE YOUTUBE IFRAME FOR THE VIDEO
	%>
    
	    <div style="margin:10px auto 20px; width:700px; height:450px; clear:right;"><iframe width="700" height="450" src="http://www.youtube.com/embed/<%=Split(rs.Fields.Item("video").Value, "v=", -1, 1)(1)%>?rel=0&wmode=opaque" frameborder="0" allowfullscreen></iframe></div>

    <%
    End If
End If







  If Len(rs.Fields.Item("image").Value) > 0 Then
%>
	<img src="<%=(rs.Fields.Item("image").Value)%>" width="150" class="fltlft" style="margin-left:15px;" alt="" />
<%
  End If
%>

<%=(rs.Fields.Item("mainText").Value)%>



<%
  If Len(rs.Fields.Item("author").Value) > 0 Then 
%>
	<p class="written">By: <%=rs.Fields.Item("author").Value%></p>
<%
  Else
%>
	<p class="written">By: Anonymous</p>
<%
  End If
 
  If Request.QueryString("id") = "" Then
  'Include the Permalink
%>	
 <p style="text-align:right; font-size:.8em;"> <a href="/bullying/stories/?id=<%=(rs.Fields.Item("ID").Value)%>" title="Permalink for <%=(rs.Fields.Item("heading").Value)%>">Permalink<span class="extralinktext"> for <%=(rs.Fields.Item("heading").Value)%></span></a></p>
<%  
  Else
  'Add Space before Bottom Page indicator
%>
  <div style="height:100px">&nbsp;</div>
<%
  End If

  If Len(rs.Fields.Item("additional_info")) > 0 Then
%>
<p>Notes:</p>
<%=rs.Fields.Item("additional_info").Value%>
<%
  End If
%>

<%
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  rs.MoveNext()
Wend
%>
</div>


<table border="0" class="datasetnav" style="margin:10px auto; clear:left">
  <tr><td colspan="4" align="center">Page <%=RoundUp(cInt(rs_last / 10))%> of <%=RoundUp(rs_total / 10)%>
</td></tr>
<tr>
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


<br class="clearfloat" />
  <!-- end .content --></div>
	
  <!--#include virtual="/bullying/templates/footer.asp"-->
 
<%
rs.Close()
Set rs = Nothing
%>
