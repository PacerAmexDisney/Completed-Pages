<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Publications: Translated Materials-Spanish</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/style.css" />
<link rel="stylesheet" type="text/css" href="/js/colorbox1.5.9/colorbox.css">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script src="/js/colorbox1.5.9/jquery.colorbox-min.js"></script>
<script type="text/javascript" src="/js/pacer-video-popup.js"></script>

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
<a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="rightBar">


<p class="pubinfo">
<a href="/forms/request.asp">Reprint Request Form</a><br /><br />

<a href="OrderForm.pdf">Publication Order Form</a>
<img src="/images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /><br /><br />
Items marked <img src="images/square.png" width="16" height="12" alt="square" />are FREE to Minnesota parents of children and young adults with disabilities.<br /><br /> 
<img src="images/star.png" width="16" height="13" alt="star" />items are free to young adults, high school or older, with disabilities and their families.<br /><br />
Please limit requests for free items to 10 or less per order.
</p>
<div id="submenu">
<h3 style="display: none;">Publications Menu</h3>
<!--#include virtual="/publications/rightNav.html"-->
</div>
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="tmsp";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
</script>
<p class="rightsidebarpic">&nbsp;

</p>
</div>

<div id="maincontent">

	<div id="pagetoporange">
	
	<div id="breadcrumb">
	<a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> / <a href="/publications/">Publications</a> / Translated Materials<font face="Arial">&#8213;</font>Spanish
	
	<h1>Publications</h1>
	
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
<div style="width:10em; float:right; text-align:center;"><a href="/es/publications.asp">View these Materials in Spanish Here</a></div>

<h2 class="nounderline">Translated Materials &ndash; Spanish</h2>
<p>
PACER offers bilingual workshops, individual assistance and translated publications focusing on issues facing families from diverse backgrounds. The following publications have been translated into Spanish.
</p>

<h3 class="pubcat" style="margin-bottom: .5em;">Interactive</h3>
<div class="description">
  <p><strong>NEW!  Special Education: What Do I Need to Know? (Spanish version)</strong> <br />
    A  37 minute audio/video (translated in Spanish) overview of special education  created to help parents of children with disabilities understand what special  education is, how a child might get into special education, how to resolve  disagreements, and what role parents play. 2009.<br />
    Developed  by PACER Center, it is funded in part by a grant from the Minnesota Department  of Education.</p>
  <p><a class="videoPopUp" href="https://www.youtube.com/watch?v=ux_C8KLTQG8">Watch it now<img src="/images/movieReelIcon_small.gif" width="25" height="25" alt="Flash Video " /></a></p>
  This presentation is also available in English, Hmong, and Somali <a href="http://www.pacer.org/publications/specedrights.asp">learn more  &gt;&gt;&gt;&gt;</a></div>


		


		<%
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'book' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if Not rs.eof then
%>
<h3 class="pubcat" style="margin-bottom: .5em;">Books</h3>
<%
		do until rs.eof
		%>
		

	<%
		Dim checkforlink1
		checkforlink1 = Trim(rs("pub_link"))
		if Trim(rs("pub_image")) <> "" then
			if checkforlink1 <> "nolink" then
		%>
			
			<p class="pubstext textimage" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name")%> publication" />
				<strong><em><a href="<%=rs("pub_link")%>"><%=rs("pub_name")%></a>&nbsp;<img src="../images/pdficon_small.gif"> (download for free)</em></strong><br />
				<%=rs("pub_description")%><br />
				
			<%else%>
			
			<p class="pubstext textimage" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name")%> publication" />
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
				
			<%end if%>
			
	  <%
		else if checkforlink1 <> "nolink" then
		%>			<p id="<%=rs("pub_code")%>">		
			<a href="<%=rs("pub_link")%>"><%=rs("pub_name")%></a>&nbsp;<img src="../images/pdficon_small.gif" alt="pdf icon" /> (download for free)<br />
			<%=rs("pub_description")%><br />
<%
			else
			%>
	
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
		
			<%
			end if
			end if
			%>
		

			<% if rs("pub_freetoparents")="yes" then %>
			<img src="images/square.png" alt="square" />
			<% end if %>
			
			<% if rs("pub_freetokids")="yes" then %>
			<img src="images/star.png" alt="star" />
			<% end if %>
			
			<%=rs("pub_price")%> | 
			
			<%
			if rs("pub_pricenotes") <> "" then
			Response.write rs("pub_pricenotes")
			%>
			&nbsp;| <%=rs("pub_code")%>
			
			<%else%>
			<%=rs("pub_code")%>
			<%end if%>
			</p>
		
		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		end if
		%>

