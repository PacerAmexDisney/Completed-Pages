<%
Dim regOpen, regClose, regWaitDate, regWait, registrationLink

registrationLink = "https://pacer.ejoinme.org/MyPages/PACERSymposium2014/tabid/532051/Default.aspx"

regOpen = cDate("5/13/2015")
'regWaitDate = cDate("8/5/2012 11:59:00 PM")
regClose = cDate("8/3/2015 12:00:00 PM")

If date >= regOpen Then
	regWait = "open"
End If
'If now > regWaitDate Then
'	regWait = "wait"
'End If
If DateDiff("n", Now, regClose) < 0 Then
	regWait = "full"
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
<title>PACER Symposium about Children &amp; Young Adults with Mental Health and Learning Disabilities for 2015</title>
<meta name="description" content="The symposium is designed to enhance awareness and identify strategies for responding to mental health and learning disabilities in children and young adults from the perspective of teachers and parents." />
<!-- for Facebook -->   
<meta property="og:title" content="PACER Symposium about Children &amp; Young Adults with Mental Health and Learning Disabilities" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-lrg.png" />
<meta property="og:url" content="http://www.pacer.org/help/symposium/" />
<meta property="og:description" content="The symposium is designed to enhance awareness and identify strategies for responding to mental health and learning disabilities in children and young adults from the perspective of teachers and parents." />


<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/stylenoleftright.css" />
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
	margin-bottom:15px;
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
	/*display:none;*/
}
#registration {
	width:50%;
	float:right;
	margin-bottom:20px;
	background-color: #FFE0C1; 
	padding: .5em; 
	border: solid 5px #ff9933;
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
	display:none;
}
#sharing_wrapper {
	min-height:40px;
}
#workshops {
	display:none;
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
   %> 
   <h1 id="header-image" style="text-align:center"><img src="/help/symposium/2015/images/symposium-banner.png" width="100%" alt="Tenth Annual PACER Symposium about Children &amp; Young Adults with Mental Health &amp; Learning Disabilities" /></h1>
<table cellpadding="0" cellspacing="0" style="clear: both; margin: 0; padding: 0;" width="100%">
	<tr>
      <td style="vertical-align: top; padding: .6em; max-width:620px">      
      <h3>Audience</h3>
       <p>Outstanding learning opportunity for <strong>general education teachers, administrators and parents</strong> interested in understanding more about mental health and learning disabilities in children and young adults. </p>
       
			 
       <div id="facebookevent">Join the <a href="https://www.facebook.com/events/254568004745578/?ref=22" target="_blank">PACER Symposium Facebook Event Page</a> to stay connected with updates and announcements.</div> 
       
			 
			 <div id="registration"> <br />
<%
If date >= regOpen Then 
 If regWait = "open" Then %>
        <a href="<%=registrationLink%>" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('regNow21','','/help/symposium/images/registerNow-over.png',1)"><img src="/help/symposium/images/registerNow.png" class="centered" alt="Register Now" name="regNow21" width="190" height="77" border="0" id="regNow21" /></a>
 <%ElseIf regWait = "wait" Then%>
        <div id="wait" class="registrationMsg" style="margin-right:20px; width:250px; float:right; border:5px ridge #06F; background:#fff; padding:10px; text-align:center; font-size:1em; font-weight:bold"><p>Registration Full</p>
         <p>If you would like to be put on a Wait List, please call 952-838-9000 or email us at <a href="mailto:pacer@pacer.org">pacer@pacer.org</a>. Thank You. </p></div>
 <%ElseIf regWait = "full" Then%>
        <div id="full" class="registrationMsg" style="margin-right:20px; width:250px; float:right; border:5px ridge #06F; background:#fff; padding:10px; text-align:center; font-size:1.2em; font-weight:bold">Registration FULL</div>
 <%ElseIf regWait = "down" Then%>
        <div id="down" class="registrationMsg" style="width:250px; margin:10px auto; border:5px ridge #06F; background:#fff; padding:10px; text-align:left; font-size:1em;">
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
        <div class="registrationMsg" style="margin-right:20px; width:250px; float:right; border:5px ridge #06F; background:#fff; padding:10px; text-align:center; font-size:1.2em; font-weight:bold">Registration Opens May 13<sup>th</sup>, 2015<!--11<sup>th</sup>--></div>
