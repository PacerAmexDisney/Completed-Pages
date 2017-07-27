<%
Dim videoID, vNum
vNum = 1
videoID = "twCcSzNy-jA"
If Request.QueryString("VID") <> "" Then
	videoID = Request.QueryString("VID")
	vNum = Request.QueryString("VNUM")
End If

Select Case vNum
	Case 1
		vTitle = "Video 1 - Cambiando Conductas Desafiantes"
	Case 2
		vTitle = "Video 2 - Conductas que pudieran reflejar necesidades de Salud Mental"
	Case 3
		vTitle = "Video 3 - Estrategias efectivas que pudieran ayudar en la Escuela y en Casa"
	Case 4
		vTitle = "Video 4 - Derechos Educativos "
	Case 5
		vTitle = "Video 5 - Plan 504 y Educación Especial "
End Select

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<meta name="description" content="By making a donation, you are helping PACER provide opportunities for disabled children and youth with disabilities. Your contribution will help keep services free of charge to families." />
<meta name="keywords" content="donate pacer, give to pacer, corporate contributions, children with disabibilities, special needs children, teen bullying, parent programs, parents of disabled child, child development, blind deaf autistic children education programs, pacer center, pacer org" />

<title><%=vTitle%> - Understanding Challenging Behaviors - Video Training Series - PACER Center</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/style.css" />
<link rel="stylesheet" type="text/css" href="/es/es-style.css" />

<style>
#aboutPACER {
	font-size:1em;
}
#wrapper {
	min-width:1040px;
}
#pagecontent h1{
	text-align:center;
	margin-bottom:15px;
}
</style>
</head>

<body>

<div id="skiptocontent">
<a href="#maincontent">Skip to main content</a>
</div>
<div id="wrapper" style="position:relative">
<div id="main">
<div id="header">
<!--#include virtual="/es/returnlinks.htm"-->

	<div>			
<a href="/es/"><img src="/es/images/PACERLogo-es.gif" alt="PACER Center Logo: Campeones para Niños con Discapacidades" class="logoImg" /></a>
	</div>
	<!--#include virtual="/es/dynamicheader.htm"-->
</div>

<div id="rightBar">
<!--#include virtual="/es/infobox1.htm"-->


<img src="/es/images/JesusVillasenor-250w-2010.jpg" width="250" height="330" alt="" />
<div class="stayinformed" style="color:#666">
Presenta: Jesús Villaseñor 

</div>

</div>
</div>
<div id="maincontent">
	<div id="pagetoporange">
	  <div id="breadcrumb">
	    <h1>Entendiendo Conductas Desafiantes - Video Training Series</h1>

	
</div>
</div>

<div id="pagecontent">
<h1><%=vTitle%></h1>

<div id="youtubewrapper" style="width:750px; margin:10px auto">
<iframe width="750" height="422" src="//www.youtube.com/embed/<%=videoID%>?list=PLMe9zDtTPTVe0sbOrr3lEDAudsRmNJgDM" frameborder="0" allowfullscreen></iframe>
</div>

<hr />
<div id="VideoNavMenu" style="width:475px; float:right; margin:0px 10px; border-left:2px solid #ccc; padding-left:15px;">
<p><strong><span id="result_box" lang="es" xml:lang="es">Ir a otra sección</span>:</strong></p>
<ul>
	<li><a href="http://www.pacer.org/es/videoseries/?VID=twCcSzNy-jA&VNUM=1">Ir A Video 1 - Cambiando Conductas Desafiantes</a><br /><em>(<span id="result_box2" lang="es" xml:lang="es">duración</span>: 18min)</em></li>
	<li><a href="http://www.pacer.org/es/videoseries/?VID=05IX-btf2Kg&VNUM=2">Ir A Video 2 - Conductas que pudieran reflejar necesidades de Salud Mental</a><em><br />(<span id="result_box3" lang="es" xml:lang="es">duración</span>:10 min)</em></li>
	<li><a href="http://www.pacer.org/es/videoseries/?VID=r5vwEqTTHlo&VNUM=3">Ir A Video 3 - Estrategias efectivas que pudieran ayudar en la Escuela y en Casa</a><em><br />(<span id="result_box4" lang="es" xml:lang="es">duración</span>:22 min)</em></li>
	<li><a href="http://www.pacer.org/es/videoseries/?VID=TAMu50HpbYc&VNUM=4">Ir A Video 4 - Derechos Educativos</a><br /><em>(<span id="result_box5" lang="es" xml:lang="es">duración</span>:8 min)</em></li>
	<li><a href="http://www.pacer.org/es/videoseries/?VID=-OsSRSITRPk&VNUM=5">Ir A Video 5 - Plan 504 y Educación Especial</a><br /><em>(<span id="result_box6" lang="es" xml:lang="es">duración</span>:20 min)</em></li>
</ul>
</div>


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
<p>Presenta: Jesus Villasenor<br />
	Duración: 1h 17m	</p>


<div id="pageextender" style="clear:both">&nbsp;</div>
</div><!--END PAGECONTENT-->
</div>
</div>

<!--#include virtual="/es/footer.htm"-->

</div>


</body>
</html>