<h3 class="pubcat" style="margin-bottom: .5em;">Booklets <span style="font-size: 75%;">Free to Download</span> <img src="/images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /></h3>

		<%
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'booklet' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if not rs.eof then
		
		do until rs.eof
		%>
		
		<%
		Dim checkforlink2
		checkforlink2 = Trim(rs("pub_link"))
		if Trim(rs("pub_image")) <> "" then
			if checkforlink2 <> "nolink" then
		%>
			
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="" />				
				<img src="/images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /> <em><a href="<%=rs("pub_link")%>" target="_blank"><%=rs("pub_name")%></a></em><br />
				<%=rs("pub_description")%><br />
				
			<%else%>
			
		<p class="pubstext" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="" />
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
				
			<%end if%>
			
		<%
		else if checkforlink2 <> "nolink" then
		%>			<p class="pubstext" id="<%=rs("pub_code")%>">		
			<img src="/images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /> <a href="<%=rs("pub_link")%>" target="_blank"><%=rs("pub_name")%></a><br />
			<%=rs("pub_description")%><br />
<%
			else
			%>
	
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
		
			<%
			end if
			end if
			%>
		

			<% if rs("pub_freetoparents")="yes" then %>
			<img src="images/square.png" alt="square" />
			<% end if %>
			
			<% if rs("pub_freetokids")="yes" then %>
			<img src="images/star.png" alt="star" />
			<% end if %>
			
			<%=rs("pub_price")%> | 
			<%If Left(rs("pub_pricenotes"), 5) =  "<form" Then%>
            	&nbsp;<%=rs("pub_code")%> <br /> <%=rs("pub_pricenotes")%>
			<%
			ElseIf rs("pub_pricenotes") <> "" then
			%>
				<%=rs("pub_pricenotes")%> | <%=rs("pub_code")%>
			<%
			Else
			%>
			<%=rs("pub_code")%>
			<%End If%>
			</p>
		
		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		end if
		%>
		
		
		
		<%
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'infocard' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else%>
		<h3 class="pubcat" style="margin-bottom: .5em;">Information Cards</h3>

		<%rs.movefirst
		do until rs.eof
		checkforlink1 = ""
		checkforlink1 = Trim(rs("pub_link"))
		if Trim(rs("pub_image")) <> "" then
			if checkforlink1 <> "nolink" then
		%>
			
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name")%> publication" />
				<strong><em><a href="<%=rs("pub_link")%>"><%=rs("pub_name")%></a></em></strong><br />
				<%=rs("pub_description")%><br />
				
			<%else%>
			
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name")%> publication" />
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
				
			<%end if%>
			
		<%
		else if checkforlink1 <> "nolink" then
		%>	
			<p>		
			<a href="<%=rs("pub_link")%>"><%=rs("pub_name")%></a><img src="/images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /><br />
			<%=rs("pub_description")%><br />
			
			
			<%
			else
			%>
	
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
		
			<%
			end if
		end if
			%>
		

			<% if rs("pub_freetoparents")="yes" then %>
			<img src="images/square.png" alt="square" />
			<% end if %>
			
			<% if rs("pub_freetokids")="yes" then %>
			<img src="images/star.png" alt="star" />
			<% end if %>
			
			<%=rs("pub_price")%> | 
			
			<%
			if rs("pub_pricenotes") <> "" then
			Response.write rs("pub_pricenotes")
			%>
			&nbsp;| <%=rs("pub_code")%>
			
			<%else%>
			<%=rs("pub_code")%>
			<%end if%>
			</p>
		
		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		end if
		%>


		<%
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'activity' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else%>
		<a name="activity"></a><h3 class="pubcat" style="margin-bottom: .5em;">Activity Cards</h3>
		<%rs.movefirst
		do until rs.eof
		%>
		
		<%
		if Trim(rs("pub_image")) <> "" then
		%>
			
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name")%> publication" />
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
			
		<%
		else
		%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
		
		<%
		end if
		%>
		
			<% if rs("pub_freetoparents")="yes" then %>
			<img src="images/square.png" alt="square" />
			<% end if %>
			
			<% if rs("pub_freetokids")="yes" then %>
			<img src="images/star.png" alt="star" />
			<% end if %>
			
			<%=rs("pub_price")%> | 
			
			<%
			if rs("pub_pricenotes") <> "" then
			Response.write rs("pub_pricenotes")
			%>
			&nbsp;| <%=rs("pub_code")%>
			
			<%else%>
			<%=rs("pub_code")%>
			<%end if%>
			</p>
		
		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		end if
		%>





