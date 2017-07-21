
<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/multicultural/"
%>






<%@LANGUAGE="VBSCRIPT" CODEPAGE="28596"%>
<%
Dim ConStr, rs, conn, sql

ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
sql = "SELECT * FROM fact_partners ORDER BY organization"
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
<title>FACT Project - Partners</title>
<meta name="description" content="PACER Center&rsquo;s  Families Accessing Communities Together (FACT) Project will work with families  to identify and provide effective family support services and leadership  training for families of individuals with developmental disabilities from birth  to age 25 in the Minneapolis/St. Paul area
" />
<meta name="keywords" content="Families, Accessing, Communities, Together, Minneapolis, St. Paul, support services, developmental disabilities
" />

<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavigation.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />

<script type="text/javascript" src="/css/menu.js"></script>
<!--Print Window-->
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
			<p class="pacerinfo3"> <a href="/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a> </p>
			
			<p class="rightsidebarpic"> <img src="/images/sidebar/familyOfFour.jpg" width="250" height="166" alt="" /> </p>
			<p class="rightsidebarpic"> <img src="/images/sidebar/teenwithmother.jpg" width="250" height="165" alt="" /> </p>
			<p class="rightsidebarpic"> <img src="/images/sidebar/fatherDaughter.jpg" width="250" height="167" alt="" /> </p>
</div>


<div id="topbar">
<div id="breadcrumb"> <a href="/" title="PACER's home page">Home</a> / <a href="/pandr/" title="PACER's programs and resources">Programs &amp; Resources</a> /
					<h1>Families Accessing  Communities Together (FACT) Project </h1>
				</div>
</div>

<div id="leftbar">
<!--#include file="navBar.html" -->
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="partners";
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

<h2>Partners List</h2>

<%If rs.EOF Then %>
	<p>Error - Database not found.</p>
<%End If%>

<ul class="nobullet space">		

<%Do Until rs.EOF%>
	<li><a href="http://<%=rs("url")%>" target="_blank"><%=rs("organization")%></a></li>
<%rs.MoveNext
  Loop		
%>

</ul>			

<%
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