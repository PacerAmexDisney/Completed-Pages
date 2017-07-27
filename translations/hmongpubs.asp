<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="hmn" lang="hmn">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Translated Content: Hmoob</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/style.css" />

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
<a href="../"><img src="../images/pacerLogoHmong.gif" alt="PACER Center: cov muaj yeej rau cov me nyuam muaj qhov tsis taus" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="rightBar">
  <div class="rightsidebarpic">
  <img src="images/Hmong-Translation.jpg" width="250" height="368" alt="mother reading a book to her daughter" />
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
	<a href="../index.asp">Home</a> / <a href="index.asp">Translated Content</a> / Hmoob
	
	<h1>HMOOB</h1>
	
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
<a href="/publications/hmongseasian.asp">Click Here to view these publications with english titles</a>
</div>

<h2 class="nounderline"><a name="maincontent">HMOOB</a></h2>

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
<p><br />Ib daim yog 1.5 dus las | ntau tshaj 10 daim lawm ces ib daim no yog 50 xees</p>

<div id="pageextender" style="clear:both">&nbsp;</div>
</div>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>