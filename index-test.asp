<%@Language="VBScript" CodePage = 65001 %>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim rs, rsNews, rsActiveEvent, currentDateTime
Dim rs_cmd
Set rs_cmd = Server.CreateObject ("ADODB.Command")
rs_cmd.ActiveConnection = MM_PACER_WEB_STRING


rs_cmd.CommandText = "SELECT TOP 7 * FROM Workshops WHERE workshop_date >= DATEADD(day, -1, getdate()) AND workshop_workshop = 'yes' AND ((workshop_closed <> 'yes' AND workshop_closed <> 'canc') OR workshop_closed IS NULL) ORDER BY workshop_date, workshop_name"
rs_cmd.Prepared = true
Set rs = rs_cmd.Execute

rs_cmd.CommandText = "SELECT TOP 2 * FROM pacerNews ORDER BY posted_date DESC" 
rs_cmd.Prepared = true
Set rsNews = rs_cmd.Execute

currentDateTime = Now
'Note: Microsoft Access adds a -1 for the day if there is no date and only a time value, so you have to compare times against 1/1/1900 - 1 day or "12/30/1899" 
'Processing GETDATE() in the SQL is slower to calculate against all rows than text (in theory). And converting that to only the time value was not working.
rs_cmd.CommandText = "SELECT *, start_time as data1 FROM Workshops WHERE DATEDIFF(day, '" & currentDateTime & "', workshop_date) = 0  AND DATEDIFF(minute,'12/30/1899 " & FormatDateTime(currentDateTime, vbLongTime) & "' , start_time) < 0 AND DATEDIFF(minute,'12/30/1899 " & FormatDateTime(currentDateTime, vbLongTime) & "' , end_time) > 0 AND workshop_workshop = 'yes' AND ((workshop_closed <> 'yes' AND workshop_closed <> 'canc') OR workshop_closed IS NULL) AND LEN(stream_id) > 0;"
rs_cmd.Prepared = false
Set rsActiveEvent = rs_cmd.Execute

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<script language="javascript" type="text/javascript">
	if (document.location.href == "http://www.pacer.org/index.asp"){
			window.location = "http://www.pacer.org/";
	}
	</script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="description" content="PACER Center's mission is to expand opportunities and enhance the quality of life of children and young adults with disabilities and provide family programs." />
	<meta name="keywords" content="children with disabibilities, special needs children, bullying, parent programs, parents of disabled child, child development, blind deaf autistic children education programs, pacer center, pacer org" />
	<meta name="robots" content="index,follow" />
	<meta name="copyright" content="Copyright <%=DatePart("yyyy", Now())%>. PACER Center, Inc. All Rights Reserved." />
	<meta name="google-site-verification" content="gXnuRg7yPAqY1eJlhD3918fAFHYgz2BuUdVy64SuwE8" />
	<meta property="fb:admins" content="605576224" />

	<!-- for Facebook -->
	<meta property="fb:app_id" content="271376943231875"  />
	<meta property="og:title" content="PACER Center" />
	<meta property="og:type" content="article" />
	<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
	<meta property="og:url" content="http://www.pacer.org/" />
	<meta property="og:description" content="PACER Center's mission is to expand opportunities and enhance the quality of life of children and young adults with disabilities and provide family programs." />
	<title>PACER Center - Assistance for Children with Disabilities, Bullying Prevention, Parent Workshops</title>
	<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
	<!--<link rel="stylesheet" type="text/css" href="css/styleHome.css" />-->
	<link rel="stylesheet" type="text/css" href="css/home.css" />
	<link rel="stylesheet" href="/js/LayerSlider/layerslider/css/layerslider.css" type="text/css" />
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
	<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
  document.write(unescape("%3Cscript src='/js/jquery-1.6.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
	<script src="/js/LayerSlider/layerslider/jQuery/jquery-easing-1.3.js" type="text/javascript"></script>
	<script src="/js/LayerSlider/layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$('#layerslider').layerSlider({
			skin : 'defaultskin',
			skinsPath : '/js/LayerSlider/layerslider/skins/',
			animateFirstLayer : true,
			navPrevNext : true,
			navStartStop : false,
			autoPlayVideos : false,
			autoPauseSlideshow : true,
			pauseOnHover : true,
			slideDelay : 12000,
			loops : 3
		});
		$('#layerslider').removeClass('loading');
		var leftHeight = 350 + $('#underslider').height() + 30;
		console.log(leftHeight);
		if (leftHeight > 1500) {
			$('#featured').css('min-height', leftHeight);
		}
	});		
</script>
</head>

<body>
<div id="skiptocontent"> <a href="#maincontent">Skip to main content</a> </div>
<div id="wrapper" style="min-width: 980px; max-width:1200px;">
	<div id="header">
		<table cellpadding="0" cellspacing="0" style="width:100%; min-width:980px">
			<tr>
				<td style="width: 350px;"><a href="/"><img src="images/pacerlogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" width="430" height="104" /></a></td>
				<td><!--#include virtual="/googleSearchBox.htm"--> 
					<!-- Contains Contact Pacer | Donate | Google search bar | Social media --></td>
			</tr>
		</table>
		<!--#include virtual="/dynamicheader.htm"--> 
	</div>
	
	<!--BEGIN CONTENT-->
	<div id="maincontent">
		<div id="pagecontent">
			<div id="featured"> 
				<!-- ############################### START FEATURED SECTION ######################## -->
				<% ' ############## ALERT MESSAGE ###################   
'   <div style="padding:5px; margin-bottom:10px; background:#fda132; font-size:.8em; text-align:center; min-height:60px;">
'   <img src="/images/alert-homepage-sml.png" width="32" height="48" alt="" class="fltlft" style="margin:0; padding:0; margin-bottom:20px;" />
'   <strong>Road Construction Notice:</strong> <br />
'   For most of July,<br />
'   Normandale Service Rd. will be closed.<br />
'   <a href="/PACER-Detour-Directions.pdf" target="_blank">See this map for alternative directions</a>
'</div>
%>
				<h2>Featured News and Events</h2>
				<ul class="homepagenews">


					<%If NOT rsActiveEvent.EOF Then
						Dim WID, wsTitle, wsStartTime, wsEndTime
						WID = rsActiveEvent("workshop_id")
						WID = Replace(WID, "{", "")
						WID = Replace(WID, "}", "")

						wsDate = FormatDateTime(rsActiveEvent("workshop_date"),1)

						If Len(rsActiveEvent("workshop_series_title")) > 0 Then
							wsTitle = "<span class=""seriesTitle"">" &  rsActiveEvent("workshop_series_title") & " : </span>" & Replace(rsActiveEvent("workshop_name"), rsActiveEvent("workshop_series_title"), "")
						Else
							wsTitle = rsActiveEvent("workshop_name")
						End If

						wsStartTime = FormatDateTime(rsActiveEvent("start_time"), vbLongTime)
						wsStartTime = Replace(Left(wsStartTime, 2), ":", "") & ":" & Right("00" & Minute(wsStartTime), 2) & " " & Right(wsStartTime, 2)
						wsEndTime = FormatDateTime(rsActiveEvent("end_time"), vbLongTime)
						wsEndTime = Replace(Left(wsEndTime, 2), ":", "") & ":" & Right("00" & Minute(wsEndTime), 2) & " " & Right(wsEndTime, 2)


					%>
						<li>
							<div class="lsLiveNowButton"> <a href="/livestream/?wksp=<%=WID%>" title="Event In Progress">Live Now - View this Live Stream Event</a></div>
							<h3 class="lsTitle"><%=wsTitle%></h3>
							<p class="lsDescription"><%=rsActiveEvent("workshop_description")%></p>
							<p class="lsTime"><%=wsStartTime%> - <%=wsEndTime%></p>
							<p class="lsLink"><a href="/livestream/?wksp=<%=WID%>">View the Live Stream Event Page</a></p>
						</li>
					<%End If%>				

						<li><h3>PACER Symposium about Children &amp; Young Adults with Mental Health &amp; Learning Disabilities</h3>
							<p>Tuesday, August 15, 2017</p>
							<p class="centered"><a class="btn btn-blue" href="/help/symposium/">Registration now Open!</a></p>
							<p>Outstanding learning opportunity for <strong>general education teachers, administrators, and parents</strong> interested in understanding more about mental health and learning disabilities in children and young adults. </p>
						</li>
		
						<li><h3>Accessible Summer Recreation, Sports and Camps list</h3>
							<p>There are many sports, social and recreation opportunities available in the community for children and young adults with disabilities and their families. These are some of the programs available. </p>
							<p><a href="/funtimes/recreation-and-sports.asp">View the Recreation, Sports and Camps list</a></p>

			
				
