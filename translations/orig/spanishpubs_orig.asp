<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>espa�ol</title>
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
<a href="/"><img src="/images/pacerLogoSpanish.gif" alt="PACER Center: campeones de ni�os con discapacidades" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="rightBar">

<p class="pacerinfo">
<strong>PACER Center<br />
952-838-9000</strong>
</p>
<p class="pacerinfo2">
Campeones de ni�os con discapacidades
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
	<a href="/index.asp">Home</a> / <a href="index.asp">Translated Content</a> / Espa�ol

	<h1>espa�ol</h1>

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
<h2 class="nounderline"><a name="maincontent">publicaciones en espa�ol</a></h2>

		<%
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'book' ORDER BY pub_name_translated"
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
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name_translated")%> publication" />
				<strong><em><a href="<%=rs("pub_link")%>"><%=rs("pub_name_translated")%></a>&nbsp;<img src="/images/pdficon_small.gif"> (download for free)</em></strong><br />
				<%=rs("pub_description_translated")%><br />

			<%else%>

			<p class="pubstext textimage" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name_translated")%> publication" />
				<strong><em><%=rs("pub_name_translated")%></em></strong><br />
				<%=rs("pub_description_translated")%><br />

			<%end if%>

	  <%
		else if checkforlink1 <> "nolink" then
		%>			<p id="<%=rs("pub_code")%>">
			<a href="<%=rs("pub_link")%>"><%=rs("pub_name_translated")%></a>&nbsp;<img src="/images/pdficon_small.gif" alt="pdf icon" /> (download for free)<br />
			<%=rs("pub_description_translated")%><br />
<%
			else
			%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name_translated")%></em></strong><br />
				<%=rs("pub_description_translated")%><br />

			<%
			end if
			end if
			%>


			<% if rs("pub_freetoparents")="yes" then %>
			<img src="/publications/images/square.png" alt="square" />
			<% end if %>

			<% if rs("pub_freetokids")="yes" then %>
			<img src="/publications/images/star.png" alt="star" />
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
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'booklet' ORDER BY pub_name_translated"
		set rs = conn.execute(sql)

		if rs.eof then
		else

		rs.movefirst
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
				<strong><em><a href="<%=rs("pub_link")%>" target="_blank"><%=rs("pub_name_translated")%></a></em></strong><br />
				<%=rs("pub_description_translated")%><br />

			<%else%>

		<p class="pubstext" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="" />
				<strong><em><%=rs("pub_name_translated")%></em></strong><br />
				<%=rs("pub_description_translated")%><br />

			<%end if%>

		<%
		else if checkforlink2 <> "nolink" then
		%>			<p class="pubstext" id="<%=rs("pub_code")%>">
			<a href="<%=rs("pub_link")%>" target="_blank"><%=rs("pub_name_translated")%></a><br />
			<%=rs("pub_description_translated")%><br />
<%
			else
			%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name_translated")%></em></strong><br />
				<%=rs("pub_description_translated")%><br />

			<%
			end if
			end if
			%>


			<% if rs("pub_freetoparents")="yes" then %>
			<img src="/publications/images/square.png" alt="square" />
			<% end if %>

			<% if rs("pub_freetokids")="yes" then %>
			<img src="/publications/images/star.png" alt="star" />
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
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'infocard' ORDER BY pub_name_translated"
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
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name_translated")%> publication" />
				<strong><em><a href="<%=rs("pub_link")%>"><%=rs("pub_name_translated")%></a></em></strong><br />
				<%=rs("pub_description_translated")%><br />

			<%else%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name_translated")%> publication" />
				<strong><em><%=rs("pub_name_translated")%></em></strong><br />
				<%=rs("pub_description_translated")%><br />

			<%end if%>

		<%
		else if checkforlink1 <> "nolink" then
		%>
			<p>
			<a href="<%=rs("pub_link")%>"><%=rs("pub_name_translated")%></a><img src="/images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /><br />
			<%=rs("pub_description_translated")%><br />


			<%
			else
			%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name_translated")%></em></strong><br />
				<%=rs("pub_description_translated")%><br />

			<%
			end if
		end if
			%>


			<% if rs("pub_freetoparents")="yes" then %>
			<img src="/publications/images/square.png" alt="square" />
			<% end if %>

			<% if rs("pub_freetokids")="yes" then %>
			<img src="/publications/images/star.png" alt="star" />
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
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'ltac' ORDER BY pub_name_translated"
		set rs = conn.execute(sql)

		if rs.eof then
		else%>
		<a name="ltac"></a><h3 class="pubcat" style="margin-bottom: .5em;">Let's Talk Activity Cards</h3>
		<%rs.movefirst
		do until rs.eof
		%>

		<%
		if Trim(rs("pub_image")) <> "" then
		%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name_translated")%> publication" />
				<strong><em><%=rs("pub_name_translated")%></em></strong><br />
				<%=rs("pub_description_translated")%><br />

		<%
		else
		%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name_translated")%></em></strong><br />
				<%=rs("pub_description_translated")%><br />

		<%
		end if
		%>

			<% if rs("pub_freetoparents")="yes" then %>
			<img src="/publications/images/square.png" alt="square" />
			<% end if %>

			<% if rs("pub_freetokids")="yes" then %>
			<img src="/publications/images/star.png" alt="star" />
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





