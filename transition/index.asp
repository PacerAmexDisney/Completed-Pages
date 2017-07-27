<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim rsAll, rsPopular, rsFeatured, sql, fSort, dateVal
Dim pubs_cmd

Set pubs_cmd = Server.CreateObject ("ADODB.Command")
pubs_cmd.ActiveConnection = MM_PACER_WEB_STRING

sql = "SELECT TOP 5 * FROM publications WHERE pub_transition = 'yes' AND pub_type = 'handout' ORDER BY pub_date DESC "

pubs_cmd.CommandText = sql
pubs_cmd.Prepared = true
Set rsPubs = pubs_cmd.Execute

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="description" content="The road to adulthood for youth with disabilities is filled with opportunity, and parents play a key role. PACER’s National Parent Center on Transition and Employment is ready with the information families want, presented in a way families can use." />
<meta name="keywords" content="transition, employment, disabilities, career, development, assistive technology, postsecondary, education, independent living, inspiration, inspiring possibilities" />
<title>National Parent Center on Transition and Employment</title>

<!-- for Facebook -->     
<meta property="og:title" content="National Parent Center on Transition and Employment" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/" />
<meta property="og:description" content="The road to adulthood for youth with disabilities is filled with opportunity, and parents play a key role. PACER’s National Parent Center on Transition and Employment is ready with the information families want, presented in a way families can use." />




<link rel="icon" href="http://www.pacer.org/transition/favicon.ico" />
<link href="/transition/css/style.css" rel="stylesheet" type="text/css" />
<link href="/transition/css/home.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/php-sdk/fbwallfeed.css"/>
<link rel="stylesheet" href="/js/LayerSlider/layerslider/css/layerslider.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="/js/colorbox1.5.9/colorbox.css" />

<!--#include virtual="/transition/dynamic-head-items.html"-->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
  document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script src="/js/LayerSlider/layerslider/jQuery/jquery-easing-1.3.js" type="text/javascript"></script>
<script src="/js/LayerSlider/layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>
<script src="/js/colorbox1.5.9/jquery.colorbox-min.js"></script>

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
			slideDelay : 10000,
			loops : 3
		});
		$('#layerslider').removeClass('loading');		
	});		
</script>

<script type="text/javascript">
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
		this.href = 'http://www.youtube.com/embed/' + vars['v'] + '?rel=0&amp;wmode=transparent&amp;autoplay=1';						
	}
});
//Initialize Colorbox
$(".videoPopUp").colorbox({iframe:true, innerWidth:640, innerHeight:390});
</script>

<style type="text/css">
	#inthenews {
		min-height:500px; 
		margin:5px; 
		padding:10px; 
		border:5px 
		solid #425F9C; 
		border-radius:5px;
		position:relative;
		overflow:hidden;
	}
</style>
</head>

<body>
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<!--#include virtual="/transition/dynamic-header.html"-->
<!--#include virtual="/transition/topnav.html"-->
 <div class="content">

 <div id="featured">
 
  <h1 id="maincontent">Features</h1>  
  <ul>
<%'------------------------------------- FEATURES ------------------------------------ 
'  	
'<li><a class="tIcon tNewsfeed" href="/transition/">Title</a>
'  	<p>blurb</p>
' </li>
%>
  
   <li><a class="tIcon tInfo" href="https://www2.ed.gov/about/offices/list/osers/transition/products/postsecondary-transition-guide-2017.pdf?utm_content&amp;utm_medium=email&amp;utm_name&amp;utm_source=govdelivery&amp;utm_term" target="blank"><img src="/transition/images/transition-guide-cover.jpg" width="270" height="137" alt=""/></a>
		<div class="mainSeriesDescription">
		  <p>A new 2017 <a href="https://www2.ed.gov/about/offices/list/osers/transition/products/postsecondary-transition-guide-2017.pdf?utm_content&amp;utm_medium=email&amp;utm_name&amp;utm_source=govdelivery&amp;utm_termhttps://www2.ed.gov/about/offices/list/osers/transition/products/postsecondary-transition-guide-may-2017.pdf?utm_content=&amp;utm_medium=email&amp;utm_name=&amp;utm_source=govdelivery&amp;utm_term=" target="_blank">&quot;Transition Guide to Postsecondary Education and Employment for Students and Youth with Disabilities&quot;</a> was recently published by the U.S. Department of Education, Office of Special Education and Rehabilitative Services (50 pages). The guide addresses transition planning, services and requirements, as authorized by IDEA and the Rehabilitation Act; education and employment options for students after high school; and supported decision&ndash;making.</p>
	    </div></li>
  

   <li><a class="tIcon  tVideo" href="/transition/video/series.asp?se=1"><img style="border-radius:77px; border:1px solid #000;" src="/transition/video/voices-of-exp/images/jesus-v.jpg" alt="" width="114" height="114" class="fltrt" /> Voices of Experience</a>
		<div class="mainSeriesDescription">
		  <p>PACER&rsquo;s National Parent Center on Transition and Employment has launched the &ldquo;Voices of Experience&rdquo; video series. The videos feature successful young adults with disabilities and their family members who draw on their own transition experiences to share words of advice and lessons learned.</p>
		  <p><a href="/transition/video/series.asp?se=1">Learn More &gt;&gt;&gt;</a></p>
		  </div>
  </li>
  <li><a class="tIcon tInfo" href="/transition/resource-library/publications/NPC-18.pdf">Help your Young Adult Learn about Accessing Accommodations after High School <span class="fa fa-file-pdf-o"> </span> <span class="fa fa-external-link"></span></a>
    <p>When your young adult with disabilities graduates from
