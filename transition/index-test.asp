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
<link rel="stylesheet" type="text/css" href="/js/colorbox1.5.9/colorbox.css">

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
  <li><a class="tIcon  tVideo" href="/transition/video/series.asp?se=1"><img style="border-radius:77px; border:1px solid #000;" src="/transition/video/voices-of-exp/images/brandon-ziemke.jpg" alt="" width="114" height="114" class="fltrt" /> Voices of Experience</a>
		<div id="mainSeriesDescription">
		  <p>PACER&rsquo;s National Parent Center on Transition and Employment is launching a new &ldquo;Voices of Experience&rdquo; video series. The videos feature successful young adults with disabilities and their family members who draw on their own transition experiences to share words of advice and lessons learned.</p>
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
    <a href="/transition/resource-library/publications/NPC-18.pdf" target="_blank">
    <p>Read More <span class="fa fa-file-pdf-o"></span> <span class="fa fa-external-link"></span></p>
    </a>  </li>
  <li><a class="tIcon tNewsfeed" href="/transition/">Website Feature on Workforce Centers</a>
    <p> One-Stop Workforce Centers are the centerpiece of the Workforce Investment Act of 1998 (WIA). The One-Stop system operates through a network of centers in each state. These workforce centers provide job training, education, and employment services at a single neighborhood location. States are required to have at least one center located in each local service delivery area. Any city or county with a population of 500,000 or more is automatically approved as a local workforce investment area.</p>
    <p><a href="/transition/learning-center/employment/workforce-centers.asp">Continue Reading &gt; &gt; &gt;</a></p>
  </li>
  </ul>  


<%'-----------------------------------  Recent Updated Publications-------------------------------------- %>  

<div id="recentPubs">
<h2>Recommended Reading</h2>
<div style="margin-left:20px; margin-right:5px;">
<p><a href="/publications/possibilities/" target="_blank"><img class="centered" src="/transition/images/homepage-news/possibilities.png" alt="Possibilities: A Financial Resource for Parents of Children with Disabilities" border="0" /></a></p>
<p>This guide offers tips and information on organizing financial records, managing money, dealing with debt, preparing income taxes, saving for college, preparing youth for adult employment, and more. <a href="/publications/possibilities/" target="_blank">Read More <span class="fa fa-external-link"></span></a></p>
<hr />
<p><strong>Mapping Dreams: The Transition to Adulthood </strong><br />
Book: 50 pages. (<a href="/transition/resource-library/publications/ST-40-excerpt.pdf">Read an excerpt <span class="fa fa-file-pdf-o"></span> <span class="fa fa-external-link"></span></a>)</p>
<p></a>This book outlines practical steps parents can take to help  plan for their child&rsquo;s transition from high school to adult employment,  postsecondary education or training, and independent living. It includes &ldquo;Talk  to Your Child&rdquo; sections and checklists to help start discussions about your  child&rsquo;s future, as well as a resource list. Books are $8 each (free for  Minnesota parents). <strong>Call PACER at (952) 838-9000 and order  item ST-40.</strong></p>
<hr />
<p><a href="http://www.ncwd-youth.info/node/1463" target="_blank">Understanding the New Vision for Career Development: The Role of Family  <span class="fa fa-external-link"></span></a></p>
<p>The world of work has changed. A high school diploma alone no longer guarantees a decent living wage. A typical career path today does not necessarily follow the traditional course of high school, college, and long-term employment. Rather, according to the most recent available data from the Bureau of Labor Statistics, the average worker today stays at each of his or her jobs for 4.4 years, with the workforce’s youngest employees staying less than 3 years. That means that they will have 15 to 20 jobs over their working lives. One reality of today’s workforce, however, that has remained the same is that youth need to develop skills to be employed. To be able to acquire these skills and effectively change jobs, and plan and manage multiple careers over one’s life time, career development skills are important. The process by which youth get to know their strengths and interests, learn how different jobs connect with those interests, and build these career planning and management skills is called career development. </p>
<p><a href="http://www.ncwd-youth.info/node/1463" target="_blank">Read More <span class="fa fa-external-link"></span> </a></p>

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



<%'-----------------------------------  LAYER SLIDER -------------------------------------- %>  

