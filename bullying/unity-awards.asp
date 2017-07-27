<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center - Unity Day</title>
<meta name="title" content="National Bullying Prevention Center - Unity Awards" />
<meta name="description" content="What are your true colors when it comes to bullying? If you care about students who are bullied and want bullying to end, make your color ORANGE on Unity Day. That&rsquo;s the day everyone can link together—in schools, communities and online—and send one large, ORANGE message of support to students who have experienced bullying." />

<link rel="image_src" href="http://www.pacer.org/bullying/images/nbpc-logo.png" />
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="/js/LayerSlider/layerslider/css/layerslider.css" type="text/css" />
<link href="/js/colorbox/colorbox.css" rel="stylesheet" type="text/css" />

<!--#include virtual="/bullying/dynamic-head-items.html"-->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.7.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script src="/js/colorbox/jquery.colorbox-min.js" type="text/javascript"></script>
<script src="/js/LayerSlider/layerslider/jQuery/jquery-easing-1.3.js" type="text/javascript"></script>
<script src="/js/LayerSlider/layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>

<style type="text/css">
.indentextratext {
	padding-left: 20px;
	font-style: italic;
	font-size: .9em;
}
.posterSidebar {
	margin-right: 5px;
	margin-left: 15px;
	background: #CCC;
	border-left: 1px solid #333;
	border-right: 1px solid #333;
	border-top: 1px solid #333;
	border-bottom: 1px solid #333;
	padding: 15px 5px;
}
.loading ls-layer {
	display: none;
	padding: 5px;
}
#layerslider {
	width: 1014px;
	height: 300px;
	border: 1px solid #ccc;
	margin: 0 0 35px 5px;
}
.content {
	width: auto;
	position: relative;
	z-index: 0;
	float: left;
	background: #fff url('/bullying/images/window_gradient_small.jpg') repeat-x bottom;
	min-height: 670px;
}
.copy {
	margin-left: 35px;
	margin-right: 35px;
}
#gallery {
	text-align:center;
}
#gallery img {
	margin: 0px 4px 4px;
	box-shadow: 2px 2px 3px #333;
}
#nominations {
	list-style-type: decimal;
}
#nomination_button {
	margin-bottom:30px;	
}
#nomination_button a {
	height: 42px; 
	width: 285px; 
	padding:5px 15px; 
	text-align: center; 
	background: #F5592E; 
	border:1px solid #D6360A; 
	border-radius:5px; 
	font-size:1.7em; 
	letter-spacing:.03em; 
	color: #fff; 
	text-shadow: 1px 1px 1px #000; 
	text-decoration:none;"	
}
</style>
<script type="text/javascript">
$(document).ready(function(){
		$('#layerslider').removeClass('loading');
		$('#layerslider').layerSlider({
			skin : 'noskin',
			skinsPath : '/js/LayerSlider/layerslider/skins/',
			//youtubePreview  : 'hqdefault.jpg',
			animateFirstLayer : false,
			navPrevNext : false,
			navStartStop : false,
			autoPlayVideos : false,
			autoPauseSlideshow : true,
			pauseOnHover : false,
			slideDelay : 5000,
			loops : 3
		});
		$(".group1").colorbox({rel:'group1'});
		$(".poster1").colorbox({rel:'poster1'});
	});

</script>
</head><body>

<div class="container"> <a id="skiptocontent" href="#maincontent">Skip to main content</a> 
  
  <!--#include virtual="/bullying/dynamic-header.html"--> 
  <!--#include virtual="/bullying/topnav.html"--> 
  
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/nbpm/">National Bullying Prevention Month</a> /</div>

  <%'----------------------------------- START LAYER SLIDER -------------------------------------- %>
	<img id="layerslider" src="/bullying/nbpm/images/unityAwardsSlider.jpg" width="1014" height="300" alt=""/>
