<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim RegistrationOpen, RegistrationClose, FBEventLink
RegistrationOpen = "6-06-2017"
RegistrationClose = "10-06-2017 12:00 PM"
FBEventLink = "https://www.facebook.com/events/1434669129923647/"

Dim rs__MMColParam
rs__MMColParam = Date
Dim rs
Dim rs_cmd
Dim rs_numRows

Set rs_cmd = Server.CreateObject ("ADODB.Command")
rs_cmd.ActiveConnection = MM_PACER_WEB_STRING
rs_cmd.CommandText = "SELECT event_ID, event_date, event_state, event_city FROM bullyEvents WHERE event_date > ? AND event_approved = 'y' AND event_rwr = 'y' ORDER BY event_state, event_city" 

rs_cmd.Prepared = true
rs_cmd.Parameters.Append rs_cmd.CreateParameter("param1", 135, 1, -1, rs__MMColParam) ' adDBTimeStamp'

Set rs = rs_cmd.Execute
rs_numRows = 0
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="title" content="PACER's Run, Walk, Roll Against Bullying! The End of Bullying Begins With You!!" />
<meta name="description" content="Register for PACER's Run, Walk, Roll Against Bullying in Oct. as a kick off to National Bullying Prevention Month." />

<!-- for Facebook ## images 600x315/1200x630 -->
<meta property="og:title" content="PACER's Run, Walk, Roll Against Bullying! The End of Bullying Begins With You!!" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/bullying/nbpm/runwalkroll/images/UnitedAgainstBullying-fb.jpg" />
<meta property="og:url" content="http://www.pacer.org/bullying/nbpm/runwalkroll/" />
<meta property="og:description" content="Register for PACER's Run, Walk, Roll Against Bullying in Oct. as a kick off to National Bullying Prevention Month." />
<title>Run, Walk, Roll Against Bullying - National Bullying Prevention Center</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link href="/js/colorbox1.5.9/colorbox.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
 document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script type="text/javascript" src="/js/pacer-expanding-box.js"></script>
<link rel="stylesheet" type="text/css" href="/js/pacer-expanding-box.css"/>
<script type="text/javascript" src="/js/jquery-ui-1.11.4.custom/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css" href="/js/jquery-ui-1.11.4.custom/jquery-ui.css"/>
<script type="text/javascript">
	//<![CDATA[
	$(document).ready(function() {
		$('.dash').attr('aria-hidden','true');
		var $pageTabs = $('#tabs').tabs();
		//When linking to a tab on the page the browser sometimes jumps you to the bottom of the page. This will start you at the top of the tab if you link directly to a tab on the page.
		if (window.location.hash) {
				$('html, body').animate({
  			scrollTop: $($pageTabs).offset().top - 115
 			}, 150);
		}

		$(".ui-tabs-panel").each(function(i){
	 		var totalSize = $(".ui-tabs-panel").size() - 1;
	 		if (i != totalSize) {
	  		next = i + 1;
 		 		$(this).append("<a href='#' class='next-tab mover' rel='" + next + "'>Next Tab &#187;</a>");
	 		}
	 
	 		if (i != 0) {
	  		prev = i - 1;
 		 	$(this).append("<a href='#' class='prev-tab mover' rel='" + prev + "'>&#171; Prev Tab</a>");
	 		}
 			$(this).append('<br class="clearfloat" />');
		});
	
		$('.next-tab, .prev-tab').click(function() { 
		 //scroll back to the top
		 $('html, body').animate({
  		scrollTop: $($pageTabs).offset().top - 115
 		}, 150);
		 //delay the changing of the tabs until the scroll is complete so the person sees the heading change
		 setTimeout($.proxy(function() {
			 	//alert('timeout - ' + $(this).attr("rel"));
		 		$('#tabs').tabs('option', 'active', $(this).attr("rel"));
		 		//Re-scroll the window after the content length has changed.
				$('html, body').animate({
  			scrollTop: $($pageTabs).offset().top - 115
 			}, 150);
				
		 }, this), 300);
   return false;
  	});
		
		$(".photoGalley1").colorbox({rel:'group1'});
		//]]>
	 });//----------close ready function----------
