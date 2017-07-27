<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim rs
Dim rs_cmd

Set rs_cmd = Server.CreateObject ("ADODB.Command")
rs_cmd.ActiveConnection = MM_PACER_WEB_STRING


rs_cmd.CommandText = "SELECT TOP 4 * FROM Workshops WHERE workshop_date >= DATEADD(day, -1, getdate()) AND workshop_workshop = 'yes' ORDER BY workshop_date, workshop_name"
rs_cmd.Prepared = true

Set rs = rs_cmd.Execute
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
	
	<meta name="robots" content="noindex,nofollow" />
	<meta name="copyright" content="Copyright <%=DatePart("yyyy", Now())%>. PACER Center, Inc. All Rights Reserved." />
	<meta name="google-site-verification" content="gXnuRg7yPAqY1eJlhD3918fAFHYgz2BuUdVy64SuwE8" />
	<meta property="fb:admins" content="605576224" />
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
			animateFirstLayer : false,
			navPrevNext : true,
			navStartStop : false,
			autoPlayVideos : false,
			autoPauseSlideshow : true,
			pauseOnHover : true,
			slideDelay : 4000,
			loops : 3
		});
		$('#layerslider').removeClass('loading');		
	});		
</script>

</head>

<body>

<a id="skiptocontent" href="#mainArea">Skip to main content</a>

<div id="wrapper" style="width: 980px;">
	
	<div id="header">
	<table cellpadding="0" cellspacing="0">
		<tr>
			<td style="width: 350px;">
				<a href="/"><img src="images/pacerlogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" width="430" height="104" /></a>
		  </td>
			<td style="width: 630px;">
			<!--#include virtual="/googleSearchBox.htm"-->
            <!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
			</td>
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
'      <div style="padding:5px; margin-bottom:10px; background:#fda132; font-size:.8em; text-align:center; min-height:60px;">
'      <img src="/images/alert-homepage-sml.png" width="32" height="48" alt="" class="fltlft" style="margin:0; padding:0; margin-bottom:20px;" />
'      <strong>Road Construction Notice:</strong> <br />
'      For most of July,<br />
'      Normandale Service Rd. will be closed.<br />
'      <a href="/PACER-Detour-Directions.pdf" target="_blank">See this map for alternative directions</a></div>
%>      
      
    <h2>Featured News and Events</h2>  
        <ul class="homepagenews">
<li style="min-height:150px;">
<h3>PACER&rsquo;s Annual Benefit - Featuring Jay Leno</h3>
<p><a href="/benefit/"><img class="fltrt" src="http://www.pacer.org/benefit/2013/images/2013-JayLeno.jpg" width="75" alt="Jay Leno at the PACER Annual Benefit" /></a><a href="/benefit/">Purchase your tickets today!</a><br />
Date: May 11<sup>th</sup> 2013</p>
</li>
<li>
	<h3><strong>Parents: Join the conversation on PACER&rsquo;s <a href="http://pacerparentstalk.blogspot.com/" target="_blank">new  blog</a>!</strong></h3>
	<p>Parents  willing to share advice as well as learn from other parents of children with  disabilities are encouraged to check out PACER&rsquo;s new <a href="http://pacerparentstalk.blogspot.com/" target="_blank">ParentsTalk blog</a>. PACER&rsquo;s advocates post  weekly topics that allow parents to share their knowledge and join a  conversation with others. </p>
</li>

 <li>
<p><a href="https://contribute.surveymonkey.com/charity/pacer" target="_blank"><img class="fltrt" style="margin-bottom:5px;" src="/images/homenews-sml/survey-monkey.png" width="50" height="33" alt="" /></a>Join <a href="https://contribute.surveymonkey.com/charity/pacer" target="_blank">Survey Monkey Contribute</a> today!</p>
<p>PACER is excited to announce our new partnership with <a href="https://contribute.surveymonkey.com/charity/pacer" target="_blank">SurveyMonkey Contribute</a> and a new way for anyone to support PACER programs!  Sign up and you will receive surveys by e-mail from SurveyMonkey customers who need your opinion. For every survey you take, SurveyMonkey will donate $0.50 to PACER, and you'll get a chance to win $100 in an instant-win game. </p>
</li>        


<li><strong>NEW! </strong>&ndash; Receive   text message alerts from PACER&rsquo;s Family-to-Family Health Information Center,  including Medical Assistance renewal reminders, new health publications, and  other helpful tips.
  <p style="text-align:right"><a href="/health/updates-via-text-message.asp">More Information</a></p>
