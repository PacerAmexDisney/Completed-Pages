<% 'Response.Redirect("2013/SymposiumResources.asp")%>
<%
Dim regOpen, regClose, regWaitDate, regWait, registrationLink

registrationLink = "https://pacer.ejoinme.org/MyPages/PACERSymposium2014/tabid/532051/Default.aspx"

regOpen = cDate("5/14/2014")
'regWaitDate = cDate("8/5/2012 11:59:00 PM")
regOnlineClosed = cDate("8/6/2014")
regClose = cDate("8/6/2014  4:00 PM")

If date >= regOpen Then
	regWait = "open"
End If
If date >= regOnlineClosed Then
	regWait = "onlineclosed"
End If
'If now > regWaitDate Then
'	regWait = "wait"
'End If
If date >= regClose Then
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
<title>PACER Symposium about Children &amp; Young Adults with Mental Health and Learning Disabilities for 2014</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/stylenoleftright.css" />
<style type="text/css">
td { padding: .3em; }

td#rightsidebar{
	border-left: 2px solid #F18B1F;
}
#header-image {
	text-align:center;
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
	width:45%; 
	float:right; 
	margin-bottom:20px; 
	padding:10px; 
	font-size:1.1em;
	padding-left:50px;
	background:url(/images/facebookicon_medium.gif) no-repeat;
	background-position: 2% 50%;
	
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
      <div id="pagetoporange">
      	<div id="breadcrumb"> <a href="/">Home</a> / <a href="../events.asp">Events</a> / 
        </div>
      </div>
      <!--BEGIN CONTENT-->
      <div id="pagecontent">
      <%
      '  <div id="sponsorship" style="float:right; width:550px; font-size:1.4em; color:#4A4A4A; font-style:italic; text-align:right; padding-right:20px">co-sponsored by PACER Center &amp; American Dairy Queen Corp</div>
      %> 
      <div id="header-image"><h1><img src="/help/symposium/2014/images/symposium-banner.jpg" width="783" height="163" alt="Ninth Annual PACER Symposium about Children &amp; Young Adults with Mental Health &amp; Learning Disabilities" /></h1></div>
<table cellpadding="0" cellspacing="0" style="clear: both; margin: 0; padding: 0;" width="100%">
	<tr>
            <td style="vertical-align: top; padding: .6em; max-width:620px">            
            
             <div id="facebookevent">Join the <a href="https://www.facebook.com/events/254568004745578/?ref=22" target="_blank">PACER Symposium Facebook Event Page</a> to stay connected with updates and announcements.</div> 
             
			  
			  <div id="registration"> <br />
<%
If date >= regOpen Then 
  If regWait = "open" Then %>
                <a href="<%=registrationLink%>" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('regNow21','','/help/symposium/images/registerNow-over.png',1)"><img src="/help/symposium/images/registerNow.png" class="centered" alt="Register Now" name="regNow21" width="190" height="77" border="0" id="regNow21" /></a>
  <%ElseIf regWait = "wait" Then%>
                <div id="wait" style="margin-right:20px; width:250px; float:right; border:5px ridge #06F; background:#fff; padding:10px; text-align:center; font-size:1em; font-weight:bold"><p>Registration Full</p>
                  <p>If you would like to be put on a Wait List, please call 952-838-9000 or email us at <a href="mailto:pacer@pacer.org">pacer@pacer.org</a>.  Thank You. </p></div>
  <%ElseIf regWait = "onlineclosed" Then%>
                
				
				<div id="onlineclosed" style="margin-right:20px; margin-bottom:20px; width:250px; float:right; border:5px ridge #06F; background:#fff; padding:10px; text-align:center; font-size:1.2em; font-weight:bold">
					<p>Online Registration Closed</p>
					<p>Please call 952-838-9000 for final availability</p>
				</div>
  <%ElseIf regWait = "full" Then%>
				
				<div id="full" style="margin-right:20px; margin-bottom:20px; width:250px; float:right; border:5px ridge #06F; background:#fff; padding:10px; text-align:center; font-size:1.2em; font-weight:bold">Registration FULL</div>
  <%ElseIf regWait = "down" Then%>
                <div id="down" style="width:250px; margin:10px auto; border:5px ridge #06F; background:#fff; padding:10px; text-align:left; font-size:1em;">
                  <p><strong>Registration System Under Maintanence</strong></p>
                  <p>Our online registration system is unable to take payments at this time.  We appreciate your business and expect the systems to be back online shortly.  Thank you for your patience. <br /><br />  
                    
                    If you would like further information or a notification of when the system is back online, please contact PACER at 952-838-9000.
                    
                  </p>
                </div>
  <%End If%>
