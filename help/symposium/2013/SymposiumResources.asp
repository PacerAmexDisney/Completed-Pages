<%'Response.Redirect("2011/mannSymposiumResources2011.asp")%>
<%
Dim regOpen, regClose, regWaitDate, regWait, registrationLink

registrationLink = "https://pacer.ejoinme.org/MyPages/PACERSymposium2013/tabid/461251/Default.aspx"

regOpen = cDate("5/14/2013")
'regWaitDate = cDate("8/5/2012 11:59:00 PM")
regClose = cDate("8/3/2013")

If date >= regOpen Then
	regWait = "open"
End If
'If now > regWaitDate Then
'	regWait = "wait"
'End If
If date >= regClose Then
	regWait = "full"
End If

'regWait = "down"
regWait = "full"

%>

<!DOCTYPE html 
     PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>PACER Symposium about Children &amp; Young Adults with Mental Health and Learning Disabilities for 2013</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/stylenoleftright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />
<style type="text/css">
td { padding: .3em; }
#speakers { 
	width:100%;
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
      <div><script type="text/javascript">
//<![CDATA[

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

//]]>
</script><!-- Contains Contact Pacer | Donate | Google search bar | Social media --> 
        <a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a> </div>
      <!--#include virtual="/dynamicheader.htm"--> 
    </div>
    <div id="maincontent">
      <div id="pagetoporange">
      	<div id="breadcrumb"> <a href="/">Home</a> / <a href="../../events.asp">Events</a> / <a href="/help/symposium/">PACER Symposium</a>
      		<h1>Eighth Annual PACER Symposium about Children &amp; Young Adults with Mental Health &amp; Learning Disabilities</h1>
        </div>
      </div>
      <!--BEGIN CONTENT-->
      <div id="pagecontent">
      <%
      '  <div id="sponsorship" style="float:right; width:550px; font-size:1.4em; color:#4A4A4A; font-style:italic; text-align:right; padding-right:20px">co-sponsored by PACER Center &amp; American Dairy Queen Corp</div>
      %> 
      <div id="header-image" style="text-align:center"><img src="/help/symposium/2013/images/symposium-banner.jpg" width="783" height="163" alt="" /></div>
<table cellpadding="0" cellspacing="0" style="clear: both; margin: 0; padding: 0;" width="100%">
	<tr>
            <td style="vertical-align: top; padding: .6em; max-width:620px">            
            <h3>Audience</h3>
              <p>Outstanding learning opportunity for <strong>general education teachers, administrators and parents</strong> interested in understanding more about mental health and learning disabilities in children and young adults. </p>
             
			 <% 
             '<div id="facebookevent" style="width:350px; float:right; margin:20px; padding:10px; border:1px solid #ccc; font-size:1.1em;">Join the <a href="https://www.facebook.com/events/411489672205992/" target="_blank">Mann Symposium Facebook Event Page</a> to stay connected with updates and announcements.</div> 
              %>
			  
			  
			  
             
			  
			  <!--
			  
			  <hr />
              
              <h3>Symposium Presentation Handouts and Resources</h3>
              <p>In a &ldquo;green&rdquo; initiative, we will not be providing copies of  presentations in your symposium folder this year.&nbsp;  For those of you who would like to print your own copies prior to the event, the handouts are available  below.</p>
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
              <td>Closing Keynote Presentation:  A Surgeon&rsquo;s Saga</td>
              <td><strong>Michael Maddaus</strong>, M.D., Chief, Division of Thoracic and Foregut Surgery,University of Minnesota, MN</td>
              <td>&nbsp;</td>
              </tr>
		</table>
		
		
		
		-->
		
		
              <hr />
              
              <h3>Symposium Presentation Handouts and Resources              </h3>
              <ul style="margin:40px 0px;">
              	<li class="zipiconlist"><a href="/help/symposium/2013/resources/2013-Symposium-Resources.zip" target="_blank">Complete Presentation Resources Download (.zip)</a> (87MB download) <em>(listed individually below)</em></li>
            </ul>
              <table id="resources"><tr>
              <th>Topic</th><th>Speaker</th>
              <th>Resources (pdf)</th>
              </tr>
              
              <tr>
              <td>Opening Keynote Presentation: Spark:  The Revolutionary New Science of Exercise and the Brain</td>
              <td><strong>John Ratey</strong>, M.D., Associate Clinical Professor of Psychiatry at Harvard Medical School, Mass.</td>
              <td><ul>
                <li><a href="/help/symposium/2013/resources/John-Ratey-Keynote.pdf">The Revolutionary New Science of Exercise and the Brain</a> (80MB download)</li></ul></td>
              </tr>
              
              <tr>
              <td>Controlling Your Emotions and Behavior Regardless of How Disagreeably Others Treat You</td>
              <td><strong>John Maag</strong>, Ph.D., University of Nebraska-Lincoln Professor specializing in the treatment of adolescents with emotional and behavioral disorders, Neb.</td>
              <td><ul>
                <li><a href="/help/symposium/2013/resources/John-Maag-Workshop.pdf" target="_blank">Controlling Your Emotions and Behavior Regardless of How Disagreeably Others Treat You</a></li>
              </ul></td>
              </tr>
              
              <tr>
              <td>Scared, Sad, and Spacey:  Handling Emotional Distress in the Classroom</td>
              <td><strong>Chris Bedford</strong>, Ph.D., Licensed Psychologist at the Clinic for Attention, Learning, and Memory (CALM), Minn.</td>
              <td><ul>
                <li><a href="/help/symposium/2013/resources/Scared-Sad-Spacey.pdf" target="_blank">Scared, Sad, and Spacey:  Emotional Distress in the Classroom</a></li>
              </ul></td>
              </tr>
              
              <tr>
              <td>The Use of Prone Restraint in School:  Minnesota&rsquo;s Experience</td>
              <td><strong>Tammy Pust</strong>, Chief Judge of the Office of Administrative Hearings, Minn.</td>
              <td><ul>
                <li><a href="/help/symposium/2013/resources/Prone-Restraint-In-School.pdf" target="_blank">The Use of Prone Retraint in School:  Minnesota&rsquo;s Experience</a></li>
              </ul></td>
              </tr>
              
              <tr>
              <td>Siblings Forever:  Brothers and Sisters Share Their Stories</td>
              <td><strong>Moderators:  Sean Roy, </strong>Projects Director for Transition and Workforce Partnerships, PACER Center; <strong>Barb Ziemke</strong>, Parent Advocate and Project Coordinator, PACER Center, Minn.<br />