<%If date < cDate("6-07-2017") Then%>
				<li>
					<h3><strong>PACER PRESENTS TOP INTERNATIONAL  DYSLEXIA EXPERTS JUNE 7</strong></h3>
					<p>Don&rsquo;t  miss &ldquo;The Paradox of Dyslexia&rdquo;, featuring Sally E. Shaywitz, M.D., and Bennett  A. Shaywitz, M.D., co-directors of the Yale Center for Dyslexia and Creativity.  Drs. Shaywitz and Shaywitz are internationally recognized as the leading  experts on dyslexia. The symposium will be on June 7 from 7:00 – 9:00 p.m. at  Oak Grove Middle School, 1300 W 106th St, Bloomington. </p>
					<p style="font-size: 1.1em;"><strong>Registration is Full</strong></p>
					<p>You can <a href="/newsletters/enews/subscribe.asp">Sign Up for email notifications</a> if you would like to receive advanced notification of future PACER Events.</p> 				
					</li>

<%End If%>	

						
				
								
																
					<%If DateDiff("n", Now, cDate("1-28-2016 12:01 AM")) < 0 And DateDiff("n", Now, cDate("7-10-2017 11:59 PM")) > 0 Then %>
					<li> <img style="border-radius: 8px;" src="/stc/exite/images/2009/thumbnails/exite_2009_medtronic_IMG006%20copy.jpg" alt="" width="150" height="113" class="fltrt" />
						<h3 style="font-weight:normal; font-family:Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif"><strong>EX.I.T.E. Summer Camp for Girls</strong> <br />
							<span style="font-size:.9em; color:#323232">(<strong>EX</strong>ploring <strong>I</strong>nterests in <strong><br />
							T</strong>echnology and <strong>E</strong>ngineering)</span></h3>
						<ul>
							<!--<li style="color:red"><strong>Last chance to get your Applications in!</strong></li>-->
							<li>Application deadline: extended to July 10<sup>th</sup></li>
							<li>A<strong> 5-Day Camp</strong> in August for middle school girls (6th-9th grades) with disabilities.</li>
							<li><strong>It's FREE</strong>, <a href="/stc/exite/Camp.asp">Learn More and Register Now<span class="extralinktext"> about EXITE Camp</span></a></li>
						</ul>
					</li>
					<%End If%>
					
					<%If DateDiff("n", Now, cDate("4-6-2017 2:00 PM")) > 0 Then %>

						<li> <img src="/transition/images/april-6-webinar.jpg" alt="" width="100%" />
							<p>Join PACER and Think College for this April 6th webinar to learn how and   when to start planning for college; utilizing 529 College Savings   Plans, ABLE Accounts, gifts, and other savings options; government   programs that can help with college costs; and financial aid options   such as scholarships, grants, work study and loans.</p>
							<p> <a href="https://events-na6.adobeconnect.com/content/connect/c1/839220836/en/events/event/private/1017458897/1378465648/event_registration.html?sco-id=1378867298&amp;_charset_=utf-8" target="_blank">Register for the webinar  <span class="fa fa-external-link" aria-hidden="true"></span></a></p>
						</li>
					<%End If%>
<li><img style="width: 100%; height: auto;" src="/stc/images/SpecialNeeds-FBGroup-Banner.jpg" alt="" />
						<p><span class="fa fa-facebook-square"></span> <a href="https://www.facebook.com/groups/863267887136492/" target="_blank">Facebook Buy &amp; Sell Group - MN Special Needs Equipment for Sale <span class="fa fa-external-link"></span></a></p>
						<p>Find equipment and assistive technology after its initial use. Items such as, communication devices, walkers, adaptive switches and toys, motorized cars (that can be adapted), adapted keyboards, etc. Join Today!</p>
					</li>
					
					
					
					
					<%If DateDiff("n", Now, cDate("9-17-2016 2:00 PM")) > 0 Then %>
					<li>
						<h3>Join Us &mdash; Family Fun Day &amp; Tech Expo!</h3>
						<p><img class="fltrt" src="/images/homenews-sml/stc-superhero.png" width="141" height="140" alt=""/> <strong>Saturday, Sept. 17<sup>th</sup></strong><br />
							10 a.m. to 2 p.m.</p>
						<ul>
							<li>Enjoy interacting with a variety of devices for children, teens, and adults</li>
							<li>Attend mini sessions to see iPad app demonstrations</li>
							<li>Get creative with accessible art and do-it-yourself technology</li>
							<li>Learn about PACER&rsquo;s resources, and more</li>
							<li>Rain or Shine &mdash; We have you covered!</li>
						</ul>
						<p><a href="http://www.pacer.org/forms/workshops.asp?wksp=FF23298D-5255-4EFC-A502-7B2B162F9426">Advanced Registration is Required - Sign Up Now.</a></p>
					</li>
					<%End If%>
					<%If DateDiff("n", Now, cDate("10-1-2016 11:00 AM")) > 0 Then %>
					<li>
						<div class="centered"><img src="/bullying/nbpm/runwalkroll/images/RWRGraphicHorizontalReverse-515w.png" alt="" width="333" height="32" /></div>
						<h3><a href="/bullying/nbpm/runwalkroll/">Register today</a> for the Friends of PACER's Annual Run, Walk, Roll Against Bullying</h3>
						<p align="left"><img style="border-radius:63px;" src="/bullying/nbpm/runwalkroll/images/tieshoe.jpg" alt="" width="125" height="125" class="fltrt" /><strong> When: <br />
							</strong>Saturday, Oct. 01, 2016</p>
						<p><strong>Where: <br />
							</strong>Mt. Normandale Lake &ndash; Bloomington, MN (494 &amp; Hwy 100)</p>
						<p><strong> Events:</strong></p>
						<table cellpadding="5">
							<tr>
								<td width="80" valign="top">9:00 a.m.</td>
								<td valign="top">â€“</td>
								<td>Registration/ Race packet pick up</td>
							</tr>
							<tr>
								<td width="80" valign="top">10:00 a.m.</td>
								<td valign="top">â€“</td>
								<td>4 Mile Run</td>
							</tr>
							<tr>
								<td width="80" valign="top">10:00 a.m.</td>
								<td valign="top">â€“</td>
								<td>2 Mile Fun Walk/Roll</td>
							</tr>
							<tr>
								<td width="80" valign="top">10:45 a.m.</td>
								<td valign="top">â€“</td>
								<td>Activities, guest speakers, performances, prizes, &amp; more!</td>
							</tr>
						</table>
						<p> <strong>Entry Fee:</strong><br />
							Children 6 and under: Free<br />
							7-15 years old: $10.00<br />
							All others: $20.00 </p>
					</li>
					<%End If%>
					<%If date < cDate("11-09-2016") Then%>
					<li class="wide">
						<div class="centered"><a href="http://www.catinhat4prez.com/" target="_blank"><img src="/bullying/images/cat-in-hat-banner-310w.jpg" alt="Cat in the Hat - I'd Vote For That Campaign" width="310" height="115"/></a></div>
						<h3>Make your voice heard! <br />
							Vote for Kindness to All.</h3>
						<p>The Cat in the Hat, in his Presidential campaign, will represent all that Dr. Seuss believed about children &mdash; that they have the intellect, imagination and power to impact our world positively, while also having fun doing so. The Cat in the Hat wants to show kids that every vote counts, and every voice matters. On the ballot are his supporters and their causes, including <strong>&ldquo;kindness for all&rdquo; sponsored by PACER&rsquo;s National Bullying Prevention Center</strong>. The organization with the most votes receives a $10,000 donation. </p>
						<p><a href="http://www.catinhat4prez.com/" target="_blank">Vote for KINDNESS TO ALL </a></p>
					</li>
					<%End If%>
					
<%If date < cDate("5-13-2017") Then%>
<li class="left_topic"> <img class="centered" src="/cmh/images/babble/babble-logo.png" alt="Babble - courtesy of Disney" width="300" height="97" />
						<h3>How &ldquo;Fidget Toys&rdquo; Are Helping Kids with ADHD</h3>
						<p>From tiny cubed toys to squishy, textured balls, there are   lots of new tools out there to help kids concentrate — and they're   actually fun.						</p>
						<p><a href="https://www.babble.com/parenting/how-fidget-toys-are-helping-kids-with-adhd/" target="_blank">Read More  <span class="fa fa-external-link"></span></a></p>
						<p>by <a href="/cmh/">PACER's Children's Mental Health and Emotional or Behavioral Disorders Project</a></p>
					</li>

