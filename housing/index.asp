<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Housing Project</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavigation.css" />
<link rel="stylesheet" type="text/css" href="/workshops/wsstyle.css"/>

<style type="text/css">
.workshoplist li:nth-child(n+2) {
	padding-top:10px;
	margin-top:10px;
	border-top:1px solid #ccc;
}
</style>

</head>

<body>
<div id="skiptocontent">
<a href="#maincontentlink">Skip to main content</a>
</div>

<div id="wrapper">

<div id="main">

<div id="header">
	<div>			<!--#include virtual="/googleSearchBox.htm"-->
            <!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="../"><img src="../images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="rightBar">

<p class="pacerinfo">
<strong>PACER Center<br />
952-838-9000</strong>
</p>
<p class="pacerinfo2">
Champions for Children with Disabilities
</p>
<p class="pacerinfo3">
<a href="http://www.pacer.org/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a>
</p>



  <div class="stayinformed"> <a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_FILE&RevisionSelectionMethod=LatestReleased&Rendition=Primary&allowInterrupt=1&noSaveAs=1&dDocName=dhs-287592" target="_blank"><img src="/housing/gettingstarted/images/OlmsteadPlanPDF.jpg" width="200" height="196" alt="Olmstead Plan" /></a> 
  <p><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_FILE&RevisionSelectionMethod=LatestReleased&Rendition=Primary&allowInterrupt=1&noSaveAs=1&dDocName=dhs-287592" target="_blank">Minnesota’s NEW Olmstead Plan for Housing</a>: Persons with disabilities will choose where they live, with whom, and in what type of housing.</p>
  </div>

<hr />

<div class="stayinformed"> <a href="/housing/pdf/What-Does-Person-Centered-Mean-to-Me.pdf" target="_blank"><img src="/housing/images/What-Does-Person-Centered-Mean-to-Me_200px.jpg" width="200" height="259" alt=""/></a>
<p><strong>What does person-centered mean for me?</strong> An introduction was created with the help of focus groups comprised of people with disabilities and the Disability Linkage Line&reg;. It was created for people with disabilities and their families to help people with disabilities apply person-centered principles to their life. It also helps families and case managers learn and activate person-centered processes.</p>
</div>

<hr />

<div class="stayinformed"> <p><a href="http://mn.gov/dhs/images/PCP_protocol.pdf" target="_blank">NEW! Person-Centered, Informed Choice and Transition Protocol</a><br />
Minnesota is driving toward fulfilling the vision of people with disabilities and older Minnesotans living, learning, working, and enjoying life in the most integrated setting. <a href="http://mn.gov/dhs/images/PCP_protocol.pdf" target="_blank">This document</a> is produced by the Minnesota Department of Human Services to communicate expectations regarding person-centered practices with its lead agency partners: counties, tribes and health plans. The Department will work with lead agencies to implement this protocol across the long-term supports and services and mental health services systems.</p>

</div>





</div>

<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / Housing Project
	
	<h1>Housing Project</h1>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">Housing Navigation Menu</h2>
<!--#include virtual="/housing/leftNav.html" -->
</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="overview";
	var currSubId="none";
	// any Subtree that I want to Display
	var showTree = "getstart-sub";
	
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

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script type="text/javascript" src="/js/pacer-expanding-box.js"></script>
<link rel="stylesheet" type="text/css" href="/js/pacer-expanding-box.css"/>
<link rel="stylesheet" type="text/css" href="/js/colorbox1.5.9/colorbox.css">
		
<script src="/js/colorbox1.5.9/jquery.colorbox-min.js"></script>
<script>
	$(document).ready(function(){
		//Change Any Links that contain the v= version into the embed version that colorbox expects
		//Note: You lose all extra query string items in the current version of this function
		$(".videoPopUp").each(function(){
			if (/\?v=/i.test(this.href)) {
				var vars = [], hash;
				var q = this.href.split('?')[1];
				if(q != undefined){
					q = q.split('&');
					for(var i = 0; i < q.length; i++){
						hash = q[i].split('=');
						vars.push(hash[1]);
						vars[hash[0]] = hash[1];
					}
				}
				this.href = 'http://www.youtube.com/embed/' + vars['v'] + '?rel=0&amp;wmode=transparent&amp;autoplay=1';						
			}
		});
		//Initialize Colorbox
		$(".videoPopUp").colorbox({iframe:true, innerWidth:960, innerHeight:585});
	});
</script>



<div id="maincontent">

<div id="pagecontent">



<h2>Housing: Starting the Journey</h2>
<p>Will you be ready when it&rsquo;s time for your son or daughter with a disability to move to a place of their own? The time to start planning is now! This Housing Project video gives you some groundwork from which to begin the journey.</p>
<p align="center"><a class="videoPopUp" href="https://www.youtube.com/embed/oqq8CHESJ4o?rel=0&amp;showinfo=0" target="_blank"><img src="/housing/images/housing-video-start.jpg" width="550" height="311" alt=""/></a></p>

<hr />

