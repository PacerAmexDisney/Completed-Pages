<%
Dim ConStr, rs, conn, sql, i

ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
Set conn = Server.CreateObject("ADODB.Connection")
conn.open ConStr
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />


<title>Workshops / Trainings - Children&#039;s Mental Health and Emotional or Behavioral Disorders Project</title>

<meta name="description" content="Families of children with mental health, emotional and behavioral needs often navigate multiple systems to access necessary supports and services. Families may also face additional challenges due to stigma about mental health. PACER’s Inspiring Opportunities Project will bring together parents, youth and professionals to help families receive the resources and support their children need. This project will also promote increased understanding of children's mental health, emotional, and behavioral need in the broader community.
" />


<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" />
<link rel="stylesheet" href="/cmh/css/style.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="/workshops/wsstyle.css"/>
<link rel="stylesheet" type="text/css" href="/js/pacer-expanding-box.css"/>
<link rel="stylesheet" type="text/css" href="/js/colorbox1.5.9/colorbox.css" />

<script type="text/javascript" src="/cmh/js/imageswap.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script type='text/javascript' src='/js/pacer-expanding-box.js?ver=4.2.2'></script>
<script type='text/javascript' src='/js/colorbox1.5.9/jquery.colorbox-min.js?ver=4.2.2'></script>

<script type="text/javascript">
	jQuery(document).ready(function(){
		//Change Any Links that contain the v= version into the embed version that colorbox expects
		//Note: You lose all extra query string items in the current version of this function
		jQuery(".videoPopUp").each(function(){
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
				this.href = 'http://www.youtube.com/embed/' + vars['v'] + '?rel=0&amp;wmode=transparent';						
			}
		});
		//Initialize Colorbox
		jQuery(".videoPopUp").colorbox({iframe:true, innerWidth:640, innerHeight:390});
	});
	
</script>


</head>

<body>
<div id="skiptocontent">
<a href="#maincontent">Skip to main content</a>
</div>

<div id="wrapper">

<div id="main">

<div id="header">
	<!--#include virtual="/cmh/topRightSection.html"-->
	<!--#include virtual="/cmh/topNav.html"-->  
</div>		
	<!--#include virtual="/cmh/resources/leftNav.html"-->  
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="workshops";
	var showTree = "none";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "current_page_item";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "submenu") {
			if (subTrees[i].id != showTree) {
				subTrees[i].className = "submenuhidden";
			}
		}
	}
	</script> 
    
    
    
<div id="maincontent">

<div id="pagecontent">
<!--BEGIN CONTENT-->
	<h1>Workshops / Trainings</h1>
		
<div id="pbis" class="topborder">
					<h2>Featured Training: Positive Behavior Interventions and Supports</h2>
					<div class="quotebox">A proactive strategy for defining, teaching and supporting student  behavior resulting in academic and social gains and a positive school  environment</div>
					<p> Research shows that when a school environment is positive and  predictable, students feel safer, have better academic performance,  higher test results and make better behavior choices. Schools also show a  gain in instructional time, reduction in out of school suspensions and  discipline referrals and show a decrease in referrals to Special  Education. </p>
					<h3>Is it a curriculum?</h3>
					<p> No. PBIS is not a curriculum, but a process of planning and problem  solving that includes direct teaching of social behaviors like  academics. The basic PBIS approach is to use proactive, research-based  strategies to teach clearly defined behavioral expectations. Most  importantly, it establishes  ongoing behavior supports that can be used by ALL students, staff,  volunteers, parents and community members. </p>
					<h3>Can parents be involved?</h3>
					<p> Yes! Research shows that parent involvement in a child&rsquo;s school experience  greatly increases their chances for academic success, positive behavior, higher  self-esteem, better attendance and greater motivation. Parents are key sources  of information about their child, are their child&rsquo;s first teachers, and have  strengths and interests that can contribute to the educational process. When  schools and families work together to support learning, children tend to succeed  not just in school, but also throughout life. (National PTA, n.a.; Newman L.  2005; Henderson and Berla, 1997). </p>
					<p class="centered"><a class="btn btn-cta" href="/pbis/infoforparents.asp">Learn more</a></p>
				</div>			


		<%
		'----------------------------------- START DYNAMIC WORKSHOPS LISTING -----------------------
sql = "SELECT * FROM Workshops WHERE (workshop_grant = 'Children''s Mental Health' OR workshop_grant = 'CMH' OR workshop_grant = 'FPT' OR workshop_grant = 'Federal Parent Training' OR workshop_grant = 'Juvenile Justice') AND workshop_date >= DATEADD(day, -1, getdate()) AND workshop_workshop = 'yes' ORDER BY workshop_date"
set rs = conn.execute(sql)

If Not rs.eof Then
%>
        <div id="upcoming" class="events" style="padding-bottom:20px; border-bottom:1px solid #7e7e7e; margin-bottom:20px; clear:right;">
          <h2 class="greenBar">Upcoming Workshops &amp; Events</h2>
          <ul>
            <%            
Do Until rs.eof

		Dim WID 
		WID = rs("workshop_id")
		WID = Replace(WID, "{", "")
		WID = Replace(WID, "}", "")

		Dim wsDate
		wsDate = FormatDateTime(rs("workshop_date"),1)
		
		Dim wsLink
%>
            <li class="wslisting">
              <%If Len(rs("workshop_flyer"))> 10 Or rs("workshop_streaming") = "yes" Then%>
              <div class="flyer">
                <%If Len(rs("workshop_flyer"))> 10 Then%>
                <a href="/workshops/flyer/<%=rs("workshop_flyer")%>" target="_blank">see the flyer<span class="extralinktext"> for <%=rs("workshop_name")%></span></a> <img src="/images/pdficon_small.gif" width="15" height="15" alt="" />
                <%End If%>
                <%If rs("workshop_streaming") = "yes" Then%>
                <br />
                <img style="margin-top:10px;" src="/workshops/images/workshop-webstreaming.png" width="200" height="66" alt="Live Stream Event Availible" />
                <%End If%>
              </div>
              <%End If%>
              <h3 class="wstitle"><%=rs("workshop_name")%></h3>
              <div class="wsdate">Date: <%=wsDate%></div>
              <div class="wstime"><strong>Time:</strong> <%=rs("workshop_time")%></div>
              <div class="wsdescription"><%=rs("workshop_description")%></div>
              <div class="wslocation">
                <%If Len(rs("workshop_directions")) > 1 Then%>
                Location: <a href="<%=rs("workshop_directions")%>"><%=rs("workshop_location")%> - Map and Address</a>
                <%Else%>
                Location: <%=rs("workshop_location")%>
                <%End If%>
              </div>
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
			%>
                <p><strong><a href="<%=wsLink%>"><span class="extralinktext"><%=rs("workshop_name")%> - </span>Register for this workshop</a></strong></p>
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
        </div>
        <%End If%>



</div>
</div>
	<!--#include virtual="/footer.htm"-->
</div>
</div>	

</body>
</html>