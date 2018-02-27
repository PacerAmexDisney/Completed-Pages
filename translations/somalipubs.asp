<!--#include virtual="/templates/header.asp"-->


<%
Dim ConStr, rs, conn, sql, i

ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
Set conn = Server.CreateObject("ADODB.Connection")
conn.open ConStr
%>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title> Soomaliga - PACER Center</title>

<meta property="og:title" content="Soomaliga" />
<meta property="og:url" content="http://www.pacer.org/translations/somalipubs.asp" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />


</head>
<body class="singleCol">

<!--#include virtual="/templates/page-header-nav.asp"-->

<div id="topbar">
<div id="breadcrumb">

<a href="../index.asp">Home</a> / <a href="index.asp">Translated Content</a> / Soomaliga
</div>
	<h1>Soomaliga</h1>
</div>

<div id="maincontent">

<div id="pagecontent" class="narrowContent">

<!--BEGIN CONTENT-->
<div class="alertBox mobileCentered" style="width:30em; max-width: 90%; text-align:center; font-size:1.05em">
<a href="/publications/somali.asp">Click Here to view these publications with english titles</a>
</div>

<p>
Ururka PACER waxa uu bixiya tababar (workshop), waxqabad ama taageero gaar ahaaneed iyo qoraalo la fasilay oo ku saabsan dhibaatooyinka ay la kulmaan qoysaska ka socda meelaha kala gadisan. qoraalada hoos ku qoran waa kuwo ka mid ah qoraalda lagu turjumay afka Soomaliga.
</p>

<h3 class="greenBar">Waa lacag la&#8217;aan</h3>


		<%
		sql = "SELECT * FROM Publications WHERE pub_somali = 'yes' AND pub_type = 'brochure' ORDER BY pub_name"
		set rs = conn.execute(sql)

		if rs.eof then
		else

		rs.movefirst
		do until rs.eof
		%>


		<p>

		<%
		if Trim(rs("pub_image")) <> "" then
		%>

		<img src="<%=rs("pub_image")%>" style="float: right; padding-left: .5em;" alt="image of <%=rs("pub_name")%> publication" />

		<%
		end if
		%>

		<%
		if rs("pub_name_translated") <> "" then
		%>

		<strong><em><%=rs("pub_name_translated")%></em></strong><br />

		<%
		else
		%>

		<strong><em><%=rs("pub_name")%></em></strong><br />

		<%
		end if
		%>

		<%=rs("pub_description_translated")%><br />

		<%
		if rs("pub_freetoparents")="yes" then
		%>
			<img src="../publications/images/square.png" alt="square" />
			<% end if %>

			<% if rs("pub_freetokids")="yes" then %>
			<img src="../publications/images/star.png" alt="star" />
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
		sql = "SELECT * FROM Publications WHERE pub_somali = 'yes' AND pub_type = 'activity' ORDER BY pub_name"
		set rs = conn.execute(sql)

		if not rs.eof then
		%>
        <h3 class="greenBar">Activity Cards</h3>

		<%
		do until rs.eof
		%>

		<p>

		<%
		if Trim(rs("pub_image")) <> "" then
		%>


		<img src="<%=rs("pub_image")%>" style="float: right; padding-left: .5em;" alt="image of <%=rs("pub_name")%> publication" />

		<%
		end if

		if rs("pub_name_translated") <> "" then
		%>

				<strong><em><%=rs("pub_name_translated")%></em></strong><br />

		<%
		else
		%>

				<strong><em><%=rs("pub_name")%></em></strong><br />

		<%
		end if
		%>


		<%=rs("pub_description_translated")%><br />


		<%
		if rs("pub_freetoparents")="yes" then
		%>
			<img src="../publications/images/square.png" alt="square" />
			<% end if %>

			<% if rs("pub_freetokids")="yes" then %>
			<img src="../publications/images/star.png" alt="star" />
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

<h3 class="greenBar">Faylka lagu kaydiyu qoraalada muhiimka ah</h3>


		<%
		sql = "SELECT * FROM Publications WHERE pub_somali = 'yes' AND pub_type = 'rkf' ORDER BY pub_name"
		set rs = conn.execute(sql)

		if rs.eof then
		else

		rs.movefirst
		do until rs.eof
		%>

		<p>

		<%
		if Trim(rs("pub_image")) <> "" then
		%>


		<img src="<%=rs("pub_image")%>" style="float: right; padding-left: .5em;" alt="image of <%=rs("pub_name")%> publication" />

		<%
		end if

		if rs("pub_name_translated") <> "" then
		%>

				<strong><em><%=rs("pub_name_translated")%></em></strong><br />

		<%
		else
		%>

				<strong><em><%=rs("pub_name")%></em></strong><br />

		<%
		end if
		%>


		<%=rs("pub_description_translated")%><br />


		<%
		if rs("pub_freetoparents")="yes" then
		%>
			<img src="../publications/images/square.png" alt="square" />
			<% end if %>

			<% if rs("pub_freetokids")="yes" then %>
			<img src="../publications/images/star.png" alt="star" />
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


<h3 class="greenBar">Handouts <img src="../publications/images/square.png" width="16" height="12" alt="square" /><span style="font-size: 65%;">Free to Download
<img src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /> | $1.50 per request | 10+ copies, $.50 each</span></h3>

		<%
		sql = "SELECT * FROM Publications WHERE pub_somali = 'yes' AND (pub_mpc = '' OR pub_mpc IS NULL) AND pub_type = 'handout' ORDER BY pub_name_translated"
		set rs = conn.execute(sql)

		if rs.eof then
		else
		%>

		<table class="handouts" cellpadding="10">

		<%
		rs.movefirst
		do until rs.eof
		%>

			<tr>
				<td>

				<%
				Dim checkforlink
				checkforlink = Trim(rs("pub_link"))
				if checkforlink <> "nolink" then
				%>

					<a href="<%=rs("pub_link")%>"><%=rs("pub_name_translated")%></a>

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


<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->
