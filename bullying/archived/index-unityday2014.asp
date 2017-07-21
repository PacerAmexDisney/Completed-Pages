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
<script type="text/javascript" src="/css/swfobject.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.6.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script src="/js/LayerSlider/layerslider/jQuery/jquery-easing-1.3.js" type="text/javascript"></script>
<script src="/js/LayerSlider/layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>
<script src="/js/colorbox/jquery.colorbox.js" type="text/javascript"></script>

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
			animateFirstLayer : false,
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
 <div id="kab-tab" style="text-align:center; margin-bottom:5px; border-bottom:1px solid #ccc; padding-bottom:5px;"> <a href="http://www.pacerkidsagainstbullying.org/kab/" target="_blank"><img src="/bullying/images/kab_w176.jpg" width="176" height="134" alt="KidsAgainstBullying.org" /></a>
   <a href="http://www.pacerteensagainstbullying.org/tab/" target="_blank"><img src="/bullying/images/tab_w175.jpg" width="175" height="135" alt="TeensAgainstBullying.org" /></a>
 </div>
  <h1 id="maincontent"><img src="images/features.png" width="108" height="41" alt="Features" /></h1>  
  <ul>
<%'-------------------------------------START FEATURES SECTION ------------------------------------ %>



<li class="wide">
  <h3><strong><a href="http://www.tlc.com/tv-shows/tlc-presents/tlc-presents-videos/bullying.htm"><img class="fltrt" src="/bullying/images/homepage-extra/tlc-logo-orange.png" width="96" height="47" alt="TLC website"/></a>TLC Joining the Cause!</strong></h3>
  <p>    This year, TLC joins the cause,  starting with Unity Day when the TV network will turn their logo orange &ndash; promoting  positivity, inclusiveness and kindness to all. TLC talent joining the cause  will create videos speaking out against bullying that will be featured on <a href="http://www.tlc.com/tv-shows/tlc-presents/tlc-presents-videos/bullying.htm" target="_blank">TLC.com</a> and TLC&rsquo;s social media platforms.</p>
</li>


<li class="wide">
  <h3><strong>Minneapolis in Lights </strong></h3>
  <p><img class="centered" src="/bullying/images/homepage-extra/i35worange02.jpg" width="291" height="194" alt=""/></p>
  <p>Minneapolis will  celebrate Unity Day in lights Oct. 22 when the iconic I-35W bridge will go  orange in honor of PACER&rsquo;s National Bullying Prevention Month and Unity Day.  The orange lights, symbolizing a community coming together&nbsp;for  kindness,&nbsp;inclusion and acceptance,&nbsp;will come on just before sunset  on Wednesday and will remain on until sunrise on Thursday. Thanks to the  Minnesota Department of Transportation for your support.</p>
</li>




<li class="wide">
  <h3><strong><a href="http://www.babble.com/parenting/what-to-do-when-your-child-is-being-bullied/"><img class="centered" src="/bullying/images/homepage-extra/babble-bulliedpost.jpg" width="291" height="152" alt="Babble Post - Want to know what to do when your child is being bullied? - Read More"/></a>Want to know what to do when your child is being bullied?</strong></h3>
  <p>    Read PACER&rsquo;s most recent blog post on Babble.com, the highly acclaimed online magazine and blog network  published by the Walt Disney Company for parents. </p>
  <p>It began with complaints of a stomachache, followed by  headaches and sore throats and other excuses about not feeling well. Although  Amy wasn&rsquo;t sure why, before long it became obvious that her 10-year-old  daughter, Sarah, did not want to go to school. </p>
  <p><a href="http://www.babble.com/parenting/what-to-do-when-your-child-is-being-bullied/" target="_blank">Read  more&gt;&gt;&gt;</a></p>
</li>

<li class="wide">
  <h3><strong>Thanks to our partners at Green Giant for their  incredible support</strong>! </h3>
  <p>    At Green Giant we believe all small acts can make a Giant  difference. Nominate a Giant in your community and you could win 25,000 Bonus  Box Tops for your school and a trip for four to the Nickelodeon HALO Awards in  New York City! To enter: <a href="http://bit.ly/1whTMeu" target="_blank">http://bit.ly/1whTMeu</a><a href="https://www.boxtops4education.com/Bonus-Box-Tops/Sweepstakes/2014/GG-Nominate-a-Giant-Sweepstakes?sf5288881=1"><img class="centered" src="/bullying/images/homepage-extra/GreanGiant-Unity.jpg" width="291" height="291" alt="Click to enter the Green Giant Nominate a Giant sweepstakes"/></a></p>
</li>




<li id="disney" class="wide">
  <table cellspacing="3">
    <tr>
    <td><span style="padding:0px 5px 5px 0px;"><img class="fltlft" style="margin-bottom:30px;" src="/bullying/images/homepage-extra/Disney-BeInspired-sml.png" width="75" height="89" alt="" /></span></td>
    <td><p><a href="http://citizenship.disney.com/be-inspired?cds">&quot;Choose  Kindness&quot;</a> is part of&nbsp;<strong>Disney ABC Television Group's</strong>&nbsp;efforts  to create a bullying prevention campaign to encourage kids and parents around  the country to help put an end to bullying by choosing kindness. PACER&rsquo;s  National Bullying Prevention Center is among the partners. </p></td>
  </tr>