<!--  <div id="layerslider" class="loading">
    <div id="UnityDay" class="ls-layer" rel="slidedirection: left;">
     	<img src="/bullying/nbpm/images/unityDaySlider/Bg-UnityDay.jpg" alt="" width="1014" height="300" class="ls-bg" rel="delayIn: 0;"/>
    </div>
    
    <div id="GoOrange" class="ls-layer" rel="slidedirection: left;"> 
    	<img src="/bullying/nbpm/images/unityDaySlider/Bg-GoOrange.jpg" alt="" width="1014" height="300" class="ls-bg" rel="delayIn: 0;"/> 
    </div>
    
    <div id="Community" class="ls-layer" rel="slidedirection: left;">
    	<img src="/bullying/nbpm/images/unityDaySlider/Bg-Community.jpg" alt="" width="1014" height="300" class="ls-bg" rel="delayIn: 0;"/>
    </div>
    
    <div id="School" class="ls-layer" rel="slidedirection: left;">
    	<img src="/bullying/nbpm/images/unityDaySlider/Bg-School.jpg" alt="" width="1014" height="300" class="ls-bg" rel="delayIn: 0;"/>
    </div>
    
    <div id="Workplace" class="ls-layer" rel="slidedirection: left;">
    	<img src="/bullying/nbpm/images/unityDaySlider/Bg-Workplace.jpg" alt="" width="1014" height="300" class="ls-bg" rel="delayIn: 0;"/>
    </div>
    
    <div id="StandTogether" class="ls-layer" rel="slidedirection: left;">
    	<img src="/bullying/nbpm/images/unityDaySlider/Bg-StandTogether.jpg" alt="" width="1014" height="300" class="ls-bg" rel="delayIn: 0;"/>
    </div>    

  </div>-->
  <%'---------------------------- END LAYER SLIDER ------------------------------------%>
  
  <!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show --> 
  <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="unityday";
	var showTree = "none";
	var currSubId="none";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "active";
	}
	if (document.getElementById(currSubId)){
		document.getElementById(currSubId).className = "active";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "submenu") {
			if (subTrees[i].id != showTree) {
				subTrees[i].className = "submenuhidden";
			}
		}
	}
</script>
  <div class="content">
    <div class="copy">
      <h1 id="maincontent" style="font-size:1.7em"><strong>The Unity Awards</strong></h1>

<div id="nomination_button" style="	position: absolute; top: 0px; right: 38px;">
<a href="https://www.surveymonkey.com/r/UnityAwards" target="_blank">Submit a Nomination</a>
</div>

<!--facebook-like section -->	 
	<div id="facebookLikeSection" class="fltrt centered" style="width:225px; padding-right:0px; padding-bottom:20px; padding-top:30px;">
        <div style="width:225px; margin-bottom:15px;" id="facebook-like">
<!--          <div id="fb-root"></div>
          <script type="text/javascript">(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) {return;}
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
          <div class="fb-like" data-href="http://www.pacer.org/bullying/nbpm/unity-day.asp" data-send="false" data-layout="standard" data-width="225" data-show-faces="true"></div>
-->		</div>
		
<!--end facebook-like section -->
      
<!--	  <div class="posterSidebar">
	 	<a href="https://www.facebook.com/events/951749594836526/" target="_blank">Join the Facebook Event</a> </div>
-->	    
        
<div class="posterSidebar">
<p><strong>UNITY AWARD Design</strong></p>
<img style="padding-bottom:10px;" src="/bullying/nbpm/images/PACERNBPC-2.jpg" width="180" height="171" alt=""/>
<p style="text-align:left; font-size:.9em;">The three swirls of the UNITY AWARD are symbolic of families, schools, and communities united against bullying—and united for kindness, acceptance, and inclusion.</p>
<!--<a href="http://www.pacer.org/bullying/resources/posters.asp"><img src="/bullying/nbpm/images/UnityDayPoster2014.jpg" width="180" height="270" /></a>
<p><strong>Unity Day Poster</strong><br /></p>
<p>
<a href="http://www.pacer.org/bullying/resources/posters.asp" style="padding:5px 0px"><img src="http://www.pacer.org/bullying/images/button-order-poster.png" alt="order poster"></a></p>
-->
</div>

  <div class="posterSidebar">