<%End If%>
					
					<li>
						<h3>The Center on Technology and Disability<br />
							helps parents explore assistive technology online</h3>
						<div id="bio">
							<p align="left"><img src="/images/homePage/CTD-logo.jpg" alt="ctdinstitute.org" width="200" height="146" class="fltrt" border="0" /></p>
							<p>PACER Center has partnered with the Center on Technology and Disability (CTD) to offer parents a variety of high-quality resources on assistive technology, including webinars, an online library, and Elearning courses. Learn more at <a href="http://www.ctdinstitute.org" target="_blank">ctdinstitute.org</a> and sign up for <a href="http://visitor.r20.constantcontact.com/manage/optin?v=001tcKNsqXWVc7IAuoknwUv0EPXzF6sW-Fwso5Q1K8svmzjrELVMoTIPos627QA24hEjHdVSmneBapS04VQGcOMba0GrzBUGSaM1Z2B4HYzUWhml3sTtmq8fp13VzDuTTkCoN8sHVrkM6D961TWxFLu-N6ur8AfzUK7" target="_blank">CTD updates</a> to learn about upcoming events.</p>
						</div>
					</li>
					<%If DateDiff("n", Now, cDate("2-13-2016 11:55 PM")) > 0 Then %>
					<li>
						<h3>Project KITE Applications for Spring 2016 are now being accepted!</h3>
						<p> A Free assistive technology training and coaching program for parents and educators designed to increase the independence and inclusion of young learners with disabilities. </p>
						<p><a href="/stc/kite/">Learn More and Apply Online Today</a></p>
						<p><strong>Application deadline is Monday, Februay 22, 2016</strong></p>
					</li>
					<%End If%>
					<%If DateDiff("n", Now, cDate("2-26-2016 3:00 PM")) > 0 Then %>
					<li>
						<h3>Register your child for the Creative Kids Art Contest</h3>
						<p><strong>Saturday, February, 27th 2016 from 10 a.m. - 12 p.m.</strong></p>
						<p><img class="fltrt" src="/images/homenews-sml/Creative-Kids-pic3-sml.jpg" width="108" height="153" alt=""/>Kids will use their imaginations and express themselves through various mediums and vibrant colors. Their artwork will be entered into the Creative Kids Contest and the winner will become the cover design of the PACER Greeting Card</p>
						<p><a href="/help/creativeKids/creativekidscontest.asp">Learn More</a></p>
					</li>
					<%End If%>
					
					<!--
<%
'<li class="wide">
'<img src="/EAPlaytoGive/images/EA_Play_To_Give-300w.png" alt="EA Play to Give" width="100%" />
'	<p><strong>EA PARTNERS WITH PACER&rsquo;s NATIONAL BULLYING PREVENTION CENTER WITH  &ldquo;PLAY TO GIVE&rdquo;</strong> <br />
'		<em>EA&rsquo;s Play to Give program promoting in-game challenges and donation  to charitable partners</em></p>
'	<p>Through <a href="https://www.ea.com/eaplay2017/play-to-give" target="_blank">Play to Give <span class="fa fa-external-link" aria-hidden="true"></span></a>, EA celebrates  the importance of inclusion and play and the positive connections it makes for  all the diverse players around the world. With millions of hours spent in play  every day, games are a powerful platform for creating positive, inclusive  connections. <a href="http://www.pacer.org/eaplaytogive/">You can support the cause too</a>.</p>
'	  </li>

'					<li>
'						<div style="text-align:center"> <a href="http://togetheragainst.org/"> <img src="/images/homePage/tag-banner.jpg" alt="Together Against Bullying" style="width:100%; border:1px solid #ccc" /></a> </div>
'						<p>We are excited to announce the launch of our newest campaign for PACER's National Bullying Prevention Center </p>
'						<ul>
'							<li style="border-bottom:none">Go to: <a href="http://togetheragainst.org/" target="_blank">TogetherAgainst.org</a>.</li>
'							<li style="border-bottom:none">Make a donation  (when you do you get virtual and real stickers).</li>
'							<li style="border-bottom:none">TAG friends, family and coworkers and share on social media using the hashtags <a href="https://www.facebook.com/hashtag/togetheragainst?source=feed_text&story_id=10153677828561941" target="_blank">?#TogetherAgainst</a> and <a href="https://www.facebook.com/hashtag/tagitforward?source=feed_text&story_id=10153677828561941" target="_blank">?#TagItForward</a>.</li>
'						</ul>
'						<p><strong>TAG, you're it!</strong></p>
'					</li>


'<li><a href="/benefit/"><img src="/benefit/2017/images/Bennefit-banner-503w.jpg" style="width: 100%; height: auto;" alt="Purchase Tickets Today for PACER's Annual Benefit"/></a>
'<h3>May 13, 2017: Jay Leno Performing at PACER&rsquo;s Annual Benefit, 
'Presented By Starkey Hearing Technologies
'</h3>
'<p class="centered"><a class="btn btn-blue" href="/benefit/">Tickets On Sale Now!</a></p>
'<div id="bio">
' <p>LAUGH WITH A LEGEND! The   Emmy Award-winning comedian, late-night talk show host and star of   CNBC&rsquo;s &ldquo;Jay Leno&rsquo;s Garage&rdquo; will bring his legendary act to the   Minneapolis Convention Center to support PACER Center programs.</p>
'</div>
'</li>

'<li style="min-height: 235px;">
'<h3>Registration Now Open for the 2017 Creative Kids Art Contest</h3>
'<p><strong>Saturday, February 25<sup>th</sup> 10a.m. - 12p.m.</strong></p>
'<p><img src="/help/creativeKids/images/Creative-Kids-pic1.jpg" alt="" width="120" height="160" class="fltrt" style="padding-bottom: 10px;" />Children with disabilities and their families are invited to join PACER   for a morning of creativity, fun, and exploration around the themes of   unity, inclusion, kindness and friendship. Kids will use their   imaginations to express themselves through various mediums and vibrant   colors.</p>
'<p><a href="/help/creativeKids/creativekidscontest.asp">Register Today<span class="extralinktext"> for the creative kids contest</span></a>
'</li>


					
'<li> <img src="/cmh/images/ebd-fb.jpg" alt="" width="100%" />
'						<h3>Does My Child Have an Emotional or Behavioral Disorder?</h3>
'						<p>What to Look for: Among all the dilemmas facing a parent of a child with emotional or behavioral problems, the first question-whether the child's behavior is sufficiently different to require a comprehensive evaluation by professionals-may be the most troublesome of all. Even when a child exhibits negative behaviors, members of a family may not all agree on whether the behaviors are serious. For instance, children who have frequent, severe temper outbursts or who destroy toys may appear to have a serious problem to some parents, while others see the same behavior as asserting independence or showing leadership skills.</p>
'						<p><a href="/cmh/does-my-child-have-an-emotional-or-behavioral-disorder/">Read More</a></p>
'					</li>

'<li class="wide">
'						<h3><a href="/bullying/classroom/elementary/team-rudolph/"> <img src="/bullying/classroom/elementary/team-rudolph/images/logo.jpg" alt="" width="100%" style="height: auto !important" /> New! FREE Teacher Toolkit - T.E.A.M. Rudolph and the Reindeer Games</a></h3>
'						<p> â€œT.E.A.M. Rudolph and the Reindeer Gamesâ€ reveals the untold story of how the Reindeer Games became a celebration of acceptance and diversity. Register for the resources of the free toolkit to access video streaming of the picture book, classroom activity guide and streaming music.</p>
'					</li>

'<li>	<a href="/raiseaglass/" ><img class="centered"src="/raiseaglass/images/raiseAGlass.jpg" alt="" width="316" height="360" /></a>
'	<p>Join us at Surly Brewing Co. in Minneapolis on <strong>Wednesday, Nov. 30 at 6   p.m.</strong><strong> </strong>for a fun evening that supports PACER&rsquo;s projects! This year&rsquo;s   event features tiered tickets, one of which includes a 30-minute tour of   Surly&rsquo;s facilities so you can see first-hand how their beer is made. <a href="/raiseaglass/">Buy tickets</a></p>
'</li>

'<li class="wide">
'	<h3>A Special Opportunity to See the New STAR WARS â€œRogue One: A Star Wars Storyâ€ Before itâ€™s Released to the Public!</h3>
'	<p> <img src="/newsletters/eblast/images/EventHeader_WILLOWCREEK.jpg" width="100%" alt=""/></p>
'	<p>Grand Opening Event and Cocktail Party at the newly remodeled Willow Creek Theater in Plymouth on <strong>Thursday, December 15<sup>th</sup></strong></p>
'	<p>The new owner, Emagine Entertainment, has chosen PACER as their non-profit  partner for this exciting event which means all proceeds from ticket sales will  come to PACER Center.</p>
'	<p>	  Tickets <em style="font-size: .8em;">($100 each)</em> include a  pre-movie cocktail party at the theater with food, beer, wine, and valet  parking before the amazing opportunity to see the new Star Wars move &ldquo;Rogue  One: A Star Wars Story&rdquo; a day before it opens to the public!</p>
'	<p><a href="https://pacer.ejoinme.org/MyPages/WillowCreekTheaterTickets/tabid/822271/Default.aspx" target="_blank">Get your tickets before they sell out! <span class="fa fa-external-link"></span></a></p>
'</li>
' <li>
'<div id="header-image" style="text-align:center"><a href="/help/symposium/"><img src="/help/symposium/2016/images/symposium-banner-700w.png" alt="Register Now for the PACER Symposium about children and young adults with mental health and learning disabilities." width="100%" style="height:auto;" /></a></div>
'<h3>Register Now for the PACER Symposium about Children &amp; Young Adults with Mental Health &amp; Learning Disabilities</h3>
'<p>Tuesday, August 9<sup>th</sup></p>
'<p>Outstanding learning opportunity for general education teachers, administrators and parents interested in understanding more about mental health and learning disabilities in children and young adults. </p>
'<p><a href="/help/symposium/">Register Now</a></p>
'</li>