Evan McNeil, Carleton College Student, Minn.<br />
Sandra Richardson, Program Director of Family Resources of Health and Wellness, Sabathani Community Center, Minn.<br />
Carleigh Sawyer, NHA, Financial Analyst, Fairview Ebenezer, Minn.  </td>
              <td>
              <ul>
              <li><em>Siblings Forever</em> <a href="http://www.pacer.org/publications/specedrights.asp" target="_blank">(available through PACER Center website)</a></li>
              </ul>
              </td>
              </tr>
              
              <tr>
              <td>Important Lessons learned in Parenting a Child with Disabilities</td>
              <td><strong>PACER Center Panel</strong>, Minn.<br />
                <strong>Moderator: Jody</strong> <strong>Manning</strong>, Parent Training and Information Center Coordinator<br />
Carolyn Anderson, Parent Advocate<br />
Virginia Richardson, Parent Training Manager<br />
Bonnie Jean Smith, Parent Advocate</td>
                <td>
                <ul>
                <li><a href="/help/symposium/2013/resources/If-I-Knew-Then.pdf" target="_blank">If I Knew Then What I Know Now</a></li>
                </ul>
                </td>
              </tr>
              
              <tr>
              <td>Student Success for $100 or Less:  Free and Low-cost Assistive Technology for Students with Learning Disabilities</td>
              <td><strong>PACER&rsquo;s Simon Technology Center Panel</strong>, Minn.<br />