<h2><a href="/housing/videos-trainings.asp">Housing Videos and Trainings</a></h2>
<div class="centered"><a href="/housing/videos-trainings.asp#homeis"><img style="max-width:100%" src="/housing/images/HomeSeries-playbtn-600px.jpg" width="550" height="293" alt=""/></a></div>
<h2><a href="/housing/videos-trainings.asp#homeis">Video Series: &ldquo;Home Is &hellip;&rdquo;</a></h2>
    <p>This five part Housing Video Series called &ldquo;Home Is&hellip;&quot; features the  voices of young adults with disabilities describing what &ldquo;Home&rdquo; means to  them and what they have learned along the way. This series focuses on  the multidimensional aspects of home - Home is not just a getting a  &ldquo;place&rdquo; but getting &ldquo;a life.&quot;</p>




			<%
			Dim fDate, sql, rs, ConStr, conn
			ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
			Set conn = Server.CreateObject("ADODB.Connection")
			conn.open ConStr

			sql = "SELECT * FROM Workshops WHERE workshop_grant = 'Housing' AND workshop_date >= DATEADD(day, -1, getdate()) AND workshop_workshop = 'yes' ORDER BY workshop_date"
			set rs = conn.execute(sql)
			
			if Not rs.eof then
			%>
			<hr />
            <h2 class="nounderline"><a name="housing">Upcoming Workshops</a></h2>
            <ul class="nobullet workshoplist">
			<%
    		Dim WID, wsLink, streamLink, wsFltr, wsDate, wsTitle, wsStartTime, wsEndTime
			Do Until rs.eof

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
            <a href="/workshops/flyer/<%=rs("workshop_flyer")%>" target="_blank">see the flyer<span class="extralinktext"> for <%=rs("workshop_name")%></span></a> <img src="/images/pdficon_small.gif" width="15" height="15" alt="" />
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
			rs.movenext
			loop
			rs.close
			set rs = nothing
			end if
			%>
		</ul>

<hr />

<%
'
'<h2>Save the date: PACER&rsquo;s Annual Housing Resource and Information Fair</h2>
'<p>PACER&rsquo;s 12th Annual Housing Resource and Information Fair is Saturday, April 9, 2016, from 9 a.m. to noon at PACER. Families can meet with service providers, state and county representatives, and resource and referral organizations to discuss housing options, services, supports, and related issues for children and young adults with disabilities.</p>
'  <p>For more information, contact Susan Shimota (<a href="mailto:susan.shimota@pacer.org">susan.shimota@pacer.org</a>) or call (952) 838-9000.</p>
'  
'  <hr />
%>  










<!--<h3><a href="http://www.pacer.org/workshops/bygrant.asp#health">Related Workshops for Funding and Support</a>:</h3>
<ul>
	<li>Getting the Help you Need &ndash; Tuesday, October 27, 2009</li>
	<li>Who Pays? Taking the Maze out of Funding &ndash; Thursday, November 19, 2009</li>
</ul>
-->

<!--<h3>Other related workshops recommended</h3>-->	


<%If date < cDate("8-19-2013") Then%>

<h2>News</h2>

<h4><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&amp;RevisionSelectionMethod=LatestReleased&amp;dDocName=opc_home" target="_blank">Minnesota&rsquo;s Olmstead Sub-Cabinet Needs Your Comments! </a></h4>
<p>The <strong>Olmstead  v. L.C. decision</strong> challenges federal, state,  and local governments to develop more opportunities for individuals with  disabilities through accessible systems of cost-effective community-based  services. Olmstead is particularly relevant to transition-age youth, with  significant disabilities, who are aging out of government healthcare programs  that serve children with disabilities, or preparing to exit special education  settings to access adult services and participate more fully in the community.  Youth, their families, and advocates can use the Olmstead Decision to advocate  that programs and services be provided &ldquo;in the most integrated setting  possible.&rdquo;</p>
<p>The Subcabinet will hold listening sessions about Minnesota&rsquo;s draft Olmstead Plan <a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_FILE&amp;RevisionSelectionMethod=LatestReleased&amp;Rendition=Primary&amp;allowInterrupt=1&amp;noSaveAs=1&amp;dDocName=dhs16_177099" target="_blank">which is available here</a>. Learn more about the listening sessions on the<a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&amp;RevisionSelectionMethod=LatestReleased&amp;dDocName=opc_meetings#" target="_blank"> Meetings page</a>.  In addition to the listening sessions, any public comments can be sent to <a href="mailto:opc.public@state.mn.us?subject=Public%20Comments" target="_top">opc.public@state.mn.us</a>. <strong>The deadline for sending feedback on the draft is 4:30 p.m. August 19, 2013.</strong></p>
<p><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&amp;RevisionSelectionMethod=LatestReleased&amp;dDocName=opc_home" target="_blank">Find out More. </a></p>
<p>

<%End If%>

<div class="resources">
<h2>Resources</h2>
<ul>
<li class="pdficonlist"><p><a href="/transition/resource-library/publications/NPC-48.pdf" target="_blank">Tips When Considering Housing and Services</a><br />
What is your son or daughter&rsquo;s vision for independent living? What is important to and for her or him, and how can you support your youth most effectively? Every young adult has different abilities and needs for support, and some parents will need to be more involved in this process than others.  <a href="/transition/resource-library/publications/NPC-48.pdf" target="_blank">This PACER Information Sheet</a> can help.</p></li>

<li class="pdficonlist"><p><a href="/transition/resource-library/publications/NPC-37.pdf" target="_blank">Finding Housing for Youth with Disabilities Takes Determination and Creativity</a><br />
For many people, moving to a place of their own is an important part of becoming independent. Although your young adult with a disability who strives toward this goal may face extra challenges, he or she can succeed in the search for housing that is affordable, accessible, and available by planning early and networking with others for creative alternatives.</p></li>

<li><p><a href="/transition/" target="_blank">PACER’s National Parent Center on Transition and Employment</a><br />
Information about helping youth with disabilities become career and college ready</p></li>

<li><p><a href="/health/">Family-to-Family Health Information Center</a><br />
Information about the health care system, resources, and advocacy for families of children and youth with special health needs and disabilities. </p></li>

</ul>
</div>	
	<!--END CONTENT-->
	
	
	
	
	
	
</p>
<div id="pageextender" style="clear:both">&nbsp;</div>


</div>

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>