<h3 class="pubcat" style="margin-bottom: .5em;">Handouts <img src="images/square.png" width="16" height="12" alt="square" /><span style="font-size: 75%;">Free to Download
<img src="/images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /> | $1.50 per request | 10+ copies, $.50 each</span></h3>

		<%
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'handout' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else
		%>
		
		<table class="handouts">
		
		<%
		rs.movefirst
		do until rs.eof
		%>			<tr id="<%=rs("pub_code")%>">
				<td>
				
				<%
				Dim checkforlink
				checkforlink = Trim(rs("pub_link"))
				if checkforlink <> "nolink" then
%>
				
					<a href="<%=rs("pub_link")%>" target="_blank"><%=rs("pub_name")%></a>
					
				<%
				else
				%>
				
					<%=rs("pub_name")%>
				
				<%
				end if
				%>
				</td>
				<td class="handoutcode">
					<%=rs("pub_code")%>
				</td>
			</tr>
				
		<%
		rs.movenext
		loop
		%>
		
		</table>
		
		<%
		rs.close
		set rs = nothing
		end if
		%>

<h3 class="pubcat" style="margin-bottom: .5em;">Brochures</h3>


		<%
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'brochure' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if not rs.eof then
		
		do until rs.eof
		%>
		
		<%
		checkforlink2 = Trim(rs("pub_link"))
		if Trim(rs("pub_image")) <> "" then
			if checkforlink2 <> "nolink" then
		%>
			
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="" />
				<img src="/images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /> <em><a href="<%=rs("pub_link")%>" target="_blank"><%=rs("pub_name")%></a></em><br />
				<%=rs("pub_description")%><br />
				
			<%else%>
			
		<p class="pubstext" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="" />
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
				
			<%end if%>
			
		<%
		else if checkforlink2 <> "nolink" then
		%>			<p class="pubstext" id="<%=rs("pub_code")%>">		
			<img src="/images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /> <a href="<%=rs("pub_link")%>" target="_blank"><%=rs("pub_name")%></a><br />
			<%=rs("pub_description")%><br />
<%
			else
			%>
	
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
		
			<%
			end if
			end if
			%>
		

			<% if rs("pub_freetoparents")="yes" then %>
			<img src="images/square.png" alt="square" />
			<% end if %>
			
			<% if rs("pub_freetokids")="yes" then %>
			<img src="images/star.png" alt="star" />
			<% end if %>
			
			<%=rs("pub_price")%> | 
			<%If Left(rs("pub_pricenotes"), 5) =  "<form" Then%>
            	&nbsp;<%=rs("pub_code")%> <br /> <%=rs("pub_pricenotes")%>
			<%
			ElseIf rs("pub_pricenotes") <> "" then
			%>
				<%=rs("pub_pricenotes")%> | <%=rs("pub_code")%>
			<%
			Else
			%>
			<%=rs("pub_code")%>
			<%End If%>
			</p>
		
		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		end if
		%>
	
    
<h3 class="pubcat" style="margin-bottom: .5em;">Video</h3>


		<%
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'video' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else
		
		rs.movefirst
		do until rs.eof
		%>
		

		<%
		if Trim(rs("pub_image")) <> "" then
		%>
			
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name")%> publication" />
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
			
		<%
		else
		%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
		
		<%
		end if
		%>
		
			<% if rs("pub_freetoparents")="yes" then %>
			<img src="images/square.png" alt="square" />
			<% end if %>
			
			<% if rs("pub_freetokids")="yes" then %>
			<img src="images/star.png" alt="star" />
			<% end if %>
			
			<%=rs("pub_price")%> | 
			
			<%
			if rs("pub_pricenotes") <> "" then
			Response.write rs("pub_pricenotes")
			%>
			&nbsp;| <%=rs("pub_code")%>
			
			<%else%>
			<%=rs("pub_code")%>
			<%end if%>
			
			</p>
		
		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		end if
		%>



		<%
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'bookmark' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if not rs.eof then%>
			<h3 class="pubcat" style="margin-bottom: .5em;">Bookmarks</h3>
<%
		do until rs.eof
		%>
		

		<%
		if Trim(rs("pub_image")) <> "" then
		%>
			
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name")%> publication" />
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
			
		<%
		else
		%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
		
		<%
		end if
		%>
		
			<% if rs("pub_freetoparents")="yes" then %>
			<img src="images/square.png" alt="square" />
			<% end if %>
			
			<% if rs("pub_freetokids")="yes" then %>
			<img src="images/star.png" alt="star" />
			<% end if %>
			
			<%=rs("pub_price")%> | 
			
			<%
			if rs("pub_pricenotes") <> "" then
			Response.write rs("pub_pricenotes")
			%>
			&nbsp;| <%=rs("pub_code")%>
			
			<%else%>
			<%=rs("pub_code")%>
			<%end if%>
			
			</p>
		
		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		end if
		%>