<a href="/bullying/nbpm/unity-day.asp">Celebrate UNITY DAY in your community</a>
<img style="padding-top:10px" src="/bullying/nbpm/images/unity_day_community.jpg" width="180" height="217" />
<p><strong>Wednesday, October 21, 2015</strong></p>
<p style="text-align:left; font-size:.9em;">Make it <span style="color:#F15C32; font-weight:bold">ORANGE</span> and make it end! What are your true colors when it comes to bullying? If you care about safe and supportive schools and communities make your color <span style="color:#F15C32; font-weight:bold">ORANGE</span> on <strong>Unity Day</strong>. That’s the day everyone can come together—in schools, communities, and online — and send one large <span style="color:#F15C32; font-weight:bold">ORANGE</span> message of support, hope, and unity to show that we are united against bullying and united for kindness, acceptance and inclusion.</p>
   
      </div>      
 
      </div><!--Close facebookLikeSection -->
	  
<p><strong>Presented by: The Faces of Change—The Youth Advisory Board of PACER’s National Bullying Prevention Center</strong></p>
<!--</strong><em><a href="https://en.wikipedia.org/wiki/Unity_Day_(United_States)" target="_blank">Sponsored by PACER&rsquo;s National Bullying Prevention Center</a></em><a href="https://en.wikipedia.org/wiki/Unity_Day_(United_States)"> since 2011</a></p>
-->     
<p>Bullying is an issue that no child should ever have to endure. Fortunately, there are people who care and take action to make our communities, schools and the web kinder, more accepting places.</p> 
<p>At PACER’s National Bullying Prevention Center <span style="color:#F15C32; font-weight:bold">Unity Awards</span>, we will honor and celebrate students and community members who have gone above and beyond to help address bullying. On <strong>Tuesday, June 9, 2015, at the Bloomington Center for the Arts in Bloomington, Minn.,</strong> we will recognize those who have made outstanding contributions to address and prevent bullying.</p> 
<p>Whether it’s building awareness of bullying prevention, inspiring and empowering others to take positive action, or advocating for those who need support, these individuals are making a significant difference in our schools and communities. </p>

<h2><strong>Submit a Nomination!</strong></h2>
<p>Nominations are being accepted through April 30, 2015 for four awards:</p>
<p><ul id="nominations">
<li>	<strong>The “United Against Bullying” Award</strong><br />
	Awarded for taking action to prevent and change an attitude or behavior that physically or emotionally hurts, harms, or humiliates someone.</li>
<li>	<strong>The “United for Kindness” Award</strong><br />
	Awarded for demonstrating outstanding act(s) of being helpful to others.</li>
<li><strong>The “United for Acceptance” Award</strong><br />
	Awarded for looking beyond the differences of others and celebrating what makes each person unique.</li>
<li><strong>The “United for Inclusion” Award</strong><br />
	Awarded for outstanding acts to help others feel like they belong and know that they aren’t alone.</li>
</ul>
<p>The nomination process will be followed by public voting which will determine the recipient(s) of each award.</p>

<p><strong>Criteria</strong></p>
<p>The Unity Awards are designed to recognize those who have made a positive impact to prevent bullying. It might be for a well-known story of a person (or group) who made a difference on a national scale, or it might be for someone who simply made you feel like you’re not alone.</p>

<p>Anyone can make a nomination. You are invited to nominate students, parents, educators and community members. A few potential nomination scenarios include a:</p>
<ul>
<li>student nominating a teacher who helped them feel included</li>
<li>Parent nominating a student who helped their child</li>
<li>Student who was bullied and is now an advocate for others</li>
<li>Club or group that advocates for acceptance and inclusion of all</li>
<li>Parent nominating their own child for showing courage and resilience</li>
</ul>

<div id="nomination_button">
<a href="https://www.surveymonkey.com/r/UnityAwards" target="_blank">Submit a Nomination</a>
</div>

<h2><strong>Share Your Talents!</strong></h2>

<p>In addition to making a nomination, everyone is encouraged to share their creativity and submit poetry, artwork, a short story, or a photograph that embodies the theme of UNITY, especially submissions that symbolize:</p>
<ul>
<li>United Against Bullying</li>
<li>United for kindness, acceptance, and inclusion</li>
</ul>
<p><a href="mailto:unityawards@pacer.org">Send your submission to UnityAwards@PACER.org</a></p>