<%
End If
%>
<%
If date < regOpen Then %>
                <div style="margin-right:20px; width:250px; float:right; border:5px ridge #06F; background:#fff; padding:10px; text-align:center; font-size:1.2em; font-weight:bold">Registration Opens May 14<sup>th</sup>, 2014<!--11<sup>th</sup>--></div>
<%
End If%>
                <p style="margin-bottom: 0; padding-bottom: 0; margin-top:20px;"> Registration Fee: <strong>$25.00</strong><br />
                  Lunch will be provided.<br />
                  <br />
                  Registration is limited. <strong>Administrator and teacher CEU’s will be available.</strong><br />
                </p>
              </div>
			  
                 <div id="datetime" style="width:220px;">
			  <h3>Date | Time</h3>
              <p><strong style="font-size:1.1em;">Thursday, August 7, 2014 </strong><br />
              8:00 a.m. to 4:30 p.m. </p>
              <h3><span style="color:#236900">Location</span> | <a style="text-decoration:underline" href="http://www.minneapolis.org/minneapolis-convention-center/overview/directions-parking" target="_blank">View Map</a></h3>
              <p><strong>Minneapolis Convention Center<br />
              </strong>1301 Second Avenue South, <br />
              Minneapolis, MN</p>
			  </div>
           
<hr style="clear:right; margin:20px 0px;" />			  

              <div id="clockhours">
			  	
              
              	<h3>Clock Hours</h3>
            	<p> The 6 clock hours offered are designed to meet the requirement for Minnesota teachers renewing their teaching license in understanding the key warning signs of early-onset mental illness in children and adolescents. Local re-licensure committees, however, have final approval. </p>
              </div>

