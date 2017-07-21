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
<meta name="description" content="The Simon Tecnology Center Assistive technology can be a device or service that helps children with disabilities such as blindness, deafness, autism, or down syndrome participate more independently within their environment at home or school.
" />
<meta name="keywords" content="simon technology center, assistive technology, augmentive communication devices, children with disabilities, special needs children, teen bullying, parent programs, parents of disabled child, child development, blind deaf autistic children education programs, pacer center, pacer org
" />
<title>Simon Technology Center - Assistive Technology, Augmentative Communication Devices</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" />
<link rel="stylesheet" type="text/css" href="/workshops/wsstyle.css"/>
<style type="text/css">
p {
	max-width: 50em;
}
.seriesTitle {
  color: #e17407;
}
.streamLink {
  display: inline-block;
  float: right;
  margin-right: 10px;
}
</style>
</head>

<body>
<div id="skiptocontent"> <a href="#maincontent">Skip to main content</a> </div>
<div id="wrapper">
  <div id="main">
    <div id="header">
      <div><!--#include virtual="/googleSearchBox.htm"--><!-- Contains Contact Pacer | Donate | Google search bar | Social media --> 
        <a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a> </div>
      <!--#include virtual="/dynamicheader.htm"--> 
    </div>
    
    <div id="topbar">
      <div id="breadcrumb">    <div id="project-social">
           <a href="http://www.simontechnologycenter.blogspot.com/" title="Simon Technology Center Blog" target="_blank"><img style="display:block; border:1px solid #ccc; margin-top:-1px; border-radius:5px;" src="/images/bloggericon_medium.png" alt="Simon Technology Center Blog" /></a> 
           <a href="https://www.pinterest.com/simontechcenter/" title="Simon Technology Center Pintrest" target="_blank"><img src="/images/pinteresticon_medium.png" alt="Simon Technology Center Pintrest" /></a> 
           
            
         <div id="sm-label" style="width:7em;">Join Us - STC :</div>
        </div>
<a href="/index.asp">Home</a> / <a href="/pandr/index.asp">Programs &amp; Resources</a> / Simon Technology Center
        <h1>Simon Technology Center</h1>
      </div>
    </div>
    <div id="leftbar">
      <h2 style="display: none;">STC - Navigation Menu</h2>
      <!--#include virtual="/stc/leftNav.htm"--> 
    </div>
    
    <!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show --> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="over";
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
    <div id="maincontent">
      <div id="pagecontent"> 
        
        <!--BEGIN CONTENT--> 
        
        <img class="fltrt" style="padding-bottom:5px;" src="images/openhouse2.jpg" width="250" height="199" alt="" />
        <h2 class="nounderline">Simon Technology Center Overview</h2>
        <p>Assistive technology can be a device or service that helps children with disabilities participate more independently within their environment at home or school.</p>
        <p>The Simon Technology Center (STC) is dedicated to making the benefits of technology more accessible to children and adults with disabilities. Through a collaborated effort involving parents, professionals, and consumers, the STC can provide numerous services for your family, as well as resources and informative answers to your questions. Since 1987, the Simon Technology Center has helped many children and adults, with a variety of disabilities, use assistive technology to enhance learning, work and independence. </p>
        <hr style="clear:right" />
        <div id="youtubvid" style="width:399px; margin-bottom:15px;" class="fltrt">
          <iframe width="399" height="255" src="http://www.youtube.com/embed/fM82pf2qB2o" frameborder="0" allowfullscreen></iframe>
        </div>
        <h3><a href="services.asp">Services</a></h3>
        <p>The Simon Technology Center provides a variety of core services to help children, families, and professionals including:</p>
        <ul style="margin-top: 0; padding-top: 0;">
          <li><a href="consultations/index.asp">Technology consultations</a></li>
          <li><a href="library/index.asp">Lending library</a>
          	<ul style="margin:20px 5px 20px;">
            	<li><a href="/stc/library/#becomeamember">Become a Member</a></li>
                <li><a href="/stc/library/#newItems">See Our Newest Additions</a></li>
                <li><a href="https://stclendinglibrary.myturn.com/library/inventory/browse" target="_blank">Search the Library Catalog</a></li>
            </ul>
          </li>
          <li><a href="individualtrainings.asp">Individualized Training Sessions</a></li>
			<li><span style="color:red">NEW! -</span> <span class="fa fa-facebook-square"></span> <a href="https://www.facebook.com/groups/863267887136492/" target="_blank">Facebook Buy &amp; Sell Group - MN Special Needs Equipment for Sale  <span class="fa fa-external-link"></span></a>
			  <br /><p>Find equipment and assistive technology after its initial use. Items such as, communication devices, walkers, adaptive switches and toys, motorized cars (that can be adapted), adapted keyboards, etc.</p>
          
          </li>
          <li><a href="workshop.asp">In-services and workshops</a></li>
          <li><a href="videos/index.asp">Simon Technology Center videos</a></li>
        </ul>
        <h3><a href="projects.asp">Projects</a></h3>
        <p> The Simon Technology Center also operates several projects with specific focuses such as:</p>
        