<div id="layerslider" class="loading">

  <div id="Intro" class="ls-layer">
	   	<img src="/transition/images/homepage_slider/Intro Slide/Bg-intro.jpg" alt="" width="637" height="375" class="ls-bg" rel="delayIn: 0;"/>
    	<img src="/transition/images/homepage_slider/Intro Slide/L1-intro.png" alt="" width="637" height="375" class="ls-s1" rel="delayIn: 400; slidedirection: left;"/>
    	<a href="http://www.pacer.org/transition/about/" rel="delayIn: 800; slidedirection: bottom;">
    	<img src="/transition/images/homepage_slider/Intro Slide/L2-intro.png" alt="Welcome to PACER’s National Parent Center on Transition and Employment. Quality information on transition for in a format that useful to families, youth, and professionals." width="637" height="375" />
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
  
  <div id="Resource Library" class="ls-layer">
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
  <div id="story" style="min-height:500px;">
  	<h2>Featured Story</h2>
    <img class="fltrt" src="http://www.pacer.org/transition/stories/images/Sam-Graves.jpg" width="150" />
  	<h3>Assistive technology helps level the playing field</h3>
    <p>Posted: 3/26/2015</p>
    <p>For many people, constantly changing technology can be a major  source of irritation, but for 19-year-old Sam Graves, the latest innovations have been a home run. Sam, who has  cerebral palsy, is a self-professed Minnesota  Twins fan, co-author of the baseball blog &ldquo;<a href="http://gravessack.wordpress.com/" target="_blank">Two Men On <span class="fa fa-external-link"></span></a>,&rdquo; and a  freshman at Augsburg College in Minneapolis. He is thriving at school, at home, and in the community thanks, in  part, to new assistive technology.&ldquo;I am always looking for the latest and coolest piece of  technology,&rdquo; he says. &ldquo;When I&rsquo;m looking for new  technology I usually go online to find out about it or I read  about it in the news.&rdquo;</p>
    <p>Sam was 3 years old when his parents, Kathy and Hazen Graves,  first brought their son to PACER&rsquo;s Simon  Technology Center (STC). That visit was the beginning of a  fruitful relationship with PACER that has provided Sam access to new technology  as it becomes available. It also led the family to become enthusiastic PACER  volunteers.</p>
    <p>&ldquo;For a kid like Sam, technology has really leveled the playing  field,&rdquo; says Kathy. &ldquo;The iPad, for example, has  made such a huge difference in his life. He also has his own  website, he writes a blog, and he had a summer job editing copy via technology. He is a very good writer.&rdquo;</p>
    <p>&ldquo;Sam doesn&rsquo;t just use technology, he embraces it,&rdquo; says Jonathan  Campbell, an assistive technology specialist with the STC who has provided consultations for Sam at PACER.  &ldquo;When he first showed me how he uses his iPad, the conversation wasn&rsquo;t about  what the iPad could do for him, it was about how cool the iPad was. That&rsquo;s when  I knew we would get along very well!&rdquo;</p>
    <p class="centered"><a class="btn btn-cta" href="/transition/stories/">Read More</a></p>
  </div>
  
  
<%'---------------------------- NEWS ------------------------------------%>
  <div id="inthenews" style="min-height:500px; margin:5px; padding:10px; border:5px solid #425F9C; border-radius:5px;">
  
    <h2>In The News</h2>
    <div style="background:#373566; padding:20px; color:white; "><a href="https://www.facebook.com/npcte" target="_blank" style="color:#fff; text-decoration:underline;"><img class="fltlft" src="/images/facebookicon_medium.gif" alt="join our Facebook page" width="35" height="35" /> Join our Facebook Page</a> to stay up to date with all the latest transition news.</div>
    
			<div id="fbfeeddata">
				<p>Loading...</p>
			</div>
		</div>
		<script type="text/javascript">
$('#fbfeeddata').load('/transition/php/fbfeed.php');
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
  </div>
 
 
 	
  
</div>

<%'---------------------------- Bottom Ads ------------------------------------%>


<div class="additionalinfobox" id="supportPacer" style="display:none;">
<h2>Support PACER's National Parent Center on Transition and Employment </h2>

<h3><a href="https://contribute.surveymonkey.com/charity/pacer" target="_blank"><img class="fltlft" style="margin-bottom:5px;" src="/images/homenews-sml/survey-monkey.png" width="50" height="33" alt="" /></a>Join <a href="https://contribute.surveymonkey.com/charity/pacer" target="_blank">Survey Monkey Contribute</a></h3>
<p>PACER&rsquo;s National Bullying Prevention Center is excited to announce our new partnership with <a href="https://contribute.surveymonkey.com/charity/pacer" target="_blank">SurveyMonkey Contribute</a> and a new way for anyone to give thier support!  Sign up and you will receive surveys by e-mail from SurveyMonkey customers who need your opinion. For every survey you take, SurveyMonkey will donate $0.50 to PACER's National Bullying Prevention Center, and you'll get a chance to win $100 in an instant-win game. </p>



<h3 style="padding-left:5px;"><img src="/bullying/images/text-donate-pacer.jpg" width="630" height="185" alt="text-donate"/></h3>

</div>



<br class="clearfloat" />


<!--#include virtual="/transition/footer.html"-->
 <!-- end .content --></div>
<!-- end .container --></div>
</body>
</html>