</li>


<li>
  <h3>PACER Center&rsquo;s &ldquo;Hidden Treasure&rdquo; video  wins prestigious Telly Award</h3>
<p><img class="fltrt" style="margin-bottom:5px;" src="/images/homenews-sml/Telly-Award-logo.png" width="75" height="65" alt="" />A PACER Center video about children with disabilities  and how appropriate services and education can help uncover their talents and  skills has won a prestigious Telly Award. &ldquo;Hidden Treasure,&rdquo; which  debuted at PACER Center&rsquo;s 30th Annual Benefit on May 5, was a Bronze Winner in the 33rd Annual Telly Awards,  Charitable/Not-for-Profit category. This widely  known and highly respected national and international competition receives more  than 12,000 entries annually from all 50 states and many other countries. <a href="http://www.youtube.com/watch?v=07NBtx3s6VU" target="_blank">View  the video here.</a></p>
</li>

<li>Sign up for the<a href="/newsletters/enews/"> PACER E-News</a> where you can get monthly updates by email. Sign Up Today!</li>        
</ul>
</div><!--close featured-->

<div id="leftcols">
<div id="slider">
<div id="layerslider">
<%'----------------------------------- START LAYER SLIDER -------------------------------------- ' %>  
        <div id="JayLeno" class="ls-layer" rel="slidedirection: left;">
        <a href="/benefit" target="_self" class="ls-bg">
        	<img src="/images/homePage/sliderimages/jayLeno/Bg-jayLeno.jpg" width="550" height="300" alt="PACER's Annual Benefit featuring Jay Leno" />
        </a>
        <a href="/benefit" target="_self" class="ls-s1" style="left:240px; top:60px;" rel="delayIn: 400; slidedirection: top;">
        	<img src="/images/homePage/sliderimages/jayLeno/L1-copy.png" alt="" width="283" height="142" />
        </a>        
        <a href="/benefit" target="_self" class="ls-s2" style="left:255px; top:260px;" rel="delayIn: 800; slidedirection: bottom;">
        	<img src="/images/homePage/sliderimages/jayLeno/L2-copy.png" alt="" width="266" height="35" />
        </a> 
    </div>


    <div id="ChildrensMentalHealth" class="ls-layer">
        	<img src="/images/homePage/sliderimages/childrensMentalHealth/Bg-childrensMentalHealth.jpg" alt="" width="550" height="300" class="ls-bg" rel="delayIn: 0;"/>
        	<img src="/images/homePage/sliderimages/childrensMentalHealth/L1-copy.png" alt="" width="550" height="300" class="ls-s1" rel="delayIn: 400; slidedirection: left;"/>      
        	<img src="/images/homePage/sliderimages/childrensMentalHealth/L2-copy.png" alt="" width="550" height="300" class="ls-s2" rel="delayIn: 800; slidedirection: left;"/>
        <a href="http://www.pacer.org/cmh/" class="ls-s3" rel="delayIn: 1200; slidedirection: left;">
        	<img src="/images/homePage/sliderimages/childrensMentalHealth/L3-copy.png" alt="Children’s Mental Health and Emotional or Behavioral Disorders Project. Inspiring Opportunities." width="550" height="300" />
        </a>              
    </div>

    <div id="CrosbyStillsNashBenefit" class="ls-layer">
        	<img src="/images/homePage/sliderimages/crosbyStillsNash/Bg-crosbyStillsNash.jpg" alt="" width="550" height="300" class="ls-bg" rel="delayIn: 0;"/>         
        	<img src="/images/homePage/sliderimages/crosbyStillsNash/L1-copy.png" alt="" width="550" height="300" class="ls-s1" rel="delayIn: 400; slidedirection: right;"/>
        <a href="http://www.pacer.org/benefit/" target="_self" class="ls-s2" rel="delayIn: 800; slidedirection: bottom;">
        	<img src="/images/homePage/sliderimages/crosbyStillsNash/L2-copy.png" alt="PACER’s Annual Benefit Featuring Crosby, Stills and Nash May 2nd, 2015" width="550" height="300" />
        </a>     
    </div>

    <div id="UnityDayShirt2014" class="ls-layer">
        	<img src="/images/homePage/sliderimages/unityDayTshirt/2014/Bg-unityDayShirt.jpg" alt="" width="550" height="300" class="ls-bg" rel="delayIn: 0;"/>
        	<img src="/images/homePage/sliderimages/unityDayTshirt/2014/L1-copy1.png" alt="" width="550" height="300" class="ls-s1" rel="delayIn: 400; slidedirection: left;"/>      
        	<img src="/images/homePage/sliderimages/unityDayTshirt/2014/L1-image1.jpg" alt="" width="550" height="300" class="ls-s2" rel="delayIn: 800; slidedirection: right;"/>
        <a href="http://www.customink.com/stopbullying" target="_blank" class="ls-s3" rel="delayIn: 1200; slidedirection: bottom;">
        	<img src="/images/homePage/sliderimages/unityDayTshirt/2014/L1-copy2.png" alt="Wear the Official Unity Day Shirt!" width="550" height="300" />
        </a>              
    </div>

    <div id="AppyHour" class="ls-layer">
        	<img src="/images/homePage/sliderimages/simonTechnologyCenter/appyHour/Bg-AppyHour.jpg" alt="" width="550" height="300" class="ls-bg" rel="delayIn: 0;"/>         
        	<img src="/images/homePage/sliderimages/simonTechnologyCenter/appyHour/L1-copy.png" alt="" width="550" height="300" class="ls-s1" rel="delayIn: 400; slidedirection: left;"/>
        	<img src="/images/homePage/sliderimages/simonTechnologyCenter/appyHour/L2-copy.png" alt="" width="550" height="300" class="ls-s1" rel="delayIn: 400; slidedirection: right;"/>
        <a href="http://www.pacer.org/stc/library/" target="_self" class="ls-s3" rel="delayIn: 800; slidedirection: right;">
        	<img src="/images/homePage/sliderimages/simonTechnologyCenter/appyHour/L3-copy.png" alt="The Simon Technology Center’s Lending Library Presents Appy Hour. Saturday, July 26" width="550" height="300" />
        </a>     
    </div>
    
    <div id="DianaRossBenefit" class="ls-layer">
        	<img src="/images/homePage/sliderimages/dianaRoss/Bg-dianaRoss.jpg" alt="" width="550" height="300" class="ls-bg" rel="delayIn: 0;"/>         
        	<img src="/images/homePage/sliderimages/dianaRoss/L1-copy.png" alt="" width="550" height="300" class="ls-s1" rel="delayIn: 400; slidedirection: right;"/>
        <a href="http://www.pacer.org/benefit/" target="_self" class="ls-s2" rel="delayIn: 800; slidedirection: bottom;">
        	<img src="/images/homePage/sliderimages/dianaRoss/L2-copy.png" alt="PACER’s Annual Benefit Featuring Diana Ross May 3rd, 2014" width="550" height="300" />
        </a>     
    </div>

    <div id="PacerReport2014" class="ls-layer">
        <div class="ls-s1" style="top:31px;">
			<iframe width="550" height="261" src="//www.youtube.com/embed/2X2eBN8LmW0" frameborder="0" allowfullscreen></iframe>       
        </div>
        <div class="ls-s2" style="top: 0px; color:#fff; background:#000; padding:5px; text-align:left; width:637px;" rel="delayIn: 400; slidedirection: top; slideoutdirection:top;">Video: The PACER Report</div>
    </div> 

    <div id="Symposium2014" class="ls-layer">
        	<img src="/images/homePage/sliderimages/symposium/2014/Bg-Symposium2014.jpg" alt="" width="550" height="300" class="ls-bg" rel="delayIn: 0;"/>
        <a href="/help/symposium/" target="_self" class="ls-s1" rel="delayIn: 400; slidedirection: bottom;">
        	<img src="/images/homePage/sliderimages/symposium/2014/L1-copy.png" alt="Ninth Annual National Pacer Symposium" width="550" height="300" />
        </a>      
    </div>     

    <div id="GiveMN2013" class="ls-layer">
        	<img src="/images/homePage/sliderimages/giveMN/Bg-giveMN.jpg" alt="" width="550" height="300" class="ls-bg" rel="delayIn: 0;"/>         
        	<img src="/images/homePage/sliderimages/giveMN/L1-copy.png" alt="" width="550" height="300" class="ls-s1" rel="delayIn: 400; slidedirection: right;"/>
        <a href="http://givemn.razoo.com/story/Pacer-Center" target="_blank" class="ls-s2" rel="delayIn: 800; slidedirection: bottom;">
        	<img src="/images/homePage/sliderimages/giveMN/L2-copy.png" alt="Give to the max day is November 14, 2013. Donate to PACER today through November 14." width="550" height="300" />
        </a>     
    </div>

    <div id="UnityDayShirt2013" class="ls-layer">
        	<img src="/images/homePage/sliderimages/unityDayTshirt/Bg-unityDayShirt.jpg" alt="" width="550" height="300" class="ls-bg" rel="delayIn: 0;"/>
        	<img src="/images/homePage/sliderimages/unityDayTshirt/L1-copy1.png" alt="" width="550" height="300" class="ls-s1" rel="delayIn: 400; slidedirection: left;"/>      
        	<img src="/images/homePage/sliderimages/unityDayTshirt/L1-image1.jpg" alt="" width="172" height="207" class="ls-s2" style="left:354px; top:73px;" rel="delayIn: 800; slidedirection: right;"/>
        <a href="http://www.customink.com/stopbullying" target="_blank" class="ls-s3" rel="delayIn: 1200; slidedirection: bottom;">
        	<img src="/images/homePage/sliderimages/unityDayTshirt/L1-copy2.png" alt="Wear the Official Unity Day Shirt!" width="550" height="300" />
        </a>              
    </div>

    <div id="RunWalkRoll2013" class="ls-layer">
        	<img src="/images/homePage/sliderimages/runWalkRoll/Bg-runWalkRoll.jpg" alt="" width="550" height="300" class="ls-bg" rel="delayIn: 0;"/>
        	<img src="/images/homePage/sliderimages/runWalkRoll/L1-copy1.png" alt="" width="550" height="300" class="ls-s1" rel="delayIn: 400; slidedirection: right;"/>
        	<img src="/images/homePage/sliderimages/runWalkRoll/L1-copy2.png" alt="" width="550" height="300" class="ls-s2" rel="delayIn: 800; slidedirection: right;"/>
        	<img src="/images/homePage/sliderimages/runWalkRoll/L1-copy3.png" alt="" width="550" height="300" class="ls-s3" rel="delayIn: 1200; slidedirection: right;"/>
        <a href="/bullying/nbpm/runwalkroll/" target="_self" class="ls-s4" rel="delayIn: 1600; slidedirection: bottom;">
        	<img src="/images/homePage/sliderimages/runWalkRoll/L1-copy4.png" alt="PACER's Fourth Annual Run Walk Roll Against Bullying" width="550" height="300" />
        </a>     
    </div>

    <div id="JayLenoThanks" class="ls-layer">
        	<img src="/images/homePage/sliderimages/jayLeno/Bg-jayLeno.jpg" alt="" width="550" height="300" class="ls-bg" rel="delayIn: 0;"/>
        	<img src="/images/homePage/sliderimages/jayLeno/L3-copy.png" alt="" width="302" height="134" style="left:225px; top:50px;" rel="delayIn: 400; slidedirection: top;"/>
        <a href="/benefit" target="_self" class="ls-s4" style="left:0px; top:257px;" rel="delayIn: 800; slidedirection: bottom;">
        	<img src="/images/homePage/sliderimages/jayLeno/L4-copy.png" alt="PACER's Annual Benefit featuring Jay Leno" width="550" height="43" />
        </a> 
    </div>
	
    <div id="DreamBigPromo" class="ls-layer">
        <div class="ls-s1" style="top:31px;">
			<iframe width="550" height="261" src="http://www.youtube.com/embed/2xbetUwFp-E?rel=0" frameborder="0" allowfullscreen></iframe>        
        </div>
        <div class="ls-s2" style="top: 0px; color:#fff; background:#000; padding:5px; text-align:left; width:637px;" rel="delayIn: 400; slidedirection: top; slideoutdirection:top;">Video: Dream Big!</div>
    </div>
    
    <div id="Symposium2013" class="ls-layer" rel="slidedirection: left;">
        	<img src="/images/homePage/sliderimages/symposium/Bg-Symposium2013.jpg" alt="" width="550" height="300" class="ls-bg" style="left:0px; top:0px;" rel="delayIn: 0;"/>
        <a href="/help/symposium/" target="_self" class="ls-s3" style="left:0px; top:0px;" rel="delayIn: 400; slidedirection: bottom;">
        	<img src="/images/homePage/sliderimages/symposium/L1-copy.png" alt="Eighth Annual National Pacer Symposium" width="550" height="300" />
        </a>      
    </div>   
    
    <div id="ParentInformaionCenter" class="ls-layer">
   		<img class="ls-bg" rel="slidedirection: fade;" src="/images/homePage/sliderimages/parentInformationCenter/Bg-parentInfo.jpg" alt="" width="550" height="300" />
   		<img class="ls-s1" rel="delayIn: 400; slidedirection: left;" src="/images/homePage/sliderimages/parentInformationCenter/L1-copy.png" alt="" width="550" height="300" />
   		<img class="ls-s2" rel="delayIn: 800; slidedirection: left;" src="/images/homePage/sliderimages/parentInformationCenter/L2-copy.png" alt="" width="550" height="300" />        
        <a href="/parent" target="_self" class="ls-s3" rel="delayIn: 1200; slidedirection: left;">
        	<img src="/images/homePage/sliderimages/parentInformationCenter/L3-copy.png" width="550" height="300" alt="For more than 30 years, PACER has helped parents enhance the quality of life and expand opportunities for their children, including those with disabilities. Call 952-838-9000 to learn more." />
        </a>
    </div>  
    
    <div id="HowPACERHelps" class="ls-layer">
   		<img class="ls-bg" rel="slidedirection: fade;" src="/images/homePage/sliderimages/howPacerHelps/Bg-howPacerHelps.jpg" alt="" width="550" height="300" />
   		<img class="ls-s1" rel="delayIn: 400; slidedirection: left;" src="/images/homePage/sliderimages/howPacerHelps/L1-copy.png" alt="" width="550" height="300" />
   		<img class="ls-s2" rel="delayIn: 800; slidedirection: left;" src="/images/homePage/sliderimages/howPacerHelps/L2-copy.png" alt="" width="550" height="300" />        
        <a href="/about/howpacerhelps.asp" target="_self" class="ls-s3" rel="delayIn: 1200; slidedirection: left;">
        	<img src="/images/homePage/sliderimages/howPacerHelps/L3-copy.png" width="550" height="300" alt="PACER provides individual assistance,workshops, publications and more to help families make decisionsabout education and other services for their child with disabilities. Learn more about PACER." />
        </a>
    </div>   
              
    <div id="HealthInformationCenter" class="ls-layer">
   		<img class="ls-bg" rel="slidedirection: fade;" src="/images/homePage/sliderimages/heathInformationCenter/Bg-healthInfo.jpg" alt="" width="550" height="300" />
   		<img class="ls-s1" rel="delayIn: 400; slidedirection: top;" src="/images/homePage/sliderimages/heathInformationCenter/L1-copy.png" alt="" width="550" height="300" />
   		<img class="ls-s2" rel="delayIn: 1200; slidedirection: fade;" src="/images/homePage/sliderimages/heathInformationCenter/L2-copy.png" alt="" width="550" height="300" />        
        <a href="/health" target="_self" class="ls-s3" rel="delayIn: 1600; slidedirection: bottom;">
        	<img src="/images/homePage/sliderimages/heathInformationCenter/L3-copy.png" width="550" height="300" alt="Parents of children with disabilities and special health care needs rely on this central resource for support, advocacy, and information about the health care system. Explore our resources." />
        </a>
    </div>
    
    <div id="SimonTechnologyCenter" class="ls-layer">
   		<img class="ls-bg" rel="slidedirection: fade;" src="/images/homePage/sliderimages/simonTechnologyCenter/Bg-STC.jpg" alt="" width="550" height="300" />
   		<img class="ls-s1" rel="delayIn: 400; slidedirection: right;" src="/images/homePage/sliderimages/simonTechnologyCenter/L1-copy.png" alt="" width="550" height="300" />
   		<img class="ls-s2" rel="delayIn: 800; slidedirection: right;" src="/images/homePage/sliderimages/simonTechnologyCenter/L2-copy.png" alt="" width="550" height="300" />        
        <a href="/stc" target="_self" class="ls-s3" rel="delayIn: 1200; slidedirection: right;">
        	<img src="/images/homePage/sliderimages/simonTechnologyCenter/L3-copy.png" width="550" height="300" alt="PACER helps children and young adults withdisabilities employ innovative assistivetechnology to enhance learning, work,and independence. Discover the latest Assistive Technology." />
        </a>
    </div>   
    
    <div id="Workshops" class="ls-layer">
   		<img class="ls-bg" rel="slidedirection: fade;" src="/images/homePage/sliderimages/workshopsAvailableAccrossTheState/Bg-workshops.jpg" alt="" width="550" height="300" />
   		<img class="ls-s1" rel="delayIn: 400; slidedirection: right;" style="left:0px; top:0px;" src="/images/homePage/sliderimages/workshopsAvailableAccrossTheState/L1-copy.png" alt="" width="550" height="300" />
   		<img class="ls-s2" rel="delayIn: 800; slidedirection: right;" style="left:0px; top:0px;" src="/images/homePage/sliderimages/workshopsAvailableAccrossTheState/L2-copy.png" alt="" width="550" height="300" />        
        <a href="/workshops" target="_self" class="ls-s3" style="left:0px; top:0px;" rel="delayIn: 1200; slidedirection: right;">
        	<img src="/images/homePage/sliderimages/workshopsAvailableAccrossTheState/L3-copy.png" width="550" height="300" alt="PACER workshops help parents of children with disabilities and the professionals who serve them to learn more about the subjects that matter most. Find a workshop near you." />
        </a>
    </div>   
    
    <div id="EarlyChildhoodFamilyInformation" class="ls-layer">
   		<img class="ls-bg" rel="slidedirection: fade;" src="/images/homePage/sliderimages/earlyChildhoodFamilyInformation/Bg-earlyChildhood.jpg" alt="" width="550" height="300" />
   		<img class="ls-s1" rel="delayIn: 400; slidedirection: left;" src="/images/homePage/sliderimages/earlyChildhoodFamilyInformation/L1-copy.png" alt="" width="550" height="300" />
   		<img class="ls-s2" rel="delayIn: 800; slidedirection: left;" src="/images/homePage/sliderimages/earlyChildhoodFamilyInformation/L2-copy.png" alt="" width="550" height="300" />        
        <a href="/ec" target="_self" class="ls-s3" rel="delayIn: 1200; slidedirection: left;">
        	<img src="/images/homePage/sliderimages/earlyChildhoodFamilyInformation/L3-copy.png" width="550" height="300" alt="PACER gives parents of young children the confidence, knowledge, and skills they need to obtain the services their children deserve. More for children ages birth to 5." />
        </a>
    </div>        
      
    <div id="NationalBullyingPreventionCenter" class="ls-layer">
   		<img class="ls-bg" rel="slidedirection: fade;" src="/images/homePage/sliderimages/nationalBullyingPreventionCenter/Bg-NBPC.jpg" alt="" width="550" height="300" />
   		<img class="ls-s1" rel="delayIn: 400; slidedirection: right;" src="/images/homePage/sliderimages/nationalBullyingPreventionCenter/L1-copy.png" alt="" width="550" height="300" />
   		<img class="ls-s2" rel="delayIn: 800; slidedirection: right;" src="/images/homePage/sliderimages/nationalBullyingPreventionCenter/L2-copy.png" alt="" width="550" height="300" />        
        <a href="/bullying" target="_self" class="ls-s3" rel="delayIn: 1200; slidedirection: right;">
        	<img src="/images/homePage/sliderimages/nationalBullyingPreventionCenter/L3-copy.png" width="550" height="300" alt="PACER unites, engages, and educates communities nationwide to prevent bullying through the use of creative, relevant, interactive resources. The End of Bullying Begins with you!" />
        </a>
    </div>       
    
           