<%If DateDiff("n", Now, cDate("9-19-2015 1:00 PM")) > 0 Then %>
        <div class="alertBox" style="width:433px; font-size:1.2em;">
        <h3>Join Us &mdash; Family Fun Day &amp; Tech Expo!</h3>
        <p><img class="fltrt" src="/images/homenews-sml/stc-superhero.png" width="141" height="140" alt=""/>
           <strong>Saturday, Sept. 19<sup>th</sup></strong><br />
           10 a.m. to 2 p.m.</p>
        <ul>
        <li>
        Live musical performance by a rock band
        with adapted band equipment
        </li>
        <li>Technology demonstrations  </li>
        <li>Connect with community resources  </li>
        <li>Meet and greet with super heroes  </li>
        <li>Tie-dye shirts, spin-art, customize your
          cape, and more!  </li>
        <li>Free capes to the first 150 kids </li>
        </ul>
        <p><a href="/forms/workshops.asp?wksp=588C8559-A90C-4B75-80ED-4451D7EE6054">Advanced Registration is Required - Sign Up Now.</a></p>
        </div>
<%ElseIf now < cDate("2/13/2015") Then%>
            <div class="alertBox" style="width:350px; font-size:1.2em;">
              <h2 style="color:red">Project KITE Applications Open</h2>
              <p>We are currently accepting applications for the spring 2015 session</p>
              <div class="fltrt" style="width:8.5em; text-align:center;"><a href="/stc/kite/">More Information</a></div>
              <p><a href="/stc/kite/kiteTeamOnlineForm.asp">Register Now!</a></p>
              <hr />
              <p><strong>Application deadline is Friday, Februay 13, 2015</strong></p>
            </div>
        <%ElseIf now < cDate("5/1/2015") Then%>
            <div class="alertBox" style="width:350px; font-size:1.2em;">
                
                <h2 style="font-weight:normal; font-family:Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif"><strong>EX.I.T.E. Camp</strong></h2>
                <p class="centered"><span style="font-size:.9em; color:#323232">(<strong>EX</strong>ploring <strong>I</strong>nterests in <strong>T</strong>echnology and <strong>E</strong>ngineering)</span></p>
                <img src="/stc/exite/images/2009/thumbnails/exite_2009_medtronic_IMG006 copy.jpg" alt="" width="120" height="89" class="fltrt" />
                <p>A<strong> 5-Day Camp</strong> in August for middle school girls (6th-9th grades) with disabilities.</p>
                <p>Application deadline: May 1<sup>st</sup></p>
                <p><strong>It's FREE</strong>, <a href="/stc/exite/Camp.asp">Learn More and Register Now<span class="extralinktext"> about EXITE Camp</span></a></p>
                
        </div>
        <%Else%>
        <div class="alertBox" id="pauladelman" style="clear:right;">
          <h3>New in the STC Library<a href="/stc/library/PaulAdelman.asp"><img class="fltrt" src="/stc/library/images/vgo_sml.jpg" width="59" height="207" alt="VGo Robot"/></a></h3>
          <p>PACER&rsquo;s Simon Technology Center is thrilled to add   some new,   cutting edge technology. </p>
              <ul>
                <li>VGo Robot</li>
                <li>UbiDuo Wireless Face to Face Communicato</li>
                <li>Tobii Eye Mobile. </li>
              </ul>
          <p><a href="/stc/library/PaulAdelman.asp">Check Them Out!</a></p>
        </div>
        <%End If%>
        <%