<p>These submissions will be displayed during the <span style="color:#F15C32; font-weight:bold">Unity Awards</span> to represent communities from around the country that are united in this important cause.</p>

<h2><strong>Celebrate Unity!</strong></h2>
<p>PACER’s National Bullying Prevention Center will also be honoring individuals, schools, and organizations with awards to recognize leaders in communities who have demonstrated courage, leadership, and inspiration.</p>

<h2><strong>With Gratitude!</strong></h2>
<p>Special thanks to:<br />
Bloomington Human Rights Commission for their support and for providing the wonderful venue for this important event.</p>










      <!--  <h2><strong>PACER Staff — MAKING IT ORANGE TO MAKE IT END!</strong></h2>
 <p>Extend Unity Day beyond the classroom and bring it into the workplace, home and community. Wearing <span style="color:#F15C32; font-weight:bold">ORANGE</span>, showing that you care, demonstrates that bullying prevention is an important part of our society.</p>    
 <p class="centered"><img src="/bullying/nbpm/images/unity-day-pacer2013.jpg" width="650" height="394" alt="" /></p>    
 --> 
      
      <!-- end .copy --></div>
    <br class="clearfloat" />
    
    <!-- PHOTO GALLERY START -->
<!--    <p class="date" style="font-style:italic; margin-bottom:2px">Click on an image to enlarge.</p>
    <div id="gallery">
        <a class="group1" href="/bullying/nbpm/images/unityDayGallery/unityDayGallery1.jpg" title="&copy;2014"><img src="/bullying/nbpm/images/unityDayGallery/unityDayThumb1.jpg" width="100" height="100" alt="" /></a>
        <a class="group1" href="/bullying/nbpm/images/unityDayGallery/unityDayGallery2.jpg" title="&copy;2014"><img src="/bullying/nbpm/images/unityDayGallery/unityDayThumb2.jpg" width="100" height="100" alt="" /></a>
        <a class="group1" href="/bullying/nbpm/images/unityDayGallery/unityDayGallery3.jpg" title="&copy;2014"><img src="/bullying/nbpm/images/unityDayGallery/unityDayThumb3.jpg" width="100" height="100" alt="" /></a>
        <a class="group1" href="/bullying/nbpm/images/unityDayGallery/unityDayGallery4.jpg" title="&copy;2014"><img src="/bullying/nbpm/images/unityDayGallery/unityDayThumb4.jpg" width="100" height="100" alt="" /></a>
        <a class="group1" href="/bullying/nbpm/images/unityDayGallery/unityDayGallery5.jpg" title="&copy;2014"><img src="/bullying/nbpm/images/unityDayGallery/unityDayThumb5.jpg" width="100" height="100" alt="" /></a>
        <a class="group1" href="/bullying/nbpm/images/unityDayGallery/unityDayGallery6.jpg" title="&copy;2014"><img src="/bullying/nbpm/images/unityDayGallery/unityDayThumb6.jpg" width="100" height="100" alt="" /></a>
        <a class="group1" href="/bullying/nbpm/images/unityDayGallery/unityDayGallery7.jpg" title="&copy;2014"><img src="/bullying/nbpm/images/unityDayGallery/unityDayThumb7.jpg" width="100" height="100" alt="" /></a>
        <a class="group1" href="/bullying/nbpm/images/unityDayGallery/unityDayGallery8.jpg" title="&copy;2014"><img src="/bullying/nbpm/images/unityDayGallery/unityDayThumb8.jpg" width="100" height="100" alt="" /></a>
        <a class="group1" href="/bullying/nbpm/images/unityDayGallery/unityDayGallery9.jpg" title="&copy;2014"><img src="/bullying/nbpm/images/unityDayGallery/unityDayThumb9.jpg" width="100" height="100" alt="" /></a>
	</div>-->
    <!-- END PHOTO GALLERY --> 
    
    <!-- end .content --></div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body></html>
