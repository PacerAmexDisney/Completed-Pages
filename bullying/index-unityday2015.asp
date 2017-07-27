<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="description" content="PACER's National Bullying Prevention Center unites, engages, and educates kids, teens, parents and communities nationwide to address bullying through creative, relevant, and interactive resources.
" />
<meta name="keywords" content="bullying, teen bullying, bullying help, bullying for kids, bullying news articles, cyber bullying, children with disabibilities, special needs children, teen bullying, parent programs, parents of disabled child, child development, blind deaf autistic children education programs, pacer center, pacer org
" />
<title>National Bullying Prevention Center</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link href="/bullying/css/home.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="/js/LayerSlider/layerslider/css/layerslider.css" type="text/css" />
<link href="/js/colorbox/colorbox.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="/php-sdk/hashtagAggregator.css"/>

<!--#include virtual="/bullying/dynamic-head-items.html"-->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.6.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script src="/js/LayerSlider/layerslider/jQuery/jquery-easing-1.3.js" type="text/javascript"></script>
<script src="/js/LayerSlider/layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>
<script src="/js/colorbox/jquery.colorbox-min.js" type="text/javascript"></script>

<script type="text/javascript">
//<![CDATA[
	$(document).bind('cbox_complete', function(){
		if($('#cboxTitle').height() > 20){
			$("#cboxTitle").hide();
			$("<div>"+$("#cboxTitle").html()+"</div>").css({color: $("#cboxTitle").css('color')}).insertAfter(".cboxPhoto");
			$.fn.colorbox.resize();
		}
	});
	
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
		$('#tribe .ls-videopreview').attr('src', 'http://img.youtube.com/vi/u9gXj-NhOq8/hqdefault.jpg');
		$('#BravoDanceCenter .ls-videopreview').attr('src', 'http://img.youtube.com/vi/Ud9teKnWtks/hqdefault.jpg');
		$('#SayItLoud .ls-videopreview').attr('src', 'http://img.youtube.com/vi/SNCfs1-M-NM/hqdefault.jpg');		
		$('#layerslider').removeClass('loading');		
		
		$('#twitterData').load('/php-sdk/displayUnityDayTwitter.php', function() {
				$(".unitydaycolorboximg").colorbox({rel:'unitydaycolorboximg'});			
		});
		$('#instagramData').load('/php-sdk/displayUnityDayInstagram.php', function() {
				$(".unitydaycolorboximg").colorbox({rel:'unitydaycolorboximg'});			
		});
				
	});	
	//]]>	
</script>

<style type="text/css">
#topnav li#wewillgentopnav {
	background:url(/bullying/images/nav_at.jpg) repeat-y right top;
}

#topnav li#wewillgentopnav {
	background:url(/bullying/images/nav_at.jpg) repeat-y right top;
}
#icarebecause {
	height:auto;
}
.tweetwrapper {
	width:294px;
}
.instagramwrapper {
	width:294px;
}
.instagramwrapper .username {
	width:110px;
}
#cboxTitle{
position:absolute;
font-weight:bold;
color:#7C7C7C;
margin:0;
left:0;
right: 0;
bottom:100px;
text-align:left;
width:100%;
padding: 5px;
font-size: .9em;
margin-left: -5px;
background: none repeat scroll 0 0 rgba(0, 0, 0, 0.75);
margin-bottom: 23px;
}

#featured li.wide {
	margin-left:22px;
}
#featured li.wide h3{
	margin-left:0px;
	margin-right:0px;
	padding-left:0px;
	padding-right:0px;
}
</style>

</head>

<body>

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>