<h3 class="pubcat" style="margin-bottom: .5em;">Handouts <img src="/publications/images/square.png" width="16" height="12" alt="square" /><span style="font-size: 75%;">Free to Download
<img src="/images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /> | $1.50 per request | 10+ copies, $.50 each</span></h3>

		<%
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'handout' AND pub_MPC = '' ORDER BY pub_name_translated"
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

					<a href="<%=rs("pub_link")%>" target="_blank"><%=rs("pub_name_translated")%></a>

				<%
				else
				%>

					<%=rs("pub_name_translated")%>

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
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'brochure' ORDER BY pub_name_translated"
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
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name_translated")%> publication" />
				<strong><em><%=rs("pub_name_translated")%></em></strong><br />
				<%=rs("pub_description_translated")%><br />

		<%
		else
		%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name_translated")%></em></strong><br />
				<%=rs("pub_description_translated")%><br />

		<%
		end if
		%>

			<% if rs("pub_freetoparents")="yes" then %>
			<img src="/publications/images/square.png" alt="square" />
			<% end if %>

			<% if rs("pub_freetokids")="yes" then %>
			<img src="/publications/images/star.png" alt="star" />
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


<h3 class="pubcat" style="margin-bottom: .5em;">Video</h3>


		<%
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'video' ORDER BY pub_name_translated"
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
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name_translated")%> publication" />
				<strong><em><%=rs("pub_name_translated")%></em></strong><br />
				<%=rs("pub_description_translated")%><br />

		<%
		else
		%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name_translated")%></em></strong><br />
				<%=rs("pub_description_translated")%><br />

		<%
		end if
		%>

			<% if rs("pub_freetoparents")="yes" then %>
			<img src="/publications/images/square.png" alt="square" />
			<% end if %>

			<% if rs("pub_freetokids")="yes" then %>
			<img src="/publications/images/star.png" alt="star" />
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

<h3 class="pubcat" style="margin-bottom: .5em;">Bookmarks</h3>


		<%
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'bookmark' ORDER BY pub_name_translated"
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
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name_translated")%> publication" />
				<strong><em><%=rs("pub_name_translated")%></em></strong><br />
				<%=rs("pub_description_translated")%><br />

		<%
		else
		%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name_translated")%></em></strong><br />
				<%=rs("pub_description_translated")%><br />

		<%
		end if
		%>

			<% if rs("pub_freetoparents")="yes" then %>
			<img src="/publications/images/square.png" alt="square" />
			<% end if %>

			<% if rs("pub_freetokids")="yes" then %>
			<img src="/publications/images/star.png" alt="star" />
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
This series of five booklets teach and encourage parents of young children (birth to age 5.) All are simply worded and beautifully illustrated with photos of children and families of various ethnic/cultural groups. 2000. (See Translations for Hmong and Spanish.)<br />
$5 | 10+, $4.50 each | 100+, $4 each</p>
<p style="border-top: dashed 1px black; padding: .5em;">
Written in the child's voice, engaging booklets with focus on development.
</p>


		<%
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'bookandaudio' ORDER BY pub_name_translated"
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
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name_translated")%> publication" />
				<strong><em><%=rs("pub_name_translated")%></em></strong><br />
				<%=rs("pub_description_translated")%><br />

<%
		else
		%>			<p id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name_translated")%></em></strong>&nbsp;&nbsp;|&nbsp;&nbsp;<%=rs("pub_code")%><br />
				<%=rs("pub_description_translated")%>
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
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'audio' ORDER BY pub_name_translated"
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
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name_translated")%> publication" />
				<strong><em><%=rs("pub_name_translated")%></em></strong><br />
				<%=rs("pub_description_translated")%><br />

		<%
		else
		%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name_translated")%></em></strong><br />
				<%=rs("pub_description_translated")%><br />

		<%
		end if
		%>

			<% if rs("pub_freetoparents")="yes" then %>
			<img src="/publications/images/square.png" alt="square" />
			<% end if %>

			<% if rs("pub_freetokids")="yes" then %>
			<img src="/publications/images/star.png" alt="star" />
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
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'rkf' ORDER BY pub_name_translated"
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
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name_translated")%> publication" />
				<strong><em><%=rs("pub_name_translated")%></em></strong><br />
				<%=rs("pub_description_translated")%><br />

		<%
		else
		%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name_translated")%></em></strong><br />
				<%=rs("pub_description_translated")%><br />

		<%
		end if
		%>

			<% if rs("pub_freetoparents")="yes" then %>
			<img src="/publications/images/square.png" alt="square" />
			<% end if %>

			<% if rs("pub_freetokids")="yes" then %>
			<img src="/publications/images/star.png" alt="star" />
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
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'curriculum' ORDER BY pub_name_translated"
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
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name_translated")%> publication" />
				<strong><em><%=rs("pub_name_translated")%></em></strong><br />
				<%=rs("pub_description_translated")%><br />

		<%
		else
		%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name_translated")%></em></strong><br />
				<%=rs("pub_description_translated")%><br />

		<%
		end if
		%>

			<% if rs("pub_freetoparents")="yes" then %>
			<img src="/publications/images/square.png" alt="square" />
			<% end if %>

			<% if rs("pub_freetokids")="yes" then %>
			<img src="/publications/images/star.png" alt="star" />
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

</body>
</html>