<hr style="clear:right; margin:20px 0px;" />
<h3>Symposium Presentation Handouts and Resources</h3>
              <p>In a &ldquo;green&rdquo; initiative, we will not be providing copies of  presentations in your symposium folder.&nbsp;  For those of you who would like to print your own copies prior to the event, the handouts are available  below.</p>
			<h4>These items will be included in your event folder</h4>
			<ul>
  			<li class="pdficonlist"><a href="/help/symposium/2014/resources/PACER-Symposium-Agenda.pdf" target="_blank">  Agenda</a></li>
  			<li class="pdficonlist"><a href="/help/symposium/2014/resources/PACER-Symposium-Bio-Pages.pdf" target="_blank">Speaker Bio Pages</a></li>
  			<li class="pdficonlist"><a href="/help/symposium/2014/resources/PACER-Symposium-Map.pdf" target="_blank">Convention Center Symposium  Map</a></li>
  			<li class="pdficonlist"><a href="/help/symposium/2014/resources/PACER-Symposium-Outcomes.pdf" target="_blank">Symposium Outcomes</a></li>
            </ul>
           	<h4>Not Included in your event folder</h4>
            <ul>
             <li class="zipiconlist"><a href="/help/symposium/2014/resources/resources.zip" target="_blank">Complete Presentation Resources Download (.zip)</a> <em>(listed individually below)</em></li>
            </ul>
            
			
			
			
			
			

			
			
			  <table id="resources"><tr>
              <th>Topic</th><th>Speaker</th>
              <th>Resources (pdf)</th>
              </tr>
              
              <tr>
              	<td width="209">Opening    Keynote:  Restraint, Seclusion and    Exclusion: The Grandma Test</td>
              	<td width="263"><strong>Larry    Wexler, Ph.D.</strong>, Director of the Research to Practice Division of the U.S.    Departmnet of Education, Office of Special Education Programs (OSEP),    Washington D.C</td>
              <td><a href="/help/symposium/2014/resources/Wexler-Restraint-Seclusion-Exclusion.pdf" target="_blank">Wexler-Restraint-Seclusion-Exclusion</a></td>
              </tr>
              
              <tr>
              	<td width="209">What Do    We Mean When We Talk about Asperger's?</td>
              	<td width="263"><strong>Dr.    Susan Jenkins</strong>, Director of the Bluestem Center for Child and Family    Development, Minn.</td>
              <td><p><a href="/help/symposium/2014/resources/Jenkins-PPTAspergersWorkshop.pdf">Jenkins-PPT-Aspergers-Workshop</a></p>
              	<p><a href="/help/symposium/2014/resources/Jenkins-Aspergers-Workshop.pdf" target="_blank">Jenkins-Aspergers-Workshop</a></p></td>
              </tr>
              
              <tr>
              	<td width="209">Understanding    the Enormity of Depression and How to Develop Skills Needed for Healing in    Children and Young Adults </td>
              	<td width="263"><strong>Dr.    Read Sulik</strong>, Child and Adolescent Psychiatrist and Pediatrician, Minn.</td>
              <td><p><a href="/help/symposium/2014/resources/Sulik-10-Essentials-Handout.pdf" target="_blank">Sulik-10-Essentials-Handout</a></p>
              	<p><a href="/help/symposium/2014/resources/Sulik-Depression-Handout.pdf" target="_blank">Sulik-Depression-Handout</a></p></td>
              </tr>
              
              <tr>
              	<td width="209">Anxiety    from the Inside Out</td>
              	<td width="263"><strong>Dr.    Read Sulik</strong>, Child and Adolescent Psychiatrist and Pediatrician, Minn.</td>
              <td><p><a href="/help/symposium/2014/resources/Sulik-10-Essentials-Handout.pdf" target="_blank">Sulik-10-Essentials-Handout</a></p>
              	<p><a href="/help/symposium/2014/resources/Sulik-Anxiety-Handout.pdf" target="_blank">Sulik-Anxiety-Handout</a></p></td>
              </tr>
              
              <tr>
              	<td width="209">What it    Takes: Effectively Supporting Young Children with the Most Challenging    Behaviors</td>
              	<td width="263"><strong>Lise    Fox, Ph.D.</strong>, Director of the Florida Center for Inclusive Communities, the    University of South Florida Center for Excellence in Developmental    Disabilities</td>
              <td><a href="/help/symposium/2014/resources/Fox-Effectively-Supporting-Young-Children-with-the-Most-Challenging-Behaviors.pdf" target="_blank">Fox-Effectively-Supporting-Young-Children-with-the-Most-Challenging-Behaviors</a></td>
              </tr>
              
              <tr>
              	<td width="209">Navigating    School Discipline and Juvenile Justice Issues for Children with Disabilities</td>
              	<td width="263"><strong>Amy    Goetz and Andrea Jepsen</strong>, Attorneys at School Law Center, Minn.</td>
              <td><a href="/help/symposium/2014/resources/Goetz-Navigating-School-Discipline.pdf" target="_blank">Goetz-Navigating-School-Discipline</a></td>
              </tr>
              
              <tr>
              	<td width="209">Transition    to Employment: Two Sides of the Same Coin</td>
              	<td width="263"><strong>Jayne    Spain</strong>, Secondary Transition Specialist at the MN Department of Education and    <strong>Shauna McDonald</strong>, Director of Community Resource Development, PACER Center,    Minn.</td>
              <td><p><a href="/help/symposium/2014/resources/McDonald-Spain-Helping-Youth-Build-Work-Skills.pdf" target="_blank">McDonald-Spain-Helping-Youth-Build-Work-Skills</a></p>
              	<p><a href="/help/symposium/2014/resources/McDonald-Spain-Helping-Youth-Develop-Soft-Skills.pdf" target="_blank">McDonald-Spain-Helping-Youth-Develop-Soft-Skills</a></p>
              	<p><a href="/help/symposium/2014/resources/McDonald-Spain-MN-Career-Fields-Clusters-and-Pathways.pdf" target="_blank">McDonald-Spain-MN-Career-Fields-Clusters-and-Pathways</a></p>
              	<p><a href="/help/symposium/2014/resources/McDonald-Spain-Transition-and-Employment.pdf" target="_blank">McDonald-Spain-Transition-and-Employment</a></p></td>
              </tr>
              
              <tr>
              	<td width="209">Student    Success for $100 or Less: Free and Low-cost Assistive Technology for Students    with Learning Disabilities</td>
              	<td width="263"><strong>PACER's    Simon Technology Center Panel</strong>, Minn.:     Rachel Magario, Assistive Technology Specialist, Kasey Miklik,    Assistive Technology Specialist, and John Newman, Assistive Technology    Specialist</td>
              <td><a href="/help/symposium/2014/resources/STC-Student-Success-Handout.pdf" target="_blank">STC-Student-Success-Handout</a></td>
              </tr>
              
              <tr>
              	<td width="209">Working    with Parents, Teachers, and Others: A Team Approach to Meeting the Needs of    Students with Challenging Behaviors that Interfere with Teaching and Learning</td>
              	<td width="263"><strong>Jo    Mascorro</strong>, education consultant specializing in areas of behavior    intervention, communication strategies, parents and programming for students    with disabilities, Texas</td>
              <td><a href="/help/symposium/2014/resources/Mascorro-Meeting-the-Needs-Breakout.pdf" target="_blank">Mascorro-Meeting-the-Needs-Breakout</a></td>
              </tr>
              
              <tr>
              	<td width="209">Make    Stigma Disappear!</td>
              	<td width="263"><strong>PACER's    Youth Advisory Board on Mental Health</strong>, Minn.</td>
              <td><a href="http://www.pacer.org/childrensmentalhealth/">Make the Stigma Disappear - Video</a></td>
              </tr>
              
              <tr>
              	<td width="209">National    Bullying Prevention Center News and Events</td>
              	<td width="263"><strong>Julie    Hertzog</strong>, National Bullying Prevention Center Director and Jody Manning,    Parent Training and Information Center Coordinator, PACER Center, Minn.</td>
              <td><p><a href="/help/symposium/2014/resources/Hertzog-Bullying Prevention.pdf" target="_blank">Hertzog-Bullying Prevention</a></p>
              	<p><a href="https://www.youtube.com/watch?v=Jvd8g8ip12k" target="_blank">Imagine - Video</a></p></td>
              </tr>
              
              <tr>
              	<td width="209">Keynote:    Don't Look Now, YOUR Behavior is Showing! What ALL Adult Brains Should Know    About ALL Children's Brains</td>
              	<td width="263"><strong>Jo    Mascorro</strong>, education consultant specializing in areas of behavior    intervention, communication strategies, parents and programming for students    with disabilities, Texas</td>
              <td><a href="/help/symposium/2014/resources/Mascorro-PACER-Keynote.pdf" target="_blank">Mascorro-PACER-Keynote</a></td>
              </tr>
              
              <tr>
              	<td width="209">Closing    Keynote: Working in the Dark</td>
              	<td width="263"><strong>Dr.    Susan Jenkins</strong>, Director of the Bluestem Center for Child and Family    Development, Minn.</td>
              <td><p><a href="/help/symposium/2014/resources/Jenkins-PPTWorkingintheDark.pdf">Jenkins-PPT-Working-in-the-Dark</a></p>
              	<p><a href="/help/symposium/2014/resources/Jenkins-Working-in-the-Dark.pdf" target="_blank">Jenkins-Working-in-the-Dark</a></p></td>
              </tr>
		</table>
		
		
		

		
		
            <table id="speakers">
              <tr>
            <td colspan="2"><h3>2014 National Speakers</h3></td>
          </tr>
          
          
          
          <tr>
            <td width="88"><img border="0" src="/help/symposium/2014/images/susan-jenkins_sml.jpg" width="88" height="126" alt="" /></td>
            <td><h4 style="margin: 0; padding: 0;">Dr. Susan Jenkins</h4>
              
			  	<p>Director of the  Bluestem Center for Child and Family Development, is a   child and adolescent  psychiatrist recognized nationally for her work   with youth and families. Her keynote &ldquo;Working in the Dark&rdquo; will explore    how to nurture development in children despite uncertainty about   diagnosis or  long term outcomes.</p></td>
          </tr>
          <tr>
            <td width="88"><img border="0" src="/help/symposium/2014/images/jo-mascorro_sml.jpg" width="88" height="126" alt="" /></td>
            <td><h4 style="margin: 0; padding: 0;">Jo Mascorro</h4>
              
			  	<p>Author of an audio CD series, &ldquo;Don&rsquo;t Look  Now, Your Behavior is Showing!&rdquo;  is an outstanding   national speaker with 34  years of experience in education. She   provides training in behavior  intervention, communication strategies,   and programming for students with  disabilities.</p></td>
          </tr>