high school, many aspects of his or her life will change.
Services that had been provided under the Individuals
with Disabilities Education Act (IDEA 2004) will end,
and your son or daughter will need to find new ways to
receive accommodations in postsecondary education and
training, employment, and for independent living.</p>
    <a href="/transition/resource-library/publications/NPC-18.pdf" target="_blank">Read More <span class="fa fa-file-pdf-o"></span> <span class="fa fa-external-link"></span></a>
  </li>
  <li><a class="tIcon tNewsfeed" href="/transition/learning-center/employment/">Website Feature: Employment Resources</a>
    <p>Check out the new Employment section of the Learning Center featuring a variety of tools and resources designed to help families support their youth with disabilities as they explore potential career paths, access needed supports and accommodations, and find success in the workplace.<br />
      <a href="/transition/learning-center/employment/">Read more &gt;&gt;&gt;</a></p>
  </li>
  <li><a class="tIcon tNewsfeed" href="/transition/stories/index.asp">Success Stories</a>
    <p>Read how Marissa, Jessica, Jesse, Ely, Ann, Malcom, Sam, Ashlee, Noah and Elizabeth worked to achieve their personal education, performance and employment goals.</p>
  </li>
  </ul>  


<%'-----------------------------------  Recent Updated Publications-------------------------------------- %>  

<div id="recentPubs">
<h2>Recommended Reading</h2>
<div style="margin-left:20px; margin-right:5px;">
<p align="center"><img src="/transition/images/how-we-made-it-happen.jpg" width="300" height="114" alt=""/></p>
<p><a href="http://www.thinkcollege.net/images/stories/Insight_30_F.pdf" target="_blank">How We Made It Happen: Interviews with Parent Leaders about their Kids Going to College</a> <span class="fa fa-file-pdf-o" aria-hidden="true"></span> <span class="fa fa-external-link"></span><br />
  Do you wish that there were more postsecondary options for your son or daughter with intellectual and developmental disabilities available in your community? Read this recent publication from Think College and PACER's National Parent Center on Transition and Employment for tips from other parents on how they helped start new programs. </p>
    <hr />
<p><a href="/publications/possibilities/" target="_blank"><img class="centered" src="/transition/images/homepage-news/possibilities.png" alt="Possibilities: A Financial Resource for Parents of Children with Disabilities" border="0" /></a></p>
<p>This guide offers tips and information on organizing financial records, managing money, dealing with debt, preparing income taxes, saving for college, preparing youth for adult employment, and more. <a href="/publications/possibilities/" target="_blank">Read More <span class="fa fa-external-link"></span></a></p>
<hr />
<p><strong>Mapping Dreams: The Transition to Adulthood </strong><br />
Book: 50 pages. (<a href="/transition/resource-library/publications/ST-40-excerpt.pdf">Read an excerpt <span class="fa fa-file-pdf-o"></span> <span class="fa fa-external-link"></span></a>)</p>
<p>This book outlines practical steps parents can take to help  plan for their child&rsquo;s transition from high school to adult employment,  postsecondary education or training, and independent living. It includes &ldquo;Talk  to Your Child&rdquo; sections and checklists to help start discussions about your  child&rsquo;s future, as well as a resource list. Books are $8 each (free for  Minnesota parents). <strong>Call PACER at (952) 838-9000 and order  item ST-40.</strong></p>


</div>
<h2>Recently Updated Handouts</h2>
<ul>
<%Do Until rsPubs.EOF%>
	<li class="pdficonlist"><a href="<%=rsPubs("pub_link")%>" target="_blank"><%=rsPubs("pub_name")%>  <span class="fa fa-external-link"></span></a></li>
<%
	rsPubs.MoveNext
  Loop
%>

</ul>
</div>

 </div>



<%'-----------------------------------  LAYER SLIDER --------------------------------------' %>  

