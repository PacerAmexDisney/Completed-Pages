<!--#include virtual="/cmh/templates/header.asp"-->

<%
Dim ConStr, rs, conn, sql, i

ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
Set conn = Server.CreateObject("ADODB.Connection")
conn.open ConStr
%>


<meta charset="utf-8" />
<title>Workshops / Trainings - Children&#039;s Mental Health and Emotional or Behavioral Disorders Project</title>

<meta name="description" content="Families of children with mental health, emotional and behavioral needs often navigate multiple systems to access necessary supports and services. Families may also face additional challenges due to stigma about mental health. PACERs Inspiring Opportunities Project will bring together parents, youth and professionals to help families receive the resources and support their children need. This project will also promote increased understanding of children's mental health, emotional, and behavioral need in the broader community.
" />

<!-- for Facebook -->
<meta property="og:title" content="Workshops / Trainings - Children&#039;s Mental Health and Emotional or Behavioral Disorders Project" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/cmh/images/ebd-fb.jpg" />
<meta property="og:url" content="http://www.pacer.org/cmh/resources/workshops-trainings/" />
<meta property="og:description" content="Families of children with mental health, emotional and behavioral needs often navigate multiple systems to access necessary supports and services. Families may also face additional challenges due to stigma about mental health. PACERs Inspiring Opportunities Project will bring together parents, youth and professionals to help families receive the resources and support their children need. This project will also promote increased understanding of children's mental health, emotional, and behavioral need in the broader community." />
<link rel="stylesheet" type="text/css" href="/js/pacer-expanding-box.css"/>
<script type='text/javascript' src='/js/pacer-expanding-box.js?ver=4.2.2'></script>

<style type="text/css">
#layerslider {
	margin-top:3px;
  	border:none;
  	margin: 0px;
  	visibility: visible;
  	width: 100%;
}
.contentrow {
	position:relative;
	padding:10px 10px 30px;
}
#pagecontent .row-orange, .row-orange h1, .row-orange h2, .row-orange h3, .row-orange .morebutton {
	/*background-color:#ea8729;*/
	color:#000;
}
#pagecontent .row-orange h1 {
	text-align:center;
	font-size:30px;
	line-height:40px;
	text-shadow:0px 0px 5px #000;
}
#pagecontent .row-orange p {
	font-size:1.3em;
	line-height:1.8em;
	padding:0 20px;
}
#pagecontent .row-orange .shorten a {
	color: #EA8729;
	font-weight: bold;
}
#pagecontent .row-orange .shorten a:hover {
	color:#C67221;
	font-weight: bold;
}

#pagecontent .row-orange a:hover {
	color:rgba(255,255,255,0.5);
}
#pagecontent .row-orange .externallink {
	background:url(/bullying/images/styles/externalLinkWhite.png) no-repeat right;
}
#pagecontent .row-orange .externallink:hover {
	background:url(/bullying/images/styles/externalLinkWhiteHover.png) no-repeat right;
	color:rgba(255,255,255,0.5);
}
#introContent {
	background:#EA8729;
	border-radius:8px;
}
#quiz_wrapper {
	width:80%;
	margin:10px 200px;
}
#quiz_wrapper img{
	padding-left:50px;
}
#pagecontent h2.header_bar{
	margin-left:-.5em;
	margin-right:-.5em;
	color:#fff;
	text-align:center;
	padding:15px 0px;
	margin-bottom:20px;
}
.green_gradient{
	margin-right:-.5em;
	padding-right:1em;
	background: #fff url(/cmh/images/green_gradient.jpg) no-repeat right bottom;
}
.green_gradient h2 {
	background-color:#339900;
	color:#fff;
}
.blue_gradient{
	margin-right:-.5em;
	padding-right:1em;
	background: #fff url(/cmh/images/blue_gradient.jpg) no-repeat right bottom;
}
.blue_gradient h2{
	background-color:#09c;
	color:#fff;
}
.orange_gradient{
	margin-right:-.5em;
	padding-right:1em;
	background: #fff url(/cmh/images/orange_gradient.jpg) no-repeat right bottom;
}
.orange_gradient h2 {
	background-color:#EA8729;
	color:#fff;
}
#resources table{
	margin:0 20px;
}
#resources a img:hover {
  box-shadow: 0 0px 19px 13px #bbdfff;
}
#stigma p {
	padding-left:20px;
}
#social_footer {
	text-align:center;
	margin:10px -15px -23px -13px;
	height:100px;
	background-color:#09c;
	padding-bottom:40px;
}
#social_footer p{
	color:#fff;
	font-size:1.3em;
	text-align:center;
	padding-top:10px;
}
#social_footer img{
	display:inline-block;
	padding-top:5px;
}
#maincontent {
  overflow: hidden;
}
.publications-photo {
  clear:right; 
  float:right;
}

@media (max-width: 900px) {
  #hottopics .right_topic {
    margin-left: auto;
    margin-right: auto;
  }
  #hottopics .left_topic {
    margin-left: auto;
    margin-right: auto;
  }
  #hottopics .right_topic img {
    max-width: 25%;
    height: auto;
  }
  #hottopics .left_topic img {
    max-width: 25%;
    height: auto;
  }
  #hottopics ul li {
    max-width: 100%;
  }
  #resources td {
    display: block;
    max-width: 100%;
  }
  #social_footer {
    margin-left: 0px;
    margin-right: 0px;
  }
  .hot_topic_archive li {
    margin-left: 0px;
  }
  .hot_topic_archive h2 {
    margin-left: 0px;
  }
  .publications-photo {
    display: none;
  }
  #pagecontent .alertBox {
    float:none;
    width: 90%;
    margin-left: auto;
    margin-right: auto;
  }
}

</style>
</head>
<body class="singleCol">

<!--#include virtual="/cmh/templates/page-header-nav.asp"-->


<div id="topbar">
<div id="breadcrumb">
<a href="/cmh/">Home</a> / <a href="/cmh/resources/workshops-trainings/">Workshops / Trainings</a>
</div>
</div>

<div id="maincontent">
<div id="pagecontent">




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
        
        



<!--#include virtual="/templates/footer.asp"-->