'<li>
'	<div style="text-align:center">
'		<a href="http://togetheragainst.org/"> <img src="/images/homePage/tag-banner.jpg" alt="" style="width:100%; border:1px solid #ccc" /></a>
'	</div>
'	<p>We are excited to announce the launch of our newest campaign for PACER's National Bullying Prevention Center (NBPC): Together Against Bullying (TAG), inspired by Carrot Top! TAG is a campaign to help put an end to bullying and support the more than 13 million students who are bullied each year.</p>
'	<p>To play TAG:
'	<ul>
'		<li style="border-bottom:none">Go to: <a href="http://togetheragainst.org/" target="_blank">TogetherAgainst.org</a>.</li>
'		<li style="border-bottom:none">Make a donation of any size (when you do you get virtual and real stickers).</li>
'		<li style="border-bottom:none">TAG friends, family and coworkers and share on social media, such as Facebook, Twitter, and Instagram, using the hashtags <a href="https://www.facebook.com/hashtag/togetheragainst?source=feed_text&story_id=10153677828561941" target="_blank">?#TogetherAgainst</a> and <a href="https://www.facebook.com/hashtag/tagitforward?source=feed_text&story_id=10153677828561941" target="_blank">?#TagItForward</a>.</li>
'	</ul>
'	<strong>TAG, you're it!</strong></p>
'</li>

'<li> <a href="/transition/"><img src="/images/homenews-sml/transition-announcement.jpg" width="100%" alt="New Website - PACER's National Parent Center on Transition and Employment.  Check It Out!"/></a>
'  <p>The road to adulthood for youth with disabilities is filled with opportunity, and parents play a key role. PACERâ€™s National Parent Center on Transition and Employment is ready with the information families want, presented in a way families can use.</p>
'</li>

'<li>
'<p><strong>You are Braver, Stronger and Smarter Than You Think</strong></p>
'<div style="text-align:center">
'	<a href="http://www.pacer.org/bullying/video/player.asp?video=81"> <img src="images/homenews-sml/disney-psa-link.jpg" alt="" style="width:100%" /></a>
'</div>
'<p>Have you ever felt like the whispers, giggles, note passing, and looks were directed at you or someone you care about? Imagine if all that attention was channeled into positive action. Disney is supporting PACERâ€™s National Bullying Prevention Center in hopes of inspiring social change among young people everywhere. Visit <a href="http://www.pacer.org/bullying" target="_blank">PACER's National Bullying Prevention Center</a>.</p>
'</li>

'<li>
'  <div style="text-align:center"><img src="/newsletters/eblast/images/nordstrom/email-banner.jpg" alt="" width="100%" /></div>
'  <p><strong>The Nordstrom Ridgedale Gala is sold out</strong> â€“ thank you for  your incredible support of this event! All proceeds will benefit signature  projects of PACER Center and Children&rsquo;s Hospitals and Clinics of Minnesota.</p>
'  <p style="color:#E87D17; font-weight:bold">You Are Invited</p>
'  <p><strong>Celebrate the Nordstrom  Ridgedale Opening Day on Friday, October 2!</strong></p>
'  <p><strong>Beauty Bash</strong><br />
'    8-10 AM<br />
'    Get the scoop on new beauty  trends, free consultations, sips and snacks, and a special gift (for the first  1,000 customers there). </p>
'  <p><strong>Opening Day</strong><br />
'    10 AM<br />
'  <strong>New Nordstrom opens!</strong>&nbsp;Come check it out, celebrate, and shop the season's best  styles.</p>
'</li>





'<li>
'	<div id="pauladelman">
'		<h3>New in the STC Library<a href="http://www.pacer.org/stc/library/PaulAdelman.asp"><img class="fltrt" src="http://www.pacer.org/stc/library/images/vgo_sml.jpg" alt="VGo Robot" height="207" width="59" /></a></h3>
'		<p>PACER&rsquo;s Simon Technology Center is thrilled to add  some new,  cutting edge technology. </p>
'		<ul>
'			<li>VGo Robot</li>
'			<li>UbiDuo Wireless Face to Face Communicator</li>
'			<li>Tobii Eye Mobile. </li>
'		</ul>
'		<p><a href="http://www.pacer.org/stc/library/PaulAdelman.asp">Check Them Out!</a></p>
'	</div>
'</li>

'<li>
'	<h3><strong>&ldquo;EZ AT 2&rdquo; iBook now available at iTunes Store</strong></h3>
'	<p> <a href="https://itunes.apple.com/us/book/ez-at-2/id781912747?mt=11" target="_blank"><img class="fltrt" src="/images/homenews-sml/EzAt2_thumb.jpg" width="84" height="106" alt=""/></a>PACER&rsquo;s popular &ldquo;EZ AT 2&rdquo; book is now available in an iBooks edition. Complete with video, picture examples, an interactive glossary, and the full support of iPad&rsquo;s built-in accessibility features, &ldquo;EZ AT 2&rdquo; brings creative ideas to life to help children ages birth to 3 with disabilities use assistive technology (AT) to participate more fully in daily routines and activities. Designed for newer generation iPads, the &ldquo;EZ AT 2&rdquo; iBooks edition can be downloaded <strong>free</strong> at the <a href="https://itunes.apple.com/us/book/ez-at-2/id781912747?mt=11" target="_blank">iTunes store</a>. </p>
'</li>

'<li>
'	<h3 class="fIcon fNewsfeed"><a href="https://www.groupon.com/coupons" target="_blank"><img src="/images/homenews-sml/groupon_green_logo.gif" width="156" height="35" alt=""/><br />Shop with Groupon Coupons </a></h3>
' <p>  When you shop online at Groupon Coupon on <strong>Wed., Nov. 12<sup>th</sup></strong>&nbsp;you are supporting PACER&rsquo;s National Bullying Prevention Center. Groupon Coupons offers codes to reduce the price of your purchases. Shop, save, and support! </p>
'</li>


'<li>
'<h3><span style="color:#DD770D">Upcoming Webinar</span> - Practical Tips: Working Effectively with Culturally Diverse Families of Children Needing Mental Health Support</h3>
'<div id="titlewrapper">
'	<p><img class="fltrt" src="/webinars/images/Laptop_clip_sml.png" width="90" height="90" alt=""/>Date: Tuesday, June 24, 2014</p>
'	<p>Time: 1:00 p.m. to 2:30 p.m. CDT</p>
'</div>
'<p>Description:</p>
'<p>This webinar is designed for educators,  administrators, social workers, children's mental health providers and  any other professionals working with culturally diverse families and  their children with mental health needs. Culture is embodied in the  ordinary things we do- how we speak, greet parents, organize a meeting,  or provide a service. When important belief systems are breached,  providers run the risk of offending the family. This presentation given  by a unique panel of parents who are also advocates and experts in  diversity, will suggest strategies they have found to be effective for  building collaboration with families.</p>
'<p class="centered"><a href="https://www2.gotomeeting.com/register/617425258"><img src="/webinars/images/register-button.png" width="200" height="44" alt="Register"/></a></p>
'</li>


'<li>
'<h3>PACER Day at the Capitol: â€œBe A Championâ€</h3>
'<img src="/newsletters/eblast/images/MinnCapitol.jpg" width="240" height="135" class="centered" />
'<p>Parents of children with disabilities will have their voices heard in  St. Paul, Minn., on &lsquo;PACER Day at the Capitol&rsquo;<strong> Thursday, March 13</strong>.  Participants will attend a dynamic workshop led by advocacy and  education leaders and legislators to hear about potential legislation  affecting special education, education funding, school discipline,  mental health, and bullying prevention.</p>
'<p>Parents will learn how to effectively share their stories, and enjoy a pizza lunch before meeting with their state legislators.</p>
'<p><a href="http://www.pacer.org/forms/workshops.asp?wksp=17B5F8DD-F6F2-4D0A-82D8-38CB8276E97A" target="_blank">Register for this event</a></p>
'</li>


