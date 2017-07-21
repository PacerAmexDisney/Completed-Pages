<%
	Dim fDate, sql, rs, ConStr, conn
	ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
	Set conn = Server.CreateObject("ADODB.Connection")
	conn.open ConStr

	sql = "SELECT * FROM Workshops WHERE workshop_series_title like '%Technology for Girls%' AND workshop_date >= DATEADD(day, -1, getdate()) AND workshop_workshop = 'yes' ORDER BY workshop_date"
	set rs = conn.execute(sql)
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>EX.I.T.E. Technology for Girls Workshop Series - PACER Center</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavigation.css" />
<link rel="stylesheet" type="text/css" href="/workshops/wsstyle.css" />
<style type="text/css">
	.flyer {
		width: 125px;
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
<div id="rightBar">
<div id="submenu" style="margin-top: 0;">
<h3 style="display: none;">EX.I.T.E. Navigation Menu</h3>
<ul id="submenulist">
	<li><a href="index.asp">Overview of EX.I.T.E.</a></li>
	<li><a href="camp.asp">EX.I.T.E. Camp Information</a></li>
	<li><a href="campphotogallery.asp">EX.I.T.E. Camp Photo Gallery</a></li>
	<li><a href="profdev.asp">EX.I.T.E. Volunteer and Professional Development Opportunities</a></li>
	<li><a class="page" href="techforgirls.asp">EX.I.T.E. Technology for Girls Workshop Series</a></li>
</ul>
</div>
<div class="rightsidebarpic" style="margin-top: 0;">
<img src="images/2007/TfG-Engineering.jpg" width="250" height="167" alt="Workshop participant's bridge displayed, It is made out of toothpicks and candy and is holding up marshmallows" />
<img src="images/image035.jpg" width="250" height="188" alt="Girls working on science project, coloring paper" />
<img src="images/image022.jpg" width="250" height="188" alt="Girls making paper" />
</div>

</div>

<div id="topbar">
<div id="breadcrumb">

	<a href="/">Home</a> / <a href="/pandr/">Programs</a> / <a href="/stc/">Simon Technology Center</a> / <a href="/stc/exite/">EX.I.T.E.</a> /
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

<h2 class="nounderline"><a name="maincontent">Technology for Girls Workshop Series</a></h2>


<!--BEGIN CONTENT-->

<h3>EX.I.T.E. - EXploring Interests in Technology and Engineering<br />
</h3>
<p>The Technology for Girls workshop series invites middle school girls with disabilities the opportunity to roll up their sleeves and to get messy while exploring science, technology, engineering, and math. Girls explore the wonderful world of science through hands-on workshops that take place during the school year. These workshops work to promote the sciences to girls in a fun, non-competitive environment; all skill levels are welcomed.</p>
<hr />




<%

If Not rs.eof Then
%>
        <div id="upcoming" class="events" style="padding-bottom:20px; border-bottom:1px solid #7e7e7e; margin-bottom:20px;">
		<h3 class="nounderline" id="techforgirls"> Currently Available</h3>
          <ul>
            <%            
Do Until rs.eof

    Dim WID, wsLink, streamLink, wsFltr, wsDate, wsTitle, wsStartTime, wsEndTime

    WID = rs("workshop_id")
    WID = Replace(WID, "{", "")
    WID = Replace(WID, "}", "")

    wsDate = FormatDateTime(rs("workshop_date"),1)

    If Len(rs("workshop_series_title")) > 0 Then
      wsTitle = "<span class=""seriesTitle"">" &  rs("workshop_series_title") & " : </span>" & Replace(rs("workshop_name"), rs("workshop_series_title"), "")
    Else
      wsTitle = rs("workshop_name")
    End If

    wsStartTime = FormatDateTime(rs("start_time"), vbLongTime)
    wsStartTime = Replace(Left(wsStartTime, 2), ":", "") & ":" & Right("00" & Minute(wsStartTime), 2) & " " & Right(wsStartTime, 2)
    wsEndTime = FormatDateTime(rs("end_time"), vbLongTime)
    wsEndTime = Replace(Left(wsEndTime, 2), ":", "") & ":" & Right("00" & Minute(wsEndTime), 2) & " " & Right(wsEndTime, 2)
%>
      <li class="wslisting">
        <%If Len(rs("workshop_flyer"))> 10 Or Len(rs("stream_id")) > 0 Then%>
           <div class="flyer">
           
           <%If Len(rs("workshop_flyer"))> 10 Then%>
            <a href="flyer/<%=rs("workshop_flyer")%>" target="_blank">see the flyer<span class="extralinktext"> for <%=rs("workshop_name")%></span></a> <img src="/images/pdficon_small.gif" width="15" height="15" alt="" />
           <%End If%> 
            <%If Len(rs("stream_id")) > 0 Then%>
              <br /><img style="margin-top:10px;" src="/workshops/images/workshop-webstreaming.png" width="200" height="66" alt="Live Stream Event available" />
            <%End If%>
          </div>
        <%End If%>

        <h3 class="wstitle"><%=wsTitle%></h3>
        
        <div class="wsdate">Date: <%=wsDate%> &mdash; <%=wsStartTime%> - <%=wsEndTime%></div>
        <div class="wslocation">
        <%If Len(rs("workshop_directions")) > 1 Then%>
          <strong>Location:</strong> <a href="<%=rs("workshop_directions")%>" target="_blank"><%=rs("workshop_location")%> - Map and Address</a>      
        <%Else%>
          <strong>Location:</strong> <%=rs("workshop_location")%>
        <%End If%>
        </div>

        <div class="wsdescription"><%=rs("workshop_description")%></div>
        <div class="wslink">
        <%If rs("workshop_closed") = "yes" Or  rs("workshop_closed") = "full" Then%>
          <strong>This workshop is full.</strong>
        <%Elseif rs("workshop_closed") = "canc" Then%>
          <strong style="color:red; font-size:1.2em">This workshop has been canceled.</strong>
        <%
        Elseif rs("workshop_closed") = "wait" Then%>        
                <strong>This workshop is full. To be added to the Wait List please call 952.838.9000</strong>
        <%
        Else
          If Len(rs("workshop_link")) > 3 Then
            wsLink = rs("workshop_link")
          Else
            wsLink = "/forms/workshops.asp?wksp=" & WID
          End If
          If Len(rs("stream_id")) > 0 Then
            streamLink = "/livestream/?wksp=" & WID
          Else
            streamLink = ""
          End If

          If streamLink <> "" Then
          %>
            <a class="streamLink" href="<%=streamLink%>"><span class="extralinktext"><%=rs("workshop_name")%> - </span>live stream event page</a>
          <%End If%>
          
          <a class="registrationLink" href="<%=wsLink%>"><span class="extralinktext"><%=rs("workshop_name")%> - </span>Register for this workshop</a>   
        <%End If%>
        </div>              
              
      </li> 
            <%
		rs.MoveNext
	Loop
	rs.Close
	Set rs = Nothing
		%>

</ul>
<p style="text-align:center; padding:30px;"><a href="http://www.pacer.org/workshops/">View All of PACER&rsquo;s upcoming workshops</a></p>
<%
else
%>
			
<h3>Previous workshops</h3>
<p>Some of our previous workshops have included:</p>            
<p><strong>Dream It, Build-It!</strong><br />
If you can dream it, you can build it! Join us to put your creative thinking skills to the test while we design bridges, boats, and more. Toothpicks, pennies, aluminum foil, gumdrops, straws, and clay will be used to make a variety of structures. We will test our structures by adding weight. Come see what structures will fall and which ones will stand!</p>
<p><strong>My Messy Little Experiments</strong><br />
Does an egg float or sink in water? How about a paper clip? How much water can a penny hold? Can a raisin really dance? We will answer all the questions you ever had about science and have fun while completing all the little experiments you thought about trying at home but were too messy.</p>
<p><strong>Forensics, Be a CSI!</strong><br />
Put on you lab coats and come to PACER to be a Crime Scene Investigator (CSI)! We will explore the science of forensics by fingerprinting, analyzing powders, making teeth impressions, and determining someone&rsquo;s height based on their shoe size. We will test our CSI skills by analyzing data and solving a mock crime!</p>


<hr />
<p>
  For more information or  please contact PACER Center at 952-838-9000 or email <a href="mailto:stc@pacer.org">stc@pacer.org</a>.</p>
<p style="margin-top: 1em;">&nbsp;</p>

<%
end if
%>





<!--
<table cellspacing="10px"><tr><td>
<h4>2010 -  2011 Activity Schedule </h4>
</td><td>
<a href="pdf/TechforGirlsSerieslowres.pdf" target="_blank"> - View the Flyer</a>
</td></tr></table>
<ul type="disc">
  <li><em><a href="http://www.pacer.org/workshops/byname.asp#TechnologyforGirlsDreamIt,BuildIt!PACERCenter">Dream It, Build-It!   </a>&nbsp;- Tuesday, December 7, 2010 (6 p.m. to 8 p.m.)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </em></li>
</ul>
<p>If you can dream it, you can build it! Join us to  put your creative thinking skills to the test while we design bridges, boats,  and more. Toothpicks, pennies, aluminum foil, gumdrops, straws, and clay will  be used to make a variety of structures. We will test our structures by adding  weight. Come see what structures will fall and which ones will stand!<br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
<ul type="disc">
  <li><em><a href="http://www.pacer.org/workshops/byname.asp#TechnologyforGirlsMyMessyLittleExperimentsPACERCenter">My Messy Little Experiments</a> - Tuesday, Febuary 8, 2011 (6 p.m. to 8 p.m.)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </em></li>
</ul>
<p>Does an egg float or  sink in water? How about a paper clip? How much water can a penny hold? Can a raisin  really dance? We will answer all the questions you ever had about science and  have fun while completing all the little experiments you thought about trying  at home but were too messy. <br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
<ul type="disc">
  <li><em><a href="http://www.pacer.org/workshops/byname.asp#TechnologyforGirlsForensicsBeaCSI!PACERCenter">Forensics, Be a CSI!</a> - Tuesday, April 5, 2011 (6 p.m. to 8 p.m.)</em></li>
</ul>
<p>Put on you lab  coats and come to PACER to be a Crime Scene Investigator (CSI)! We will explore  the science of forensics by fingerprinting, analyzing powders, making teeth  impressions, and determining someone&rsquo;s height based on their shoe size. We will  test our CSI skills by analyzing data and solving a mock crime!</p>
<p>&nbsp;</p>

<p>
For more information or to register for these events please contact PACER Center at 952-838-9000 or email 
<a href="mailto:stc@pacer.org">stc@pacer.org</a>.<br />
Sponsored in Part by IBM
</p>
-->



<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>