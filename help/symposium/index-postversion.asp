<%'Response.Redirect("2011/mannSymposiumResources2011.asp")%>
<%
Dim regOpen, regClose, regWaitDate, regWait, registrationLink

registrationLink = "https://pacer.ejoinme.org/MyPages/PACERSymposium2013/tabid/461251/Default.aspx"

regOpen = cDate("5/14/2012")
'regWaitDate = cDate("8/5/2012 11:59:00 PM")
regClose = cDate("8/3/2012")

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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Ted and Dr. Roberta Mann Foundation Symposium about Children &amp; Young Adults with Mental Health and Learning Disabilities</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/stylenoleftright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />
<script type="text/javascript" src="/css/menu.js"></script>







<style type="text/css">
td { padding: .3em; }
#speakers { 
	width:100%;
	margin-top:15px;
}
#speakers td{
	vertical-align: top; 
	background-color: #eee;
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
        <div class="printemail">
          <p> <img src="/css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a> </p>
        </div>
        <div id="breadcrumb"> <a href="/">Home</a> / <a href="../events.asp">Events</a> / <a href="/help/symposium/">Mann Symposium</a>
          <h1>Seventh Annual National Ted and Dr. Roberta Mann Foundation Symposium about Children &amp; Young Adults with Mental Health and Learning Disabilities</h1>
        </div>
      </div>
      <!--BEGIN CONTENT-->
      <div id="pagecontent">
      <%
      '  <div id="sponsorship" style="float:right; width:550px; font-size:1.4em; color:#4A4A4A; font-style:italic; text-align:right; padding-right:20px">co-sponsored by PACER Center &amp; American Dairy Queen Corp</div>
      %> 
        <table cellpadding="0" cellspacing="0" style="clear: both; margin: 0; padding: 0;" width="100%">
          <tr>
            <td style="vertical-align: top; padding: .6em;">
            
            <div id="header-image" style="text-align:center"><img src="/help/symposium/2012/images/2012-Mann-Banner.jpg" width="600" height="183" alt=">Symposium Information" /></div>
            
            <h3>Audience</h3>
              <p> Outstanding learning opportunity for <strong>general education teachers, administrators and parents</strong> interested in understanding more about mental health and learning disabilities in children and young adults. </p>
              
              <div id="facebookevent" style="width:350px; float:right; margin:20px; padding:10px; border:1px solid #ccc; font-size:1.1em;">Join the <a href="https://www.facebook.com/events/411489672205992/" target="_blank">Mann Symposium Facebook Event Page</a> to stay connected with updates and announcements.</div>
              
              <h3>Date | Time</h3>
              <p><strong style="font-size:1.1em;">Monday, August 6, 2012 </strong><br />
              8:00 a.m. to 4:30 p.m. </p>
              <h3><span style="color:#390">New Location</span> | <a href="http://doubletree1.hilton.com/en_US/dt/hotel/MSPBSDT-DoubleTree-by-Hilton-Hotel-Bloomington-Minneapolis-South-Minnesota/directions.do#localmap" target="_blank">View Map</a></h3>
              <p>Doubletree by Hilton Bloomington &ndash; Minneapolis South<br />
              7800 Normandale Boulevard<br />
              &nbsp;Minneapolis,  	  		Minnesota</p>
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
              <hr />
              <div style="background-color: #FFE0C1; padding: .5em; border: solid 5px #ff9933;" id="registration"> <br />
<%
If date >= regOpen Then 
  If regWait = "open" Then %>
                <a href="<%=registrationLink%>" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('regNow21','','/help/symposium/images/registerNow-over.png',1)"><img src="/help/symposium/images/registerNow.png" class="fltrt" alt="Register Now" name="regNow21" width="190" height="77" border="0" id="regNow21" /></a>
  <%ElseIf regWait = "wait" Then%>
                <div id="wait" style="margin-right:20px; width:250px; float:right; border:5px ridge #06F; background:#fff; padding:10px; text-align:center; font-size:1em; font-weight:bold"><p>Registration Full</p>
                  <p>If you would like to be put on a Wait List, please call 952-838-9000 or email us at <a href="mailto:pacer@pacer.org">pacer@pacer.org</a>.  Thank You. </p></div>
  <%ElseIf regWait = "full" Then%>
                <div id="full" style="margin-right:20px; width:250px; float:right; border:5px ridge #06F; background:#fff; padding:10px; text-align:center; font-size:1.2em; font-weight:bold">Registration FULL</div>
  <%ElseIf regWait = "down" Then%>
                <div id="down" style="margin-right:20px; margin-top:-75px; width:300px; float:right; border:5px ridge #06F; background:#fff; padding:10px; text-align:left; font-size:1em;">
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
                <div style="margin-right:20px; width:250px; float:right; border:5px ridge #06F; background:#fff; padding:10px; text-align:center; font-size:1.2em; font-weight:bold">Registration Opens May 14<sup>th</sup>, 2012<!--11<sup>th</sup>--></div>