<tr>
<td><img style="margin:0px 5px 10px 0px;" class="fltlft" src="/bullying/images/homepage-extra/DisneyChannel-logo-75w.png" width="75" height="38" alt="Disney Channel" /></td>
<td><p>As part of this initiative,&nbsp;<strong>Disney  Channel</strong>&nbsp;will air special, themed episodes of &ldquo;<a href="http://disneychannel.disney.com/girl-meets-world" target="_blank">Girl  Meets World</a>&rdquo; on Saturday, October 25 at 7:30 p.m. ET  and &ldquo;<a href="http://disneychannel.disney.com/austin-and-ally" target="_blank">Austin  &amp; Ally</a>&rdquo; Thursday, October 30 at 10 p.m. ET.</p>
  </td></tr>
<tr>
  <td><img style="margin:0px 5px 10px 0px;" class="fltlft" src="/bullying/images/homepage-extra/ClubPenguin2-logo75w.jpg" width="75" height="35" alt="Disney Channel" /></td>
  <td><p><strong>Unlock  items in Disney Club Penguin:</strong>&nbsp;Players can <a href="http://www.clubpenguin.com/bullying-prevention" target="_blank">unlock an orange  T-shirt&nbsp;</a>and a megaphone&nbsp;with code 2BEHEARD&nbsp;to rally in  support of Unity Day. For every megaphone and orange T-shirt unlocked in-game,  Club Penguin will donate $1 (up to $50,000) to support bullying prevention. </p></td></tr>





<tr><td colspan="2">&nbsp;</td>
</tr>
<tr>
  <td>
<img style="margin:0px 5px 10px 0px;" class="fltlft" src="/bullying/images/homepage-extra/Disney-Alex-Angelo-75w.jpg" width="75" height="77" alt="Alex Angelo" />
</td><td>Additionally, Club Penguin has teamed with 14  year-old Alex Angelo, host of&nbsp;<strong>Radio Disney&rsquo;s&nbsp;&quot;Saturday Night  Party&quot;</strong>&nbsp;<strong>with Alex Angelo</strong>&nbsp;(Saturdays, 8:00 p.m.-10:00  p.m. ET / 5:00 p.m.-7:00 p.m. PT),&nbsp;who is a big supporter of the -bullying  prevention cause.&nbsp;<a href="http://www.pacer.org/bullying/video/player.asp?video=70" target="_blank">Watch Alex&rsquo;s  video</a>&nbsp;as he shares the message to &quot;Be Heard&quot; and stand up  against bullying.</td></tr>

</table>
</li>


<li class="wide">
  <h3><strong>Unity Day Tshirt</strong></h3>
  <p><img src="http://www.pacer.org/bullying/nbpm/images/2014-UD-Tshirt.png" width="117" height="144" class="fltrt" />Still time to support the cause! Unity Day&nbsp;tshirts&nbsp;are  available for purchase through the end of October. Shirts are $12 and Custom  Ink donates $9 of every shirt sold to PACER's National Bullying Prevention Center. <a href="https://www.booster.com/unityday" target="_blank">Order now!</a></p>
</li>

<li class="wide">
  <h3><strong>PACER &amp; TWIGTALE PARTNER ON  CUSTOMIZABLE BOOK TO HELP YOUNG CHILDREN UNDERSTAND AND PREVENT BULLYING</strong></h3>
  
  <div style="width:145; text-align:center" class="fltrt"><img src="/bullying/images/homepage-extra/twigtale-standtall.jpg" width="139" height="139" alt=""/><br />Use Code: <strong>PACER15%</strong><br />for 15% off the book</div>
  <p>In support of Unity Day, and in partnership with Babble.com, PACER  is working with the experts at Twigtale to create a customizable book to  prevent bullying. The book helps young children understand how to be a good  friend and how to assert oneself when not being treated respectfully.&nbsp; A  leading child development expert scripted the easy-to-use template, available  on <a href="http://www.twigtale.com/books/bullying" target="_blank">Twigtale.com</a>.&nbsp;  You simply add photos and details to create the book personalized to your  child.&nbsp; A portion of proceeds will be donated to PACER! </p>
</li>


<li>
<p class="fIcon fInfo"><a href="/bullying/digitalpetition/" style="line-height:2.5">Sign the Digital Petition<br />
 <span id="petitionCounter" style="display:inline; margin-left:10px; white-space:nowrap"></span>
 </a></p>
 <script type="text/javascript" language="javascript">
    var so = new SWFObject("/bullying/swf/petitionCounter.swf", "WebVideoObject", "100", "25", "10");
      so.addParam("wmode", "transparent");
			so.addParam("menu", "false");
			so.addParam("scale", "scale");
			so.addParam("allowFullScreen", "false");
      so.write("petitionCounter");
  </script>