</script>
<script type="text/javascript" src="/js/colorbox1.5.9/jquery.colorbox-min.js"></script>
<script src="/js/LayerSlider/layerslider/jQuery/jquery-easing-1.3.js" type="text/javascript"></script>

<!--#include virtual="/bullying/dynamic-head-items.html"-->

<style type="text/css">
.addthis_sharing_toolbox {
	min-height:34px;
}
#Community-RWR h3 {
	line-height: normal;
	margin: 5px;
	padding: 0px;
}
#Community-RWR ul {
	padding-left: 10px;
	list-style: none;
}
#Community-RWR img {
	display: block;
	margin: 5px auto;
}
.content .registrationBox {
	float: none;
	border-radius: 8px;
}
.contentBox {
	padding: 10px;
	margin: 20px;
	border-radius: 8px;
}
#photoGallery {
	text-align: center;
}
#photoGallery p {
	text-align: left;
}
#orangeSection {
	padding: 10px;
	background: #FA582A;
	color: #fff;
	margin: 20px;
	border-radius: 8px;
	position: relative;
	padding-bottom: 40px;
}
#imageBlock {
	width: 436px;
	height: 289px;
	float: right;
	background: url(/bullying/nbpm/runwalkroll/images/2015-walkers.jpg) no-repeat right 0px top 0px;
	border: 1px solid #000;
	border-radius: 8px;
	margin-right: 0px;
}
#flyerBlock, #facebookEventSection {
	color: #fff;
	text-align: center;
	position: absolute;
	bottom: 10px;
}
#flyerBlock {
	right: 10px;
	width: 436px;
}
#facebookEventSection {
	left: 10px;
	width: 333px;
}
#flyerBlock a, #facebookEventSection a {
	color: #fff;
}
#SponsorContent img {
	padding:20px;
}
	#SponsorContent {
		display: none;
	}
	#flyerBlock {
		display: none;
	}
	#facebookEventSection {
		display: none;
	}
	#customInkSponsorMsg {
		display: none;
	}
	#eventMap {
		display: none;
	}
	
</style>
</head>

