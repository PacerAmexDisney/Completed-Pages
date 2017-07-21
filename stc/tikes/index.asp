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
<title>TIKES - Simon Technology Center</title>

<meta name="description" content="Assistive technology, whether something as simple as a pencil grip or as complicated as a communication device, has the power to change lives and opens doors of opportunity for people with disabilities.  The TIKES Project helps to open these doors for parents and providers by educating them on and promoting the use of assistive technology with children and students with disabilities ages birth to 5. Assistive technology can support young children in building skills, increasing participation in activities, promoting development, enhancing learning, and boosting self-esteem." />

<!-- for Facebook -->     
<meta property="og:title" content="TIKES - Why Assistive Technology Matters" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/stc/tikes/images/tikes-fb.jpg" />
<meta property="og:url" content="http://www.pacer.org/stc/tikes/" />
<meta property="og:description" content="Assistive technology, whether something as simple as a pencil grip or as complicated as a communication device, has the power to change lives and opens doors of opportunity for people with disabilities.  The TIKES Project helps to open these doors for parents and providers by educating them on and promoting the use of assistive technology with children and students with disabilities ages birth to 5. Assistive technology can support young children in building skills, increasing participation in activities, promoting development, enhancing learning, and boosting self-esteem." />

<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/stylenoleftright.css" />
<link rel="stylesheet" type="text/css" href="/workshops/wsstyle.css"/>
<link rel="stylesheet" href="/js/LayerSlider/layerslider/css/layerslider.css" type="text/css" />

<!--#include virtual="/bullying/dynamic-head-items.html"-->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script type="text/javascript" src="/js/jquery.hoverIntent.minified.js"></script>

<script src="/js/LayerSlider/layerslider/jQuery/jquery-easing-1.3.js" type="text/javascript"></script>
<script src="/js/LayerSlider/layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$('#layerslider').removeClass('loading');
		$('#layerslider').layerSlider({
			skin : 'noskin',
			skinsPath : '/js/LayerSlider/layerslider/skins/',
			animateFirstLayer : false,
			navPrevNext : false,
			navStartStop : false,
			autoPlayVideos : false,
			autoPauseSlideshow : true,
			pauseOnHover : false,
			slideDelay : 8000,
			loops : 3
		});
		
		var currentDescriptionId = 'training-btn';
		
		$('.btn-wrap').hoverIntent(function() {
			if (! ($(this).attr('id') == currentDescriptionId)) {
				$('.descriptionBox').stop();
				currentDescriptionId = $(this).attr('id');
				$('.btn-wrap').removeClass('active-btn');
				$(this).addClass('active-btn');	
							
				$('.descriptionBox').slideUp(function() {
					$('#btn-descriptions-wrap .descriptionBox').html($('#'+currentDescriptionId).children('.btn-description').html());
				}).slideDown();
			}
		});
	});
	

</script>


<style type="text/css">
p {
	max-width: 50em;
}
#pagecontent .events h2 {
	margin: 30px 5px -10px;
	padding: 5px;
	background-color: #339900;
	border-top: 1px solid #246E00;
	color: white;
}
.loading ls-layer {
	display: none;
	padding: 5px;
}
#layerslider {
	width: 100%;
	min-height: 217px;
	margin: 0px;
}

#mainbuttons {
	width:960px;
	height:260px;
	margin:0px auto;
	clear:right;
	padding-top:40px;
}
.btn-wrap {
	width:200px;
	height:180px;
	margin:20px;
	padding-bottom:20px;
	float:left;
}
#training-btn.active-btn {
	background:url(http://www.pacer.org/stc/tikes/images/blueArrow.jpg) no-repeat bottom;
}
#exploring-btn.active-btn {
	background:url(http://www.pacer.org/stc/tikes/images/greenArrow.jpg) no-repeat bottom;
}
#school-btn.active-btn {
	background:url(http://www.pacer.org/stc/tikes/images/yellowArrow.jpg) no-repeat bottom;
}
#finding-btn.active-btn {
	background:url(http://www.pacer.org/stc/tikes/images/redArrow.jpg) no-repeat bottom;
}


#mainbuttons img {
	width:200px;
	height:180px;
	border:1px solid #999;
}
.descriptionBox {
	border:2px solid #00536E;
	border-radius:5px;
	padding:20px;
	margin:0px auto;
	width:50em;
}
.btn-description {
	display:block;
	position:absolute;
	left:-9999px;

}
#btn-descriptions-wrap {
	min-height:230px;
}
.addthis_sharing_toolbox {
	float: right;
	min-height:39px;
	margin-bottom: 25px;	
	padding-right: 10px;
	margin-top:20px;
	clear:none !important;
}