<!-- BENEFIT 2013 SLIDES


    <div id="JayLenoThanks" class="ls-layer" rel="slidedirection: left;">
        <a href="/benefit" target="_self" class="ls-bg">
        	<img src="/images/homePage/sliderimages/jayLeno/Bg-jayLeno.jpg" width="550" height="300" alt="PACER's Annual Benefit featuring Jay Leno" />
        </a>
        <a href="/benefit" target="_self" class="ls-s3" style="left:225px; top:50px;" rel="delayIn: 400; slidedirection: top;">
        	<img src="/images/homePage/sliderimages/jayLeno/L3-copy.png" alt="" width="302" height="134" />
        </a>        
        <a href="/benefit" target="_self" class="ls-s4" style="left:0px; top:257px;" rel="delayIn: 800; slidedirection: bottom;">
        	<img src="/images/homePage/sliderimages/jayLeno/L4-copy.png" alt="" width="550" height="43" />
        </a> 
    </div>

    <div id="JayLeno" class="ls-layer" rel="slidedirection: left;">
        <a href="/benefit" target="_self" class="ls-bg">
        	<img src="/images/homePage/sliderimages/jayLeno/Bg-jayLeno.jpg" width="550" height="300" alt="PACER's Annual Benefit featuring Jay Leno" />
        </a>
        <a href="/benefit" target="_self" class="ls-s1" style="left:240px; top:60px;" rel="delayIn: 400; slidedirection: top;">
        	<img src="/images/homePage/sliderimages/jayLeno/L1-copy.png" alt="" width="283" height="142" />
        </a>        
        <a href="/benefit" target="_self" class="ls-s2" style="left:255px; top:260px;" rel="delayIn: 800; slidedirection: bottom;">
        	<img src="/images/homePage/sliderimages/jayLeno/L2-copy.png" alt="" width="266" height="35" />
        </a> 
    </div>

    <div id="Extravaganza" class="ls-layer" rel="slidedirection: left;">
        <a href="/benefit" target="_self" class="ls-bg">
        	<img src="/images/homePage/sliderimages/extravaganza/Bg-Extravaganza.jpg" width="550" height="300" alt="PACER's Annual Benefit Extravaganza" />
        </a>
        <a href="/benefit" target="_self" class="ls-s1" style="left:230px; top:5px;" rel="delayIn: 400; slidedirection: top;">
        	<img src="/images/homePage/sliderimages/extravaganza/L1-copy.png" alt="" width="311" height="97" />
        </a>        
        <a href="/benefit" target="_self" class="ls-s2" style="left:265px; top:115px;" rel="delayIn: 800; slidedirection: right;">
        	<img src="/images/homePage/sliderimages/extravaganza/L2-copy.png" alt="" width="256" height="112" />
        </a> 
        <a href="/benefit" target="_self" class="ls-s3" style="left:265px; top:260px;" rel="delayIn: 1200; slidedirection: bottom;">
        	<img src="/images/homePage/sliderimages/extravaganza/L3-copy.png" alt="" width="264" height="38" />
        </a>    
        <a href="/benefit" target="_self" class="ls-s4" style="left:10px; top:265px;" rel="delayIn: 400;">
        	<img src="/images/homePage/sliderimages/extravaganza/L4-copy.png" alt="" width="220" height="32" />
        </a>                
    </div>
    
    <div id="Mercedes" class="ls-layer" rel="slidedirection: left;">
         <a href="/benefit" target="_self" class="ls-bg">
        	<img src="/images/homePage/sliderimages/mercedes/Bg-Mercedes.jpg" width="550" height="300" alt="Win a 2-year lease on a 2013 Mercedes-Benz SLK250 Roadster. Purchase your ticket at PACER's Annual Benefit" />
        </a>
        <a href="/benefit" target="_self" class="ls-s1" style="left:10px; top:10px;" rel="delayIn: 400; slidedirection: top;">
        	<img src="/images/homePage/sliderimages/mercedes/L1-copy.png" alt="" width="398" height="71" />
        </a>        
        <a href="/benefit" target="_self" class="ls-s2" style="left:10px; top:260px;" rel="delayIn: 800; slidedirection: left;">
        	<img src="/images/homePage/sliderimages/mercedes/L2-copy.png" alt="" width="334" height="28" />
        </a> 
        <a href="/benefit" target="_self" class="ls-s3" style="left:350px; top:232px;" rel="delayIn: 1200; slidedirection: right;">
        	<img src="/images/homePage/sliderimages/mercedes/L3-logo.png" alt="" width="189" height="54" />
        </a>         
    </div>  
    
    <div id="IndianBike" class="ls-layer" rel="slidedirection: left;">
         <a href="/benefit" target="_self" class="ls-bg">
        	<img src="/images/homePage/sliderimages/indianBike/Bg-IndianBike.jpg" width="550" height="300" alt="Bid on a 2013 Indian Chief Vintage Motorcycle LE Signed by Jay Leno at PACER's Annual Benefit Live Auction" />
        </a>
        <a href="/benefit" target="_self" class="ls-s1" style="left:0px; top:0px;" rel="delayIn: 400; slidedirection: top;">
        	<img src="/images/homePage/sliderimages/indianBike/L1-copy.png" alt="" width="550" height="43" />
        </a>        
        <a href="/benefit" target="_self" class="ls-s2" style="left:0px; top:259px;" rel="delayIn: 800; slidedirection: bottom;">
        	<img src="/images/homePage/sliderimages/indianBike/L2-copy.png" alt="" width="550" height="41" />
        </a>      
    </div> 
    
    <div id="VikingsLondon" class="ls-layer" rel="slidedirection: left;">
         <a href="/benefit" target="_self" class="ls-bg">
        	<img src="/images/homePage/sliderimages/vikingsLondon/Bg-VikingsLondon.jpg" width="550" height="300" alt="Bid on a 2013 Indian Chief Vintage Motorcycle LE Signed by Jay Leno at PACER's Annual Benefit Live Auction" />
        </a>
        <a href="/benefit" target="_self" class="ls-s1" style="left:0px; top:0px;" rel="delayIn: 400; slidedirection: top;">
        	<img src="/images/homePage/sliderimages/vikingsLondon/L1-copy.png" alt="" width="550" height="42" />
        </a>        
        <a href="/benefit" target="_self" class="ls-s2" style="left:0px; top:262px;" rel="delayIn: 800; slidedirection: bottom;">
        	<img src="/images/homePage/sliderimages/vikingsLondon/L2-copy.png" alt="" width="550" height="38" />
        </a>     
        <a href="/benefit" target="_self" class="ls-s3" style="left:0px; top:40px;" rel="delayIn: 1200; slidedirection: left;">
        	<img src="/images/homePage/sliderimages/vikingsLondon/L3-logo.png" alt="" width="169" height="222" />
        </a> 
        <a href="/benefit" target="_self" class="ls-s4" style="left:370px; top:70px;" rel="delayIn: 1200; slidedirection: right;">
        	<img src="/images/homePage/sliderimages/vikingsLondon/L4-logo.png" alt="" width="165" height="165" />
        </a>                        
    </div>           