</li>
<li><h3 class="fIcon fInfo">Digital Classroom Toolkit For Early Learners</h3>
  <p><img style="margin-left:10px;" src="/bullying/images/partners/spookley-sml.jpg" width="119" height="71" alt="" />Spookley is  a square pumpkin who lives in a round pumpkin patch world. The toolkit provides links to free resources that teachers can bring directly into their classrooms to use for important character values education and for multi-subject learning. <a href="http://www.pacer.org/bullying/resources/toolkits/spookley/" target="_blank">Learn more&gt;&gt;&gt;</a></p>
  <hr /></li>

<li><h3 class="fIcon fInfo">New Website Updates</h3>
<p><img src="/bullying/resources/toolkits/activities/images/stickpuppet_thumb.jpg" width="100" height="126" alt="stick puppet" align="right" hspace="10" /><a href="/bullying/resources/toolkits/activities/">Activities for Youth</a><br />
This newly updated section offers  free activities and resources designed for younger students. The goal is to  start conversation and creatively engage students to build their understanding  of how to prevent bullying.</p>
	<hr />
	<p><img src="/bullying/wewillgen/images/spookley.jpg" width="100" height="100" alt="spookley" align="right" hspace="10" /><a href="http://www.pacer.org/bullying/resources/book-club.asp">Book Club</a><br />
		Story telling is a powerful way to share messages, encourage discussion and inspire thoughtful action. </p>
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
    
    <%If date < cDate("10-22-2014") Then%>


    <div id="PreUnityDay" class="ls-layer">
        	<img src="/bullying/images/homepage-slider/today-is-unityDay/Bg-pre-unityDay.jpg" alt="" width="637" height="375" class="ls-bg" rel="delayIn: 0;"/>
        	<a href="/bullying/nbpm/unity-day.asp" class="ls-s1" rel="delayIn: 400; slidedirection: bottom;">
        	<img src="/bullying/images/homepage-slider/today-is-unityDay/L2-copy1.png" alt="Promote Unity Day. October 22, 2014" width="637" height="375" />
        </a>              
    </div>
    
    <%ElseIf date < cDate("10-23-2014") Then%>
    
    <div id="UnityDay" class="ls-layer" rel="slidedirection: right;">
	<img src="/bullying/images/homepage-slider/today-is-unityDay/Bg-today-is-unityDay.jpg" alt="" width="637" height="375" class="ls-bg" rel="delayIn: 0;"/>
	<img src="/bullying/images/homepage-slider/today-is-unityDay/L1-copy1.png" alt="" width="637" height="375" class="ls-s1" rel="delayIn: 400; slidedirection: top;"/>
	<img src="/bullying/images/homepage-slider/today-is-unityDay/L1-copy2.png" alt="" width="637" height="375" class="ls-s2" rel="delayIn: 800; slidedirection: bottom;"/>		
	<a href="http://www.pacer.org/bullying/nbpm/unity-day.asp" class="ls-s3" rel="delayIn: 1200; slidedirection: bottom;">
		<img src="/bullying/images/homepage-slider/today-is-unityDay/L1-copy3.png" alt="Today is Unity Day! Unite against bullying." width="637" height="375" />
	</a>  	
	</div>

	<%Else%>
    
    
        <div id="imagine" class="ls-layer">
            <div class="ls-s1" style="top:34px;">
                <iframe width="637" height="341" src="//www.youtube.com/embed/Jvd8g8ip12k?rel=0" frameborder="0" allowfullscreen></iframe>
            </div>
            <div class="ls-s2" style="top: 0px; color:#fff; background:#000; padding:5px; text-align:left; width:637px;" rel="delayIn: 400; slidedirection: top; slideoutdirection:top;">Video: Imagine</div>
    	</div> 

    
    <%End If%>
</div>

<%'---------------------------- END LAYER SLIDER ------------------------------------%>
 


 <div class="bottombox" id="icarebecause">
 
 <h2 style="text-shadow:none;"><a href="https://twitter.com/search?q=%23unityday2014" target="_blank">#UnityDay2014 on Twitter</a></h2>
	<div id="twitterData">
	loading ...
	</div>

<!-- end Icarebecause --></div>
 
  
 <div class="bottombox" id="newsitems">
<h2 style="text-shadow:none;"><a href="http://web.stagram.com/tag/UnityDay2014/" target="_blank">#UnityDay2014 on Instagram</a></h2>
<div id="instagramData">
Loading ...
</div>
<!-- end In The News --></div>


  <div style="width:683px; float:right" id="extraitems">


<div class="topAdSpace" style="clear:left;">
	<div id="michael_marisa">
		<h2>Your Story is Powerful!</h2>
		<div class="adTagLine">Hi! We are Michael and Marisa, teen spokespersons for PACER&rsquo;s National Bullying Prevention Center. </div>
		
		<div class="adDescription">
		<p>During the month of October, we are encouraging all teens to share their story. Selected stories will be posted to the website and one will be chosen at random to receive a<strong> MacBook Air!</strong></p></div>
		<div class="adLink"><a href="http://www.pacerteensagainstbullying.org/tab/you-are-not-alone/young-stars/#michael_marisa" target="_blank">Share your story!</a></div>
	</div>
</div> 
  
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
