<%'Response.Redirect("2011/mannSymposiumResources2011.asp")%>
<%
Dim regOpen, regClose, regWaitDate, regWait


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
</style>
<script type="text/javascript">
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
	    <h2 style="margin: .5em 0 1em 0; font-size: 150%;">Symposium Information</h2>
        <table cellpadding="0" cellspacing="0" style="clear: both; margin: 0; padding: 0;" width="100%">
          <tr>
            <td style="vertical-align: top; padding: .6em;">
            
            <div id="header-image" style="text-align:center"><img src="/help/symposium/2012/images/2012-Mann-Banner.jpg" width="600" height="183" alt="" /></div>
            
            <h3>Audience</h3>
              <p> Outstanding learning opportunity for <strong>general education teachers, administrators and parents</strong> interested in understanding more about mental health and learning disabilities in children and young adults. </p>
              
              <div id="facebookevent" style="width:350px; float:right; margin:20px; padding:10px; border:1px solid #ccc; font-size:1.1em;">Join the <a href="https://www.facebook.com/events/411489672205992/" target="_blank">Mann Symposium Facebook Event Page</a> to stay connected with updates and announcements.</div>
              
              <h3>Date | Time</h3>
              <p>Monday, August 6, 2012 <br />
                8:00 a.m. to 4:30 p.m. </p>
              <h3><span style="color:#390">New Location</span> | <a href="http://doubletree1.hilton.com/en_US/dt/hotel/MSPBSDT-DoubleTree-by-Hilton-Hotel-Bloomington-Minneapolis-South-Minnesota/directions.do#localmap" target="_blank">View Map</a></h3>
              <p>Doubletree by Hilton Bloomington &ndash; Minneapolis South<br />
              7800 Normandale Boulevard<br />
              &nbsp;Minneapolis,  	  		Minnesota</p>
              <div style="background-color: #FFE0C1; padding: .5em; border: solid 5px #ff9933;" id="registration"> <br />
<%
If date >= regOpen Then 
  If regWait = "open" Then %>
                <a href="https://pacer.ejoinme.org/MyPages/MannSymposium2012/tabid/366894/Default.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('regNow21','','/help/symposium/images/registerNow-over.png',1)"><img src="/help/symposium/images/registerNow.png" class="fltrt" alt="Register Now" name="regNow21" width="190" height="77" border="0" id="regNow21" /></a>
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
            