'<li>
'<h3>Family Fun Day &amp; Open House</h3>
'<p style="font-weight:bold;">Date: Saturday, September 21, 2013</p>
'<p><img class="fltrt" src="/images/homenews-sml/familyfunday.jpg" width="110" height="131" alt="" />Join PACERâ€™s Simon Technology Center for the free Family Fun Day &amp; Open House and discover the latest in assistive technology (AT) with an emphasis on early childhood. Donâ€™t miss the new mobile technology station, one of several exciting additions for 2013, along with â€˜Ask an Advocate,â€™ and do-it-yourself AT. Children can play with a parachute, tie-dye T-shirts, dress up in costume at the photo booth, get creative with adaptive art, or relax in the hang out room with various sensory objects. Families can tour the center to learn about new technology for education and recreation, and explore mobile technology and apps for the iPhone, iPad, iPad Mini, iPod, Android devices, Windows tablets, and various accessories designed to assist individuals with disabilities. The event includes door prizes and light refreshments. Registration is required.</p>
'<p><a href="/forms/workshops.asp?wksp=588C8559-A90C-4B75-80ED-4451D7EE6054">Register for this event</a></p>
'</li>


'<li>
'<h3><a href="http://centerononlinelearning.org/" target="_blank"><img class="centered" src="/images/homenews-sml/COLSD-Logo.png" width="251" height="100" alt="Center on Online Learning and Students with Disabilities" /></a></h3>
'<p>Your help can make a difference. Does your child use online learning for some or all of their education? Are you a resident of Minnesota? If so, complete this short survey so schools and online providers can learn what's working and not working in online learning. </p>
'<p><a href="http://research.zarca.com/k/UQsUYRVsWQsPsPsP" target="_blank">Complete the Survey</a></p>
'	
'</li>

'<li>
'<h3>Now available - 2013 Creative Kids Cards</h3>
'<div class="centered"><img src="/help/creativeKids/images/2013/creativecardfront-sml.jpg" alt="" width="150" height="121" /></div>
'<p>The cards are a standard 4 Â½ x 6 Â¼ note card size, and <strong>include 8 cards per box</strong> with accompanying envelopes. All proceeds from the sale of the cards benefit PACER programs. <a href="/help/creativeKids/creative2013.asp">Order your set today.</a></p>
'
'</li>



'<li>
'	<h3><strong>Parents: Join the conversation on PACER&rsquo;s new blog!</strong></h3>
'	<p>Parents willing to share advice as well as learn from other parents of children with disabilities are encouraged to check out PACER&rsquo;s new <a href="http://pacerparentstalk.blogspot.com/" target="_blank">ParentsTalk blog</a>. PACER&rsquo;s advocates post weekly topics that allow parents to share their knowledge and join a conversation with others. </p>
'</li>



'<li>
'<h3>Receive Health related text message alerts</h3>
'Receive text message alerts from PACER&rsquo;s Family-to-Family Health Information Center, including Medical Assistance renewal reminders, new health publications, and other helpful tips.
' 	<p style="text-align:right"><a href="/health/updates-via-text-message.asp">More Information</a></p>
'</li>
'
'
'<li>
' <h3>PACER Center&rsquo;s &ldquo;Hidden Treasure&rdquo; video wins prestigious Telly Award</h3>
'<p><img class="fltrt" style="margin-bottom:5px;" src="/images/homenews-sml/Telly-Award-logo.png" width="126" height="109" alt="" />A PACER Center video about children with disabilities and how appropriate services and education can help uncover their talents and skills has won a prestigious Telly Award. &ldquo;Hidden Treasure,&rdquo; which debuted at PACER Center&rsquo;s 30th Annual Benefit on May 5, was a Bronze Winner in the 33rd Annual Telly Awards, Charitable/Not-for-Profit category. This widely known and highly respected national and international competition receives more than 12,000 entries annually from all 50 states and many other countries. <a href="http://www.youtube.com/watch?v=07NBtx3s6VU" target="_blank">View the video here.</a></p>
'</li>

%>
-->
					<li style="padding-bottom:15px;">
						<h3><img class="fltrt" src="/newsletters/images/enews.jpg" width="84" height="100" alt="" />Stay Informed</h3>
						<p>Sign up for the<a href="/newsletters/enews/"> PACER E-News</a> where you can get monthly updates by email.</p>
						<p class="centered" style="clear: right;"><a class="btn btn-cta" href="/newsletters/enews/subscribe.asp">Sign Up Today!</a></p>
					</li>
				</ul>
				<!-- ################################### End Feature Section #############################-->
				
				<% If not rsnews.EOF Then%>
				<div id="newswrapper">
					<h2>In The News</h2>
					<div id="newsitems">
						<% 
	Dim itemCount, addClass
	itemCount = 0
	addClass = ""
	While NOT rsNews.EOF
	%>
						<div id="newsitem<%=itemCount%>"<%=addClass%>>
							<h3 class="<%=rsNews("type")%>" id="nw<%=rsNews("ID")%>"><%=rsNews("heading")%></h3>
							<%If Len(rsNews("story_image")) > 0 Then%>
							<img src="<%=rsNews("story_image")%>" width="100" alt="" class="fltrt" style="margin-bottom:10px;" />
							<%End If%>
							<p class="date">Posted: <%=FormatDateTime(rsNews("posted_date"), 2)%></p>
							<%
		 
	 If Len(rsNews("blurb").Value) > 0 Then
		Response.Write(rsNews("blurb"))
	 ElseIf Len(rsNews("long_blurb")) > 0 Then
		Response.Write(rsNews("long_blurb"))		 
	 End If
		 %>
						</div>
						<!--close newsitem-->
						<%
	 addClass = " class=""hide"""
	 addClass = ""
	 itemCount = itemCount + 1
	 rsNews.MoveNext
	Wend
	%>
					</div>
					<!--close newsitems--> 
					
				</div>
				<!--close newswrapper-->
				<div class="rightlink"><a href="/newsandevents/">More News</a></div>
				<%End If%>
				<div id="adSpace">
					<h2>Help Support PACER</h2>
					<ul>
						<li>
							<h3><img class="fltrt" style="margin-bottom:5px;" src="/images/homenews-sml/survey-monkey.png" width="50" height="33" alt="" />Join Survey Monkey Contribute today!</h3>
							<p>PACER is excited to announce our partnership with <a href="https://contribute.surveymonkey.com/charity/pacer" target="_blank">SurveyMonkey Contribute</a> and a new way for anyone to support PACER programs! Sign up and you will receive surveys by e-mail from SurveyMonkey customers who need your opinion. For every survey you take, SurveyMonkey will donate $0.50 to PACER, and you'll get a chance to win $100 in an instant-win game. </p>
						</li>
						<li> </li>
					</ul>
					<div id="pageextender" style="clear:both">&nbsp;</div>
				</div>
				<div class="colextender" style="clear:both">&nbsp;</div>
			</div>
			<!--close featured-->
			
			<div id="leftcols">
				<div id="slider">
					<div id="layerslider"> 
						<!--<%'----------------------------------- START LAYER SLIDER -------------------------------------- %> -->
						

						
						<div id="benefit2015" class="ls-layer">
							<div class="ls-s1" style="top:31px;">
								<iframe width="550" height="269" src="//www.youtube.com/embed/dgPoa2OccsE?rel=0" frameborder="0" allowfullscreen></iframe>
							</div>
							<div class="ls-s2" style="top: 0px; color:#fff; background:#000; padding:5px; text-align:left; width:637px;" rel="delayIn: 400; slidedirection: top; slideoutdirection:top;">Learn About PACER In: Go Leah Go</div>
						</div>
						<div id="Transition" class="ls-layer"> <img src="/images/homePage/sliderimages/transition/Bg-transition.jpg" alt="" width="550" height="300" class="ls-bg" rel="delayIn: 0;"/> <img src="/images/homePage/sliderimages/transition/L1-transition.png" alt="" width="550" height="300" class="ls-s1" rel="delayIn: 400; slidedirection: left;"/> <a href="http://www.pacer.org/transition/" class="ls-s2" rel="delayIn: 800; slidedirection: bottom;"> <img src="/images/homePage/sliderimages/transition/L2-transition.png" alt="PACERâ€™s National Parent Center on Transition and Employment provides quality information on transition for youth with disabilities in a format that useful to families, youth, and professionals." width="550" height="300" /> </a> </div>
						<div id="ChildrensMentalHealth" class="ls-layer"> <img src="/images/homePage/sliderimages/childrensMentalHealth/Bg-childrensMentalHealth.jpg" alt="" width="550" height="300" class="ls-bg" rel="delayIn: 0;"/> <img src="/images/homePage/sliderimages/childrensMentalHealth/L1-copy.png" alt="" width="550" height="300" class="ls-s1" rel="delayIn: 400; slidedirection: left;"/> <img src="/images/homePage/sliderimages/childrensMentalHealth/L2-copy.png" alt="" width="550" height="300" class="ls-s2" rel="delayIn: 800; slidedirection: left;"/> <a href="http://www.pacer.org/cmh/" class="ls-s3" rel="delayIn: 1200; slidedirection: left;"> <img src="/images/homePage/sliderimages/childrensMentalHealth/L3-copy.png" alt="Childrenâ€™s Mental Health and Emotional or Behavioral Disorders Project. Inspiring Opportunities." width="550" height="300" /> </a> </div>