END BENEFIT 2013 SECTION -->

	
<%'---------------------------- END LAYER SLIDER ------------------------------------%>
				
</div><!--close layerslider-->

</div><!--close slider-->	
<div id="underslider">
<div id="programs">
<h3>Categories / Programs</h3>
<img src="/images/homePage/buttonimages/NBPC.jpg" width="175" height="119" alt="" />
<img src="/images/homePage/buttonimages/ParentInformationCenter.jpg" width="175" height="119" alt="" />
<img src="/images/homePage/buttonimages/HealthInfoCenter.jpg" width="175" height="119" alt="" />

<img src="/images/homePage/buttonimages/SimonTechCenter.jpg" width="175" height="119" alt="" />
<img src="/images/homePage/buttonimages/EarlyChildhood.jpg" width="175" height="119" alt="" />
<img src="/images/homePage/buttonimages/NationalParentCenterNetwork.jpg" width="175" height="119" alt="" />

<img src="/images/homePage/buttonimages/Symposium.jpg" width="175" height="119" alt="" />
<img src="/images/homePage/buttonimages/NewsLetters.jpg" width="175" height="119" alt="" />
<img src="/images/homePage/buttonimages/Publications.jpg" width="175" height="119" alt="" />

</div><!--close programs-->
<%If Not rs.EOF Then%>
<div id="workshopswrapper">
<h3>Upcoming Workshops</h3>
<ul class="workshops">
<%
	Do Until rs.EOF
	
		Dim WID 
		WID = rs("workshop_id")
		WID = Replace(WID, "{", "")
		WID = Replace(WID, "}", "")

		Dim wsDate
		wsDate = FormatDateTime(rs("workshop_date"),1)
		
		Dim wsLink
		If Len(rs("workshop_link")) > 3 Then
			wsLink = rs("workshop_link")
		Else
			wsLink = "/forms/workshops.asp?wksp=" & WID
		End If
%>

	<li class="wslisting">

			<h4 class="wstitle"><%=rs("workshop_name")%></h4>
			<div class="wsdate">Date: <%=wsDate%></div>
			<div class="wstime"><strong>Time:</strong> <%=rs("workshop_time")%></div>
			<div class="wslocation">
				Location: <%=rs("workshop_location")%>
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
				<strong><a href="<%=wsLink%>"><span class="extralinktext"><%=rs("workshop_name")%> - </span>Register for this workshop</a></strong>			
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
<%End If%>




</div><!--close workshops-->
</div><!--close underslider-->

</div><!--close leftcols-->
<div id="pageextender" style="clear:both">&nbsp;</div>
</div><!--close pagecontent-->

	
</div>	<!--close maincontent-->	
	<!--#include virtual="/footer.htm"-->
		
</div><!--close wrapper-->

</body>
</html>