<!--#include virtual="/bullying/dynamic-header.html"-->
<!--#include virtual="/bullying/topnav.html"-->
 <div class="content">

 <div id="featured">
 <h2 style="margin-bottom:5px"><img class="glowred" src="/bullying/images/sitesforkidsandteens.png" width="335" height="41" alt="Sites for Kids and Teens" /></h2>
 <div id="kab-tab" style="text-align:center; margin-bottom:5px; border-bottom:1px solid #ccc; padding-bottom:5px;"> <a href="http://www.pacerkidsagainstbullying.org/kab/" target="_blank"><img src="/bullying/images/kab_w176.jpg" width="176" height="134" alt="KidsAgainstBullying.org" /></a>
   <a href="http://www.pacerteensagainstbullying.org/tab/" target="_blank"><img src="/bullying/images/tab_w175.jpg" width="175" height="135" alt="TeensAgainstBullying.org" /></a>
   <div style="padding:5px 0px; border-top:solid 1px #999; margin-left:20px; margin-right:20px;">
   </div>
   <p style="margin:0 0 1em;">Websites for kids and teens to learn about bullying, engage in activities, and be inspired to own an important social cause.</p>
 </div>
  <h1 id="maincontent"><img src="/bullying/images/features.png" width="120" height="41" alt="Features" /></h1>  
  <ul>
<%'-------------------------------------START FEATURES SECTION ------------------------------------ 
'  	
'<li><a class="fIcon fNewsfeed" href="/bullying/nbpm/">Title</a>
'  	<p>blurb</p>
' </li>
%>



<li class="wide">
	<div>
	<h3>YouTube Sensation Bethany Mota joins PACER’s National Bullying Prevention Center and Viktor’s Quest to S.T.O.P. Bullying at Mall of America&reg; October 20th</h3>
	<img src="/bullying/images/homepage-extra/bethany-moa.jpg" style="border:1px solid black;" width="320" height="213" alt=""/>
	<p>October is National Bullying Prevention Month, which was started by PACER Center in 2006, and YouTube sensation Bethany Mota will help mark the occasion Tuesday, Oct. 20 at Mall of America&reg; during PACER’s Together Against Bullying Day. <a href="http://www.pacer.org/bullying/getinvolved/moa-event.asp">Learn More >>></a></p>
	</div>
</li>


<li class="wide">
<h3>Support Bullying Prevention in Style with CustomInk</h3>
<img src="/bullying/images/2015-tshirt-promo.jpg" width="320" height="213" alt=""/>
<p><strong>Make Plans Now To Wear Orange on Unity Day Oct. 21 and Show Support of Kindness, Inclusion and Acceptance</strong><br />
  PACER has partnered with CustomInk to launch its fifth annual &lsquo;<a href="http://www.customink.com/stopbullying" target="_blank">Be Good to Each Other</a>&rsquo; campaign in support of Unity Day and PACER&rsquo;s National Bullying Prevention Month in October. The campaign encourages students, groups, and others to take a stand for kindness, respect, and inclusion by designing and wearing custom bullying prevention t-shirts. Official Unity Day t-shirts are still&nbsp;available for purchase for $12 at <a href="http://customink.com/stopbullying" target="_blank">customink.com/stopbullying</a>. <strong>Please note that t-shirts ordered between 10/14-10/31 will NOT arrive in time for Unity Day.</strong> You can also take a stand with celebrity supporters by purchasing a celebri-tee for $20. Click <a href="http://www.customink.com/stopbullying" target="_blank">here to view and purchase celebrity t-shirts</a>. CustomInk will donate all profits (approximately $8 per shirt) back to PACER.</p>
  </li>
  
  <li class="wide">
<h3><a href="/bullying/yourenotalone/" target="_blank">New Campaign!<br />
<img src="/bullying/images/youre-not-alone-screen.jpg" width="320" height="271" alt="You&rsquo;re Not Alone. We&rsquo;re Here for You."/></a></h3>
<p>Hold an event in your community or start a classroom discussion!<br />
  Send the message to students who are bullied that they are not alone!</p>
  <p>Create communities that join together against bullying.This campaign provides education and resources on ways to provide support, hope and help for those who have experienced bullying. Features classroom and event toolkits designed to start conversation and initiate action on ways to &ldquo;be there&rdquo; united together against bullying.</p>
  </li>



