<%
'+--------------------------------------------------------------------------------------------------
' ENCODE UTF8
'   Note: this is not the same as encoding a string that
'   is already in ANSI format. See ANSIToUnicode for
'   that functionality
' . Encode_UTF8: encodes a new string into UTF8 format. Note that this is not the same as encoding
'          a string that is already in ANSI format. See ANSIToUnicode for that functionality.
'   . Usage: formatStringObject.encode_UTF8(your string)
'   . Requires:  a string of characters to format
'   . Returns: the same string in UTF8 format
'+--------------------------------------------------------------------------------------------------
  Public Function Encode_UTF8(astr)
    Dim c
    Dim utftext
    utftext = ""
    If isNull(astr) = false or astr <> "" Then
      astr = Replace(astr, "’", "'") 'replacing the apostrophe
      astr = Replace(astr, "–", "-") 'replacing the emdash with minus sign
      For n = 1 To Len(astr)
        c = Asc(Mid(astr, n, 1))
        If c < 128 Then
          utftext = utftext + Mid(astr, n, 1)
        ElseIf ((c > 127) And (c < 2048)) Then
          utftext = utftext + Chr(((c \ 64) Or 192))
          utftext = utftext + Chr(((c And 63) Or 128))
        Else
          utftext = utftext + Chr(((c \ 144) Or 234))
          utftext = utftext + Chr((((c \ 64) And 63) Or 128))
          utftext = utftext + Chr(((c And 63) Or 128))
        End If
      Next
    End If
    Encode_UTF8 = utftext
  End Function

Public Function TrimLink(fItem) 
 	If InStr(fItem, "http://www.pacer.org") > 0 Then
		TrimLink = Right(fItem, Len(fItem)-20)
	Else
		Trimlink = fItem
	End If 
End Function 
   
%>
<!--#include virtual="/es/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="Translated Publications produced by PACER Center" />

<title>PACER Español - Publicaciones Español</title>
    <meta property="og:title" content="PACER Español - Publicaciones Español"/>
    <meta property="og:url" content="http://www.pacer.org/es/publications.asp"/>
    <meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg"/>
    <meta property="og:description"
          content="By making a donation, you are helping PACER provide opportunities for disabled children and youth with disabilities. Your contribution will help keep services free of charge to families."/>
    <meta property="og:keywords"
          content="donate pacer, give to pacer, corporate contributions, children with disabibilities, special needs children, teen bullying, parent programs, parents of disabled child, child development, blind deaf autistic children education programs, pacer center, pacer org"/>

<link rel="stylesheet" type="text/css" href="/js/colorbox1.5.9/colorbox.css">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="/js/colorbox1.5.9/jquery.colorbox-min.js"></script>
<script type="text/javascript" src="/js/pacer-video-popup.js"></script>


<style type="text/css">
#pagecontent h3 {
	font-size:1.5em;
	background-color:#1e5a00;
	padding:7px;
	color:#fff;
	border-radius:5px;
}
</style>
</head>

<body class="singleCol">

<!--#include virtual="/es/templates/page-header-nav.asp"-->

    <div id="topbar">
        <div id="breadcrumb">
            <a href="/es/"><span class="fa fa-home"></span> Principal</a> / <a href="/cultural-diversity/">Working
            with
            Culturally Diverse Families</a> /
        </div>
        <h1>Publicaciones Español</h1>
    </div>

    <div id="maincontent" class="">

        <div id="pagecontent" class="narrowContent col-9 left-content">


<div class="alertBox" style="font-weight:bold; font-size:1.2em">
	<p>Para solicitar una publicación<br />
		llamar al 952-838-1371.
	</p>
	<p><img src="/publications/images/square.png" alt="square" />- Artículos con pueden ordenarse en forma gratuita para los padres que vivan en Minnesota</p>
</div>








<%
Dim ConStr, rs, conn, sql, i

ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
Set conn = Server.CreateObject("ADODB.Connection")
conn.open ConStr
%>