<%
End If%>
        <p style="margin-bottom: 0; padding-bottom: 0; margin-top:20px;"> Registration Fee: <strong>$30.00</strong><br />
         Lunch will be provided.<br />
         <br />
         Registration is limited. <strong>Administrator and teacher CEU’s will be available.</strong><br />
        </p>
       </div>
			 
       <h3>Date | Time</h3>
       <p><strong style="font-size:1.1em;">Tuesday, August 4, 2015 </strong><br />
       8:00 a.m. to 4:30 p.m. </p>
       <h3><span style="color:#236900">Location</span> | <a style="text-decoration:underline" href="http://www.minneapolis.org/minneapolis-convention-center/overview/directions-parking" target="_blank">View Map</a></h3>
       <p><strong>Minneapolis Convention Center<br />
       </strong>1301 Second Avenue South, <br />
       Minneapolis, MN</p>
       
			 
			 <!--
			 
			 <hr />
       
       <h3>Symposium Presentation Handouts and Resources</h3>
       <p>In a &ldquo;green&rdquo; initiative, we will not be providing copies of presentations in your symposium folder this year.&nbsp; For those of you who would like to print your own copies prior to the event, the handouts are available below.</p>
			<h4>These items will be included in your event folder</h4>
			<ul>
 			<li class="pdficonlist"><a href="/help/symposium/2012/Mann-Symposium-Agenda2012.pdf" target="_blank"> Download the Complete Agenda</a></li>
 			<li class="pdficonlist"><a href="/help/symposium/2012/Mann-Bio-Pages.pdf" target="_blank">Speaker Bio Pages</a></li>
 			<li class="pdficonlist"><a href="/help/symposium/2012/Mann-Symposium-Map.pdf" target="_blank">Double Tree Hotel Map</a></li>
 			<li class="pdficonlist"><a href="/help/symposium/2012/Mann-Symposium-Outcomes.pdf" target="_blank">Mann Foundation Symposium Outcomes</a></li>
      </ul>
      	<h4>Not Included in your event folder</h4>
      <ul>
       <li class="zipiconlist"><a href="/help/symposium/2012/resources/Mann-Symposium-2012-Presentation-Handouts.zip" target="_blank">Complete Presentation Resources Download (.zip)</a> <em>(listed individually below)</em></li>
      </ul>
      
			
			-->
			
			
			
			<!--
			
			
			 <table id="resources"><tr>
       <th>Topic</th><th>Speaker</th>
       <th>Resources (pdf)</th>
       </tr>
       
       <tr>
       <td>Opening Keynote Presentation: Create a Culture of Belonging: Inclusion on Film</td>
       <td><strong>Dan Habib</strong>, Filmmaker in Residence, University of New Hampshire Institute on Disability, NH</td>
       <td>&nbsp;</td>
       </tr>
       
       <tr>
       <td>Who Cares About Kelsey?</td>
       <td><strong>Dan Habib</strong>, Filmmaker in Residence, University of New Hampshire Institute on Disability, NH</td>
       <td>&nbsp;</td>
       </tr>
       
       <tr>
       <td>Bright Not Broken: Identifying and Understanding Twice Exceptional Students</td>
       <td><strong>Rebecca Banks and Diane Kennedy</strong>, Co-authors, with contributor Temple Grandin, of “Bright Not Broken: Gifted Kids, ADHD, and Autism,” KY</td>
       <td><ul><li><a href="/help/symposium/2012/resources/Rebecca-Banks-and-Diane-Kennedy-Bright-Not-Broken-Slides-Page.pdf" target="_blank">Rebecca-Banks-and-Diane-Kennedy-Bright-Not-Broken-Slides-Page</a></li>
       </ul></td>
       </tr>
       
       <tr>
       <td>Turning Labels into Learning Language</td>
       <td><strong>Anne Gearity</strong>, Ph.D., Clinical Social Worker in independent practice, and Clinical Faculty Member, University of Minnesota, MN</td>
       <td><ul><li><a href="/help/symposium/2012/resources/Anne-Gearity-Turning-Labels-Into-Learning-Language-Slide-Notes-Page.pdf" target="_blank">Anne-Gearity-Turning-Labels-Into-Learning-Language-Slide-Notes-Page</a></li></ul></td>
       </tr>
       
       <tr>
       <td>What is the Connection Between a Diagnosis of Dyslexia and a Specific Learning Disability?</td>
       <td><strong>Victoria Weinberg</strong>, Ph.D., Specific Learning Disabilities Education Specialist, Minnesota Department of Education, MN</td>
       <td>
       <ul>
       <li><a href="/help/symposium/2012/resources/Victoria-Weinberg-Connection-Between-a-Diagnosis-of-Dyslexia-and-SLD.pdf" target="_blank">Victoria-Weinberg-Connection-Between-a-Diagnosis-of-Dyslexia-and-SLD</a></li>
       <li><a href="/help/symposium/2012/resources/Victoria-Weinberg-SLD-Guiding-Questions.pdf" target="_blank">Victoria-Weinberg-SLD-Guiding-Questions</a></li>
       <li><a href="/help/symposium/2012/resources/Victoria-Weinberg-Scaffolded-SLD-rule-Vetted-7-30-09.pdf" target="_blank">Victoria-Weinberg-Scaffolded-SLD-rule-Vetted-7-30-09</a></li>
       </ul>
       </td>
       </tr>
       
       <tr>
       <td>If I Knew Then What I Know Now…</td>
       <td><strong>PACER Center Panel</strong>, MN<br />
        Moderator: Virginia Richardson, Parent Training Manager<br />
        Carolyn Anderson, Parent Advocate<br />
        Pat Anderson, Parent Advocate<br />
        Jes&uacute;s Villase&ntilde;or, Multicultural Specialist<br />
        Barb Ziemke, Parent Advocate</td>
        <td>
        <ul>
        <li><a href="/help/symposium/2012/resources/PACER-Center-If-I-Knew-Then-What-I-Know-Now-handout.pdf" target="_blank">PACER-Center-If-I-Knew-Then-What-I-Know-Now-handout</a></li>
        </ul>
        </td>
       </tr>
       
       <tr>
       <td>Bullying Prevention – Everyone&rsquo;s Responsibility</td>
       <td><strong>Jody Manning</strong>, Parent Training and Information Center Coordinator, PACER Center, MN</td>
       <td><ul><li><a href="/help/symposium/2012/resources/Jody-Manning-Bullying-Prevention-Presentation-Handout.pdf" target="_blank">Jody-Manning-Bullying-Prevention-Presentation-Handout</a></li>
        <li><a href="/help/symposium/2012/resources/Jody-Manning-Bullying-Prevention-Web-Resources.pdf" target="_blank">Jody-Manning-Bullying-Prevention-Web-Resources</a></li>
       </ul></td>
       </tr>
       
       <tr>
       <td>Transformative Technology in the Classroom</td>
       <td><strong>Jonathan Campbell</strong>, Assistive Technology Specialist, STC, PACER Center, MN</td>
       <td><ul><li><a href="/help/symposium/2012/resources/Jonathan-Campbell-Transformative-Technology-handout.pdf" target="_blank">Jonathan-Campbell-Transformative-Technology-handout</a></li></ul></td>
       </tr>
       
       <tr>
       <td>Understanding Challenging Behaviors</td>
       <td><strong>Renelle Nelson</strong>, EBD Project Coordinator and Parent Advocate, PACER Center, MN</td>
       <td><ul><li><a href="/help/symposium/2012/resources/Renelle-Nelson-Understanding-Challenging-Behaviors-Slide-Notes-Page.pdf" target="_blank">Renelle-Nelson-Understanding-Challenging-Behaviors-Slide-Notes-Page</a></li></ul></td>
       </tr>
       
       <tr>
       <td>Keynote Presentation: Prevention Events and “Call to Action”</td>
       <td><strong>Jody Manning</strong>, Parent Training and Information Center Coordinator, PACER Center, MN</td>
       <td>&nbsp;</td>
       </tr>
       
       <tr>
       <td>Keynote Presentation: Family Feud: Teen Mental Health Edition</td>
       <td><strong>Minnesota Statewide Family Network Youth Advisory Board</strong>, MN</td>
       <td>&nbsp;</td>
       </tr>
       
       <tr>
       <td>Keynote Presentation: A Student&rsquo;s Experience with Depression and Bipolar Disorder</td>
       <td><strong>Bryce Mackie</strong>, Filmmaker and Mental Health Counselor at a children&rsquo;s psychiatric hospital in Chicago, IL</td>
       <td><ul><li><a href="/help/symposium/2012/resources/Bryce-Mackie-Eternal-High-Discussion-Guide.pdf" target="_blank">Bryce-Mackie-Eternal-High-Discussion-Guide</a></li></ul></td>
       </tr>
       
       <tr>
       <td>What is Authentic Inclusion?</td>
       <td><strong>Dan Habib</strong>, Filmmaker in Residence, University of New Hampshire Institute on Disability, NH</td>
       <td><ul><li><a href="/help/symposium/2012/resources/Dan-Habib-Authentic-Inclusion-Slide-Notes-Page.pdf" target="_blank">Dan-Habib-Authentic-Inclusion-Slide-Notes-Page</a></li></ul></td>
       </tr>
       
       <tr>
       <td>Closing Keynote Presentation: A Surgeon&rsquo;s Saga</td>
       <td><strong>Michael Maddaus</strong>, M.D., Chief, Division of Thoracic and Foregut Surgery,University of Minnesota, MN</td>
       <td>&nbsp;</td>
       </tr>
		</table>
		
		
		
		-->
		
		
       <hr style="clear:right; margin:20px 0px;" />
       
       <h3>Clock Hours</h3>
      <p> The 6 clock hours offered are designed to meet the requirement for Minnesota teachers renewing their teaching license in understanding the key warning signs of early-onset mental illness in children and adolescents. Local re-licensure committees, however, have final approval. </p>
      
      <table id="speakers">
       <tr>
      <td colspan="2"><h3>2015 National Speakers</h3></td>
     </tr>
     
     
     
     <tr>
      <td width="88"><img border="0" src="/help/symposium/2015/images/jodi-sleeper-88w.jpg" width="88" height="126" alt="" /></td>
      <td><h4 style="margin: 0; padding: 0;">Jodi Sleeper-Triplett</h4>
       
			 	<p>trainer, master coach, mentor, speaker, and author who is considered by her peers to be the foremost expert on coaching youth with ADHD.</p></td>
     </tr>
     <tr>
      <td width="88"><img border="0" src="/help/symposium/2015/images/steve-koppel-88w.jpg" width="88" height="126" alt="" /></td>
      <td><h4 style="margin: 0; padding: 0;">Steven Koppel</h4>
       
			 	<p>created MyMoments, a non-profit social franchise that is pioneering the use of Expressive Digital Imagery (EDI), a new form of self-expression used in mental health therapy.</p></td>
     </tr>