'<div class="alertBox" id="HandoutFeature">
'<div style="text-align:center"><img src="/stc/images/TipSheet-FreeWebTablet-Handout-thumb.png" alt="" width="190" height="129" /></div>
'<p><strong><a href="/stc/pdf/ExploringFreeWebandTabletAT.pdf" target="_blank">Download</a></strong><a href="/stc/pdf/ExploringFreeWebandTabletAT.pdf"> - Tip Sheet for Exploring Free Web- and Tablet-based Assistive Technologies </a></p>
'</div>
%>
        <ul>
          <li><a href="/stc/tikes/">
                  <%If date < cDate("2/1/2016") then %>
        	<span style="color: #D7A200; font-size: 1.2em; font-weight: bold;">(New!) </span>
        <%end if%>

          TIKES Project
          
          </a></li>
          <li><a href="kite/">Project KITE</a></li>
          <li><a href="exite/">EX.I.T.E.</a></li>
          <%
          '<li><a href="marc/index.asp">Microsoft Accessibility Resource Center</a></li>
          '
          %>
        </ul>
        

	<h2 class="greenBar" style="clear: right;">Featured Services and Projects</h2>
	<ul>
	<li>
	<h2>The STC Lending Library has launched a new modern online catalog of items!</h2>
	<p>With more than 1,900 items, the Lending Library lets you try out and   borrow some of the newest educational and disability-specific software   and devices on the market including:</p>
	<h3><a href="/stc/library/PaulAdelman.asp"><img src="/stc/images/vgo.jpg" alt="" class="fltrt" width="86" hspace="12" height="225" /></a></h3>
	<ul>
		<li>Text-to-speech software for reading accessibility</li>
		<li>Speech-to-text software for improved written communication</li>
		<li>Universally designed toys for playtime accessibility and inclusion</li>
		<li>Communication devices for communication freedom</li>
		<li>Computer access adaptations for independence</li>
		<li>Talking calculators for improved independence with math</li>
	</ul>
	<p>The <a href="/stc/library/">Simon Technology Center Lending Library</a> allows you to try   assistive technology before making a purchase decision and is open to   Minnesota residents.  Families, educators, and consumers who become   library members benefit from personalized assistance, convenient hours   and services.  As a member, you can:</p>
	<ul>
		<li>Receive personal assistance in selecting and checking out materials.</li>
		<li>Try out devices and software.</li>
		<li>Reserve, check-out, or renew items online, by phone, email or in person.</li>
		<li>Schedule quick pick-up during regular business hours or library open hours.</li>
		<li>Have items mailed to you for free if you live in Greater Minnesota.</li>
	</ul>
	<p class="centered"><a class="btn btn-cta" href="/stc/library/#becomeamember">Become a member today.</a></p>
</li>
	</ul>
		
		<!-- #############################    UPCOMING WEBINARS / ONLINE EVENTS ####################### -->
		
		
<%If DateDiff("n", Now, cDate("11-29-2016 8:30 AM")) > 0 Then %>		
		<div id="upcoming-events" class="events" style="padding-bottom:20px; border-bottom:1px solid #7e7e7e; margin-bottom:20px; clear:right;">
          <h2>Upcoming Webinars / Online Events / Conferences</h2>
          <ul>
            