<% ' -------------------------------BROCHURES --------------------------%>
<h3 class="pubcat" style="margin-bottom: .5em;">Folletos</h3>

	  <%
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'brochure' ORDER BY pub_name_translated"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else
		
		rs.movefirst
		do until rs.eof
		%>
		

	<%
		Dim checkforlink1
		checkforlink1 = Trim(rs("pub_link"))
		if Trim(rs("pub_image")) <> "" then
			if checkforlink1 <> "nolink" then
		%>
			
			<p class="pubstext textimage" id="<%=rs("pub_code")%>">
			  <img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=Encode_UTF8(rs("pub_name_translated"))%> publication" />
				<strong><em><a href="<%=rs("pub_link")%>" target="_blank" onclick="_gaq.push(['_trackEvent', 'Spanish Site', 'PDF Download', '<%=TrimLink(rs("pub_link"))%>']);"><%=Encode_UTF8(rs("pub_name_translated"))%></a>&nbsp;<img src="../images/pdficon_small.gif"></em></strong><br /><br />
			  <%=Encode_UTF8(rs("pub_description_translated"))%><br />
				
			<%else%>
			
			<p class="pubstext textimage" id="<%=rs("pub_code")%>">
			  <img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=Encode_UTF8(rs("pub_name_translated"))%> publication" />
				<strong><em><%=Encode_UTF8(rs("pub_name_translated"))%></em></strong><br />
			  <%=Encode_UTF8(rs("pub_description_translated"))%><br />
				
			<%end if%>
			
	  <%
		else if checkforlink1 <> "nolink" then
		%>			<p id="<%=rs("pub_code")%>">		
			<a href="<%=rs("pub_link")%>" target="_blank" onclick="_gaq.push(['_trackEvent', 'Spanish Site', 'PDF Download', '<%=TrimLink(rs("pub_link"))%>']);"><%=Encode_UTF8(rs("pub_name_translated"))%></a>&nbsp;<img src="../images/pdficon_small.gif" alt="pdf icon" /><br /><br />
		<%=Encode_UTF8(rs("pub_description_translated"))%><br />
<%
			else
			%>
	
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=Encode_UTF8(rs("pub_name_translated"))%></em></strong><br />
			  <%=Encode_UTF8(rs("pub_description_translated"))%><br />
		
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