<%
  
'	<div id="JayLeno2017" class="ls-layer">
'	<img src="/images/homePage/sliderimages/jayLeno/2017/Bg-JayLeno.jpg" alt="" width="550" height="300" class="ls-bg" rel="delayIn: 0;"/>    
'	<img src="/images/homePage/sliderimages/jayLeno/2017/L1-copy.png" alt="" width="550" height="300" class="ls-s1" rel="delayIn: 800; slidedirection: left;"/>  
'	<a href="http://www.pacer.org/benefit/" target="_self" class="ls-s2" rel="delayIn: 1600; slidedirection: bottom;">
'	<img src="/images/homePage/sliderimages/jayLeno/2017/L2-copy.png" alt="PACERâ€™s Annual Benefit May 13th, 2017 featuring Jay Leno" width="550" height="300" />
'	</a>   
'	</div>     
  
'  <div id="RWR2016" class="ls-layer">
'    	<img src="/images/homePage/sliderimages/runWalkRoll/2016/Bg-runWalkRoll2016.jpg" alt="" width="550" height="300" class="ls-bg" rel="delayIn: 0;"/>
'    	<img src="/images/homePage/sliderimages/runWalkRoll/2016/L1-copy1.png" alt="" width="550" height="300" class="ls-s1" rel="delayIn: 400; slidedirection: top;"/>
'    	<img src="/images/homePage/sliderimages/runWalkRoll/2016/L1-copy2.png" alt="" width="550" height="300" class="ls-s1" rel="delayIn: 800; slidedirection: right;"/>		   
'    <a href="http://www.pacer.org/bullying/nbpm/runwalkroll/" class="ls-s2" rel="delayIn: 1200; slidedirection: bottom;">
'    	<img src="/images/homePage/sliderimages/runWalkRoll/2016/L1-copy3.png" alt="PACERâ€™s 7th Annual Run Walk Roll Against Bullying. Saturday, October 1. 9 a.m. Mt. Normandale Lake." width="550" height="300" />
'    </a>       
'  </div>

'  <div id="IdinaMenzel" class="ls-layer">
'    	<img src="/images/homePage/sliderimages/idinaMenzel/Bg-idinaMenzel.jpg" alt="" width="550" height="300" class="ls-bg" rel="delayIn: 0;"/>    
'		<img src="/images/homePage/sliderimages/idinaMenzel/L1-copy.png" alt="" width="550" height="300" class="ls-s1" rel="delayIn: 800; slidedirection: right;"/>  
'    <a href="http://www.pacer.org/benefit/" target="_self" class="ls-s2" rel="delayIn: 1600; slidedirection: bottom;">
'	   	<img src="/images/homePage/sliderimages/idinaMenzel/L2-copy.png" alt="PACERâ€™s Annual Benefit April 30th, 2016. Performance by Idina Menzel." width="550" height="300" />
'    </a>   
'  </div>

'	<div id="RunWalkRoll2015" class="ls-layer">
'		<img src="/images/homePage/sliderimages/runWalkRoll/2015/Bg-runWalkRoll.jpg" alt="" width="550" height="300" class="ls-bg" rel="delayIn: 0;"/>
'		<img src="/images/homePage/sliderimages/runWalkRoll/2015/L1-copy1.png" alt="" width="550" height="300" class="ls-s1" rel="delayIn: 400; slidedirection: top;"/>
'			<a href="http://www.pacer.org/bullying/nbpm/runwalkroll/" target="_self" class="ls-s2" rel="delayIn: 800; slidedirection: bottom;">
'		<img src="/images/homePage/sliderimages/runWalkRoll/2015/L1-copy2.png" alt="You are invited to PACER's Run, Walk, Roll Against Bullying. October 5, 2015. Register Today." width="550" height="300"/>
'		</a>        
'	</div>

'  <div id="PacerReport2014" class="ls-layer">
'    <div class="ls-s1" style="top:31px;">
'			<iframe width="550" height="269" src="//www.youtube.com/embed/2X2eBN8LmW0" frameborder="0" allowfullscreen></iframe>    
'    </div>
'    <div class="ls-s2" style="top: 0px; color:#fff; background:#000; padding:5px; text-align:left; width:637px;" rel="delayIn: 400; slidedirection: top; slideoutdirection:top;">Learn About PACER In: The PACER Report</div>
'  </div> 

'  <div id="UnityDayShirt2014" class="ls-layer">
'    	<img src="/images/homePage/sliderimages/unityDayTshirt/2014/Bg-unityDayShirt.jpg" alt="" width="550" height="300" class="ls-bg" rel="delayIn: 0;"/>
'    	<img src="/images/homePage/sliderimages/unityDayTshirt/2014/L1-copy1.png" alt="" width="550" height="300" class="ls-s1" rel="delayIn: 400; slidedirection: left;"/>   
'    	<img src="/images/homePage/sliderimages/unityDayTshirt/2014/L1-image1.jpg" alt="" width="550" height="300" class="ls-s2" rel="delayIn: 800; slidedirection: right;"/>
'    <a href="http://www.customink.com/stopbullying" target="_blank" class="ls-s3" rel="delayIn: 1200; slidedirection: bottom;">
'    	<img src="/images/homePage/sliderimages/unityDayTshirt/2014/L1-copy2.png" alt="Wear the Official Unity Day Shirt!" width="550" height="300" />
'    </a>       
'  </div>

'  <div id="CrosbyStillsNashBenefit" class="ls-layer">
'    	<img src="/images/homePage/sliderimages/crosbyStillsNash/Bg-benefitThankYou.jpg" alt="" width="550" height="300" class="ls-bg" rel="delayIn: 0;"/>     
'    <a href="http://www.pacer.org/benefit/" target="_self" class="ls-s2" rel="delayIn: 400; slidedirection: right;">
'	   	<img src="/images/homePage/sliderimages/crosbyStillsNash/L3-copy.png" alt="Thank you for making PACERâ€™s 33rd Benefit a wonderful success!" width="550" height="300" />
'    </a>   
'  </div>

'  <div id="Symposium2014" class="ls-layer">
'    	<img src="/images/homePage/sliderimages/symposium/2014/Bg-Symposium2014.jpg" alt="" width="550" height="300" class="ls-bg" rel="delayIn: 0;"/>
'    <a href="/help/symposium/" target="_self" class="ls-s1" rel="delayIn: 400; slidedirection: bottom;">
'    	<img src="/images/homePage/sliderimages/symposium/2014/L1-copy.png" alt="Ninth Annual National Pacer Symposium" width="550" height="300" />
'    </a>   
'  </div> 

'  <div id="AppyHour" class="ls-layer">
'    	<img src="/images/homePage/sliderimages/simonTechnologyCenter/appyHour/Bg-AppyHour.jpg" alt="" width="550" height="300" class="ls-bg" rel="delayIn: 0;"/>     
'    	<img src="/images/homePage/sliderimages/simonTechnologyCenter/appyHour/L1-copy.png" alt="" width="550" height="300" class="ls-s1" rel="delayIn: 800; slidedirection: left;"/>
'    	<img src="/images/homePage/sliderimages/simonTechnologyCenter/appyHour/L2-copy.png" alt="" width="550" height="300" class="ls-s1" rel="delayIn: 1200; slidedirection: right;"/>
'    <a href="http://www.pacer.org/stc/library/" target="_self" class="ls-s3" rel="delayIn: 1600; slidedirection: right;">
'    	<img src="/images/homePage/sliderimages/simonTechnologyCenter/appyHour/L3-copy.png" alt="The Simon Technology Centerâ€™s Lending Library Presents Appy Hour. Saturday, July 26" width="550" height="300" />
'    </a>   
'  </div>


'  <div id="GiveMN2013" class="ls-layer">
'    	<img src="/images/homePage/sliderimages/giveMN/Bg-giveMN.jpg" alt="" width="550" height="300" class="ls-bg" rel="delayIn: 0;"/>     
'    	<img src="/images/homePage/sliderimages/giveMN/L1-copy.png" alt="" width="550" height="300" class="ls-s1" rel="delayIn: 400; slidedirection: right;"/>
'    <a href="http://givemn.razoo.com/story/Pacer-Center" target="_blank" class="ls-s2" rel="delayIn: 800; slidedirection: bottom;">
'    	<img src="/images/homePage/sliderimages/giveMN/L2-copy.png" alt="Give to the max day is November 14, 2013. Donate to PACER today through November 14." width="550" height="300" />
'    </a>   
'  </div>

