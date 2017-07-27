<%
Dim regOpen, regClose, regCloseFinal, regWaitDate, regWait, registrationLink

registrationLink = "https://pacer.ejoinme.org/MyPages/Symposium2017"

regOpen = cDate("5/2/2017")
'regWaitDate = cDate("8/5/2012 11:59:00 PM")
regClose = cDate("8/14/2017 12:00:00 PM")
regCloseFinal = cDate("8/14/2017 4:30:00 PM")

If date >= regOpen Then
	regWait = "open"
End If
'If now > regWaitDate Then
'	regWait = "wait"
'End If
If DateDiff("n", Now, regClose) < 0 Then
	regWait = "onlineClosed"
End If
If DateDiff("n", Now, regCloseFinal) < 0 Then
	regWait = "closed"
End If

'regWait = "down"
'regWait = "full"

%>

<!DOCTYPE html 
 PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>PACER Symposium about Children &amp; Young Adults with Mental Health and Learning Disabilities for 2017</title>
<meta name="description" content="The symposium is designed to enhance awareness and identify strategies for responding to mental health and learning disabilities in children and young adults from the perspective of teachers and parents." />
<!-- for Facebook --> 
<meta property="fb:app_id" content="271376943231875"  />
<meta property="og:title" content="PACER Symposium about Children &amp; Young Adults with Mental Health and Learning Disabilities" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/images/PACER-Logo_fb.png" />
<meta property="og:url" content="http://www.pacer.org/help/symposium/" />
<meta property="og:description" content="The symposium is designed to enhance awareness and identify strategies for responding to mental health and learning disabilities in children and young adults from the perspective of teachers and parents." />


<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/stylenoleftright.css" />

		<link rel="stylesheet" type="text/css" href="/js/colorbox1.5.9/colorbox.css">
		
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script type="text/javascript">
			if (typeof jQuery == 'undefined')
			{
				document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
			}
		</script>
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
						this.href = 'http://www.youtube.com/embed/' + vars['v'] + '?rel=0&amp;wmode=transparent&autoplay=1';						
					}
				});
				//Initialize Colorbox
				$(".videoPopUp").colorbox({iframe:true, innerWidth:640, innerHeight:390});
			});
		</script>



<style type="text/css">
td { padding: .3em; }
#header-image {
	min-height: 150px;
	padding:0px;
	margin:0px;
	font-size:inherit;
	margin: -1em -1em 1em -1em;
}
.registrationMsg {
	margin:15px auto;
	width:250px; 
	border:5px ridge #06F; 
	background:#fff; 
	padding:10px; 
	text-align:center; 
	font-size:1em; 
	font-weight:bold;
}
#speakers { 
	margin-top:15px;
}
#speakers td{
	vertical-align: top; 
	background-color: #eee;
	padding:5px;
}
#resources {
	margin-top:20px;
	padding-top:20px;
	border-top:3px solid #000;
	margin-bottom:50px;
}
#resources, #eventResources {
	display: none;
}
#resources td{
	margin-bottom:10px;
	padding:5px;
	border-bottom:1px solid #ccc;
}
#resources td ul {
	margin:0px;
	padding:0px;
}
#resources td ul li {
	margin:0px 0px 10px 10px;
	padding:0px;
}
.greenbordered{
	border-top:solid 5px #390;
	margin-top:5px;
	padding-top:5px;
	border-bottom:solid 5px #390;
	margin-bottom:5px;
	padding-bottom:5px;	
}
#speakers{
	background:#eee;
	border-radius:8px;
	/*display:none;*/
}
#registration {
	width:50%;
	float:right;
	margin-bottom:20px;
	margin-right:60px;
	background-color: #FFE0C1; 
	padding: .5em; 
	border: solid 5px #ff9933;
	border-radius:8px;
}
#facebookevent {
	width:50%; 
	float:right; 
	margin-bottom:20px; 
	padding:10px; 
	font-size:1.1em;
	padding-left:50px;
	background:url(/images/facebookicon_medium.gif) no-repeat;
	background-position: 2% 50%;
}
#sharing_wrapper {
	min-height:40px;
	width:520px;
	margin-bottom:27px;
	float:right;
}
#workshops {
	display:block;
}
#workshopSidebar {
	display: inherit;

}
</style>
<script type="text/javascript">
//<![CDATA[