<h3 class="pubcat" style="margin-bottom: .5em;">Video</h3>
<div class="description" style="min-height:245px;">
  <p><a class="videoPopUp" href="https://www.youtube.com/watch?v=ux_C8KLTQG8" target="_blank"><img class="fltrt" src="/es/images/WhatDoINeedToknow-Video-thumb.jpg" width="300" height="242" alt="What Do I Need To Know Video" /></a><strong>Educación Especial: Lo que Necesito Saber</strong> <br /><br />
  	Un audio/ video (traducido al español con una vista panorámica a la  educación especial, creado para ayudar a padres de niños con discapacidades a  entender lo que es la educación especial; cómo un niño puede entrar en  educación especial, cómo resolver desacuerdos y qué papel desempeñan los  padres. 2009.</p>
	<p>Desarrollado por PACER Center, está financiado en parte por una  subvención 
		del Departamento de Educación de Minnesota</p>
<p><a class="videoPopUp" href="https://www.youtube.com/watch?v=ux_C8KLTQG8" target="_blank">Véalo ahora <img src="/images/movieReelIcon_small.gif" width="25" height="25" alt="Flash Video " /></a></p>
</div>

<%' Books  %>
<h3 class="pubcat" style="margin-bottom: .5em;">Libros</h3>

	  <%
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND (pub_type = 'book' or pub_type = 'booklet') ORDER BY pub_name_translated"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else
		
		rs.movefirst
		do until rs.eof
		%>
		

	<%
		checkforlink1 = Trim(rs("pub_link"))
		if Trim(rs("pub_image")) <> "" then
			if checkforlink1 <> "nolink" then
		%>
			
			<p class="pubstext textimage" id="<%=rs("pub_code")%>">
			  <img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=Encode_UTF8(rs("pub_name_translated"))%> publication" />
				<strong><em><a href="<%=rs("pub_link")%>" target="_blank" onclick="_gaq.push(['_trackEvent', 'Spanish Site', 'PDF Download', '<%=TrimLink(rs("pub_link"))%>']);"><%=Encode_UTF8(rs("pub_name_translated"))%></a>&nbsp;<img src="../images/pdficon_small.gif"></em></strong><br />
			  <%=Encode_UTF8(rs("pub_description_translated"))%><br />
				
			<%else%>
			
			<p class="pubstext textimage" id="<%=rs("pub_code")%>">
			  <img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=Encode_UTF8(rs("pub_name_translated"))%> publication" />
				<strong><em><%=Encode_UTF8(rs("pub_name_translated"))%></em></strong><br />
			  <%=Encode_UTF8(rs("pub_description_translated"))%><br />
				
			<%end if%>
			
	  <%
		else if checkforlink1 <> "nolink" then
		%>			<p id="<%=rs("pub_code")%>">		
			<a href="<%=rs("pub_link")%>" target="_blank" onclick="_gaq.push(['_trackEvent', 'Spanish Site', 'PDF Download', '<%=TrimLink(rs("pub_link"))%>']);"><%=Encode_UTF8(rs("pub_name_translated"))%></a>&nbsp;<img src="../images/pdficon_small.gif" alt="pdf icon" /><br />
		<%=Encode_UTF8(rs("pub_description_translated"))%><br />
<%
			else
			%>
	
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=Encode_UTF8(rs("pub_name_translated"))%></em></strong><br />
			  <%=Encode_UTF8(rs("pub_description_translated"))%><br />
		
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

<h3 class="pubcat" style="margin-bottom: .5em;">Handouts <img src="/publications/images/square.png" width="16" height="12" alt="square" /><span style="font-size: 75%;">Los materiales se pueden bajar gratis    <img src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /> | $1.50 por solicitud | 10+ <span id="result_box" lang="es" xml:lang="es">copias</span>, $.50 cada</span></h3>


	  <%
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'handout' ORDER BY pub_name_translated"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else
		%>

		
		<table class="handouts" cellpadding="5">
		<tr style="font-weight: bold; background-color: #eee;">
			<td>Nombre de la publicación</td>
			<td>Clave de la publicación</td>
			</tr>
		
		<%
		rs.movefirst
		do until rs.eof
		%>			<tr id="<%=rs("pub_code")%>">
				<td style="border-bottom: solid 1px #eee;">
				
				<%
				Dim checkforlink2
				checkforlink2 = Trim(rs("pub_link"))
				if checkforlink2 <> "nolink" then
				%>
<a href="<%=rs("pub_link")%>" target="_blank" onclick="_gaq.push(['_trackEvent', 'Spanish Site', 'PDF Download', '<%=TrimLink(rs("pub_link"))%>']);"><%=Encode_UTF8(rs("pub_name_translated"))%></a>
					
				<%
				else
				%>
				
				  <%=Encode_UTF8(rs("pub_name_translated"))%>
				
				<%
				end if
				%>
				</td>
				<td class="handoutcode" style="border-bottom: solid 1px #eee;">
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
		<%
		sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND (pub_type = 'activity' OR pub_type = 'infocard') ORDER BY pub_name_translated"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else%>
		<a name="ltac"></a>
		<h3 class="pubcat" style="margin-bottom: .5em;">Tarjetas Informativas</h3>
		<%rs.movefirst
		do until rs.eof
		%>
		
		<%
		if Trim(rs("pub_image")) <> "" then
		%>
			
			<p class="pubstext" id="<%=rs("pub_code")%>">
			  <img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=Encode_UTF8(rs("pub_name_translated"))%> publication" />
				<strong><em><%=Encode_UTF8(rs("pub_name_translated"))%></em></strong><br />
			  <%=Encode_UTF8(rs("pub_description_translated"))%><br />
			
		<%
		else
		%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=Encode_UTF8(rs("pub_name_translated"))%></em></strong><br />
			  <%=Encode_UTF8(rs("pub_description_translated"))%><br />
		
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

<h3 class="pubcat" style="margin-bottom: .5em;">Libro y Audio</h3>
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
			  <img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=Encode_UTF8(rs("pub_name_translated"))%> publication" />
				<strong><em><%=Encode_UTF8(rs("pub_name_translated"))%></em></strong><br />
			  <%=Encode_UTF8(rs("pub_description_translated"))%><br />
			
  <%
		else
		%>			<p id="<%=rs("pub_code")%>">
				<strong><em><%=Encode_UTF8(rs("pub_name_translated"))%></em></strong>&nbsp;&nbsp;|&nbsp;&nbsp;<%=rs("pub_code")%><br />
		<%=Encode_UTF8(rs("pub_description_translated"))%>
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

<h3 class="pubcat" style="margin-bottom: .5em;">Taller / Programa de entrenamiento</h3>

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
			  <img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=Encode_UTF8(rs("pub_name_translated"))%> publication" />
				<strong><em><%=Encode_UTF8(rs("pub_name_translated"))%></em></strong><br />
			  <%=Encode_UTF8(rs("pub_description_translated"))%><br />
			
		<%
		else
		%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=Encode_UTF8(rs("pub_name_translated"))%></em></strong><br />
			  <%=Encode_UTF8(rs("pub_description_translated"))%><br />
		
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
			  <img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=Encode_UTF8(rs("pub_name_translated"))%> publication" />
				<strong><em><%=Encode_UTF8(rs("pub_name_translated"))%></em></strong><br />
			  <%=Encode_UTF8(rs("pub_description_translated"))%><br />
			
		<%
		else
		%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=Encode_UTF8(rs("pub_name_translated"))%></em></strong><br />
			  <%=Encode_UTF8(rs("pub_description_translated"))%><br />
		
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

            <!--END CONTENT-->

            <div id="pageextender" style="clear:both">&nbsp;</div>
        </div><!-- Close #pagecontent -->
        <div id="rightBar">
            <div class="rightBar-wrapper">
                <!--#include virtual="/es/infobox1.htm"-->
                <div class="stayinformed" style="font-size:1.05em; text-align:center">
        	        <a href="/publications/spanish.asp">View these publication listings with English titles here.</a>
        	    </div>
                <img src="/es/images/sidebar/African-American-father-and-toddler.jpg" alt="" />
            </div>
        </div><!-- Close #rightBar -->
    </div><!-- Close #maincontent -->

    <!--#include virtual="/es/templates/footer.asp"-->