<tr>
            <td width="88"><img border="0" src="/help/symposium/2014/images/larry-wexler_sml.jpg" width="88" height="126" alt="" /></td>
            <td><h4 style="margin: 0; padding: 0;">Larry Wexler</h4>
              
			  	<p>Division Director for  the Research to Practice Division of the U.S.   Department of Education, Office  of Special Education Programs (OSEP),   will discuss seclusion and restraint,  suspension, and   disproportionality.</p></td>
          </tr>

      </table>
            </td>
            <td id="rightsidebar" style="vertical-align: top; padding: .6em;" width="300">
            
						<div id="audience">
			<h3>Audience</h3>
              <p>Outstanding learning opportunity for <strong>general education teachers, administrators and parents</strong> interested in understanding more about mental health and learning disabilities in children and young adults. </p>
             </div>

			
              <h3>Goal of the Symposium</h3>
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
' 			  <h3>Breakout Topics Include:</h3>
'              <ul>
'                <li>Addressing Challenging Behaviors in Early  Childhood</li>
'				<li>Transition and Employment </li>
'				<li>Assistive Technology</li>
'				<li>Working with Parents and Guardians: A Team  Approach to Challenging Behaviors</li>
'				<li>Juvenile Justice and Students with Disabilities  Facing Suspension, Expulsion, or Juvenile Court</li>
'              </ul>
'              <p>Others yet to come!</p>
%>             
              
              <hr />
			  
			  