<tr>
      <td width="88"><img border="0" src="/help/symposium/2015/images/brad-cohen-88w.jpg" width="88" height="126" alt="" /></td>
      <td><h4 style="margin: 0; padding: 0;">Brad Cohen</h4>
       
			 	<p>award-winning teacher, school administrator, motivational speaker, and co-author of the book, &ldquo;Front of the Class: How Tourette Syndrome Made Me the Teacher I Never Had.&rdquo;</p></td>
     </tr>

   </table>
      <div id="workshops" style="margin:40px 0px;"><p><strong>Workshops Include:</strong></p>
			<ul>
				<li><strong>Understanding the Enormity of Depression and How to Develop Skills Needed for Healing in Children and Young Adults, </strong>
					<p>Dr. Read Sulik, child and adolescent psychiatrist and pediatrician				</p>
				</li>
				<li><strong>Anxiety from the Inside Out, </strong>
					<p>Dr. Read Sulik, child and adolescent psychiatrist and pediatrician</p>
				</li>
				<li><strong><em>Challenging Behaviors in Early Childhood</em></strong>,
					<p>Lise Fox, Ph.D,  Director of the Florida Center for Inclusive Communities, the University  of South Florida Center for Excellence in Developmental Disabilities  and principal investigator of the OSEP-funded Technical Assistance  Center on Social Emotional Intervention for Young Children</p>
				</li>
				<li><strong><em>School Discipline and Juvenile Justice for Students with Disabilities,</em></strong>
					<p>Amy Goetz and Andrea Jepsen, School Law Center</p>
				</li>
				<li><strong><em>What Do We Mean When We Talk About Aspergers?, </em></strong>
					<p>Dr. Susan Jenkins, Bluestem Center</p>
				</li>
				<li><strong><em>Transition to Employment: Two Sides of the Same Coin, </em></strong>
					<p>Shauna McDonald, PACER Center, and Jayne Spain, Minnesota Department of Education</p>
				</li>
				<li><strong><em>Meeting the Needs of Students who Demonstrate Challenging Behaviors that Interfere with Teaching and Learning, </em></strong>
					<p>Jo Mascorro</p>
				</li>
				<li><strong><em>Student Success for $100 or Less: Free and Low Cost Assistive Technology, Part II, </em></strong>
					<p>Simon Technology Center</p>
				</li>
			</ul></div></td>
      <td style="vertical-align: top; padding: .6em;" width="300">
      	<div id="sharing_wrapper">
				<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>
  				<div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>
				</div>
       <h3 style="clear:right; margin-top:20px;">Goal of the Symposium</h3>
       <p> The symposium is designed to enhance awareness and identify strategies for responding to mental health and learning disabilities in children and young adults from the perspective of teachers and parents.<br />
        <br />
        The symposium will provide high quality professional and parent development for Minnesota educators and parents regarding: </p>
       <ul style="margin-top: 0; padding-top: 0;">
        <li>children's mental health and learning disabilities</li>
        <li>effective treatment planning</li>
        <li>proactive, positive teaching strategies and interventions</li>
       </ul>
