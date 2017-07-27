<%
Sub DisplayCategory(catName, catDBName)

sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = '" & catDBName & "' ORDER BY pub_name_translated"
set rs = conn.execute(sql)

If Not rs.EOF Then
%>
	<h3 class="pubcat"><%=catName%></h3>
<%
	Do Until rs.EOF
	If Len(rs("pub_image")) > 0 Then
%>
		<p class="pubstext textimage" id="<%=rs("pub_code")%>">
		<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="" />
<%  Else %>				
        <p class="pubstext" id="<%=rs("pub_code")%>">     
<%  End If 
	If Len(rs("pub_link")) > 0 And Trim(rs("pub_link")) <> "nolink" Then
%>       
		<a href="<%=rs("pub_link")%>" target="_blank"> 
<%  End If %>        
<strong><em>
<%  If Len(rs("pub_name_translated")) > 0 Then
		Response.Write(rs("pub_name_translated"))
	Else
		Response.Write(rs("pub_name") & " <span style=""color:red"">- *Tanslated name Not Found</span>")
	End If

	If Len(rs("pub_link")) > 0 And Trim(rs("pub_link")) <> "nolink" Then
%>
	</a>&nbsp;<img src="/images/pdficon_small.gif"> (download for free)
<%  End If %>
</em></strong><br />

<%  If Len(rs("pub_description_translated")) > 0 Then
		Response.Write(rs("pub_description_translated"))
	Else
		Response.Write("<span style=""color:red"">- Description Not Found</span>")
	End If
%>
<br />
<% If rs("pub_freetoparents")="yes" Then %>
	<img src="/publications/images/square.png" alt="square" />
<% End If %>
			
<% If rs("pub_freetokids")="yes" Then %>
	<img src="/publications/images/star.png" alt="star" />
<% End If %>
			
<%=rs("pub_price")%> | <%=rs("pub_pricenotes")%> | <%=rs("pub_code")%>
			
</p>
<%
	rs.movenext
	Loop
	rs.close
	Set rs = Nothing
End If

End Sub

Sub DisplayHandouts(fSql, catName)

set rs = conn.execute(fSql)
		
If Not rs.eof Then
%>
    <h3 class="pubcat"><%=catName%> <img src="/publications/images/square.png" width="16" height="12" alt="square" /><span style="font-size: 75%;">Free to Download <img src="/images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /> | $1.50 per request | 10+ copies, $.50 each</span></h3>
    <table class="handouts">
<%
	Do Until rs.eof
%>
		<tr id="<%=rs("pub_code")%>">
		<td>
<%      If Len(rs("pub_link")) > 0 And Trim(rs("pub_link")) <> "nolink" Then 
%>       
			<a href="<%=rs("pub_link")%>" target="_blank"> 
<%  	End If        

		If Len(rs("pub_name_translated")) > 0 Then
			Response.Write(rs("pub_name_translated"))
		Else
			Response.Write(rs("pub_name") & " - Translation Not Found")
		End If

		If Len(rs("pub_link")) > 0 And Trim(rs("pub_link")) <> "nolink" Then 
%>
			</a>
<%  	End If %>
		</td>
		<td class="handoutcode">
		<%=rs("pub_code")%>
		</td>
		</tr>
				
<%
	rs.movenext
	Loop
%>
		</table>
<%
	rs.close
	set rs = nothing
End If


End Sub



%>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>publicaciones en espa&ntilde;ol - Pacer Center</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/style.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />

<script type="text/javascript" src="/css/menu.js"></script>
</head>

<body>
<div id="skiptocontent">
<a href="#maincontent">Skip to main content</a>
</div>

<div id="wrapper">

<div id="main">

<div id="header">
	<div>			<!--#include virtual="/googleSearchBox.htm"-->
            <!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="/"><img src="/images/pacerLogoSpanish.gif" alt="PACER Center: campeones de niños con discapacidades" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="rightBar">

<p class="pacerinfo">
<strong>PACER Center<br />
952-838-9000</strong>
</p>
<p class="pacerinfo2">
Campeones de niños con discapacidades
</p>
<p class="pacerinfo3">
<a href="spanish.asp">Learn more &gt;&gt;&gt;</a>
</p>

<div class="rightsidebarpic">
<img src="images/spanishpage.jpg" width="250" height="166" alt="mother, father, and two children smiling" /><br />
</div>
</div>

<div id="maincontent">

	<div id="pagetoporange">
	
	<div id="breadcrumb">
	<a href="/index.asp">Home</a> / <a href="index.asp">Translated Content</a> / Español
	
	<h1>español</h1>
	
</div>

<!--BEGIN CONTENT-->

<%
Dim ConStr, rs, conn, sql, i

ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
Set conn = Server.CreateObject("ADODB.Connection")
conn.open ConStr
%>

</div>

<div id="pagecontent">
<div class="alertBox" style="width:30em; text-align:center; font-size:1.05em">
<a href="/publications/spanish.asp">Click Here to view these publications with english titles</a>
</div>
<h2 class="nounderline"><a name="maincontent">publicaciones en español</a></h2>

<%

DisplayCategory "Books", "book"

DisplayCategory "Booklets", "booklet"

DisplayCategory "Information Cards", "infocard"

DisplayCategory "Let&rsquo;s Talk Activity Cards", "ltac"


'-----------------------------------------Handouts----------------------------------------------
sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'handout' AND pub_MPC = '' AND Not pub_code LIKE '%All%' ORDER BY pub_name_translated"
DisplayHandouts sql, "Handouts"

sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'handout' AND pub_MPC = '' AND pub_code LIKE '%All%' ORDER BY pub_name_translated"
DisplayHandouts sql, "National Parent Technical Assistance Center Handouts"

DisplayCategory "Brochures", "brochure"

DisplayCategory "Videos", "video"

DisplayCategory "Bookmarks", "bookmark"

DisplayCategory "Book and Audio", "bookandaudio"

DisplayCategory "Audio", "audio"

DisplayCategory "Record Keeping Folders", "rkf"

DisplayCategory "Workshop / Training Curricula", "curriculum"

%>       
        
<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>