<li class="wide"> 
<a href="/bullying/resources/parents/"><img style="padding:5px 0" src="/bullying/images/helping-your-child.jpg" width="320" height="213" alt="Helping Your Child"/></a>
<h3 style="text-align:center"><a href="/bullying/resources/parents/">What Parents Should Know About Bullying</a></h3>
<p>This interactive, easy to read and navigate guide offers a comprehensive overview for parents to learn what they can do to address and prevent bullying.</p>
</li>


<li class="wide">
<h3><img src="http://www.pacer.org/bullying/images/partners/spookley-sml.jpg"  align="left" />Early Learners,<br />
 &ldquo;Stop Bullying Before it Starts&rdquo;</h3>
<p>The online toolkit “<a href="/bullying/resources/toolkits/spookley/">Stop Bullying Before It Starts</a>” is the result of a PACER partnership with the team that developed “Spookley the Square Pumpkin,” a book for young children. Spookley is  a square pumpkin who lives in a round pumpkin patch world. The toolkit provides links to free resources that teachers can bring directly into their classrooms</p>
</li>




<li>
<!--<a href="/publications/bullypdf/BP-28.pdf" target="_blank"><img src="/bullying/images/bullying101tab-cover.jpg" width="320" height="247" style="padding:5px 0" alt="bullying 101 cover"/></a>-->
<h3 class="fIcon fPdf">NEW PUBLICATION!<br />
  <a href="/publications/bullypdf/BP-28.pdf" target="_blank">&quot;Bullying 101: Guide for Middle and High School Students&quot;</a></h3>
<p>A visual, age appropriate 14-page guide with easy to understand information. The guide provides the basics for talking with students about what bullying is and isn&rsquo;t, the roles of students, and tips on what students can do to address bullying situations.</p>
</li>





<li>
<h3 class="fIcon fPdf">Spanish Translations</h3>
	  	<p><a href="/bullying/resources/publications/spanish-materials.asp">See our spanish translations section to find out what informational handouts are available.</a></p>
</li>



<li>
	<p class="fIcon fNewsfeed">Resources for LGBTQ Students and Their Families</p>
	<p><a href="http://www.thetrevorproject.org/" target="_blank">The Trevor Project</a> provides crisis  intervention and suicide prevention services to lesbian, gay, bisexual,  transgender, and questioning youth.</p>
	<p><a href="http://www.glsen.org/cgi-bin/iowa/all/about/history/index.html" target="_blank">GLSEN</a> seeks to develop school climates where difference is  valued for the positive contribution it makes in creating a more vibrant and  diverse community.</p>
</li>


<%'----------------------------------- END FEATURES SECTION -------------------------------------- %>  
  </ul>  
 </div>
 
 
 
<%'----------------------------------- START LAYER SLIDER -------------------------------------- %>  