<div id="layerslider" class="loading">
   <div id="introVideo" class="ls-layer">
    <div class="ls-s1" style="top:31px;">
			<iframe width="637" height="344" src="//www.youtube.com/embed/8Gdny1q1Icw?rel=0" frameborder="0" allowfullscreen></iframe>    
    </div>
    <div class="ls-s2" style="top: 0px; color:#fff; background:#000; padding:5px; text-align:left; width:637px;" rel="delayIn: 400; slidedirection: top; slideoutdirection:top;">Introducing PACER&rsquo;s NPCTE Website </div>
  </div> 

  <div id="Intro" class="ls-layer">
	   	<img src="/transition/images/homepage_slider/Intro Slide/Bg-intro.jpg" alt="" width="637" height="375" class="ls-bg" rel="delayIn: 0;"/>
    	<img src="/transition/images/homepage_slider/Intro Slide/L1-intro.png" alt="" width="637" height="375" class="ls-s1" rel="delayIn: 400; slidedirection: left;"/>
    	<a href="http://www.pacer.org/transition/about/" rel="delayIn: 800; slidedirection: bottom;">
    	<img src="/transition/images/homepage_slider/Intro Slide/L2-intro.png" alt="Welcome to PACER’s National Parent Center on Transition and Employment. Quality information on transition for in a format that useful to families, youth, and professionals." width="637" height="375" />
    </a>      
  </div>

  <div id="LearningCenter" class="ls-layer">
	   	<img src="/transition/images/homepage_slider/LearningCenter/Bg-learningCenter.jpg" alt="" width="637" height="375" class="ls-bg" rel="delayIn: 0;"/>
    	<img src="/transition/images/homepage_slider/LearningCenter/L1-learningCenter1.png" alt="" width="637" height="375" class="ls-s1" rel="delayIn: 400; slidedirection: left;"/>
    	<a href="http://www.pacer.org/transition/learning-center/" class="ls-s2" rel="delayIn: 800; slidedirection: bottom;">
    	<img src="/transition/images/homepage_slider/LearningCenter/L1-learningCenter2.png" alt="Learning Center. Find helpful information and resources on transition topics such as independent living, postsecondary education and employemnt." width="637" height="375" />
    </a>      
  </div>

  <div id="Stories" class="ls-layer">
	   	<img src="/transition/images/homepage_slider/Stories/Bg-stories.jpg" alt="" width="637" height="375" class="ls-bg" rel="delayIn: 0;"/>
    	<img src="/transition/images/homepage_slider/Stories/L1-stories1.png" alt="" width="637" height="375" class="ls-s1" rel="delayIn: 400; slidedirection: left;"/>
    	<a href="http://www.pacer.org/transition/stories/" class="ls-s2" rel="delayIn: 800; slidedirection: bottom;">
    	<img src="/transition/images/homepage_slider/Stories/L1-stories2.png" alt="Stories. We learn better from each other. These success stories may encourage and inspire you." width="637" height="375" />
    </a>      
  </div>

  <div id="Videos" class="ls-layer">
	   	<img src="/transition/images/homepage_slider/Videos/Bg-videos.jpg" alt="" width="637" height="375" class="ls-bg" rel="delayIn: 0;"/>
    	<img src="/transition/images/homepage_slider/Videos/L1-videos1.png" alt="" width="637" height="375" class="ls-s1" rel="delayIn: 400; slidedirection: left;"/>
    	<a href="http://www.pacer.org/transition/video/" class="ls-s2" rel="delayIn: 800; slidedirection: bottom;">
    	<img src="/transition/images/homepage_slider/Videos/L1-videos2.png" alt="Videos. PACER has compiled useful videos to help learn more about what is possible for youth transitioning to adulthood." width="637" height="375" />
    </a>      
  </div>
  
  <div id="ResourceLibrary" class="ls-layer">
	   	<img src="/transition/images/homepage_slider/Resoruce Library/Bg-resourceLibrary.jpg" alt="" width="637" height="375" class="ls-bg" rel="delayIn: 0;"/>
    	<img src="/transition/images/homepage_slider/Resoruce Library/L1-resourceLibrary.png" alt="" width="637" height="375" class="ls-s1" rel="delayIn: 400; slidedirection: left;"/>
    	<a href="http://www.pacer.org/transition/video/" class="ls-s2" rel="delayIn: 800; slidedirection: bottom;">
    	<img src="/transition/images/homepage_slider/Resoruce Library/L2-resourceLibrary.png" alt="Learning Center. The Resource Library offers helpful information and resources on a wide range of transition topics for students, families and professionals." width="637" height="375" />
    </a>      
  </div>  

</div>

<%'---------------------------- TOP AD SPACE ------------------------------------%>
<% 
'<div class="topAdSpace">
'	<div id="shine_bright">
'		<div class="adDescription">
'		<p>Celebrate differences this holiday season by embracing what makes each of us ShineBright.</p></div>
'		<div class="adLink"><a href="http://www.pacer.org/shinebright/">Learn more</a></div>
'	</div>
'</div>
%>
 