<body class="twocol">
<div class="container"> <a id="skiptocontent" href="#maincontent">Skip to main content</a> 
 <!--#include virtual="/bullying/dynamic-header.html"--> 
 <!--#include virtual="/bullying/topnav.html"--> 
 
 <script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>
 <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/nbpm/">National Bullying Prevention Month</a> / 
  <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>
  <div class="addthis_sharing_toolbox"></div>
  <div class="sharethis" style="float:right; width:3em;">Share:</div>
 </div>
 <div class="sidebar1"> 
  <!--#include virtual="/bullying/nbpm/nav.html"--> 
  
  <!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show --> 
  <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="rwr";
	var showTree = "none";
	var currSubId="none";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "active";
	}
	if (document.getElementById(currSubId)){
		document.getElementById(currSubId).className = "active";
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
  <%If Not rs.EOF Then%>
  <hr />
  <div id="Community-RWR"><img src="/bullying/nbpm/runwalkroll/images/rwr-us-map.png" width="160" height="121" alt="" />
   <h3><a href="/bullying/nbpm/runwalkroll/events-around-the-country.asp">Run, Walk Roll Events Around the Country</a></h3>
   <ul>
    <%
	Dim rsState
	
	
	
	Do until rs.eof%>
    <%
	 rsState = ", " & rs.Fields.Item("event_state").Value
	 If rs.Fields.Item("event_state").Value = "NotInUSA" Then rsState = ""
	%>
    <li><a href="/bullying/nbpm/runwalkroll/community-RWR.asp?evt=<%=rs.Fields.Item("event_ID").Value%>"><%=(rs.Fields.Item("event_city").Value)%><%=rsState%></a><br />
     <span class="date"><%=FormatDateTime(rs.Fields.Item("event_date").Value, vbShortDate)%></span> </li>
    <%
	rs.MoveNext
	Loop
	rs.close
	%>
   </ul>
  </div>
  <%End If%>
  
  <!-- end .sidebar1 --></div>
 <div class="content">
  <h1 id="maincontent" class="centered" style="clear:right; position:relative;"> <span style="width:12em; text-align:left; position:absolute; top:-15px; left:10px; color:#000; font-size:16px; font-weight:bold; text-shadow:none;">Friends of PACER&rsquo;s</span> <img src="images/RWRGraphicHorizontalReverse-515w.png" width="515" height="50" alt="Run, Walk, Roll Against Bullying" /> </h1>
  <div id="orangeSection" class="contentBox">
   <div class="topSection" style="text-align:center; padding-bottom:20px;">
    <h2 style="color:#fff; margin-bottom:5px; padding-bottom:0px;">Saturday, October 7<sup>th</sup> 2017</h2>
    9:00 AM to Noon | Mt. Normandale Lake, Bloomington, MN<br />
    <em>84th St and Chalet Road, near intersection of 494 &amp; Hwy 100</em> </div>
   <div id="imageBlock"></div>
   <div id="flyerBlock"><a href="/bullying/nbpm/runwalkroll/pdf/Run-walk-roll-poster.pdf" target="_blank"><span class="fa fa-file-pdf-o"></span> Download &amp; Share the Event Flyer <span class="fa fa-external-link"></span></a></div>
   <div id="registrationBox" style="background:#fff; padding:10px; border:1px solid #000; width:313px; color:#000; text-align:left; border-radius:8px;">
    
	<!--
	<p><a href="http://www.advantagetiming.com/road-race-results" target="_blank">2016 Run, Walk, Roll 4 Mile Run Results <span class="fa fa-external-link"></span></a></p>
	-->
	
	<%If date >= cDate(RegistrationOpen) And DateDiff("n", Now, cDate(RegistrationClose)) > 0 Then %>
    <p class="centered"><a href="https://pacer.ejoinme.org/MyPages/5KRunWalkRollAgainstBullying/tabid/231515/Default.aspx"><img src="/images/registerNow.gif" width="190" height="77" alt="Register Now" /></a></p>
    <%ElseIf date < cDate(RegistrationOpen) Then %>
    <div class="alertBox registrationBox" style="width:180px; margin:10px auto;">Online Registration opens spring 2017.</div>
    <%Else%>
    <div class="alertBox registrationBox" style="width:180px; margin:10px auto;"><strong>Online Registration is now closed. </strong>You can still register on site at the event starting at 9:00am on Saturday, Oct.. 1<sup>st</sup>.</div>
    <%End If%>
    <p><strong>Registration: </strong><em>(Includes event t-shirt)</em> <br />
     $20.00 &ndash; 16 years and older<br />
     $10.00 &ndash; 7-15 years of age<br />
     Free &ndash; 6 years and under
    </p>
    <p> <em>Free parking available in lot off of W 84th St/E Bush Lake Rd &amp; Chalet Rd</em></p>
   </div>
   <div id="facebookEventSection"> <a href="<%=FBEventLink%>" target="_blank">Join the Facebook Event Page <span class="fa fa-external-link"></span></a> </div>
   <br class="clearFloats" style="clear:both" />
  </div>
  
  <table cellspacing="20" style="display: none;"><tr><td>
  <img class="fltlft" src="/bullying/emails/images/JasonMatheson-sml.jpg" width="119" height="110" alt="Jason Matheson"/></td>
  <td>PACER is pleased to announce our celebrity emcee&hellip; <strong>Jason Matheson</strong>! He is the host of &ldquo;The Jason Show&rdquo; on Fox 9 and co-host of &ldquo;The Jason &amp; Alexis Show&rdquo; on MyTalk 107.1. </td>
  </tr></table>
  
  <p class="centered" id="eventMap"><em><a style="font-size:1.2em;" href="/bullying/nbpm/runwalkroll/pdf/rwr-event-map.pdf" target="_blank"><span class="fa fa-file-pdf-o"></span> Event Map <span class="fa fa-external-link"></span></a> - Free parking available in lot off of W 84th St/E Bush Lake Rd &amp; Chalet Rd </em></p>
  
  
  <div class="tabbedPanel">
   <div id="tabs">
    <ul>
     <li><a href="#tab-schedule">Schedule of Events</a></li>
     <li><a href="#tab-team">Create a Team</a></li>
     <li><a href="#tab-sponsor">Become a Sponsor</a></li>
     <li><a href="#tab-domore">Ways to Do More</a></li>
    </ul>
    <div id="tab-schedule">
     <h2>Schedule of Events</h2>
     <p>Join PACER&rsquo;s National Bullying Prevention Center to raise awareness for bullying prevention in YOUR community! Enjoy fun, family-friendly activities, information tables, and other treats at the Run, Walk, Roll Against Bullying!</p>
     <p><strong>Schedule of Events:</strong><br />
      9 AM &ndash; Check-in, day-of registration, t-shirt pickup, activities<br />
      10 AM &ndash; <em>Run, Walk, Roll! </em>4 mile run, 2 mile fun walk &amp; roll<br />
      <em>*4 mile runners will be chip-timed</em><br />
      10:45 AM &ndash; Activities, guest speakers, performances, prizes, &amp; more!
      </p>
      <ul style="display: none;">
       <li>Meet  Mandy Chick, a 14-year-old race car driver from Kansas who   was recently named Missouri  State Rookie of the Year in the NASCAR   Whelen All-American Series! Take photos with Mandy and her race car.</li>
       <li>Meet Madeline Van Ert, Miss Minnesota  2016 </li>
       <li>Learn important information about cyber safety from the FBI</li>
       <li>Tap into your creativity at the Crayola coloring station</li>
       <li>Sign the &ldquo;Together Against&rdquo; banner, get your face painted, and take pictures at the photo booth</li>
       <li>Enter to win awesome door prizes</li>
       <li>Enjoy healthy snacks, beverages, and DQ dilly bars
        <p></p>
       </li>
      </ul>
     <!--
     <p><strong>Check back for more updates and special announcements throughout the summer!</strong></p>
     -->
     <h3>Gather Your Team</h3>
     <p>Want to show how much you care? Gather all of your friends, family and coworkers and create a team for the Run, Walk, Roll Against Bullying! 
     
     <!--
     <strong>The three largest teams will receive special recognition and prizes at the event!</strong>
     -->
     
     </p>
     <div style="width:700px; height:333px; margin:10px auto; border-radius:8px; border:1px solid #000; background:url(/bullying/nbpm/runwalkroll/images/team-banner.jpg)"></div>
    </div>
    <div id="tab-team">
     <h2>Create a Team</h2>
     <p>Here&rsquo;s how it works:</p>
     <ol>
      <li>Tell your friends, family members, and coworkers about this fun event on Saturday, Oct. 7<sup>th</sup> by handing out <a href="/bullying/nbpm/runwalkroll/pdf/Run-walk-roll-poster.pdf" target="_blank"><span class="fa fa-file-pdf-o"></span> event flyers <span class="fa fa-external-link"></span></a>, sharing the <a href="<%=FBEventLink%>" target="_blank">Facebook event page <span class="fa fa-external-link"></span></a>, or a simple email or text.</li>
      <li>Create a &ldquo;Team Name&rdquo; &ndash; <em>Example: Team Unity</em></li>
      <li>Tell your team members to register online here: <a href="http://www.pacer.org/bullying/nbpm/runwalkroll/">pacer.org/rwr/</a></li>
     </ol>
     <p><strong>IMPORTANT:</strong> At the end of the registration form it will ask for your <span id="dnn_ctr368142_ViewAESOPRegistration_rmodule_SurveyQuestionsList_lstItems_SurveyQuestionItem_1_QuestionLabel_1"><strong>Organization / Team Name</strong></span>. Have your Teammates enter your Team Name here! 
      PACER will provide updates to the team lead regarding how many participants have registered.</p>
     <p>If you are an individual or company who is paying for your entire team to participate, contact Jackie Saffert (<a href="mailto:Jackie.Saffert@pacer.org">Jackie.Saffert@pacer.org</a>) for alternative group registration and payment option.</p>
     <p>You may also download the <a href="/bullying/nbpm/runwalkroll/pdf/Rwr-Team-Signup-Sheet.pdf" target="_blank"><span class="fa fa-file-pdf-o"></span> Team Sign-Up <span class="fa fa-external-link"></span></a> sheet to gather required registration information.</p>
    </div>
    <div id="tab-sponsor">
     <h2>Become a Sponsor</h2>
     <p><strong>We invite you to become a sponsor for Friends of PACER&rsquo;s Annual Run, Walk, Roll Against Bullying!</strong> </p>
     <p>This event sponsorship is a great opportunity to reach students, parents, educators, and the entire community by showing that you care about how students are treated at school and in the community.<br />
     </p>
     <p><strong>The company name/logo of all sponsors will be featured in:</strong></p>
     <ul>
      <li>event flyers, event web page (5,000 annual page views), and posters displayed at event</li>
      <li>5-7 eblasts (distribution of 25,000) sent to local, regional, and national audiences</li>
      <li>PACER <em>Partners</em> newsletter (distribution of 8,000)</li>
      <li>one post listing all sponsors on PACER&rsquo;s social media platforms</li>
      <li>participant registration passes</li>
     </ul>
     <p>You can find additional details regarding the benefits of sponsorship on the <a href="/bullying/nbpm/runwalkroll/pdf/CorporateSponsorsForm.pdf" target="_blank"><span class="fa fa-file-pdf-o"></span> Sponsor Form <span class="fa fa-external-link"></span></a>.<br />
      For more information on corporate and individual sponsorships, please contact Raleigh Johnson: <a href="mailto:raleigh.johnson@pacer.org">raleigh.johnson@pacer.org</a> | 952-838-1321</p>
    </div>
    <div id="tab-domore">
     <h2>Ways to Do More</h2>
     <p>There are many ways to show your support of kindness, acceptance and inclusion! Whether it is donating to PACER&rsquo;s National Bullying Prevention Center, or posting on Facebook and Instagram &ndash; <strong>YOU can make a difference</strong>!</p>
     <ul>
      <li><a href="https://pacer.ejoinme.org/MyPages/DonateToTheNationalBullyingPreventionCenter/tabid/229451/Default.aspx" target="_blank">Donate Now! <span class="fa fa-external-link"></span></a> </li>
      <li><strong>Sponsor a Participant</strong> by making an additional donation when you register<strong><u></u></strong></li>
      <li>Share the <a href="<%=FBEventLink%>" target="_blank">Facebook Event Page <span class="fa fa-external-link"></span></a></li>
      <li class="pdficonlist">Hang <a href="/bullying/nbpm/runwalkroll/pdf/Run-walk-roll-poster.pdf">event flyers <span class="fa fa-external-link"></span></a> at your school, office and throughout the community<strong><u></u></strong></li>
      <li class="pdficonlist">Use this <a href="/bullying/nbpm/runwalkroll/pdf/PACER-Pledge-Form-for-RWR.pdf" target="_blank">Pledge Form <span class="fa fa-external-link"></span></a> to encourage others to support the event<strong><u></u></strong></li>
      <li>Not from Minnesota? Create your own <a href="/bullying/nbpm/runwalkroll/events-around-the-country.asp">Run, Walk, Roll event in your community!</a></li>
     </ul>
    </div>
   </div>
  </div>
  <div id="SponsorContent" class="contentBox" style="text-align:center;">
   <h2 id="sponsors" style="text-align:left; font-size:1.8em;">Sponsors</h2>
    <%' ------------------------ Presenting Level | $10,000 --------------------------------- %>
    <a href="https://www.mape.org/" target="_blank"><img src="/bullying/nbpm/runwalkroll/images/sponsors/MAPElogo.jpg" width="134" height="80" alt="Minnesota Association of Professional Employees"/></a>
    <%' ------------------------ Premier Level | $7,500--------------------------------- %>
    
    <%' ------------------------ Major Level | $5,000 --------------------------------- %>
    <img src="/bullying/nbpm/runwalkroll/images/sponsors/DQCARES_CorpGiving-4c.png" height="65" alt="DQ Cares - Corporate Giving" /> 
    <img src="/bullying/nbpm/runwalkroll/images/sponsors/IBM.png" height="65" alt="IBM" /> 
    
    <%' ------------------------ Partner Level | $2,500 --------------------------------- %>
    <br />
    <a href="http://www.michaelandmarisa.com/charity/" target="_blank"><img src="/bullying/nbpm/runwalkroll/images/sponsors/MichaelAndMarisa-MLOGO_WebReady.png" width="220" height="48" alt="Pearsons"/></a>
    <img src="/bullying/nbpm/runwalkroll/images/sponsors/pearsons-logo.jpg" width="118" height="65" alt="Pearsons"/>
    <br />
    <img src="/bullying/nbpm/runwalkroll/images/sponsors/Pinstripes-logo.png" height="50" alt="Pinstripes"/>
    <img src="/bullying/nbpm/runwalkroll/images/sponsors/UnitedHealthGroup-Logo.png" width="220" height="41" alt="United Health Group"/>
		<%' ------------------------ Contributing Level | $1,000 --------------------------------- ' %>
    <br />
    <a href="http://www.k12.com/" target="_blank"><img src="/bullying/nbpm/runwalkroll/images/sponsors/K12.jpg" height="65" alt="K12 Online" /></a>
    <a href="http://mn.insightschools.net/" target="_blank"><img src="/bullying/nbpm/runwalkroll/images/sponsors/insight-school-of-minnesota.jpg" height="65" alt="Insight School of Minnesota" /></a>
    <a href="http://mn.iqacademy.com/" target="_blank"><img src="/bullying/nbpm/runwalkroll/images/sponsors/iq-academy-minnesota.jpg" height="65" alt="IQ Academy Minnesota" /></a>
    <a href="http://mnva.k12.com/?_ga=1.84454873.1763944028.1462219518" target="_blank"><img src="/bullying/nbpm/runwalkroll/images/sponsors/minnesota-virtual-academy.jpg" height="65" alt="Minnesota Virtual Academy" /></a>
    <br />
    <img src="/bullying/nbpm/runwalkroll/images/sponsors/CenturyLink_Logo.png" height="64" alt="CenturyLink" />
    <img src="/bullying/nbpm/runwalkroll/images/sponsors/coordinated-Logo-200w.jpg" height="65" alt="Coordinated Business Systems" />
    <img src="/bullying/nbpm/runwalkroll/images/sponsors/HiltonBloomington.jpg" height="65" alt="Hilton Bloomington" />
    <br />
    <img src="/bullying/nbpm/runwalkroll/images/sponsors/sears-logo-200w.jpg" height="65" alt="Sears Imported Auto" /> 
	 	<img src="/bullying/nbpm/runwalkroll/images/sponsors/SA-logo.png" width="92" height="65" alt="Superamerica"/>
  </div>
  
  <div id="customInkSponsorMsg">
	  <p class="centered">A special shout out to <strong>CustomInk</strong> for their continued support of Run, Walk, Roll Against Bullying. Thanks for the shirts!</p>
	 <div class="resources">  
		<a href="http://www.customink.com/stopbullying" target="_blank"><img class="fltlft" src="/bullying/images/2016-tshirt-front.png" alt="CustomInk - Be Good to Each Other Campaign" border="0" /></a>
		<p align="center">Wear ORANGE on UNITY DAY, Wednesday, Oct. 19!</p>
	  <p align="center"><strong>CustomInk</strong> launches its 6th annual &ldquo;Be Good to Each Other&rdquo; T-shirt campaign in support of PACER&rsquo;s National Bullying Prevention Center.</p>
	  <p class="centered"><a href="http://www.customink.com/stopbullying" target="_blank">Learn More <span class="fa fa-external-link"></span></a></p>
	  </div>
</div>
  <div id="photoGallery" class="contentBox">
   <p class="date"><em>Click on an image to enlarge</em></p>
   <a class="photoGalley1" href="/bullying/nbpm/runwalkroll/images/2011/RWR-2011-01.JPG" rel="lightbox[rwr]" title=""><img src="/bullying/nbpm/runwalkroll/images/2011/thumb/RWR-2011-01.jpg" height="124" alt="" /></a> <a class="photoGalley1" href="/bullying/nbpm/runwalkroll/images/2011/RWR-2011-02.JPG" rel="lightbox[rwr]" title=""><img src="/bullying/nbpm/runwalkroll/images/2011/thumb/RWR-2011-02.jpg" height="124" alt="" /></a> <a class="photoGalley1" href="/bullying/nbpm/runwalkroll/images/2011/RWR-2011-03.JPG" rel="lightbox[rwr]" title=""><img src="/bullying/nbpm/runwalkroll/images/2011/thumb/RWR-2011-03.jpg" height="124" alt="" /></a> <a class="photoGalley1" href="/bullying/nbpm/runwalkroll/images/2011/RWR-2011-04.JPG" rel="lightbox[rwr]" title=""><img src="/bullying/nbpm/runwalkroll/images/2011/thumb/RWR-2011-04.jpg" height="124" alt="" /></a> <a class="photoGalley1" href="/bullying/nbpm/runwalkroll/images/2011/RWR-2011-05.JPG" rel="lightbox[rwr]" title=""><img src="/bullying/nbpm/runwalkroll/images/2011/thumb/RWR-2011-05.jpg" height="124" alt="" /></a> <a class="photoGalley1" href="/bullying/nbpm/runwalkroll/images/2015/IMG_1569.jpg" rel="lightbox[rwr]" title=""><img src="/bullying/nbpm/runwalkroll/images/2015/IMG_1569_thumb.jpg" height="124" alt="" /></a> <a class="photoGalley1" href="/bullying/nbpm/runwalkroll/images/2011/RWR-2011-07.JPG" rel="lightbox[rwr]" title=""><img src="/bullying/nbpm/runwalkroll/images/2011/thumb/RWR-2011-07.jpg" height="124" alt="" /></a> <a class="photoGalley1" href="/bullying/nbpm/runwalkroll/images/2011/RWR-2011-12.JPG" rel="lightbox[rwr]" title=""><img src="/bullying/nbpm/runwalkroll/images/2011/thumb/RWR-2011-12.jpg" height="124" alt="" /></a> <a class="photoGalley1" href="/bullying/nbpm/runwalkroll/images/2011/RWR-2011-08.JPG" rel="lightbox[rwr]" title=""><img src="/bullying/nbpm/runwalkroll/images/2011/thumb/RWR-2011-08.jpg" height="124" alt="" /></a> <a class="photoGalley1" href="/bullying/nbpm/runwalkroll/images/2011/RWR-2011-09.JPG" rel="lightbox[rwr]" title=""><img src="/bullying/nbpm/runwalkroll/images/2011/thumb/RWR-2011-09.jpg" height="124" alt="" /></a>
   <div class="hidden" style="display:none"> <a class="photoGalley1" href="/bullying/nbpm/runwalkroll/images/2011/RWR-2011-10.JPG" rel="lightbox[rwr]" title=""><img src="/bullying/nbpm/runwalkroll/images/2011/thumb/RWR-2011-10.jpg" height="124" alt="" /></a> <a class="photoGalley1" href="/bullying/nbpm/runwalkroll/images/2011/RWR-2011-11.JPG" rel="lightbox[rwr]" title=""><img src="/bullying/nbpm/runwalkroll/images/2011/thumb/RWR-2011-11.jpg" height="124" alt="" /></a> <a class="photoGalley1" href="/bullying/nbpm/runwalkroll/images/2011/RWR-2011-13.JPG" rel="lightbox[rwr]" title=""><img src="/bullying/nbpm/runwalkroll/images/2011/thumb/RWR-2011-13.jpg" height="124" alt="" /></a> <a class="photoGalley1" href="/bullying/nbpm/runwalkroll/images/2011/RWR-2011-06.JPG" rel="lightbox[rwr]" title=""><img src="/bullying/nbpm/runwalkroll/images/2011/thumb/RWR-2011-06.jpg" height="124" alt="" /></a> </div>
  </div>
  <div id="pageextender" style="clear:both">&nbsp;</div>
  <!-- end .content --></div>
 
 <!--#include virtual="/bullying/footer.html"--> 
 <!-- end .container --></div>
</body>
</html>