<%
' <hr />
' 			 <h3>Breakout Topics Include:</h3>
'       <ul>
'        <li>Addressing Challenging Behaviors in Early Childhood</li>
'				<li>Transition and Employment </li>
'				<li>Assistive Technology</li>
'				<li>Working with Parents and Guardians: A Team Approach to Challenging Behaviors</li>
'				<li>Juvenile Justice and Students with Disabilities Facing Suspension, Expulsion, or Juvenile Court</li>
'       </ul>
'       <p>Others yet to come!</p>
%>       
       
       <hr />
<!--#include virtual="/help/symposium/past-resources.html"-->

       
       <%
'				<hr />			 
'       <h3>Keynote Speakers:</h3>
'       <ul>
'        <li><strong>Dr. Susan Jenkins </strong>(director of the Bluestem Center for Child and Family Development, is a child and adolescent psychiatrist recognized nationally for her work with youth and families, with a focus on those with disabilities.)</li>
'        <li><strong>Jo Mascorro </strong>(author of “Don’t Look Now, Your Behavior is Showing!” is an<br />
'        	outstanding national speaker with 30 years of experience in education. She provides training in behavior intervention, communication strategies, and programming for students with disabilities.)<strong></strong></li>
'        <li><span style="margin-bottom:1em;"><strong>Larry Wexler</strong> (Division Director for the Research to Practice Division of the<br />
'        	U.S. Department of Education, Office of Special Education Programs (OSEP), will discuss seclusion and restraint, suspension, and disproportionality.)<strong></strong></span></li>
'       </ul>
'			 <hr />
'			 <h3>Interactive Sessions</h3>
'       <p> Morning and afternoon breakout sessions facilitated by experienced child psychiatrists, practitioners and education professionals. 
'
'			 <hr />
'       <h3>Workshop Sessions <br />
'        <span style="font-size:.75em; font-style:italic; text-transform:none; font-weight:normal">(Sessions held in the morning and again in the afternoon)</span></h3>
'       
'       <p><strong>How To Have Tourette syndrome</strong><br />
'        Josh Hanagarne,<em> <br />
'        Librarian, Salt Lake City Public Library, UT
'        Lauren Schrock, M.D., Neurologist, University of Utah Healthcare, UT</em> </p>
'       
'       <p><strong>Working with Persistently AggressiveYouth: Building Empathy and New Behaviors</strong><br />
'        Stan Davis, <em><br />
'        Retired School Counselor, Researcher, and Author,       stopbullyingnow.com and youthvoiceproject.com, ME</em></p>
'       
'       <p><strong>Children, Mental Health, and Psychiatric Medication:
'        Empowering Parents with Information on How to Talk to Their Children
'        about Medication and How the Medication May Impact School Performance<br />
'        </strong>Jane Marie Sulzle,<em> <br />
'        DNP, Clinical Nurse Specialist in Child and Adolescent 
'        Psychiatry, PrairieCare Medical Group, MN</em></p>
'       
'       <p><strong>Promoting Optimal Mental Health and Wellness in Children: What We Need to Know
'        about Brain Development and What We Need to Do<br />
'        </strong>Read Sulik, <em><br />
'        M.D., Child, Adolescent, and Adult Psychiatrist, Senior Vice President<br />
'        of Behavioral Health Services, Sanford Health, MN</em></p>
'       
'       <p><strong>Students with Learning Disabilities: Instruction and Accommodations in Reading </strong><br />
'        Todd Busch<em>, <br />
'        Ph.D., Associate Professor, Department of Special and Gifted<br />
'        Education, University of St. Thomas, MN</em></p>
'       
'       <p><strong>If I Knew Then What I Know Now</strong><br />
'        
'        Moderator: Jody Manning,<em> <br />
'        Parent Training Project Coordinator, PACER Center, MN</em><br />
'        <br />
'        Carolyn Anderson, <br />
'        <em>Parent Advocate, PACER Center, MN</em><br />
'        <br />
'        Pat Anderson, <br />
'        <em>Parent Advocate, PACER Center, MN</em><br />
'        <br />
'        Jes&uacute;s Villase&ntilde;or,<em> <br />
'        Multicultural Specialist, PACER Center, MN</em><br />
'        <br />
'        Barb Ziemke, <br />
'        <em>Parent Advocate, PACER Center, MN</em><br />
'        <br />
'       </p>
'       
%>
       
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