'  <div id="UnityDay2013" class="ls-layer">
'    <div class="ls-s1" style="top:31px;">
'			<iframe width="550" height="261" src="http://www.youtube.com/embed/ySUWmRxI-34?rel=0" frameborder="0" allowfullscreen></iframe>    
'    </div>
'    <div class="ls-s2" style="top: 0px; color:#fff; background:#000; padding:5px; text-align:left; width:637px;" rel="delayIn: 400; slidedirection: top; slideoutdirection:top;">Video: Keegan Allen for Unity Day - Oct. 9th 2013</div>
'  </div>

'  <div id="DreamBigPromo" class="ls-layer">
'    <div class="ls-s1" style="top:31px;">
'			<iframe width="550" height="269" src="http://www.youtube.com/embed/2xbetUwFp-E?rel=0" frameborder="0" allowfullscreen></iframe>    
'    </div>
'    <div class="ls-s2" style="top: 0px; color:#fff; background:#000; padding:5px; text-align:left; width:637px;" rel="delayIn: 400; slidedirection: top; slideoutdirection:top;">Video: Dream Big!</div>
'  </div>
%>
						<%'---------------------------- END LAYER SLIDER ------------------------------------'%>
						<div id="ParentInformaionCenter" class="ls-layer"> <img class="ls-bg" rel="slidedirection: fade;" src="/images/homePage/sliderimages/parentInformationCenter/Bg-parentInfo.jpg" alt="" width="550" height="300" /> <img class="ls-s1" rel="delayIn: 400; slidedirection: left;" style="left:0px; top:0px;" src="/images/homePage/sliderimages/parentInformationCenter/L1-copy.png" alt="" width="550" height="300" /> <img class="ls-s2" rel="delayIn: 800; slidedirection: left;" style="left:0px; top:0px;" src="/images/homePage/sliderimages/parentInformationCenter/L2-copy.png" alt="" width="550" height="300" /> <a href="/parent/" target="_self" class="ls-s3" style="left:0px; top:0px;" rel="delayIn: 1200; slidedirection: left;"> <img src="/images/homePage/sliderimages/parentInformationCenter/L3-copy.png" width="550" height="300" alt="For more than 30 years, PACER has helped parents enhance the quality of life and expand opportunities for their children, including those with disabilities. Call 952-838-9000 to learn more." /> </a> </div>
						<div id="HowPACERHelps" class="ls-layer"> <img class="ls-bg" rel="slidedirection: fade;" src="/images/homePage/sliderimages/howPacerHelps/Bg-howPacerHelps.jpg" alt="" width="550" height="300" /> <img class="ls-s1" rel="delayIn: 400; slidedirection: left;" style="left:0px; top:0px;" src="/images/homePage/sliderimages/howPacerHelps/L1-copy.png" alt="" width="550" height="300" /> <img class="ls-s2" rel="delayIn: 800; slidedirection: left;" style="left:0px; top:0px;" src="/images/homePage/sliderimages/howPacerHelps/L2-copy.png" alt="" width="550" height="300" /> <a href="/about/howpacerhelps.asp" target="_self" class="ls-s3" style="left:0px; top:0px;" rel="delayIn: 1200; slidedirection: left;"> <img src="/images/homePage/sliderimages/howPacerHelps/L3-copy.png" width="550" height="300" alt="PACER provides individual assistance, workshops, publications and more to help families make decisions about education and other services for their child with disabilities. Learn more about PACER." /> </a> </div>
						<div id="HealthInformationCenter" class="ls-layer"> <img class="ls-bg" rel="slidedirection: fade;" src="/images/homePage/sliderimages/heathInformationCenter/Bg-healthInfo.jpg" alt="" width="550" height="300" /> <img class="ls-s1" rel="delayIn: 400; slidedirection: top;" style="left:0px; top:0px;" src="/images/homePage/sliderimages/heathInformationCenter/L1-copy.png" alt="" width="550" height="300" /> <img class="ls-s2" rel="delayIn: 1200; slidedirection: fade;" style="left:0px; top:0px;" src="/images/homePage/sliderimages/heathInformationCenter/L2-copy.png" alt="" width="550" height="300" /> <a href="/health/" target="_self" class="ls-s3" style="left:0px; top:0px;" rel="delayIn: 1600; slidedirection: bottom;"> <img src="/images/homePage/sliderimages/heathInformationCenter/L3-copy.png" width="550" height="300" alt="Parents of children with disabilities and special health care needs rely on this central resource for support, advocacy, and information about the health care system. Explore our resources." /> </a> </div>
						<div id="SimonTechnologyCenter" class="ls-layer"> <img class="ls-bg" rel="slidedirection: fade;" src="/images/homePage/sliderimages/simonTechnologyCenter/Bg-STC.jpg" alt="" width="550" height="300" /> <img class="ls-s1" rel="delayIn: 400; slidedirection: right;" style="left:0px; top:0px;" src="/images/homePage/sliderimages/simonTechnologyCenter/L1-copy.png" alt="" width="550" height="300" /> <img class="ls-s2" rel="delayIn: 800; slidedirection: right;" style="left:0px; top:0px;" src="/images/homePage/sliderimages/simonTechnologyCenter/L2-copy.png" alt="" width="550" height="300" /> <a href="/stc/" target="_self" class="ls-s3" style="left:0px; top:0px;" rel="delayIn: 1200; slidedirection: right;"> <img src="/images/homePage/sliderimages/simonTechnologyCenter/L3-copy.png" width="550" height="300" alt="PACER helps children and young adults with disabilities employ innovative assistive technology to enhance learning, work, and independence. Discover the latest Assistive Technology." /> </a> </div>
						<div id="Workshops" class="ls-layer"> <img class="ls-bg" rel="slidedirection: fade;" src="/images/homePage/sliderimages/workshopsAvailableAccrossTheState/Bg-workshops.jpg" alt="" width="550" height="300" /> <img class="ls-s1" rel="delayIn: 400; slidedirection: right;" style="left:0px; top:0px;" src="/images/homePage/sliderimages/workshopsAvailableAccrossTheState/L1-copy.png" alt="" width="550" height="300" /> <img class="ls-s2" rel="delayIn: 800; slidedirection: right;" style="left:0px; top:0px;" src="/images/homePage/sliderimages/workshopsAvailableAccrossTheState/L2-copy.png" alt="" width="550" height="300" /> <a href="/workshops/" target="_self" class="ls-s3" style="left:0px; top:0px;" rel="delayIn: 1200; slidedirection: right;"> <img src="/images/homePage/sliderimages/workshopsAvailableAccrossTheState/L3-copy.png" width="550" height="300" alt="PACER workshops help parents of children with disabilities and the professionals who serve them to learn more about the subjects that matter most. Find a workshop near you." /> </a> </div>
						<div id="EarlyChildhoodFamilyInformation" class="ls-layer"> <img class="ls-bg" rel="slidedirection: fade;" src="/images/homePage/sliderimages/earlyChildhoodFamilyInformation/Bg-earlyChildhood.jpg" alt="" width="550" height="300" /> <img class="ls-s1" rel="delayIn: 400; slidedirection: left;" style="left:0px; top:0px;" src="/images/homePage/sliderimages/earlyChildhoodFamilyInformation/L1-copy.png" alt="" width="550" height="300" /> <img class="ls-s2" rel="delayIn: 800; slidedirection: left;" style="left:0px; top:0px;" src="/images/homePage/sliderimages/earlyChildhoodFamilyInformation/L2-copy.png" alt="" width="550" height="300" /> <a href="/ec/" target="_self" class="ls-s3" style="left:0px; top:0px;" rel="delayIn: 1200; slidedirection: left;"> <img src="/images/homePage/sliderimages/earlyChildhoodFamilyInformation/L3-copy.png" width="550" height="300" alt="PACER gives parents of young children the confidence, knowledge, and skills they need to obtain the services their children deserve. More for children ages birth to 5." /> </a> </div>
						<div id="NationalBullyingPreventionCenter" class="ls-layer"> <img class="ls-bg" rel="slidedirection: fade;" src="/images/homePage/sliderimages/nationalBullyingPreventionCenter/Bg-NBPC.jpg" alt="" width="550" height="300" /> <img class="ls-s1" rel="delayIn: 400; slidedirection: right;" style="left:0px; top:0px;" src="/images/homePage/sliderimages/nationalBullyingPreventionCenter/L1-copy.png" alt="" width="550" height="300" /> <img class="ls-s2" rel="delayIn: 800; slidedirection: right;" style="left:0px; top:0px;" src="/images/homePage/sliderimages/nationalBullyingPreventionCenter/L2-copy.png" alt="" width="550" height="300" /> <a href="/bullying/" target="_self" class="ls-s3" style="left:0px; top:0px;" rel="delayIn: 1200; slidedirection: right;"> <img src="/images/homePage/sliderimages/nationalBullyingPreventionCenter/L3-copy.png" width="550" height="300" alt="PACER unites, engages, and educates communities nationwide to prevent bullying through the use of creative, relevant, interactive resources. The End of Bullying Begins with you!" /> </a> </div>
						<div id="pacerPuppets" class="ls-layer">
							<div class="ls-s1" style="top:34px;">
								<iframe width="550" height="269"  src="https://www.youtube.com/embed/vd64U11uul8?rel=0" frameborder="0" allowfullscreen></iframe>
							</div>
							<div class="ls-s2" style="top: 0px; color:#fff; background:#000; padding:5px; text-align:left; width:637px; font-size:.9em;" rel="delayIn: 400; slidedirection: top; slideoutdirection:top;">Video: PACER&rsquo;s Puppets Teach Children about Inclusion and Bullying </div>
						</div>
					</div>
					<!--close layerslider--> 
					
				</div>
				<!--close slider-->
				<div id="underslider">
					<div id="programs">
						<h3 style="display:block;width:15em; float:left">Categories / Programs</h3>
						<div class="rightlink"><a href="/pandr/proglist.asp">See All Programs</a></div>
						<div id="buttonwrap" style="clear:left;"> <a href="/parent/" title="Minnesota Parent Training and Information Center"><img src="/images/homePage/buttonimages/ParentInformationCenter.jpg" width="175" height="119" alt="Parent Information Center" /></a> <a href="/bullying/" title="National Bullying Prevention Center"><img src="/images/homePage/buttonimages/NBPC.jpg" width="175" height="119" alt="National Bullying Prevention Center" /></a> <a href="/transition/" title="National Parent Center on Transition and Employment"><img src="/images/homePage/buttonimages/transition.jpg" width="175" height="119" alt="National Parent Center on Transition and Employment" /></a> <a href="/cmh/" title="Children's Mental Health and Emotional or Behavioral Disorders Project"><img src="/images/homePage/buttonimages/ChildrensMentalHealth.jpg" width="175" height="119" alt="Children's Mental Health and Emotional or Behavioral Disorders Project" /></a> <a href="/stc/" title="Simon Technology Center"><img src="/images/homePage/buttonimages/SimonTechCenter.jpg" width="175" height="119" alt="Simon Technology Center" /></a> <a href="/health/" title="F2F Health Information Center"><img src="/images/homePage/buttonimages/HealthInfoCenter.jpg" width="175" height="119" alt="Health Information Center" /></a> <a href="/ec/" title="Early Childhood Family Information"><img src="/images/homePage/buttonimages/EarlyChildhood.jpg" width="175" height="119" alt="Early Childhood Family Information" /></a> <a href="/newsletters/" title="Newsletters"><img src="/images/homePage/buttonimages/NewsLetters.jpg" width="175" height="119" alt="Newsletters" /></a> <a href="/publications/" title="Publications"><img src="/images/homePage/buttonimages/Publications.jpg" width="175" height="119" alt="Publications" /></a>
							<%