<div id="layerslider" class="loading">
	
    <div id="UnityDay2015" class="ls-layer" rel="slidedirection: left;">
        	<img src="/bullying/images/homepage-slider/unityday/2015/unityDay2015-bg.jpg" alt="" width="637" height="375" class="ls-bg" rel="delayIn: 0;"/>
        	<img src="/bullying/images/homepage-slider/unityday/2015/L1-copy1.png" alt="" width="637" height="375" class="ls-s1" rel="delayIn: 400; slidedirection: bottom;"/>
        	<img src="/bullying/images/homepage-slider/unityday/2015/L1-copy2.png" alt="" width="637" height="375" class="ls-s2" rel="delayIn: 800; slidedirection: left;"/>
        <a href="/bullying/nbpm/unity-day.asp" target="_self" class="ls-s3" rel="delayIn: 1200; slidedirection: right;">
        	<img src="/bullying/images/homepage-slider/unityday/2015/L1-copy3.png" alt="Unity Day, Wednesday, October 21. Together against bullying. United for kindness, acceptance and inclusion. Learn more." width="637" height="375" />
        </a>         
    </div>  	

    <div id="DisneyPSA2015" class="ls-layer">
        <div class="ls-s1" style="top:34px;">
			<iframe width="637" height="341" src="https://www.youtube.com/embed/R8lUD6BHunE?rel=0" frameborder="0" allowfullscreen></iframe>
        </div>
        <div class="ls-s2" style="top: 0px; color:#fff; background:#000; padding:5px; text-align:left; width:637px;" rel="delayIn: 400; slidedirection: top; slideoutdirection:top;">Video: You are Braver, Stronger and Smarter Than You Think</div>
    </div> 

    <div id="turnALifeAround" class="ls-layer">
        <div class="ls-s1" style="top:34px;">
			<iframe width="637" height="341" src="https://www.youtube.com/embed/dzD1qVfr5gs?rel=0" frameborder="0" allowfullscreen></iframe>
        </div>
        <div class="ls-s2" style="top: 0px; color:#fff; background:#000; padding:5px; text-align:left; width:637px;" rel="delayIn: 400; slidedirection: top; slideoutdirection:top;">Video: Turn a Life Around</div>
    </div> 
	
    <div id="stickTogether" class="ls-layer">
	       	<img src="/bullying/images/homepage-slider/stickTogether/bg-stickTogether.jpg" alt="" width="637" height="375" class="ls-bg" rel="delayIn: 0;"/>
        	<img src="/bullying/images/homepage-slider/stickTogether/L1-copy.png" alt="" width="637" height="375" class="ls-s1" rel="delayIn: 400; slidedirection: right;"/>
        	<img src="/bullying/images/homepage-slider/stickTogether/L2-copy.png" alt="" width="637" height="375" class="ls-s2" rel="delayIn: 800; slidedirection: left;"/>			
        	<a href="http://www.duckbrand.com/products/duck-tape/printed-duck-tape/1917" target="_blank" class="ls-s3" rel="delayIn: 1200; slidedirection: bottom;">
        	<img src="/bullying/images/homepage-slider/stickTogether/L3-copy.png" alt="" width="637" height="375" />
        </a>              
    </div>

    <div id="makeTheDifference" class="ls-layer">
        <div class="ls-s1" style="top:34px;">
			<iframe width="637" height="341" src="https://www.youtube.com/embed/Ke8b3isx_o0?rel=0" frameborder="0" allowfullscreen></iframe></div>
        <div class="ls-s2" style="top: 0px; color:#fff; background:#000; padding:5px; text-align:left; width:637px;" rel="delayIn: 400; slidedirection: top; slideoutdirection:top;">Video: Make the Difference</div>
    </div> 

    <div id="nickVujicic" class="ls-layer">
	       	<img src="/bullying/images/homepage-slider/nickVujicic/Bg-nickVujicic.jpg" alt="" width="637" height="375" class="ls-bg" rel="delayIn: 0;"/>
        	<img src="/bullying/images/homepage-slider/nickVujicic/L1-copy.png" alt="" width="637" height="375" class="ls-s1" rel="delayIn: 400; slidedirection: right;"/>
        	<a href="http://www.pacer.org/bullying/video/player.asp?video=72" class="ls-s2" rel="delayIn: 800; slidedirection: bottom;">
        	<img src="/bullying/images/homepage-slider/nickVujicic/L2-copy.png" alt="Watch Video" width="637" height="375" />
        </a>              
    </div>

    <div id="butterfly" class="ls-layer">
        <div class="ls-s1" style="top:34px;">
			<iframe width="637" height="341" src="//www.youtube.com/embed/KJuu1hKo-u8?rel=0" frameborder="0" allowfullscreen></iframe>      
        </div>
        <div class="ls-s2" style="top: 0px; color:#fff; background:#000; padding:5px; text-align:left; width:637px;" rel="delayIn: 400; slidedirection: top; slideoutdirection:top;">Video: Butterfly by Lizzy  Sider<a style="float:right; padding-right:15px" href="http://www.pacer.org/bullying/video/player.asp?video=62" target="_self">Learn More</a>
		</div>
	</div> 
	
    <div id="broken" class="ls-layer">
        <div class="ls-s1" style="top:34px;">
			<iframe width="637" height="341" src="//www.youtube.com/embed/I5t7kuX6P-4?list=UUrGJQH36bupEPMpj6Dnw9Pw?rel=0" frameborder="0" allowfullscreen></iframe></div>
        <div class="ls-s2" style="top: 0px; color:#fff; background:#000; padding:5px; text-align:left; width:637px;" rel="delayIn: 400; slidedirection: top; slideoutdirection:top;">Video: Broken by Anna Richey</div>
    </div> 	
