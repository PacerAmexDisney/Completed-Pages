<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/multicultural/"
%>







<%@LANGUAGE="VBSCRIPT" CODEPAGE="28596"%>
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



<!DOCTYPE html 
     PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>FACT Project - Resource List</title>
<meta name="description" content="PACER Center&rsquo;s  Families Accessing Communities Together (FACT) Project will work with families  to identify and provide effective family support services and leadership  training for families of individuals with developmental disabilities from birth  to age 25 in the Minneapolis/St. Paul area
" />
<meta name="keywords" content="Families, Accessing, Communities, Together, Minneapolis, St. Paul, support services, developmental disabilities
" />

<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavigation.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />

<script type="text/javascript" src="/css/menu.js"></script>
<!--Print Window-->
<style type="text/css">
#pagecontent h3{
	margin-top:10px;
	margin-bottom:10px;
	padding-top:10px;
	border-top:1px solid #ccc;
}
.resourcelist h4{
	padding:5px;
	background:#deedf9;
	border:1px solid #666;
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

<div id="rightBar" style="width: 250px;">
			<p class="pacerinfo"> <strong>PACER Center<br />
				952-838-9000</strong> </p>
			<p class="pacerinfo2"> Champions for Children with Disabilities </p>
			<p class="pacerinfo3"> <a href="http://www.pacer.org/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a> </p>
			
			<p class="rightsidebarpic"> <img src="/images/sidebar/familyOfFour.jpg" width="250" height="166" alt="" /> </p>
			<p class="rightsidebarpic"> <img src="/images/sidebar/teenwithmother.jpg" width="250" height="165" alt="" /> </p>
			<p class="rightsidebarpic"> <img src="/images/sidebar/fatherDaughter.jpg" width="250" height="167" alt="" /> </p>
</div>

<div id="topbar">
<div id="breadcrumb"> <a href="/" title="PACER's home page">Home</a> / <a href="/pandr/" title="PACER's programs and resources">Programs &amp; Resources</a> /
					<h1>Families Accessing  Communities Together (FACT) Project - Resource List</h1>
				</div>
</div>

<div id="leftbar">
<!--#include file="navBar.html" -->
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="resource-list";
	var currSubId="none";
	// any Subtree that I want to Display
	var showTree = "none";
	
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
	if (document.getElementById(currSubId)){
		document.getElementById(currSubId).className = "page";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "treemenu") {
			//Any additional subTrees that you want to skip should be added here. like this (subTrees[i] != subTree1 || subTrees[i] != subTree2)
			if (subTrees[i].id != showTree) {
				subTrees[i].className = "treemenuhidden";
			}
		}
	}
</script>

</div>

<div id="maincontent">

<div id="pagecontent">

<!--BEGIN CONTENT-->
<%
  Dim currCat  
  If rs.EOF Then %>
	<p>Error - Database not found.</p>
<%Else%>
<%'-----------------------------------ALERT BOX CATEGORY LISTING -----------------------%>
	<div id="alertwrapper" style="background:#fff; width:245px; float:right"><div class="alertBox" style="float:none">
    <h3 style="border:none; text-align:center; background:#F93; padding:5px;">Categories</h3>
    	<p style="line-height:2.0">
		<strong>Muli-Cultural Services</strong><br />
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
<h2>Multi-Cultural Services</h2>
  	<ul class="nobullet space categorylist">		
<%'-------------------------------MultiVultural Services ------------------------
		currCat = "Multi-Cultural Services"
		Do Until (rs("category") = currCat)
			rs.MoveNext	
			If rs.EOF Then Exit Do	
  		Loop
%>	
        <li><h3 id="<%=Anchor(rs("category"))%>">General</h3>
    	<div style="width:8em; float:right;" class="date"><a href="#pagecontent">Return to Top</a></div>
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
    				<div style="width:8em; float:right;" class="date"><a href="#pagecontent">Return to Top</a></div>
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
    	<div style="width:8em; float:right;" class="date"><a href="#pagecontent">Return to Top</a></div>
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
    				<div style="width:8em; float:right;" class="date"><a href="#pagecontent">Return to Top</a></div>
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


<!--END CONTENT-->

<div id="pageextender" style="clear:both">&nbsp;</div>


</div>



</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>