.sharethis {
	float:right;
	width:3em; 
	margin-top:20px;
}
#pagecontent .btn {
	background:#0099cc; 
	background: linear-gradient(to bottom, #0099cc 0%, #004E68 100%) repeat scroll 0 0 rgba(0, 0, 0, 0);
	border-radius: 3px;
	box-shadow: 2px 2px 4px #666;  
	border-width: 0;
	box-sizing: border-box;
	color: #fff;
	cursor: pointer;
	display: inline-block;
	font-size: 0.85em;
	font-weight: bold;
	height: 45px;
	letter-spacing: 0.05em;
	line-height: 45px;
	padding: 0 25px;
	position: relative;
	text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.5);
	text-transform: uppercase;
	white-space: nowrap;
	margin:0 20px;
}
#pagecontent .btn:hover{
  background:#0099cc; 
  background: linear-gradient(to bottom, #4EADCC 0%, #0099cc 100%) repeat scroll 0 0 rgba(0, 0, 0, 0);
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
<a href="/index.asp">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> / <a href="/stc/">Simon Technology Center</a> / <a href="/stc/tikes/">TIKES</a> /
<h1>TIKES - Technology  to Improve Kids&rsquo; Educational Success</h1>
      </div>
    </div>
    <div id="maincontent">
        
        <!--BEGIN CONTENT--> 
  <%'----------------------------------- START LAYER SLIDER -------------------------------------- %>
  <div id="layerslider" class="loading">
    <div id="slider1" class="ls-layer" rel="slidedirection: left;">
     	<img src="/stc/tikes/images/slider1.jpg" alt="" width="100%" class="ls-bg" rel="delayIn: 0;"/>
    </div>
    
    <div id="slider2" class="ls-layer" rel="slidedirection: left;"> 
    	<img src="/stc/tikes/images/slider2.jpg" alt="" width="100%" class="ls-bg" rel="delayIn: 0;"/> 
    </div>
    
    <div id="slider3" class="ls-layer" rel="slidedirection: left;">
    	<img src="/stc/tikes/images/slider3.jpg" alt=""width="100%" class="ls-bg" rel="delayIn: 0;"/>
    </div>
	
    <div id="slider4" class="ls-layer" rel="slidedirection: left;">
    	<img src="/stc/library/images/library-panorama.jpg" alt=""width="100%" class="ls-bg" rel="delayIn: 0;"/>
    </div>
  

  </div>
  <%'---------------------------- END LAYER SLIDER ------------------------------------%>
<div id="pagecontent"> 
       
    <div class="addthis_sharing_toolbox"></div>
    <div class="sharethis">Share:</div>
    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>
    
<div style="text-align:center; clear:right"><img src="/stc/tikes/images/tikes-blocks.jpg" width="400" height="96" alt=""/></div>
<div id="intro" style="margin:20px auto; text-align:center;">
<h1>Why Assistive Technology Matters</h1>
<p style="text-align:center; margin:0 auto; max-width:70em; line-height:1.6em;">Assistive technology, whether something as simple as a pencil grip or as complicated as a communication device, has the power to change lives and opens doors of opportunity for people with disabilities.  The TIKES Project helps to open these doors for parents and providers by educating them on and promoting the use of assistive technology with children and students with disabilities ages birth to 5. Assistive technology can support young children in building skills, increasing participation in activities, promoting development, enhancing learning, and boosting self-esteem.</p>
</div>		



<div id="mainbuttons"> 
  <div id="training-btn" class="btn-wrap active-btn">
  	<a href="/stc/tikes/trainings-on-demand.asp"><img src="/stc/tikes/images/trainings.jpg" alt="Training on Demand" /></a>
    <div class="btn-description" id="training-desc">
        <h2>Trainings on Demand</h2>
		<p>The TIKES Project provides hands-on training to parents and professionals on a variety of assistive technology topics. These trainings are being developed into training materials of value to both parents and professionals. Professionals can use in peer-to-peer or teacher-to-parent trainings. Parents can use any of the materials to learn more about how assistive technology can help their child.  Additional materials for each set, including handouts and short videos, are also being developed to support parents&rsquo; and educators&rsquo; understanding and use of assistive technology. </p>
    </div>
  </div>
  
  <div id="exploring-btn" class="btn-wrap">
  	<a href="/stc/tikes/exploring-at.asp"><img src="/stc/tikes/images/exploringAT.jpg" alt="Exploring Assistive Technology" /></a>
    <div class="btn-description" id="training-desc">
        <h2>Exploring Assistive Technology</h2>
        <p>Some technology can be expensive and sometimes there are a  lot of technology options to sort through.&nbsp;  Having access to and trying technology prior to buying it helps educators and parents make wise  purchasing decisions and write appropriate technology into an IFSP or IEP.&nbsp; The TIKES project is providing guidance  around establishing policies and procedures as well as inventory to partner  schools.&nbsp; Participants in the project  also receive a free membership to <a href="/stc/library/">PACER Center&rsquo;s Simon Technology Center Technology Library</a> for the duration of the project</p>
  	</div>
  </div>
<div id="school-btn" class="btn-wrap">
  	<a href="/stc/tikes/including-at-in-school.asp"><img src="/stc/tikes/images/ATinSchools.jpg" alt="Including Assistive Technology in School" /></a>
    <div class="btn-description" id="training-desc">
        <h2>Including Assistive Technology in School</h2>
        <p>The consideration of assistive technology is part of the process of developing an Individual Family Service Plan (IFSP) for children ages birth to three, and developing an Individualized Education Program (IEP) for children ages 3 to 5. Sometimes a provider may lack the knowledge or awareness of assistive technology; and as a result, they may not consider assistive technology when it would be appropriate to do so. Other providers use assistive technology, but do not always document it as assistive technology. A lack of awareness about the full range and scope of assistive technology may lead to a statement in IFSPs and IEPs that there is no need for assistive technology, while in fact assistive technology is listed as a component elsewhere in the document. TIKES strives to help parents and educators understand the legal process around assistive technology, called the consideration of assistive technology, and how to properly include it and document it in the IFSP and IEP.</p>
    </div>
  </div>
  <div id="finding-btn" class="btn-wrap">
  	<a href="/stc/tikes/acquiring-at.asp"><img src="/stc/tikes/images/findingAT.jpg" alt="Finding Assistive Technology" /></a>
    <div class="btn-description" id="training-desc">
        <h2>Finding Assistive Technology</h2>
        <p>Once you’ve gone through the process and have identified and know what assistive technology to use, it is time to acquire it.  Purchasing the technology is one option, while AT reuse offers another solution.  Reuse is the concept of helping to make technology accessible and affordable by giving life to technology that no longer serves its purpose for the current user. The TIKES Project provides support to its partner districts with the process of developing guidelines for how to communicate this important information about reuse to families.</p>
    </div>
  </div>
  <!--close main buttons-->
</div>


<div id="btn-descriptions-wrap">
    <div class="descriptionBox">
        <h2>Trainings on Demand</h2>
        <p>The TIKES Project provides hands-on trainings to parents and professionals on a variety of early intervention/early childhood and assistive technology topics. These trainings are being developed into training materials of value to both parents and professionals. Professionals can use the materials in peer-to-peer or teacher-to-parent trainings. Parents can use any of the materials to learn more about how assistive technology can help their child.  Additional materials for each set, including handouts and short videos, are also being developed to support parents&rsquo; and educators&rsquo; understanding and use of assistive technology.</p>
    </div>
    
</div>




<div id="extrabuttons" style="text-align:center; margin-top:10px;">
<a class="btn" href="/stc/tikes/about.asp">About the Tikes Program</a> 
<a href="http://pacer.us3.list-manage1.com/subscribe?u=151963e66a83a3a2610299d29&id=bec332876a" target="_blank" class="btn">Sign up for the newsletter</a>
</div>



        <div id="upcoming" class="events" style="padding-bottom:20px; border-bottom:1px solid #7e7e7e; margin-bottom:20px; clear:right;">
          <h2 style="margin-bottom:1em;">Upcoming STC Workshops &amp; Events</h2>
<img class="fltrt" src="/stc/tikes/images/livestreamLogo.jpg" width="300" height="102" alt="" />
<p style="margin-left:15px;">The TIKES project provides Up Coming Trainings on assistive  technology to meet both parent and professional needs. &nbsp;Many of these  trainings are held&nbsp;at PACER Center, located in Bloomington, MN. &nbsp;We  also make these trainings available via a streaming service so you can view the  materials from another location such as home or work. &nbsp;This experience is  flexible and interactive and allows participants to interact with the presenters  via a chat window monitored by TIKES staff.<strong></strong></p>
		
		<%
		'----------------------------------- START DYNAMIC WORKSHOPS LISTING -----------------------
sql = "SELECT * FROM Workshops WHERE workshop_grant LIKE '%Tikes%' AND workshop_date >= DATEADD(day, -1, getdate()) AND workshop_workshop = 'yes' ORDER BY workshop_date"
set rs = conn.execute(sql)
If Not rs.eof Then
%>
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
                <a href="flyer/<%=rs("workshop_flyer")%>" target="_blank">see the flyer<span class="extralinktext"> for <%=rs("workshop_name")%></span></a> <img src="/images/pdficon_small.gif" width="15" height="15" alt="" />
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
        
		
<%Else%>
<p style="padding:15px;"><strong>No TIKES workshops are scheduled at this time.  </strong>Please check back later or see our <a href="/workshops/">main workshop page</a> for all upcoming workshops</p>
<%End If%>
        
        <div id="pageextender" style="clear:both">&nbsp;</div>
      </div>
      
      <!--END CONTENT--> 
      
    </div>
  </div>
  
  <!--#include virtual="/footer2.htm"--> 
  
</div>
</body>
</html>