<div id="workshops" style="margin:40px 0px;"><h3>Workshops Include:</h3>
			<ul>
				<li><strong>Understanding the Enormity of Depression and How to  Develop Skills Needed for Healing in Children and Young Adults, </strong>
					<p>Dr.  Read Sulik, child and adolescent psychiatrist and pediatrician				</p>
				</li>
				<li><strong>Anxiety from the Inside Out, </strong>
					<p>Dr. Read Sulik, child and adolescent psychiatrist and  pediatrician</p>
				</li>
				<li><strong><em>Challenging Behaviors in Early Childhood</em></strong>,
					<p>Lise Fox, Ph.D,   Director of the Florida Center for Inclusive Communities, the University   of South Florida Center for Excellence in Developmental Disabilities   and principal investigator of the OSEP-funded Technical Assistance   Center on Social Emotional Intervention for Young Children</p>
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
			</ul></div>			  
			  
		<hr />	  
<!--#include virtual="/help/symposium/past-resources.html"-->

              
              <%
'				<hr />			  
'              <h3>Keynote Speakers:</h3>
'              <ul>
'                <li><strong>Dr. Susan Jenkins </strong>(director of the Bluestem Center for Child and Family Development, is a child and adolescent psychiatrist recognized nationally for her work with youth and families, with a focus on those with disabilities.)</li>
'                <li><strong>Jo Mascorro </strong>(author of “Don’t Look Now, Your Behavior is Showing!” is an<br />
'                	outstanding national speaker with 30 years of experience in education. She provides training in behavior intervention, communication strategies, and programming for students with disabilities.)<strong></strong></li>
'                <li><span style="margin-bottom:1em;"><strong>Larry Wexler</strong> (Division Director for the Research to Practice Division of the<br />
'                	U.S. Department of Education, Office of Special Education Programs (OSEP), will discuss seclusion and restraint, suspension, and disproportionality.)<strong></strong></span></li>
'              </ul>
'			  <hr />
'			  <h3>Interactive  Sessions</h3>
'              <p> Morning and afternoon breakout sessions facilitated by experienced child psychiatrists, practitioners and education professionals. 
'
'			  <hr />
'              <h3>Workshop Sessions <br />
'                <span style="font-size:.75em; font-style:italic; text-transform:none; font-weight:normal">(Sessions held in the morning and again in the afternoon)</span></h3>
'              
'              <p><strong>How To Have Tourette syndrome</strong><br />
'                Josh Hanagarne,<em> <br />
'                Librarian, Salt Lake City Public Library, UT
'                Lauren Schrock, M.D., Neurologist, University of Utah Healthcare, UT</em> </p>
'              
'              <p><strong>Working with Persistently AggressiveYouth: Building Empathy and New Behaviors</strong><br />
'                Stan Davis, <em><br />
'                Retired School Counselor, Researcher, and Author,              stopbullyingnow.com and youthvoiceproject.com, ME</em></p>
'              
'              <p><strong>Children, Mental Health, and Psychiatric Medication:
'                Empowering Parents with Information on How to Talk to Their Children
'                about Medication and How the Medication May Impact School Performance<br />
'                </strong>Jane Marie Sulzle,<em> <br />
'                DNP, Clinical Nurse Specialist in Child and Adolescent 
'                Psychiatry, PrairieCare Medical Group, MN</em></p>
'              
'              <p><strong>Promoting Optimal Mental Health and Wellness in Children: What We Need to Know
'                about Brain Development and What We Need to Do<br />
'                </strong>Read Sulik, <em><br />
'                M.D., Child, Adolescent, and Adult Psychiatrist, Senior Vice President<br />
'                of Behavioral Health Services, Sanford Health, MN</em></p>
'              
'              <p><strong>Students with Learning Disabilities: Instruction and Accommodations in Reading </strong><br />
'                Todd Busch<em>, <br />
'                Ph.D., Associate Professor, Department of Special and Gifted<br />
'                Education, University of St. Thomas, MN</em></p>
'              
'              <p><strong>If I Knew Then What I Know Now</strong><br />
'                
'                Moderator: Jody Manning,<em> <br />
'                Parent Training Project Coordinator, PACER Center, MN</em><br />
'                <br />
'                Carolyn Anderson, <br />
'                <em>Parent Advocate, PACER Center, MN</em><br />
'                <br />
'                Pat Anderson, <br />
'                <em>Parent Advocate, PACER Center, MN</em><br />
'                <br />
'                Jes&uacute;s Villase&ntilde;or,<em> <br />
'                Multicultural Specialist, PACER Center, MN</em><br />
'                <br />
'                Barb Ziemke, <br />
'                <em>Parent Advocate, PACER Center, MN</em><br />
'                <br />
'              </p>
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