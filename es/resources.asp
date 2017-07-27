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

Function Anchor(sVal)
	Dim result
	result = sVal
	result = Replace(result, " ", "")
	result = Replace(result, "&", "")
	result = Replace(result, "/", "")
	result = Replace(result, ",", "")
	Anchor = result
End Function

Function Grouping(sVal)
	Dim result
	result = "normal"
	'Response.Write(sVal)
	'Response.Write("<BR>" & rs.eof)
	If sVal = "Servicios para Latinos" Then 
		result = "general" 
	ElseIf sVal = "African American Services" Or sVal = "Hmong/Lao Services" Or sVal = "Latino Services" Or sVal = "Somali Services" Then
		result = "multicultural"
	ElseIf sVal = "State, County, City Services" Then
		result = "stateservice"
	End If
	Grouping = result
End Function

Sub WriteItem()%>
			<li>
	  		
			<h4><%=rs("organization")%>
			<%If Len(rs("organization_es")) > 0 Then%>
				<br /><em style="padding-left:50px; display:block; margin-top:10px;"><%=Encode_UTF8(rs("organization_es"))%></em>
			<%End If%>
			</h4>
			
			
	    	<p>
			<%If Len(rs("address"))>0 Then%>
            	<%=rs("address")%><br />
	    		<%If Len(rs("city"))>0 Then%>
				<%=rs("city")%>,   
				<%End If%>	
				<%=rs("state")%> <%=rs("zip")%><br />
            <%End If%>
	    	<%If Len(rs("phone"))>0 Then%>
				<%=rs("phone")%>
            <%End If%>
            </p>
  			<%If Len(rs("url_es")) > 0 Then%>
            	<p><a href="http://<%=Replace(rs("url_es"), "http://", "")%>" target="_blank">Website - <img src="/es/images/mexicoflag.jpg" alt="" width="90" height="51" /><span class="extralinktext"> for <%=rs("organization")%></span></a></p>
		  	<%ElseIf  Len(rs("url")) > 0 Then%>
            	<p><a href="http://translate.google.com/translate?sl=en&tl=es&js=n&prev=_t&hl=en&ie=UTF-8&u=<%=Replace(rs("url"), "http://", "")%>" target="_blank">Website - <img src="/es/images/google-translate.jpg" alt="" width="90" height="42" /><span class="extralinktext"> for <%=Encode_UTF8(rs("organization"))%></span></a></p>			
			<%End If%>
	    	<%If Len(rs("description_es"))>0 Then%>
				<p><%=Encode_UTF8(rs("description_es"))%></p>
            <%End If%>
	  		</li>
<%End Sub

Dim ConStr, rs, conn, sql

ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
sql = "SELECT * FROM fact_resourcelist WHERE category_es <> 'Do Not Display' ORDER BY category_es, organization"
Set conn = Server.CreateObject("ADODB.Connection")

conn.open ConStr
set rs = conn.execute(sql)
%>





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<meta name="description" content="By making a donation, you are helping PACER provide opportunities for disabled children and youth with disabilities. Your contribution will help keep services free of charge to families." />
<meta name="keywords" content="donate pacer, give to pacer, corporate contributions, children with disabibilities, special needs children, teen bullying, parent programs, parents of disabled child, child development, blind deaf autistic children education programs, pacer center, pacer org" />

<title>PACER Español -  Servicious Multiculturales</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/style.css" />
<link rel="stylesheet" type="text/css" href="/es/es-style.css" />


<style type="text/css">
#topSectionWrap{
	max-width:60em;
}
#pagecontent h2 {
	margin:10px 0px;
	padding-top:10px;
	border-top: 1px solid #ccc;
}
#pagecontent h2.noborder{
	border:none;
}
.resourcelist {
	margin-top:25px;
}
#pagecontent .resourcelist ul li h3{
	font-size:1.5em;
	margin-top:10px;
	margin-bottom:10px;
	padding-top:10px;
	border-top:3px solid #F60;
	color:#2a7e00;
	text-shadow:1px 1px 1px #666;
	letter-spacing:2px;
}
.resourcelist h4{
	padding:5px;
	background:#deedf9;
	border:1px solid #666;
}
.returntop{
	width:8em; 
	float:right;
	margin-top:-15px;
}
</style>

</head>

<body>

<div id="skiptocontent">
<a href="#maincontent">Skip to main content</a>
</div>
<div id="wrapper" style="position:relative">

<div id="main">
<div id="header"><!--#include virtual="/es/returnlinks.htm"-->

	<div>			
<a href="/es/"><img src="/es/images/PACERLogo-es.gif" alt="PACER Center Logo: Campeones para Ni�os con Discapacidades" class="logoImg" /></a>
	</div>
	<!--#include virtual="/es/dynamicheader.htm"-->
</div>

<div id="rightBar">
<!--#include virtual="/es/infobox1.htm"-->
</div>
</div>
<div id="maincontent">
	<div id="pagetoporange">
	<div class="printemail"></div>
	<div id="breadcrumb">
	  <h1>Servicios Multiculturales</h1>

	