<%If DateDiff("n", Now, cDate("11-29-2016 8:30 AM")) > 0 Then %>
            <li class="wslisting">
              <div class="flyer"><img style="margin-top:10px;" src="/workshops/images/adobe-connect-sml.jpg" width="200" height="51" alt="Live Stream Event Availible" /> </div>
              <h3 class="wstitle">Technology Solutions for Early Childhood . . . The Future is Now</h3>
              <div class="wsdate">Date: Tuesday, November 29, 2016</div>
              <div class="wstime"><strong>Time:</strong> 8:30 AM - 2:00 PM CT</div>
              <div class="wsdescription"><p>Join thought leaders in early childhood development and assistive technology (AT) at this CTD symposium for Federal policy makers, national association staff, researchers, family advocates, and others. Funded by the U.S. Department of Education's Office of Special Education Programs (OSEP), participants will learn about evidence-based practices, interesting research being conducted, and ways in which families are successfully using technology to support the developmental and learning needs of their children. <br />
                  <br />
                  <strong>You can join us at the site-based symposium in Washington, DC, or via the event's live streaming. There is no registration fee!</strong></p>
              </div>
              <div class="wslink">
                <p><a href="http://ctdinstitute.org/content/technology-solutions-early-childhood?utm_source=EC+Event+%28Group4%29&amp;utm_campaign=EC+Event+Group+3&amp;utm_medium=email" target="_blank">Learn more about this conference<span class="fa fa-external-link"></span></a> | <strong>Hosted by the Center on Technology and Disability</strong></p>
              </div>
            </li>
            
            <%End If%>          


<%If DateDiff("n", Now, cDate("3-22-2016 3:30 PM")) > 0 Then %>
            <li class="wslisting">
              <div class="flyer"><img style="margin-top:10px;" src="/workshops/images/adobe-connect-sml.jpg" width="200" height="51" alt="Live Stream Event Availible" /> </div>
              <h3 class="wstitle">Notetaking Technologies for Middle School, High School, College, and Beyond</h3>
              <div class="wsdate">Date: Tuesday, March 22nd, 2016</div>
              <div class="wstime"><strong>Time:</strong> 3:30 - 5:00 pm CT</div>
              <div class="wsdescription"><p>Presenter: Shelley Haven  ATP, RET</p>
              <p>Whether taking notes in class, gathering web research, or creating a textbook study guide, student success relies on the ability to effectively capture, organize, and apply information from a variety of sources.</p>
              <p>Join AT Consultant Shelley Haven as she demonstrates notetaking and knowledge organization tools to help students who have learning differences, including smartpens, digital notebooks, annotation software, and multifunctional apps. The presentation will also describe notetaking and study strategies that leverage these technologies and is for students and the parents and professionals that support them.</p>
              </div>
              <div class="wslink">
                <p><a href="http://www.ctdinstitute.org/events/event-details/notetaking-technologies-middle-school-high-school-college-and-beyond" target="_blank">Register for this online workshop <span class="fa fa-external-link"></span></a> | <strong>Hosted by the Center on Technology and Disability</strong></p>
              </div>
            </li>


<%End If%>          






         
          
          </ul>
        </div>
<%End If%>		
		<!-- #############################    END UPCOMING WEBINARS / ONLINE EVENTS ####################### -->
		
		
		
		<%
		'----------------------------------- START DYNAMIC WORKSHOPS LISTING -----------------------'
sql = "SELECT * FROM Workshops WHERE (workshop_grant LIKE '%STC%' Or workshop_grant LIKE '%EXITE%') AND workshop_date >= DATEADD(day, -1, getdate()) AND workshop_workshop = 'yes' ORDER BY workshop_date"
set rs = conn.execute(sql)

If Not rs.eof Then
%>
        <div id="upcoming" class="events" style="padding-bottom:20px; border-bottom:1px solid #7e7e7e; margin-bottom:20px; clear:right;">
          <h2 class="greenBar">Upcoming STC Workshops &amp; Events</h2>
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
		rs.MoveNext
	Loop
	rs.Close
	Set rs = Nothing
		%>
          </ul>
        </div>
        <%End If%>
        
        <hr />
        <p><em>The Simon Technology and its projects are generously sponsored by  private donations and the following foundations:</em> <em>3M, Boston  Scientific, Donaldson Foundation, Ecolab,  Fred C. &amp; Katherine B. Andersen Foundation, Grotto&nbsp; Foundation, IBM, Medtronic, Minneapolis  Rotary Community Service Foundation, The  Minneapolis Foundation, Schulze Family Foundation, Verizon, and &nbsp;Xcel  Energy. In kind support provided by Accenture and Target. </em></p>
        <div id="pageextender" style="clear:both">&nbsp;</div>
      </div>
      
      <!--END CONTENT--> 
      
    </div>
  </div>
  
  <!--#include virtual="/footer2.htm"--> 
  
</div>
</body>
</html>