</div>
<%'---------------------------- END LAYER SLIDER ------------------------------------%>
 
<div class="topFeaturedSpace">

	<div id="TAG">
		<div class="featuredDescription">
		<p><strong>T</strong>ogether <strong>AG</strong>ainst Bullying&trade; is a campaign for PACER’s National Bullying Prevention Center, inspired by Carrot Top. Donate, receive stickers to TAG your friends, and share on social media. Your support means one less student being bullied, one more person speaking out, or one more kid knowing that he or she isn't alone!</p></div>
		<div class="featuredLink"><a href="http://togetheragainst.org/" target="_blank">TAG it forward!</a></div>
	</div>
</div>

 <div class="bottombox" id="icarebecause">
 
 <h2 style="text-shadow:none;"><a href="https://twitter.com/hashtag/unityday2015?vertical=default&src=hash" target="_blank">#UnityDay2015 on Twitter</a></h2>
	<div id="twitterData">
	loading ...
	</div>

<!-- end Icarebecause --></div>
 
  
 <div class="bottombox" id="newsitems">
<h2 style="text-shadow:none;"><a href="https://instagram.com/explore/tags/unityday2015/" target="_blank">#UnityDay2015 on Instagram</a></h2>
<div id="instagramData">
Loading ...
</div>
<!-- end In The News --></div>


  <div style="width:683px; float:right" id="extraitems">
   
<div class="additionalinfobox" id="supportPacer">
<h2>Support PACER&rsquo;s National Bullying Prevention Center</h2>
<h3><a href="https://contribute.surveymonkey.com/charity/pacer" target="_blank"><img class="fltlft" style="margin-bottom:5px;" src="/images/homenews-sml/survey-monkey.png" width="50" height="33" alt="" /></a>Join <a href="https://contribute.surveymonkey.com/charity/pacer" target="_blank">Survey Monkey Contribute</a></h3>
<p>PACER&rsquo;s National Bullying Prevention Center is excited to announce our new partnership with <a href="https://contribute.surveymonkey.com/charity/pacer" target="_blank">SurveyMonkey Contribute</a> and a new way for anyone to give thier support!  Sign up and you will receive surveys by e-mail from SurveyMonkey customers who need your opinion. For every survey you take, SurveyMonkey will donate $0.50 to PACER's National Bullying Prevention Center, and you'll get a chance to win $100 in an instant-win game. </p>



<h3 style="padding-left:5px;"><img src="/bullying/images/text-donate-pacer.jpg" width="630" height="185" alt="text-donate"/></h3>

</div>

<div id="bigsmall">

<h3>All About Bullies . . . Big And Small</h3>
<p><a href="http://allaboutbulliesbigandsmall.com/" target="_blank"><img class="fltlft" style="margin-bottom:10px;" src="/bullying/getinvolved/supporter-resources/images/All-About-Bullies-CD-front3.jpg" width="146" height="147" alt="" /></a>A CD for young children, and winner  of a Grammy for Best Children&rsquo;s Album, <a href="http://allaboutbulliesbigandsmall.com/" target="_blank">All About Bullies &hellip; Big and  Small</a> is a collection of music, poetry and storytelling designed to  put an interesting and heartfelt twist on bullying prevention, so that young  learners can identify with the topic in an age appropriate manner. The artists all generously contributed their time and talents. 100% of the profit proceeds are donated to PACER’s Kids Against Bullying initiatives. </p>
<br style="clear:left" />
</div>


</div>

<br class="clearfloat" />

 <!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
<!-- end .container --></div>
</body>
</html>
