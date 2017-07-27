<%
Function Encode(sVal)
	Dim sReturn
    sReturn = ""
    If ((Not IsNull(sVal)) And (sVal<>"")) Then
		sReturn = Server.HTMLEncode(sVal)    
    End If
    Encode = sReturn
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
	If sVal = "Multi-Cultural Services" Then 
		result = "general" 
	ElseIf sVal = "African American Services" Or sVal = "Hmong/Lao Services" Or sVal = "Latino Services" Or sVal = "Somali Services" Then
		result = "multi"
	ElseIf sVal = "State, County, City Services" Then
		result = "stateservice"
	End If
	Grouping = result
End Function

Sub WriteItem()%>
			<li>
	  		<h4><%=Encode(rs("organization"))%></h4>
	    	<p>
			<%If Len(rs("address"))>0 Then%>
            	<%=Encode(rs("address"))%><br />
	    		<%If Len(rs("city"))>0 Then%>
					<%=Encode(rs("city"))%>,   
				<%End If%>	
				<%=Encode(rs("state"))%>&nbsp;<%=Encode(rs("zip"))%><br />
            <%End If%>
	    	<%If Len(rs("phone"))>0 Then%>
				<%=Encode(rs("phone"))%>
            <%End If%>
            </p>
  			<%If Len(rs("url")) > 0 Then%>
            	<p><a href="http://<%=Replace(Encode(rs("url")), "http://", "")%>" target="_blank">Website<span class="extralinktext"> for <%=Encode(rs("organization"))%></span></a></p>
		  	<%End If%>
	    	<%If Len(rs("description"))>0 Then%>
				<p><%=Encode(rs("description"))%></p>
            <%End If%>
	  		</li>
<%End Sub

Dim ConStr, rs, conn, sql

ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
sql = "SELECT * FROM fact_resourcelist ORDER BY category, organization"
Set conn = Server.CreateObject("ADODB.Connection")
conn.open ConStr
set rs = conn.execute(sql)
%>










<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Multicultural Services</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/stylenoleftright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />

