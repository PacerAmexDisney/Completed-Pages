<!--#include virtual="/templates/header.asp"-->


<%
Dim ConStr, rs, conn, sql, i

ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
Set conn = Server.CreateObject("ADODB.Connection")
conn.open ConStr
%>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title> Translated Content: Hmoob - PACER Center</title>

<meta property="og:title" content="Translated Content: Hmoob" />
<meta property="og:url" content="http://www.pacer.org/translations/hmongpubs.asp" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />


</head>
<body class="singleCol">

<!--#include virtual="/templates/page-header-nav.asp"-->

<div id="topbar">
<div id="breadcrumb">

<a href="../index.asp">Home</a> / <a href="index.asp">Translated Content</a> / Hmoob
</div>
	<h1>HMOOB</h1>
</div>

<div id="maincontent">

<div id="pagecontent" class="narrowContent">

<!--BEGIN CONTENT-->
<div class="alertBox mobileCentered" style="width:30em; max-width: 90%; text-align:center; font-size:1.05em">
<a href="/publications/hmongseasian.asp">Click Here to view these publications with english titles</a></div>
<p>
	Koom haum PACER Center muaj kev tham qhia hais txog niam txiv txoj kev txhawb nqa kev kawm ntawv tshwj xeeb ua ob hom lus, muaj kev pab tsev neeg mus muab cov kev pab li lawv xav tau thiab muaj cov ntaub ntawv txhais ua ntau hom lus hais txog tej xwm txheej uas cov tsev neeg ntau caj ces sam sim ntsib. Cov ntaub ntawv hais mus no yog cov uas tau muab txhais ua lus Hmoob lawm.
</p>

<!--<div id="translatedlist">-->
<div>
<h3 class="greenBar">Cov phau ntawv</h3>

		<%
		sql = "SELECT * FROM Publications WHERE pub_hmong = 'yes' AND pub_type = 'book' ORDER BY pub_name"
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

		<%=rs("pub_description_translated")%><br /><br />
		<%=rs("pub_pricenotes_translated")%> | <%=rs("pub_code")%>
		</p>

		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		end if
		%>

		<%
		sql = "SELECT * FROM Publications WHERE pub_hmong = 'yes' AND pub_type = 'activity' ORDER BY pub_name"
		set rs = conn.execute(sql)

		if Not rs.eof Then %>

        <h3 class="greenBar">Cov ntawv siv los nrog koj tus me nyuam tham</h3>

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

		<%=rs("pub_description_translated")%><br /><br />
		<%=rs("pub_pricenotes_translated")%> | <%=rs("pub_code")%>
		</p>

		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		end if
		%>


		<%
		sql = "SELECT * FROM Publications WHERE pub_hmong = 'yes' AND pub_type = 'booklet' ORDER BY pub_name"
		set rs = conn.execute(sql)

		if rs.eof then
		else

		rs.movefirst
		%>
        <h3 class="greenBar">Phau ntawv me</h3>
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

		<%=rs("pub_description_translated")%><br /><br />
		<%=rs("pub_pricenotes_translated")%> | <%=rs("pub_code")%>
		</p>

		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		end if
		%>




		<%
		sql = "SELECT * FROM Publications WHERE pub_hmong = 'yes' AND pub_type = 'bookmark' ORDER BY pub_name"
		set rs = conn.execute(sql)

		if not rs.eof then
		%>
        <h3 class="greenBar">Daim rhais ntawv</h3>
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

		<%=rs("pub_description_translated")%><br /><br />
		<%=rs("pub_pricenotes_translated")%> | <%=rs("pub_code")%>
		</p>

		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		end if
		%>

<h3 class="greenBar">Daim ntawv qhia tes hauj lwm</h3>

		<%
		sql = "SELECT * FROM Publications WHERE pub_hmong = 'yes' AND pub_type = 'brochure' ORDER BY pub_name"
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

		<%=rs("pub_description_translated")%><br /><br />
		<%=rs("pub_pricenotes_translated")%> | <%=rs("pub_code")%>
		</p>

		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		end if
		%>

<h3 class="greenBar">Vis Dis Aus</h3>

		<%
		sql = "SELECT * FROM Publications WHERE pub_hmong = 'yes' AND pub_type = 'video' ORDER BY pub_name"
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

		<%=rs("pub_description_translated")%><br /><br />
		<%=rs("pub_pricenotes_translated")%> | <%=rs("pub_code")%>
		</p>

		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		end if
		%>

<h3 class="greenBar">Phau khaws cov ntawv tseem ceeb cia</h3>

		<%
		sql = "SELECT * FROM Publications WHERE pub_hmong = 'yes' AND pub_type = 'rkf' ORDER BY pub_name"
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

		<%=rs("pub_description_translated")%><br /><br />
		<%=rs("pub_pricenotes_translated")%> | <%=rs("pub_code")%>
		</p>

		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		end if
		%>
<table style="width: 100%; padding: 0; margin: 0;">
	<tr>
		<td><h3 class="greenBar">Cov ntawv sau tawm</h3></td>
		<td style="text-align: right; font-weight: bold; vertical-align:bottom"><span style="font-size: 80%;">tus mem cim yog</span></td>
	</tr>
</table>
<%
		sql = "SELECT * FROM Publications WHERE pub_hmong = 'yes' AND pub_type = 'handout' AND (pub_mpc = '' OR pub_mpc IS NULL) ORDER BY pub_name_translated"
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
<p><br />Ib daim yog 1.5 dus las | ntau tshaj 10 daim lawm ces ib daim no yog 50 xees</p>

<div id="pageextender" style="clear:both">&nbsp;</div>
</div>
<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->
