<%@LANGUAGE="VBSCRIPT"%>
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
<%
Dim ConStr, rs, conn, sql, i

ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test;"
Set conn = Server.CreateObject("ADODB.Connection")
conn.open ConStr

SetLocale(2058)
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="PACER Center's mission is to expand opportunities and enhance the quality of life of children and young adults with disabilities and provide family programs." />
<meta name="keywords" content="children with disabibilities, special needs children, teen bullying, parent programs, parents of disabled child, child development, blind deaf autistic children education programs, pacer center, pacer org" />
<meta name="copyright" content="Copyright 2011. PACER Center, Inc. All Rights Reserved." />
<title>PACER Español</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/home.css" />
<link rel="stylesheet" type="text/css" href="/es/es-style.css" />
<style>
.screenreadertext {
	position: absolute;
	left: -9000px;
}
#mainArea {
	padding:10px;
}
p, ul{
	clear:none;
	font-size:.9em;
}
#mainArea ul li {
	margin-bottom:.5em;
}
#mainArea a {
	color:#069;
	text-decoration:none;
	text-decoration:underline;
}
.pubslist li {
	padding-bottom:20px;
}
</style>
</head>

<body>
<h1 class="screenreadertext">PACER Center</h1>

<div id="skiptocontent">
<a href="#maincontent">Skip to main content</a>
</div>
<div id="wrapper">
	
	<div id="header"><!--#include virtual="/es/returnlinks.htm"-->
<a href="/es/"><img src="images/PACERLogo-es.gif" alt="PACER Center Logo: Champions for Children with Disabilities" width="430" height="104" /></a>
	<!--#include virtual="/es/dynamicheader.htm"-->
	</div>
	
	<!--BEGIN CONTENT-->
  <div id="mainArea"><img style="float:left; margin:0 15px 0 0" border="0" src="images/homepage1-es.jpg" width="537" height="342" alt="Child smiling: New to PACER? We're here to help...">
    
      <p>La misi&oacute;n de PACER Center (Parent Advocacy Coalition for Educational Rights—PACER) es la expandir oportunidades y mejorar la calidad de vida de ni&ntilde;os y j&oacute;venes adultos con discapacidades y sus familias, basada en el concepto de padres ayudando a padres.</p>
<p>Fundado en 1977, PACER Center fue creado por padres de ni&ntilde;os y j&oacute;venes con discapacidades para ayudar a otros padres y familias enfrentando los mismos retos. Hoy, PACER Center expande oportunidades&nbsp; y mejora la calidad de vida de ni&ntilde;os y j&oacute;venes adultos con discapacidades y sus familias. El personal de PACER est&aacute; formado principalmente de padres de ni&ntilde;os con discapacidades y trabaja en coalici&oacute;n con otras 18 organizaciones de discapacidades.</p>
<table width="100%" style="clear:left" cellspacing="10"><tr>
  <td width="50%" valign="top">          
            
<div id="videoseries" style="clear:right;">
<h2 style="border-top:solid 1px black; padding-top:3px">Series de Videos de Entrenamiento</h2>
<h3>Entendiendo Conductas Desafiantes</h3>
<a href="http://www.pacer.org/es/videoseries/?VID=twCcSzNy-jA&amp;VNUM=1"><img class="centered" src="/es/images/ECD-Video-thumb.jpg" width="440" height="300" alt="Video" /></a>
<div id="infobox">
	<p>En este taller aprenderemos &hellip;</p>
	<ul>
<li>Entendiendo la Conducta</li>
<li>Conductas que pudieran reflejar necesidades de salud mental</li>
<li>Alternativas al castigo</li>
<li>Intervenciones Efectivas en la Escuela</li>
<li>Intervenciones Efectivas en Casa</li>
<li>Derechos Educativos</li>
<li>Manteniendo las Conductas Apropiadas</li>
	</ul>
	
	<div id="additionalinfo" style="color:#666">
		<strong>Presenta:</strong> Jesús Villaseñor <br />
		<strong>Duración:</strong> 1h 17m
	</div>
</div>

</div><!--close videoseries-->
        </td>
    <td width="50%" valign="top">
<div style="width:15em; float:right; font-size:.8em; text-align:right; padding:7px; padding-top:30px"><a href="/es/publications.asp">Ver Todas las Publicaciones</a></div>

   <h2 style="border-top:solid 1px black; padding-top:3px">Publicaciones Recientes</h2>
   
<%
sql = "SELECT TOP 7 * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'handout' ORDER BY pub_date DESC"
set rs = conn.execute(sql)
%>
<ul style="list-style-image:url(../images/pdficon_small.gif)" class="pubslist">
<%	
Do until rs.eof 
%>
	<li><a href="<%=rs("pub_link")%>" target="_blank" onclick="_gaq.push(['_trackEvent', 'Spanish Site', 'PDF Download', '<%=TrimLink(rs("pub_link"))%>']);"><%=Encode_UTF8(rs("pub_name_translated"))%></a></li>
<% 
rs.movenext
loop
%>
</ul> 

<hr />
<h3>Recursos Adicionales</h3>
<br />
<a href="http://www.neparentcenters.org/glossary/index.html" target="_blank">Glosario de Términos de Educación Especial</a></td></tr></table>



</div>
<!--#include virtual="/es/footer.htm"-->
    <!--END CONTENT-->
	</div>
	
</div>
	
	
		
</div>

</body>
</html>
<%
rs.close
set rs = nothing
%>