<h3 class="pubcat" style="margin-bottom: .5em;">Book and Audio</h3>
<p>
<strong>Child Development Booklets</strong><br/>
This series of five booklets teach and encourage parents of young children (birth to age 5.) All are simply worded and beautifully illustrated with photos of children and families of various ethnic/cultural groups. 2000. (See Translations for Hmong and Spanish.)<br />
$5 | 10+, $4.50 each | 100+, $4 each</p>
<p style="border-top: dashed 1px black; padding: .5em;">
Written in the child's voice, engaging booklets with focus on development.
</p>


		<%
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'bookandaudio' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else
		
		rs.movefirst
		do until rs.eof
		%>
		

<%
		if Trim(rs("pub_image")) <> "" then
		%>
			
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name")%> publication" />
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
			
<%
		else
		%>			<p id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name")%></em></strong>&nbsp;&nbsp;|&nbsp;&nbsp;<%=rs("pub_code")%><br />
				<%=rs("pub_description")%>
			</p>
<%
		end if
		%>
		
		
		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		end if
		%>

<h3 class="pubcat" style="margin-bottom: .5em;">Audio</h3>


		<%
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'audio' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else
		
		rs.movefirst
		do until rs.eof
		%>
		

		<%
		if Trim(rs("pub_image")) <> "" then
		%>
			
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name")%> publication" />
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
			
		<%
		else
		%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
		
		<%
		end if
		%>
		
			<% if rs("pub_freetoparents")="yes" then %>
			<img src="images/square.png" alt="square" />
			<% end if %>
			
			<% if rs("pub_freetokids")="yes" then %>
			<img src="images/star.png" alt="star" />
			<% end if %>
			
			<%=rs("pub_price")%> | 
			
			<%
			if rs("pub_pricenotes") <> "" then
			Response.write rs("pub_pricenotes")
			%>
			&nbsp;| <%=rs("pub_code")%>
			
			<%else%>
			<%=rs("pub_code")%>
			<%end if%>
			
			</p>
		
		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		end if
		%>

    
    
    	
<h3 class="pubcat" style="margin-bottom: .5em;">Record Keeping Folders</h3>


		<%
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'rkf' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else
		
		rs.movefirst
		do until rs.eof
		%>
		

		<%
		if Trim(rs("pub_image")) <> "" then
		%>
			
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name")%> publication" />
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
			
		<%
		else
		%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
		
		<%
		end if
		%>
		
			<% if rs("pub_freetoparents")="yes" then %>
			<img src="images/square.png" alt="square" />
			<% end if %>
			
			<% if rs("pub_freetokids")="yes" then %>
			<img src="images/star.png" alt="star" />
			<% end if %>
			
			<%=rs("pub_price")%> | 
			
			<%
			if rs("pub_pricenotes") <> "" then
			Response.write rs("pub_pricenotes")
			%>
			&nbsp;| <%=rs("pub_code")%>
			
			<%else%>
			<%=rs("pub_code")%>
			<%end if%>
			
			</p>
		
		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		end if
		%>
        
<h3 class="pubcat" style="margin-bottom: .5em;">Workshop/Training Curricula</h3>


		<%
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'curriculum' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else
		
		rs.movefirst
		do until rs.eof
		%>
		

		<%
		if Trim(rs("pub_image")) <> "" then
		%>
			
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name")%> publication" />
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
			
		<%
		else
		%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
		
		<%
		end if
		%>
		
			<% if rs("pub_freetoparents")="yes" then %>
			<img src="images/square.png" alt="square" />
			<% end if %>
			
			<% if rs("pub_freetokids")="yes" then %>
			<img src="images/star.png" alt="star" />
			<% end if %>
			
			<%=rs("pub_price")%> | 
			
			<%
			if rs("pub_pricenotes") <> "" then
			Response.write rs("pub_pricenotes")
			%>
			&nbsp;| <%=rs("pub_code")%>
			
			<%else%>
			<%=rs("pub_code")%>
			<%end if%>
			
			</p>
		
		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		end if
		%>

        
        
<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

<script type="text/javascript">
	if (document.getElementById(self.document.location.hash.substring(1))){
		document.getElementById(self.document.location.hash.substring(1)).className = "highlight";
	}
</script>
</body>
</html>