Jonathan Campbell, Assistive Technology Specialist<br />
Kasey Miklik, Assistive Technology Specialist<br />
John Newman, Assistive Technology Specialist</td>
              <td><ul>
                <li><a href="/help/symposium/2013/resources/Low-Cost-Technology.pdf" target="_blank">Student Success for $100 or Less:  Free and Low-cost Assistive Technology for Students with Learning Disabilities</a></li>
              </ul></td>
              </tr>
              
              <tr>
              <td>From Naughty to Nice:  The Road to Positive Behavior Interventions</td>
              <td><strong>Renelle Nelson</strong>, EBD Project Coordinator and Parent Advocate, PACER Center, Minn.</td>
              <td><ul>
                <li><a href="/help/symposium/2013/resources/Naughty-to-Nice.pdf" target="_blank">From Naughty to Nice:  The Road to Positive Behavior Interventions</a></li>
              </ul></td>
              </tr>
              
              <tr>
              <td>Keynote Presentation:  National Bullying Prevention Center News and Events</td>
              <td><strong>Julie Hertzog</strong>, National Bullying Prevention Center Director, PACER Center, Minn.</td>
              <td><ul>
                <li><a href="/help/symposium/2013/resources/End-of-Bullying.pdf" target="_blank">The End of Bullying Begins with You</a></li>
              </ul></td>
              </tr>
              
              <tr>
              <td>Keynote Presentation: This is Your Life</td>
              <td><strong>Minnesota Statewide Family Network Youth Advisory Board</strong>, Minn.</td>
              <td>&nbsp;</td>
              </tr>
              
              <tr>
              <td>Keynote Presentation: I Can&rsquo;t Make You:  Attitude Shifts and Derailments for Resistance</td>
              <td><strong>John Maag</strong>, Ph.D., University of Nebraska-Lincoln Professor specializing in the treatment of adolescents with emotional and behavioral disorder, Neb.</td>
              <td><ul>
                <li><a href="/help/symposium/2013/resources/John-Maag-Keynote.pdf" target="_blank">Managing Resistance</a></li>
              </ul></td>
              </tr>
              
              
              <tr>
              <td>Closing Keynote Presentation: Stories Matter</td>
              <td><strong>Ken Barlow</strong>, Meteorologist at KSTP-TV, Minn.</td>
              <td>&nbsp;</td>
              </tr>
		</table>
              <hr />

              <h3>Clock Hours</h3>
            <p> The 6 clock hours offered are designed to meet the requirement for Minnesota teachers renewing their teaching license in understanding the key warning signs of early-onset mental illness in children and adolescents. Local re-licensure committees, however, have final approval. </p>
            
            <table id="speakers">
              <tr>
            <td colspan="2"><h3>2013 National Speakers</h3></td>
          </tr>
          
          
          <tr>
            <td width="88"><img border="0" src="/help/symposium/2013/images/KenBarlow.jpg" width="88" height="126" alt="" /></td>
            <td><h4 style="margin: 0; padding: 0;">Ken Barlow</h4>
              
			  	<p>Ken Barlow has been a Twin Cities television meteorologist for nearly 20 years, most recently at KSTP-TV.  For the past 5 years only his family was aware of his bi-polar diagnosis, but last fall he disclosed it publicly. Through appearances and interviews, he is working to reduce the stigma associated with mental illness and addiction.</p></td>
          </tr>
          <tr>
            <td width="88"><img border="0" src="/help/symposium/2013/images/JohnMaag.jpg" width="88" height="126" alt="" /></td>
            <td><h4 style="margin: 0; padding: 0;">Dr. John Maag</h4>
              
			  	<p>A University of Nebraska-Lincoln Professor specializing in 
the treatment of adolescents with emotional and behavioral disorders,    
believes that changing our responses to students who have behavioral issues is key.
</p></td>
          </tr>
          <tr>
            <td width="88"><img border="0" src="/help/symposium/2013/images/JohnRatey.jpg" width="88" height="132" alt="" /></td>
            <td><h4 style="margin: 0; padding: 0;">Dr. John Ratey</h4>
              
			  	<p>An associate clinical professor of psychiatry at  Harvard Medical School and is in private practice in Cambridge, Mass. Ratey  began studying ADHD in the 1980s, founding the Boston Center for the Study of  Autism in 1986, and has co-authored a series of books about the disorder. His  most recent book, &ldquo;Spark,&rdquo; is a groundbreaking exploration of the connection  between exercise and the brain&rsquo;s performance.</p></td>
          </tr>
      </table>

            
            </td>
            <td style="vertical-align: top; padding: .6em;" width="300">
            
              <h3>Goal of the Symposium</h3>
              <p> The symposium is designed to enhance awareness and identify strategies for responding to mental health and learning disabilities in children and young adults from the perspective of teachers and parents.<br />
                <br />
                The symposium will provide high quality professional and parent development for Minnesota educators and parents regarding: </p>
              <ul style="margin-top: 0; padding-top: 0;">
                <li>children's mental health and learning disabilities</li>
                <li>effective treatment planning</li>
                <li>proactive, positive teaching strategies and interventions</li>
              </ul>
              <hr />
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