<script type="text/javascript" src="/css/menu.js"></script>
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
.resourcelist h3{
	font-size:1.3em;
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

<div id="wrapper">

<div id="main">

<div id="header">
	<div>			<!--#include virtual="/googleSearchBox.htm"-->
            <!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>
<div id="maincontent">
	
	<div id="pagetoporange">
	
	<div id="breadcrumb">
	<a href="/">Home</a> / <a href="/pandr/">Programs</a>
<h1>Multicultural Services</h1>
</div>
</div>


<!--BEGIN CONTENT-->

<div id="pagecontent">

<h2 class="noborder">Multicultural Services Overview</h2>

<div id="topSectionWrap">

<p>
PACER currently employs several members of diverse cultural groups to work with parents. Multicultural staff persons meet with and provide individual information, assistance and advocacy to parents and family members who have children with disabilities. In addition, staff regularly meet with leaders in their own communities to discuss how to increase and improve services to families. Workshops are held locally to discuss various topics, and to increase awareness of state and federal laws that have been passed to ensure that children with disabilities are treated fairly. 
</p>
<h2>Translated Publications</h2>
<ul>
	<li><a href="/translations/hmongpubs.asp">Hmoob</a> - Koom haum PACER Center muaj kev tham qhia hais txog niam txiv txoj kev   txhawb nqa kev kawm ntawv tshwj xeeb ua ob hom lus, muaj kev pab tsev   neeg mus muab cov kev pab li lawv xav tau thiab muaj cov ntaub ntawv   txhais ua ntau hom lus hais txog tej xwm txheej uas cov tsev neeg ntau   caj ces sam sim ntsib. Cov ntaub ntawv hais mus no yog cov uas tau muab   txhais ua lus Hmoob lawm.  </li>
	<li><a href="/translations/somalipubs.asp">Soomaaliga</a> - Ururka PACER waxa uu bixiya tababar (workshop), waxqabad ama taageero   gaar ahaaneed iyo qoraalo la fasilay oo ku saabsan dhibaatooyinka ay la   kulmaan qoysaska ka socda meelaha kala gadisan. qoraalada hoos ku qoran   waa kuwo ka mid ah qoraalda lagu turjumay afka Soomaliga.  </li>
	<li> <a href="/publications/spanish.asp">Español</a> - <span id="result_box" lang="es" xml:lang="es">PACER ofrece talleres biling&uuml;es, ayuda individual y publicaciones traducidas se centran en los problemas que enfrentan las familias de diversos or&iacute;genes. Las siguientes publicaciones han sido traducidas al espa&ntilde;ol.</span></li>
</ul>
</div>
Additional  Multi-Cultural Services

<%
  Dim currCat  
  If rs.EOF Then %>
	<p>Error - Database not found.</p>
<%Else%>
<%'-----------------------------------ALERT BOX CATEGORY LISTING -----------------------%>
	<div id="alertwrapper" style="background:#fff; width:245px; float:right"><div class="alertBox" style="float:none">
    <h3 style="border:none; text-align:center; background:#F93; padding:5px;">Categories</h3>
    	<p style="line-height:2.0">
		<strong>Multi-Cultural Services</strong><br />
<%'----------------General--------------------------%>
        <a href="#Multi-CulturalServices">General</a><br />
<%'-------------------Multi-------------------------
		  Do Until rs.EOF
		  	Do Until Grouping(rs("category")) = "multi"
		  		rs.MoveNext
				If rs.EOF Then Exit Do
		  	Loop
		  	If Not rs.EOF Then
				currCat = rs("category")
%>
    			<a href="#<%=Anchor(rs("category"))%>"><%=Encode(rs("category"))%></a><br />
                
<%
			  Do Until currCat <> rs("category")
				rs.MoveNext
				If rs.EOF Then Exit Do
		  	  Loop
			End If
		  Loop
		  rs.MoveFirst
		  '---------------------Stateservices--------------------------------
		  %></p>
    	<p style="line-height:2.0">
        <strong>State, County, City, Services</strong><br />
			<a href="#StateCountyCityServices">General</a><br />
        <%'----------------------------Normal-----------------------------------
		  Do Until rs.EOF
		  	Do Until rs.EOF Or Grouping(rs("category")) = "normal"
		  		If Not rs.EOF Then rs.MoveNext
		  	Loop
		  	currCat = rs("category")
		%>
    		<a href="#<%=Anchor(rs("category"))%>"><%=Encode(rs("category"))%></a><br />
			<%Do Until currCat <> rs("category")
				rs.MoveNext
				If rs.EOF Then Exit Do
		  	  Loop
		  Loop
		  rs.MoveFirst
'----------------------------------------END ALERT BOX CATEGORY LISTING ---------------		
		%>
        </p>
    </div></div>
<div class="resourcelist">

<h2>Additional Multi-Cultural Services</h2>
  	<ul class="nobullet space categorylist">		
<%'-------------------------------MultiVultural Services ------------------------
		currCat = "Multi-Cultural Services"
		Do Until (rs("category") = currCat)
			rs.MoveNext	
			If rs.EOF Then Exit Do	
  		Loop
%>	
        <li><h3 id="<%=Anchor(rs("category"))%>">General</h3>
    	<div class="returntop"><a href="#pagecontent">Return to Top</a></div>
        <ul class="nobullet space resourcelist">
<%
		Do Until (currCat <> rs("category"))
		 	WriteItem()
			rs.MoveNext	
			If rs.EOF Then Exit Do	
  		Loop
		rs.MoveFirst	
%>
		</ul></li>
<%'--------------------------Other Multi ---------------------------------------------
		Do Until rs.EOF
			Do Until (Grouping(rs("category")) = "multi")
				rs.MoveNext	
				If rs.EOF Then Exit Do	
  			Loop
			If Not rs.EOF Then
				currCat = rs("category")
				If Grouping(currCat) = "multi" Then
%>		
					<li><h3 id="<%=Anchor(rs("category"))%>"><%=Encode(rs("category"))%></h3>
    				<div class="returntop"><a href="#pagecontent">Return to Top</a></div>
        			<ul class="nobullet space resourcelist">
<%
					Do Until (currCat <> rs("category") Or rs.EOF)
		 				WriteItem()
						rs.MoveNext	
					Loop
%>				
					</ul></li>
<%
			 	End If
			End If
  		Loop
%>
</ul>	

<h2>State, County, City Services</h2>

<ul class="nobullet space categorylist">		
<%'-------------------------------State Services ------------------------
		rs.MoveFirst
		currCat = "State, County, City Services"
		Do Until (rs("category") = currCat)
			rs.MoveNext	
			If rs.EOF Then Exit Do	
  		Loop
%>	
        <li><h3 id="<%=Anchor(rs("category"))%>">General</h3>
    	<div class="returntop"><a href="#pagecontent">Return to Top</a></div>
        <ul class="nobullet space resourcelist">
<%
		Do Until (currCat <> rs("category"))
		 	WriteItem()
			rs.MoveNext	
			If rs.EOF Then Exit Do	
  		Loop
		rs.MoveFirst	
%>
		</ul></li>
<%'--------------------------Other Services ---------------------------------------------
		Do Until rs.EOF
			Do Until (Grouping(rs("category")) = "normal")
				rs.MoveNext	
				If rs.EOF Then Exit Do	
  			Loop
			If Not rs.EOF Then
				currCat = rs("category")
				If Grouping(currCat) = "normal" Then
%>		
					<li><h3 id="<%=Anchor(rs("category"))%>"><%=Encode(rs("category"))%></h3>
    				<div class="returntop"><a href="#pagecontent">Return to Top</a></div>
        			<ul class="nobullet space resourcelist">
<%
					Do Until (currCat <> rs("category"))
		 				WriteItem()
						rs.MoveNext	
						If rs.EOF Then Exit Do	
					Loop
%>
					</ul></li>
<%
			 	End If
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

<!--#include virtual="/footer2.htm"-->

</div>

</body>
</html>