'<a href="/benefit/" title="Pacer's Symposium on Mental Health and Learning Disabilities"><img src="/images/homePage/buttonimages/Benefit2015.jpg" width="175" height="119" alt="Pacer's Benefit - May 2 2014, featuring Crosby, Stills &amp; Nash" /></a>
'<a href="/help//symposium/" title="Pacer's Symposium on Mental Health and Learning Disabilities"><img src="/images/homePage/buttonimages/Symposium.jpg" width="175" height="119" alt="Pacer's Symposium on Mental Health and Learning Disabilities" /></a>



'<a href="/help//symposium/" title="Pacer's Symposium on Mental Health and Learning Disabilities"><img src="/images/homePage/buttonimages/Symposium.jpg" width="175" height="119" alt="Pacer's Symposium on Mental Health and Learning Disabilities" /></a>
%>
						</div>
					</div>
					<!--close programs-->
					<%If Not rs.EOF Then%>
					<div id="workshopswrapper">
						<p class="centered"><a class="btn btn-blue" href="/workshops/">Register for a Workshop / Live Stream Event</a></p>
						<h3>Upcoming Workshops</h3>
						<ul class="workshops">
							<%

		Dim wsDate
	Do Until rs.EOF
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
								<h4 class="wstitle"><%=wsTitle%></h4>
								<div class="wsdate">Date: <%=wsDate%> - <span style="font-weight:normal"><%=wsStartTime%> - <%=wsEndTime%></span></div>
								<div class="wslocation"> Location: <%=rs("workshop_location")%>
									<%If rs("workshop_streaming") = "yes" Then%>
										<span style="color: #246C00; font-weight: bold; font-size: 1.2em;">- also available via online streaming</span>
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
						<div class="rightlink"><a href="/workshops/">See All Workshops</a></div>
					</div>
					<!--close workshops-->
					<%End If%>
					<div id="adspaceleft" style="clear:right; padding-top:25px; min-height:85px;">
						<hr />
						<div id="amznCharityBanner" style="position: relative; width:250px; float:left; margin-left:10px; top:25px; ">
							<div><a href="http://smile.amazon.com/ch/41-1306304" target="_blank"><img src="https://d1ev1rt26nhnwq.cloudfront.net/ccmtblv2.png" alt="Shop AmazonSmile and Amazon will make a donation to PACER Center" width="250" id="banner" style="border-style: none;" /></a></div>
							<table style="position: absolute; text-align: center; width: 250px; top: 80px; height: 65px; vertical-align: middle;">
								<tbody>
									<tr>
										<td style="vertical-align: middle"><div style="max-height: 54px; overflow: hidden; padding-left: 10px; padding-right: 10px;"> <span style="font-family: Arial; font-size: 26px; line-height: 26px;" class="charityNameSpan">Pacer Center</span></div></td>
									</tr>
								</tbody>
							</table>
						</div>

						<%If date < cDate("6-1-2017") Then%>
							<div id="grubhub" style="font-size:.8em; margin:10px; width:280px; float:right;">
								<h3><a href="https://www.grubhub.com/lets-eat" target="_blank"><img class="centered" src="/images/sponsor-logos/grubhub-logo.gif" alt="Grubhub" width="203" height="76" /></a></h3>
								<p><strong>PACER Center supporter special.</strong> New customers can enter discount code: GRUBHUBPACER at checkout to save $10 off an order of $15 or more. <em>(Expires&nbsp;6/01/17)</em></p>
							</div>
						<%Else%>
							<div id="bestbuy"> 
								<a href="http://click.linksynergy.com/fs-bin/click?id=xx2azM9/2dk&subid=&offerid=338879.1&type=10&tmpid=13127&u1=atAd1&RD_PARM1=http%3A%2F%2Fwww.bestbuy.com%2Fsite%2Fhealth%2Fassistive-technology%2Fpcmcat325200050005.c%3Fid%3Dpcmcat325200050005" target="new"><img src="/images/promos/Pacer_assist_tech_250x250.jpg" alt="Shop Assistive Technology and Best Buy will make a donation to PACER Center" width="250" height="250" border="0" /> <img alt="" width="1" height="1" src="http://ad.linksynergy.com/fs-bin/show?id=xx2azM9/2dk&bids=338879.1&type=10" /> </a>
							</div>
						<%End If%>
					</div>
					<!--close adspaceleft-->
					
					<div id="additionalItems">
						<ul style="padding:10px; margin-top:267px; border-top:1px solid #ccc;">
							<li id="schooldisciplineguide" style="padding:5px; background:#F0F0F0; border-radius:8px; border:1px solid #C8C8C8;">
								<h3>Step by Step <a href="/school-discipline-information/">School Discipline Guide<br />
									<img style="padding-top:10px;" id="top-right-image" src="/school-discipline-information/images/disability-guide.jpg" alt="" width="100%" /></a></h3>
								<p>Parents of children with disabilities often ask:</p>
								<ul type="disc">
									<li>Can the school send my child home before the end of the school day?</li>
									<li>Can the school district suspend my child?</li>
									<li>Can the school district expel my child?</li>
									<li>What happens to my child&rsquo;s educational services if he or she is sent home, suspended, or expelled?</li>
								</ul>
								<p>This interactive guide will answer these and many other questions. Whether your child is on an Individualized Education Program (IEP) or a Section 504 Plan,  or if you suspect that your child has a disability that affects his or  her behavior at school, this guide will help you understand the  complex disciplinary process for Minnesota public school children with  disabilities.</p>
								<p class="centered"><a class="btn btn-cta btn-blue" style="text-transform:none;" href="/school-discipline-information/">Begin</a></p>
							</li>
						</ul>
					</div>
					<!-- close additionalitems--> 
					
				</div>
				<!--close underslider--> 
				
			</div>
			<!--close leftcols--> 
		</div>
		<!--close pagecontent--> 
		
	</div>
	<!--close maincontent--> 
	<!--#include virtual="/footer.htm"--> 
	
</div>
<!--close wrapper-->

</body>
</html>