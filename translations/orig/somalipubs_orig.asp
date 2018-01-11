<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="so" lang="so">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Soomaliga</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/style.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

<script type="text/javascript" src="../css/menu.js"></script>
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
<a href="../"><img src="../images/pacerLogoSomali.gif" alt="PACER Center: kooxda ugu horeysa wax u qabadka caruurta laxaadka la'a" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="rightBar">


<div class="rightsidebarpic">
<!--<img src="images/Somali-Early-Childhood.jpg" width="250" height="497" alt="Early Childhood Brochure">-->
<img src="images/Somali-Translation.jpg" width="250" height="242" alt="Young boy with a cowboy hat on, playing with a fishing toy" />
</div>
</div>

<div id="maincontent">

	<div id="pagetoporange">
	<div class="printemail">
		<p>
		<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

		</p>
	</div>
	<div id="breadcrumb">
	<a href="../index.asp">Home</a> / <a href="index.asp">Translated Content</a> / Soomaliga

	<h1>Soomaliga</h1>

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
<a href="/publications/somali.asp">Click Here to view these publications with english titles</a>
</div>

<h2 class="nounderline"><a name="maincontent">Soomaliga</a></h2>

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

		<table class="handouts">

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

		</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>