<!--                    <table id="speakers">
          <tr>
            <td style="vertical-align: top; background-color: #eee;" colspan="2"><h3>2011 National Speakers</h3></td>
          </tr>
          <tr>
            <td style="vertical-align: top; background-color: #eee; text-align: center;"><img border="0" src="2011/images/Goldbloom.jpg" width="88" height="139" alt="Verna Price" /></td>
            <td style="vertical-align: top; background-color: #eee;"><h4 style="margin: 0; padding: 0;">David S. Goldbloom, <strong>M.D., FRCPC</strong></h4>
              <p>Dr. Goldbloom completed an honors degree, majoring in  Government, at Harvard University and then attended the University of Oxford as  a Rhodes Scholar where he obtained an M.A. in Physiological Sciences. He  trained in medicine and psychiatry at McGill University and is a Professor of Psychiatry  at the University of Toronto. Dr. Goldbloom's&nbsp;activities&nbsp;have been  recognized and awarded by his peers and students. He has authored numerous  scientific articles and book chapters and has provided talks and lectures to  student, professional and public audiences. He is Vice-Chair of the Mental  Health Commission of Canada. </p></td>
          </tr>
          <tr>
            <td style="vertical-align: top; background-color: #eee; text-align: center;"><img border="0" src="2011/images/Jane-Marie-Sulzle.jpg" width="88" height="139" alt="Verna Price" /></td>
            <td style="vertical-align: top; background-color: #eee;"><h4 style="margin: 0; padding: 0;">Jane Sulzle</h4>
              <p>Dr. Sulzle specializes  in the care of children and adolescents. Her experience includes over  20&nbsp;years in the medical field and 5 years in the field of  psychiatry.&nbsp;Dr. Sulzle has chosen to specialize in working with children  in the autistic spectrum. She works three days a week at Fraser Child and  Family Services to provide psychiatric&nbsp;care for the children who receive  services there. &nbsp;Being able to be a part of the Fraser team has enhanced  her knowledge of autism and allows her to provide care as member of a knowledgeable  and compassionate team.</p></td>
          </tr>
          <tr>
            <td style="vertical-align: top; background-color: #eee; text-align: center;"><img border="0" src="2011/images/josh-hanagarne.jpg" width="88" height="139" alt="Read Sulik" /></td>
            <td style="vertical-align: top; background-color: #eee;"><h4 style="margin: 0; padding: 0;">Josh Hanagarne</h4>
              <p>Josh Hanagarne is  the (formerly) twitchy, noisy giant known as the World's Strongest Librarian.  He has cured his own extreme case of Tourette's Syndrome and is now working to  replicate the process with others. Now that he can sit still and be quiet, his  credibility as a shush-happy librarian in Salt Lake City is no longer in  dispute. He believes in curiosity, questions, strength, and that things are  never so bad they can't improve. You're going to believe it as well. Josh can  be found online at <a href="http://worldsstrongestlibrarian.com/" target="_blank">http://worldsstrongestlibrarian.com/</a> and is currently in negotiations for an  upcoming memoir. <br />
              </p></td>
          </tr>
          <tr>
            <td style="vertical-align: top;background-color: #eee; text-align: center;"><img border="0" src="2011/images/Sulik-Read-MD.jpg" width="88" height="139" alt="Kevin Jennings" /></td>
            <td style="vertical-align: top; background-color: #eee;"><h4 style="margin: 0; padding: 0;">Read Sulik, M.D.</h4>
              <p>Child  and adolescent psychiatrist, adult psychiatrist and pediatrician</p></td>
          </tr>
          <tr>
            <td style="vertical-align: top;background-color: #eee; text-align: center;"><img border="0" src="2011/images/Stan-Davis.jpg" width="88" height="139" alt="Kevin Jennings" /></td>
            <td style="vertical-align: top; background-color: #eee;"><h4 style="margin: 0; padding: 0;">Stan Davis</h4>
              <p>Since the mid-1990s Stan Davis has put his energies toward helping  schools prevent bullying. Stan&rsquo;s trainings include building staff skills in  in-the-moment intervention with unacceptable behaviors, using peer norms research  and seeking and using student input, building staff-student and collegial  connectedness, and building positive bystander strategies. Stan has led  workshops for more than 50,000 students nationwide; focusing on empowering  bystander behavior. He is currently co-researcher in the Youth Voice Project,  bringing the experiences of more than 13,000 teens into our discussion about  bullying prevention. </p></td>
          </tr>
        </table>
-->
            
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
              
              
              <hr />
              <h3>Keynote Speakers:</h3>
              <ul>
                <li><strong>Dan Habib </strong>(Filmmaker in Residence at the Institute on Disability  at the University of New Hampshire, producer of &ldquo;Including Samuel&rdquo;)</li>
                <li><strong>Bryce Mackie </strong>(Mental  health counselor who created a film while in high school, about his own experience  with depression, titled &ldquo;Eternal High.&rdquo;)<strong></strong></li>
                <li><span style="margin-bottom:1em;"><strong>Michael Maddaus, M. D. </strong>(Chief, Division of Thoracic and Foregut Surgery, University of  Minnesota, will share his story &ldquo;My Transformation from  High School Drop Out to Surgeon&rdquo;, featured on the PBS series &lsquo;This Emotional  Life.&rsquo;)<strong></strong></span></li>
              </ul>
              <h3>Breakout Topics Include:</h3>
              <ul>
                <li>Gifted Kids and ADHD</li>
                <li>Trauma and Post  Traumatic Stress Disorder</li>
                <li>Challenging  Behaviors</li>
                <li>If I Knew Then What  I Know Now&hellip;</li>
              </ul>
              <p>Others yet to come!</p>
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