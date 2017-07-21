<%
	Dim fDate, sql, rs, ConStr, conn
	ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
	Set conn = Server.CreateObject("ADODB.Connection")
	conn.open ConStr

	sql = "SELECT * FROM Workshops WHERE workshop_grant = 'STC' AND workshop_name like '%Technology for Girls%' AND workshop_date >= DATEADD(day, -1, getdate()) AND workshop_workshop = 'yes' ORDER BY workshop_date"
	set rs = conn.execute(sql)
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>EX.I.T.E.</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../../css/leftnavigation.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../../css/print.css" media="print" />

<script type="text/javascript" src="../../css/menu.js"></script>
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
<div id="rightBar">

<p style="font-size: 85%; text-align: left; padding: .5em; margin: 0; background-color: #390; color: white;">
<em>&quot;I learned that science can actually be fun!&quot;<br />- EX.I.T.E. participant<br /><br />
&quot;It was like one of the best times I've ever had in like my whole life. There was so many nice people that wanted to help.&quot;<br />- EX.I.T.E. participant</em></p>
<!--<div class="grantad">
<h2><a href="../../help/challengegrants.asp#exite">PACER's "EX.I.T.E." Challenge</a></h2>
PACER needs your help to meet the challenge goal. <a href="../../help/challengegrants.asp#exite">Donate</a> to the Charlson Foundation EX.I.T.E. Challenge!
</div>
--><div id="submenu">
<h3 style="display: none;">EX.I.T.E. Navigation Menu</h3>
<ul id="submenulist">
	<li><a class="page" href="index.asp">Overview of EX.I.T.E.</a></li>
	<li><a href="camp.asp">EX.I.T.E. Camp Information</a></li>
	<li><a href="campphotogallery.asp">EX.I.T.E. Camp Photo Gallery</a></li>
	<li><a href="profdev.asp">EX.I.T.E. Volunteer and Professional Development Opportunities</a></li>
	<li><a href="techforgirls.asp">EX.I.T.E. Technology for Girls Workshop Series</a></li>
</ul>
</div>
<div class="rightsidebarpic">
<img border="0" src="images/main-page.jpg" width="250" height="188" alt="Campers in lab coats and gloves, preparing for an experiment" /></div>
</div>

<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<a href="https://www.facebook.com/simontechnologycenter" target="_blank">Join the STC Facebook Page</a> | 
<img src="../../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="../../index.asp">Home</a> / <a href="../../pandr/index.asp">Programs &amp; Resources</a> / <a href="../index.asp">Simon Technology Center</a> / EX.I.T.E.
	
	<h1>EX.I.T.E.</h1>
	
	</div>

</div>

<div id="leftbar">
<h2 style="display: none;">STC - Navigation Menu</h2>
<!--#include virtual="/stc/leftNav.htm"-->
</div>

<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="projects";
	var currSubId="subproj-exc";
	// any Subtree that I want to Display
	var showTree = "stc-subproj";
	
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
<div id="maincontent">

<div id="pagecontent">

<h2 class="nounderline"><a name="maincontent">EXploring Interests in Technology and Engineering (EX.I.T.E.)</a></h2>


<!--BEGIN CONTENT-->

<p>Come join us while we explore the world of science and technology. EX.I.T.E.  offers opportunities for girls with disabilities in middle and high school to  explore, create, invent, and even get messy with the science and technology of  today.</p>
<p>K.W. Gregory was only 10 years old when she decided to find a way to stop  the snow from going inside her mittens while playing outside. Brainstorming  allowed her to invent wrisities that are now sold nation wide.</p>
<p>Thank goodness Ruth Wakefield did not get upset in 1930 when by mistake she  invented the chocolate chip cookie. Ruth had intended for the chocolate chunks  to melt and evenly distribute in the dough but instead the chunks stayed just  the same resulting in the yummy cookie we call chocolate chip today.</p>
<p>The EX.I.T.E. program offers a variety of opportunities for middle school  girls, as well as professionals.</p>
<h2>
  <a href="Camp.asp">EX.I.T.E. Camp</a></h2>
<p>is a 5-day summer camp designed to encourage  middle school girls with  disabilities to explore science, technology, engineering and math through hands-on activities.</p>
<h2>
  <a href="TechforGirls.asp">EX.I.T.E. Technology for Girls</a> </h2>
<p>is a series of workshops offered during the school year that expand upon camp and allow middle school girls with disabilities to participate hands-on in specific areas of science and technology. </p>
<h2>
  <a href="profdev.asp">Summer Teacher Opportunities</a> </h2>
<p>are available for  EX.I.T.E. Camp. Teachers must be creative, energetic, have wonderful classroom organization skills, and  experience working with students with disabilities. <br /><br />
  <strong><em>Are you ready to become the next female inventor???</em></strong>
</p>

			<%
			
			if Not rs.eof then
			%>
			<hr />
            <h3 class="nounderline">Technology for Girls Events open now!</h3><ul class="nobullet">
			<%
			do until rs.eof
			%>
			<li>
				
				<%
				if rs("workshop_flyer") <> "" then
				%>
					<span style="font-size: 110%;"><strong><%=rs("workshop_name")%></strong></span> - <a href="/workshops/flyer/<%=rs("workshop_flyer")%>" target="_blank">see flyer</a> <img src="/images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /><br />			
				<%
				else
				%>
					<span style="font-size: 110%;"><strong><%=rs("workshop_name")%></strong></span><br />
				<%
				end if
				%>
				<%=rs("workshop_description")%><br /><strong>
				<%
				fDate=rs("workshop_date")
				Response.write FormatDateTime(fDate,1)
				%>
				</strong><br />
				<%
				if rs("workshop_directions") <> "" then
				%>
					<%=rs("workshop_time")%> (<em><a href="<%=rs("workshop_directions")%>"><%=rs("workshop_location")%></a></em>)<br />			
				<%
				else
				%>
					<%=rs("workshop_time")%> (<em><%=rs("workshop_location")%></em>)<br />
		    <%
				end if
				%>
				
				
			<%
			if rs("workshop_closed") = "yes" or  rs("workshop_closed") = "full" then
			%>
				<strong>This workshop is full.</strong>
			<%Elseif rs("workshop_closed") = "canc" Then
			%>
				<strong>This workshop has been canceled.</strong>
			<%
			Elseif rs("workshop_closed") = "wait" then
			%>				
            	<strong>This workshop is full. To be added to the Wait List please call 952.838.9000</strong>
			<%
			else
				if rs("workshop_link") <> "" then
				%>
					<strong><a href="<%=rs("workshop_link")%>">Register for this workshop</a></strong>			
				<%
				else
				%>
					<strong><a href="/forms/workshops.asp?wksp=<%=rs("workshop_id")%>">Register for this workshop</a></strong>			
	      <%
				end if
			end if
			%>
				<br /><br />
			</li>				
			<%
			rs.movenext
			loop
			rs.close
			set rs = nothing
			%>
            </ul>
            <hr />
            <%
			end if
			%>




<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

<!--END CONTENT-->


</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>