</div>
</div>

<div id="pagecontent">

<h2 class="noborder">Resumen de Servicios Multiculturales</h2>

<div id="topSectionWrap">

<p>Actualmente,  PACER tiene empleados provenientes de varios grupos culturales que trabajan con  los padres de familia. El personal multicultural se reúne con los padres y  familiares de niños que tienen discapacidades, para darles información  personalmente, proveer asistencia y abogar por ellos. Además, el personal de  PACER en su calidad de líderes de sus propias comunidades se reúnen  regularmente otros líderes para hablar acerca de cómo aumentar y mejorar los  servicios a las familias. Los talleres se llevan a cabo en su localidad para la  discusión de varios temas y para dar a conocer las nuevas leyes estatales y  federales que han sido aprobadas para asegurar que los niños con discapacidades  reciban un trato justo.</p>
</div>
<%
  Dim currCat  
  If rs.EOF Then %>
	<p>Error - Database not found.</p>
<%Else%>
<%'-----------------------------------ALERT BOX CATEGORY LISTING -----------------------%>
	<div id="alertwrapper" style="background:#fff; width:245px; float:right"><div class="alertBox" style="float:none">
    <h3 style="border:none; text-align:center; background:#F93; padding:5px;">Categorías</h3>
    	<p style="line-height:2.0">
		<strong>Servicios para Latinos</strong><br />
        <a href="#ServicesForLatinos">En General</a><br /></p>
<%'---------------------Stateservices--------------------------------%>

	<p style="line-height:2.0">
	<strong>Servicios Estatales, de Condados y Ciudades</strong><br />
		<a href="#StateCountyCityServices">En General</a><br />
<%'----------------------------Normal-----------------------------------
	  Do Until rs.EOF
	  	If currCat <> rs("category_es") And Grouping(rs("category_es")) = "normal" Then
			currCat = rs("category_es")
		%>
		<a href="#<%=Anchor(rs("category"))%>"><%=Encode_UTF8(rs("category_es"))%></a><br />
	  <%
		End If
		rs.MoveNext
	  Loop
		  
		rs.MoveFirst
		'Response.Write("<h1>End</h1>")
'----------------------------------------END ALERT BOX CATEGORY LISTING ---------------		
		%>
        </p>

    </div></div>
<div class="resourcelist">

<h2>Servicios para Latinos</h2>
  	<ul class="nobullet space categorylist">		
<%'-------------------------------Latino Services ------------------------
		currCat = "Servicios para Latinos"
		Do Until (rs("category_es") = currCat)
			rs.MoveNext	
			If rs.EOF Then Exit Do	
  		Loop
%>	
        <li><h3 id="ServicesForLatinos">En General</h3>
        	<ul class="nobullet space resourcelist">
	<%
		Do Until (currCat <> rs("category_es"))
		 	WriteItem()
			rs.MoveNext	
			If rs.EOF Then Exit Do	
  		Loop
		rs.MoveFirst	
%>
	</ul></li>
	</ul>
<h2>Servicios Estatales, de Condados y Ciudades</h2>
<ul class="nobullet space categorylist">		
<%'-------------------------------State Services ------------------------
		rs.MoveFirst
		currCat = "State, County, City Services"
		Do Until (rs("category_es") = currCat)
			rs.MoveNext	
			If rs.EOF Then Exit Do	
  		Loop
%>	
        <li><h3 id="StateCountyCityServices">En General</h3>
    	<div class="returntop"><a href="#pagecontent">Volver al Comienzo</a></div>
        <ul class="nobullet space resourcelist">
<%
		Do Until (currCat <> rs("category_es"))
		 	WriteItem()
			rs.MoveNext	
			If rs.EOF Then Exit Do	
  		Loop
		rs.MoveFirst	
%>
		</ul></li>
<%'--------------------------All Other Services ---------------------------------------------
		currCat = "none"
		Do Until rs.EOF
			
			If Grouping(rs("category_es")) = "normal" Then
				If currCat <> rs("category_es") Then
					currCat = rs("category_es")
					'Create the Category Header
%>
					<li><h3 id="<%=Anchor(rs("category"))%>"><%=Encode_UTF8(rs("category_es"))%></h3>
					<div class="returntop"><a href="#pagecontent">Volver al Comienzo</a></div>
					<ul class="nobullet space resourcelist">
<%
				End If
				Do Until (currCat <> rs("category_es"))
					WriteItem()
					rs.MoveNext	
					If rs.EOF Then Exit Do	
				Loop
%>
				</ul></li>
<%			Else
				rs.MoveNext
			End If
  		Loop
%>

	</ul>			

<%
  End If
  rs.Close
  Set rs = nothing
%>

</div>
<div id="pageextender" style="clear:both">&nbsp;</div>

</div>

<!--END CONTENT-->


</div>
</div>
<!--#include virtual="/es/footer.htm"-->

</div>


</body>
</html>