<%
End If%>
                <h3 style="margin-top: 0;">Registration</h3>
                <p style="margin-bottom: 0; padding-bottom: 0;"> Registration Fee: <strong>$20.00</strong><br />
                  Lunch will be provided.<br />
                  <br />
                  Registration is limited to the <strong>FIRST 1,100</strong> reservations received.<br />
                </p>
              </div>
              <h3>Clock Hours</h3>
            <p> The 6 clock hours offered are designed to meet the requirement for Minnesota teachers renewing their teaching license in understanding the key warning signs of early-onset mental illness in children and adolescents. Local re-licensure committees, however, have final approval. </p>
            
            <table id="speakers">
              <tr>
            <td colspan="2"><h3>2012 National Speakers</h3></td>
          </tr>
          <tr>
            <td width="88"><img border="0" src="/help/symposium/2012/images/Dan-Habib.jpg" width="88" height="139" alt="" /></td>
            <td><h4 style="margin: 0; padding: 0;">Dan Habib</h4>
              <p>Filmmaker in Residence, University of New Hampshire Institute on Disability, NH</p>
              <ul>
                <li>Creating a Culture of Belonging: Inclusion on Film</li>
              </ul>
              <div style="width:560px; margin:20px auto;">
                <iframe width="560" height="315" src="http://www.youtube.com/embed/hY9IOxF9E-A" frameborder="0" allowfullscreen></iframe>
              </div></td>
          </tr>
          
          <tr>
            <td colspan="2">&nbsp;</td></tr>
          
          
          <tr>
            <td width="88"><img border="0" src="/help/symposium/2012/images/Bryce-Mackie.jpg" width="88" height="139" alt="" /></td>
            <td><h4 style="margin: 0; padding: 0;">Bryce Mackie</h4>
              <p>Filmmaker and Mental Health Counselor at a children&rsquo;s psychiatric hospital in Chicago, IL</p>
              <ul>
                <li>A Student&rsquo;s Experience with Depression and Bipolar Disorder</li>
              </ul>
              <div style="width:560px; margin:20px auto;">
                <iframe width="560" height="315" src="http://www.youtube.com/embed/2ykRjecdEYM" frameborder="0" allowfullscreen></iframe>
              </div></td>
          </tr>
          
                    

          
          <tr>
            <td width="88"><img border="0" src="/help/symposium/2012/images/Mike-Maddus.jpg" width="88" height="139" alt="" /></td>
            <td><h4 style="margin: 0; padding: 0;">Michael Maddaus, M. D.</h4>
              <p>Chief, Division of Thoracic and Foregut Surgery,University of Minnesota, MN</p>
              <ul>
                <li>A Surgeon's Saga
                  <div style="width:560px; margin:20px auto;">
                    <iframe width="560" height="315" src="http://www.youtube.com/embed/27JfFW42zb0" frameborder="0" allowfullscreen></iframe>
                  </div>
                  <br />
                </li>
              </ul></td>
          </tr>
          
                    

          
      </table>

            
            </td>
            <td style="vertical-align: top; padding: .6em;" width="300">
            
<!--#include virtual="/help/symposium/past-resources.html"-->

              <hr />
              <h3>Goal of the Symposium</h3>
              <p> The symposium is designed to enhance awareness and identify strategies for responding to mental health and learning disabilities in children and young adults from the perspective of teachers and parents.<br />
                <br />
                The symposium will provide high quality professional and parent development for Minnesota educators and parents regarding: </p>
              <ul style="margin-top: 0; padding-top: 0;">
                <li>children's mental health and learning disabilities</li>
                <li>effective treatment planning</li>
                <li>proactive, positive teaching strategies and interventions</li>
              </ul>
              
              <!--
              <hr />
              <h3>Breakout Topics Include:</h3>
              <ul>
                <li><strong>What is Authentic Inclusion?</strong><br />
                Dan Habib, <em>Filmmaker in Residence, University of New Hampshire Institute on Disability, NH This workshop will focus on how to include families and students as partners in the IEP process.</em></li>
                <li> <strong>Bright Not Broken: Identifying and Understanding Twice Exceptional Students</strong><br /> 
                Rebecca Banks and Diane Kennedy<em>, Co-authors, with contributor Temple Grandin, of &ldquo;Bright Not Broken: Gifted Kids, ADHD, and Autism,&rdquo; KY</em></li>
                <li> <strong>Turning Labels into Learning Language</strong><br />
                Anne Gearity, Ph.D.<em>, Clinical Social Worker in independent practice, and Clinical Faculty Member, University of Minnesota, MN</em></li>
                <li> <strong>What is the Connection Between a Diagnosis of Dyslexia and a Specific Learning Disability?</strong><br />
                Victoria Weinberg, Ph.D.<em>, Specific Learning Disabilities Education Specialist, Minnesota Department of Education, MN</em></li>
                <li> <strong>If I Knew Then What I Know Now&hellip;</strong><br />
                  PACER Center Panel, MN<br />
                  Moderator: Virginia Richardson<em>, Parent Training Manager</em><br />
                  Carolyn Anderson<em>, Parent Advocate</em><br />
                  Pat Anderson<em>, Parent Advocate</em><br />
                  Jes&uacute;s Villase&ntilde;or<em>, Multicultural Specialist</em><br />
                Barb Ziemke<em>, Parent Advocate</em></li>
                <li> <strong>Bullying Prevention &ndash; Everyone&rsquo;s Responsibility</strong><br />
                Jody Manning<em>, Parent Training and Information Center Coordinator, PACER Center, MN</em></li>
                <li> <strong>Transformative Technology in the Classroom</strong><br />
                Jonathan Campbell<em>, Assistive Technology Specialist, STC, PACER Center, MN</em></li>
                <li> <strong>Understanding Challenging Behaviors</strong><br />
Renelle Nelson<em>, EBD Project Coordinator and Parent Advocate, PACER Center, MN</em></li>
              </ul>
              -->
              <%
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