<div class="underSlider" style="width:647px; margin:5px;">
	
<%'---------------------------- STORY SECTION ------------------------------------%>
  <div id="story" style="min-height:400px;">
  	<h3><strong>New Health Section Debuts on  Website</strong></h3>

    <p>The <a href="/transition/learning-center/health/index.asp">new health section</a> on PACER&rsquo;s NPCTE website includes a rich variety of resources and specific information on important issues such as:</p>
    <ul>
    <li>Health transition planning and the IEP</li>
    <li>Transitioning to health care providers who serve adults</li>
    <li>Building self-advocacy and self-care management skills</li>
    <li>Financing your young adult&rsquo;s health care</li>
    </ul>
    <p>In conjunction with the launch of the new health section of the NPCTE website, PACER has published a comprehensive <a href="/transition/resource-library/publications/NPC-54.pdf" target="_blank">health assessment transition planning checklist</a>, designed to be completed by parents and youth together.</p>
    
     
    </div>
  
  
<%'---------------------------- NEWS ------------------------------------%>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.9&appId=508764009277041";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>  
  <div id="inthenews">
  
    <h2>In The News</h2>
    <div style="background:#373566; padding:20px; color:white; "><a href="https://www.facebook.com/npcte" target="_blank" style="color:#fff; text-decoration:underline;"><img class="fltlft" src="/images/facebookicon_medium.gif" alt="join our Facebook page" width="35" height="35" /> Join our Facebook Page</a> to stay up to date with all the latest transition news.</div>
    
			<div id="fbfeeddata">
				
				<div class="fb-post" data-href="https://www.facebook.com/npcte/posts/623764211159863" data-width="607" data-show-text="true"><blockquote cite="https://www.facebook.com/npcte/posts/623764211159863" class="fb-xfbml-parse-ignore"><p>Career exploration is an important step in helping a student fulfill long term employment goals. The questions and...</p>Posted by <a href="https://www.facebook.com/npcte/">PACER’s National Parent Center on Transition and Employment</a> on&nbsp;<a href="https://www.facebook.com/npcte/posts/623764211159863">Thursday, June 8, 2017</a></blockquote></div>
				<div class="fb-post" data-href="https://www.facebook.com/npcte/posts/627053740830910" data-width="607" data-show-text="true"><blockquote cite="https://www.facebook.com/npcte/posts/627053740830910" class="fb-xfbml-parse-ignore">Posted by <a href="https://www.facebook.com/npcte/">PACER’s National Parent Center on Transition and Employment</a> on&nbsp;<a href="https://www.facebook.com/npcte/posts/627053740830910">Tuesday, July 11, 2017</a></blockquote></div>
				<div class="fb-post" data-href="https://www.facebook.com/npcte/posts/633361593533458" data-width="607" data-show-text="true"><blockquote cite="https://www.facebook.com/npcte/posts/633361593533458" class="fb-xfbml-parse-ignore">Posted by <a href="https://www.facebook.com/npcte/">PACER’s National Parent Center on Transition and Employment</a> on&nbsp;<a href="https://www.facebook.com/npcte/posts/633361593533458">Friday, July 7, 2017</a></blockquote></div>
				
				
				
				
			</div>
		</div>
  </div>

<%'---------------------------- Bottom Ads ------------------------------------%>


<div class="additionalinfobox" id="supportPacer" style="display:none;">
<h2>Support PACER's National Parent Center on Transition and Employment </h2>

<h3><a href="https://contribute.surveymonkey.com/charity/pacer" target="_blank"><img class="fltlft" style="margin-bottom:5px;" src="/images/homenews-sml/survey-monkey.png" width="50" height="33" alt="" /></a>Join <a href="https://contribute.surveymonkey.com/charity/pacer" target="_blank">Survey Monkey Contribute</a></h3>
<p>PACER&rsquo;s National Bullying Prevention Center is excited to announce our new partnership with <a href="https://contribute.surveymonkey.com/charity/pacer" target="_blank">SurveyMonkey Contribute</a> and a new way for anyone to give their support!  Sign up and you will receive surveys by e-mail from SurveyMonkey customers who need your opinion. For every survey you take, SurveyMonkey will donate $0.50 to PACER's National Bullying Prevention Center, and you'll get a chance to win $100 in an instant-win game. </p>



<h3 style="padding-left:5px;"><img src="/bullying/images/text-donate-pacer.jpg" width="630" height="185" alt="text-donate"/></h3>

</div>



<br class="clearfloat" />

 <!-- end .content --></div>
<!--#include virtual="/transition/footer.html"-->

<!-- end .container --></div>
</body>
</html>