function MM_swapImgRestore() { //v3.0
 var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
 var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
 var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
 if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImage() { //v3.0
 var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
 if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//]]>

</script>
</head>
<body onload="MM_preloadImages('/help/symposium/images/registerNow-over.gif')">
<div id="skiptocontent"> <a href="#pagecontent">Skip to main content</a> </div>
<div id="wrapper">
 <div id="main">
 <div id="header">
	<div>			<!--#include virtual="/googleSearchBox.htm"-->
 <!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>
 <div id="maincontent">
 <!--BEGIN CONTENT-->
 <div id="pagecontent">
 <%
 ' <div id="sponsorship" style="float:right; width:550px; font-size:1.4em; color:#4A4A4A; font-style:italic; text-align:right; padding-right:20px">co-sponsored by PACER Center &amp; American Dairy Queen Corp</div>
 
	'<h1>Eleventh Annual PACER Symposium about Children &amp; Young Adults with Mental Health &amp; Learning Disabilities</h1>
 %> 
 <h1 id="header-image" style="text-align:center"><img style="max-width: 100%; height: auto;" src="/help/symposium/2017/images/WebBanner2017-1200px.png" width="100%" alt="PACER Symposium about Children &amp; Young Adults with Mental Health &amp; Learning Disabilities" /></h1>
  	<div id="sharing_wrapper">
		 <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>
 				<div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>
		</div>
  <div id="introSection">
 <h3>Audience</h3>
 <p>Outstanding learning opportunity for <strong>general education teachers, administrators, and parents</strong> interested in understanding more about mental health and learning disabilities in children and young adults. </p>
	 </div>
<table cellpadding="0" cellspacing="0" style="clear: both; margin: 0; padding: 0;" width="100%">
	<tr>
  <td style="vertical-align: top; padding: .6em; max-width:620px">  
 
<%			 
 '<div id="facebookevent">Join the <a href="https://www.facebook.com/events/703290393129770/" target="_blank">PACER Symposium Facebook Event Page</a> to stay connected with updates and announcements.</div> 
%> 
			 
			 <div id="registration"> <br />
<%
If date >= regOpen Then 
 If regWait = "open" Then %>
 <a href="<%=registrationLink%>" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('regNow21','','/help/symposium/images/registerNow-over.png',1)"><img src="/help/symposium/images/registerNow.png" class="centered" alt="Register Now" name="regNow21" width="190" height="77" border="0" id="regNow21" /></a>
 <%ElseIf regWait = "wait" Then%>
 <div id="wait" class="registrationMsg"><p>Registration Full</p>
 <p>If you would like to be put on a Wait List, please call 952-838-9000 or email us at <a href="mailto:pacer@pacer.org">pacer@pacer.org</a>. Thank You. </p></div>
 <%ElseIf regWait = "full" Then%>
 <div id="full" class="registrationMsg">Registration FULL</div>
 <%ElseIf regWait = "onlineClosed" Then%>
 <div id="full" class="registrationMsg">Online Registration is now closed. Please call our office 952.838.9000 to check registration availability”</div>
 <%ElseIf regWait = "closed" Then%>
 <div id="full" class="registrationMsg">Registration is now closed</div>
 <%ElseIf regWait = "down" Then%>
 <div id="down" class="registrationMsg">
 <p><strong>Registration System Under Maintanence</strong></p>
 <p>Our online registration system is unable to take payments at this time. We appreciate your business and expect the systems to be back online shortly. Thank you for your patience. <br /><br /> 
 
 If you would like further information or a notification of when the system is back online, please contact PACER at 952-838-9000.
 
 </p>
 </div>
 <%End If%>
<%
End If
%>
<%
If date < regOpen Then %>
 <div class="registrationMsg">Registration Opens<br /><%=FormatDateTime(regOpen, vbLongDate)%><!--11<sup>th</sup>--></div>
<%
End If%>
 <p style="margin-bottom: 0; padding-bottom: 0; margin-top:20px;"> Registration Fee: <strong>$35.00</strong><br />
 Lunch will be provided.<br />
 <br />
 Registration is limited. <strong>Administrator and teacher CEU’s will be available.</strong><br />
 </p>
 </div>
			 
 <h3>Date | Time</h3>
 <p><strong style="font-size:1.1em;">Tuesday, August 15, 2017 </strong><br />
 8:00 a.m. to 4:00 p.m. </p>
 <h3><span style="color:#236900">Location</span> | <a style="text-decoration:underline" href="http://www.minneapolis.org/minneapolis-convention-center/overview/directions-parking" target="_blank">View Map</a></h3>
 <p><strong>Minneapolis Convention Center<br />
 </strong>1301 Second Avenue South, <br />
 Minneapolis, MN</p>
 
			 

			
			 
 <div id="eventResources" style="margin-top:60px">
 <h3>Symposium Presentation Handouts and Resources</h3>
 <p>In a &ldquo;green&rdquo; initiative, we will not be providing copies of presentations in your symposium folder this year.&nbsp; For those of you who would like to print your own copies prior to the event, the handouts are available below.</p>
	<!--		<h4>These items will be included in your event folder</h4>
			<ul>
 			<li class="pdficonlist"><a href="/help/symposium/2015/Symposium-Agenda.pdf" target="_blank"> Download the Complete Agenda</a></li>
 			
  <li class="pdficonlist"><a href="/help/symposium/2012/Mann-Bio-Pages.pdf" target="_blank">Speaker Bio Pages</a></li>
 			<li class="pdficonlist"><a href="/help/symposium/2012/Mann-Symposium-Map.pdf" target="_blank">Double Tree Hotel Map</a></li>
 			<li class="pdficonlist"><a href="/help/symposium/2012/Mann-Symposium-Outcomes.pdf" target="_blank">Mann Foundation Symposium Outcomes</a></li>
  			
  </ul>
  	<h4>Not Included in your event folder</h4>
  <ul>
 <li class="zipiconlist"><a href="/help/symposium/2015/resources/PACER-symposium-resources.zip" target="_blank">Complete Presentation Resources Download (.zip)</a> <em>(listed individually below)</em></li>
  </ul>-->
  </div>
			
		
			
			
			
			
			
			
 			 <table id="resources" style="clear:right"><tr>
			  <th>Topic</th><th>Speaker</th>
			  <th><span class="fa fa-file-pdf-o"></span> Resources (pdf)</th>
			  </tr>
 
   <tr>
   <td>Keynote - Take It As It Comes: <br />
     Surviving a Child’s Suicide</td>
   <td><p>Adam Levy, musician (lead singer of the Honeydogs), educator, and social activist. He has worked in several fields including with at-risk youth. His son’s suicide impels his efforts to address mental illness.</p></td>
   <td><p>None</p></td>
   </tr>
   <tr>
   <td>Keynote - The High Cost of Invisibility: <br />
     A Look at Learning Disabilities, <br />
     Mental Health and Culture</td>
   <td>BraVada Garrett-Akinsanya, Ph.D., recognized nationally for work in mental health issues among ethnically diverse populations. She is known for her strength-based approach.</td>
   <td><p>None</p></td>
   </tr>
   <tr>
   <td>Keynote - Keeping ADHD Positive: Nurturing the Spirited, Imaginative and Playful Nature </td>
   <td><p>L. Read Sulik, M.D., child and adolescent psychiatrist.  A popular speaker on children’s mental health issues, he is internationally recognized for his work.</p></td>
   <td><p><a href="/help/symposium/2016/resources/Read-Sulik-ADHD-PPT.pdf" target="_blank">PowerPoint Presentation as PDF <span class="fa fa-external-link"></span></a><br />
       <br />
       <a href="/help/symposium/2016/resources/Read-Sulik-ADHD-CondensedPPTforPrinting.pdf" target="_blank">Condensed version for printing <span class="fa fa-external-link"></span></a></p></td>
   </tr>
   <tr>
   <td>Eating Disorders: What You Need to Know</td>
   <td>Heather Gallivan, Psy.D., L.P., clinical director at Park Nicollet Melrose Center </td>
   <td><a href="/help/symposium/2016/resources/Heather-Gallivan-EatingDisorders.pdf" target="_blank">PowerPoint Presentation as PDF <span class="fa fa-external-link"></span></a><br />
     <br />
     <a href="/help/symposium/2016/resources/Heather-Gallivan-PPTCondensedPrinting.pdf" target="_blank">Condensed version for printing <span class="fa fa-external-link"></span></a> </td>
   </tr>
   <tr>
   <td>A Disposition for Kindness: Support for Young Children who Struggle with Social and Emotional Needs and Learning </td>
   <td>Anne R. Gearity, Ph.D., clinical social worker in independent practice and faculty member at the University of Minnesota    </td>
   <td><p><a href="/help/symposium/2016/resources/Anne-Gearity-Disposition-for-Kindness.pdf" target="_blank">PowerPoint Presentation as PDF <span class="fa fa-external-link"></span></a></p></td>
   </tr>
   <tr>
   <td>Navigating the School System for a Child with Dyslexia </td>
   <td>Vicki Weinberg, education specialist at Minnesota Department of Education, and Claire Eckley, education consultant and founder of Marin Dakota Consulting </td>
   <td><p> <a href="/help/symposium/2016/resources/Weinberg-Eckley-DyslexiaGuide.pdf" target="_blank">Supplemental Handout  <br />
         <em>(47 pages) </em></a><br />
     <br />
     <a href="/help/symposium/2016/resources/Weinberg-Eckley-Supporting-Students-with-Dyslexia-in-Schools.pdf" target="_blank">PowerPoint Presentation as PDF <span class="fa fa-external-link"></span></a></p>
     <p><a href="/help/symposium/2016/resources/Weinberg-Eckley-Condensed-for-printing.pdf" target="_blank">Condensed version for printing <span class="fa fa-external-link"></span></a></p></td>
   </tr>
   <tr>
   <td>Technology for Teens and Wellness! </td>
   <td>John Newman and Tina Hanson, assistive technology specialists at PACER’s Simon Technology Center </td>
   <td><p><a href="/help/symposium/2016/resources/John-Newman-Wellness-Technology-Resources-Handout.pdf" target="_blank">Supplemental Handout <span class="fa fa-external-link"></span></a> </p>
     <p><a href="/help/symposium/2016/resources/John-Newman-Wellness-Technology-for-Teens-PPT.pdf" target="_blank">PowerPoint Presentation as PDF <span class="fa fa-external-link"></span></a><br />
       <br />
       <a href="/help/symposium/2016/resources/John-Newman-CondensedPPTforPrinting.pdf" target="_blank">Condensed version for printing <span class="fa fa-external-link"></span></a></p></td>
   </tr>
   <tr>
   <td>Breaking the Cycle of Learning Habits that Do Not Work </td>
   <td>Roberta Wohle, Ed.D., adjunct professor and coordinator of Learning Disabilities Program at Fairleigh Dickinson University </td>
   <td><p> <a href="/help/symposium/2016/resources/Roberta-Wohle-BreakingtheCycle.pdf" target="_blank">PowerPoint Presentation as PDF <span class="fa fa-external-link"></span></a><br />
     <br />
     <a href="/help/symposium/2016/resources/Roberta-Wohle-BreakingtheCycle-Supplement-Handout.pdf" target="_blank">Supplemental Handout <span class="fa fa-external-link"></span></a></p></td>
   </tr>
   <tr>
   <td>Are Medications the Only Expectation I Should Have from My Child's Psychiatrist? </td>
   <td>Barry Garfinkel, M.D., child and adolescent psychiatrist, and president and founder of the Center for Developmental Psychopharmacology, and Richard Peterson, M.D., child and adolescent psychiatrist at Fairview Health Services and assistant professor at the University of Minnesota </td>
   <td><p><a href="/help/symposium/2016/resources/Garfinkel-Peterson-MedicationsPacer2016.pdf" target="_blank">PowerPoint Presentation as PDF <span class="fa fa-external-link"></span></a></p></td>
   </tr>
   <tr>
   <td>Concussion Management Inside the Classroom </td>
   <td>Zach Eakman, Psy.D., assistant director of Diagnostic Services at Groves Academy in Minnesota </td>
   <td><p> No Longer Available</p></td>
   </tr>
   <tr>
   <td>PACER's National Bullying Prevention Center Updates </td>
   <td>Julie Hertzog, Director of the National Bullying Prevention Center </td>
   <td><a href="/help/symposium/2016/resources/Julie-Hertzog-NBPC-Symposium2016.pdf" target="_blank">PowerPoint Presentation as PDF <span class="fa fa-external-link"></span></a></td>
   </tr>
  
  </table>
 		
		
		
		
		
		
 <hr style="clear:right; margin:20px 0px;" />
 
 <h3>Clock Hours</h3>
  <p> The 6 clock hours offered are designed to meet the requirement for Minnesota teachers renewing their teaching license in understanding the key warning signs of early-onset mental illness in children and adolescents. Local re-licensure committees, however, have final approval. </p>


<table id="speakers" cellpadding="10" cellspacing="10">
       <tr>
        <td colspan="2"><h3>2017 National Keynote Speakers</h3></td>
       </tr>
				<tr>
					<td style="max-width:88px"><img border="0" src="/help/symposium/2017/images/Gil-Noam-88w.jpg" width="88" height="110" alt="" /></td>
					<td><h4 style="margin: 0; padding: 0;">Gil Noam, Ph.D., Ed.D.</h4>
						<p><strong>The Clover Model of Social-Emotional Development: Finding Opportunity Amidst Adversity in Adults and Youth</strong></p>
						<p>The founder and director of The PEAR Institute at Harvard University,  and is an Associate Professor at Harvard Medical School and McLean Hospital in  Boston. </p></td>
				</tr>
				<tr>
					<td><img border="0" src="/help/symposium/2017/images/Richard-Petty-88w.jpg" width="88" height="110" alt="" /></td>
					<td><h4 style="margin: 0; padding: 0;">Richard G. Petty, M.D.</h4>
						<p><strong>Pharmacological, Non-Pharmacological, and Lifestyle Approaches to  Attention Deficit and Hyperactivity Disorder in Children</strong></p>
						<p>A world-renowned authority on the brain and an accredited specialist in  psychiatry, neurology, internal medicine, and nutrition. </p></td>
				</tr>
				<tr>
					<td><img border="0" src="/help/symposium/2017/images/Anne-Gearity-88w.jpg" width="88" height="110" alt="" /></td>
					<td><h4 style="margin: 0; padding: 0;">Anne Gearity, Ph. D.</h4>
						<p><strong>Transforming Fear into Anxiety that is Useful for Learning </strong></p>
						<p>A sought after speaker on mental health, she has a practice in  Minneapolis and is a consultant to many school districts. Anne also teaches at  the University of Minnesota. </p></td>
				</tr>
      </table>
 
  	<div id="workshops" style="margin:40px 0px;">
  	 <h3>Workshops Include:</h3>
	
		<ul>
			<li><strong>It&rsquo;s Complicated: Children, Social Media, and Mental Health</strong><br />
  			<em>Erin Walsh, M.A., Mind Positive Parenting Speaker </em> 
			</li>
			<li><strong>Understanding Dyslexia</strong><br />
				<em>John Alexander, M.Ed., Groves Academy Executive Director</em>
			</li>
			<li><strong>Understanding Children’s Behavior to Help Adults Become Good Listeners</strong><br />
				<em>Anne Gearity, Ph.D., clinical social worker in independent practice and faculty member at the University of Minnesota</em>
			</li>
			<li><strong>Feeding the Child&rsquo;s Mind: Managing Malnourished Minds in Children and Adolescents</strong><br />
				<em>Richard G. Petty, M.D., world-renowned authority on the brain and an accredited specialist in psychiatry, neurology, internal medicine, and nutrition</em>
			</li>
			<li><strong>Thriving: Translating the Clover Model to Your Work with Youth</strong><br />
				<em>Gil Noam, Ph.D., Ed.D., founder and director of The PEAR Institute at Harvard University and Associate Professor at Harvard Medical School and McLean Hospital in Boston.</em>
			</li>
			<li><strong>Refugee Mental Health</strong><br />
				<em>Ahmed Hassan, MA, LPCC, Program Director at Summit Guidance</em>
			</li>
			<li><strong>A Conversation about Eating Disorders and Body Image Issues:  Prevention and Early Intervention</strong><br />
				<em>Billie Gray, Community Educator with the Emily Program Foundation</em>
			</li>
			<li><strong>Managing Time for Teens and Young Adults</strong><br />
				<em>Tara Bruss, Assistive Technology Specialist, Simon Technology Center at PACER and Sarah Giffen-Hunter, Assistive Technology Specialist, Simon Technology Center at PACER</em>
			</li>		
		</ul>
  </div>
 
	
 </td>
  <td style="vertical-align: top; padding: .6em;" width="300">
 <div id="symp-goal">
   <h3 style="clear:right; margin-top:20px;">Goal of the Symposium</h3>
   <p> The symposium is designed to enhance awareness and identify strategies for responding to mental health and learning disabilities in children and young adults from the perspective of teachers and parents.<br />
   <br />
   The symposium will provide high quality professional and parent development for Minnesota educators and parents regarding: </p>
   <ul style="margin-top: 0; padding-top: 0;">
   <li>children's mental health and learning disabilities</li>
   <li>effective treatment planning</li>
   <li>proactive, positive teaching strategies and interventions</li>
   </ul>
 </div>

 <hr />
	<div id="workshopSidebar">
 			 <h3>Workshop Topics Include: </h3>
 			 <ul>
 			  
				<li style="margin-bottom: 1em;">Dyslexia</li>
				<li style="margin-bottom: 1em;">Culture and Mental Health</li>
				<li style="margin-bottom: 1em;">Eating Disorders</li>
				<li style="margin-bottom: 1em;">Social Media and Mental Health</li>
				<li style="margin-bottom: 1em;">Nutrition, Mood, and Behavior</li>
				<li style="margin-bottom: 1em;">Behavior as Communication</li>
				<li style="margin-bottom: 1em;">Assistive Technology</li>
             </ul>
 <!--<p>More to come!</p>-->

 
 <hr />
	  </div>
<!--#include virtual="/help/symposium/past-resources.html"-->

 
  </td>
  </tr>
 </table>
 
 
 <!--END CONTENT--> 
 
 </div>
 </div>
 </div>
 <!--#include virtual="/footer.htm"--> 
</div>
</body>
</html>