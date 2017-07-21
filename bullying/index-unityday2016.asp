<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim rsInsta
Dim rs_cmd

Set rs_cmd = Server.CreateObject ("ADODB.Command")
rs_cmd.ActiveConnection = MM_PACER_WEB_STRING


sql = "SELECT TOP 18 * FROM bullyInstagram ORDER BY ID DESC;"

rs_cmd.CommandText = sql
rs_cmd.Prepared = true
Set rsInsta = rs_cmd.Execute
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>PACER's National Bullying Prevention Center</title>
<meta name="description" content="unites, engages, and educates kids, teens, parents and communities nationwide to address bullying through creative, relevant, and interactive resources.
" />
<meta name="keywords" content="bullying, teen bullying, bullying help, bullying for kids, bullying news articles, cyber bullying, children with disabibilities, special needs children, teen bullying, parent programs, parents of disabled child, child development, blind deaf autistic children education programs, pacer center, pacer org
" />

<!-- for Facebook ## images 600x315/1200x630 -->
<meta property="fb:app_id" content="271376943231875"  />
<meta property="og:title" content="PACER's National Bullying Prevention Center" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/bullying/images/NBPC-homepage-fb.jpg" />
<meta property="og:url" content="http://www.pacer.org/bullying/" />
<meta property="og:description" content="unites, engages, and educates kids, teens, parents and communities nationwide to address bullying through creative, relevant, and interactive resources." />
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link href="/bullying/css/home.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"-->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<!-- LayerSlider stylesheet -->
<link rel="stylesheet" href="/js/LayerSlider-5.6.6/layerslider/css/layerslider.css" type="text/css" />
<!-- External libraries: jQuery & GreenSock -->
<script src="/js/LayerSlider-5.6.6/layerslider/js/greensock.js" type="text/javascript"></script>
<!-- LayerSlider script files -->
<script src="/js/LayerSlider-5.6.6/layerslider/js/layerslider.transitions.js" type="text/javascript"></script>
<script src="/js/LayerSlider-5.6.6/layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>
<script type="text/javascript" src="/js/jquery.hoverIntent.minified.js"></script>
<link rel="stylesheet" type="text/css" href="/js/colorbox1.5.9/colorbox.css" />
<script src="/js/colorbox1.5.9/jquery.colorbox-min.js"></script>
<script async defer src="//platform.instagram.com/en_US/embeds.js"></script>
<script>
			$(document).ready(function(){
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
			});
		</script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#layerslider").layerSlider({
			autoPlayVideos: false,
			animateFirstSlide: true,
			pauseOnHover: false,
			loops: 3,
			navStartStop: false,
			skinsPath: '/js/LayerSlider-5.6.6/layerslider/skins/'
		});
	});
 </script>
<style type="text/css">
#featured {
	width: 357px;
	float: right;
	margin-right: 5px;
	border: solid 1px #ccc;
	background: rgba(255,255,255,0.50);
}
.loading ls-layer {
	display: none;
	padding: 5px;
}
#layerslider {
	height: 375px;
	margin-left: 7px;
	visibility: visible;
	width: 1024px;
	margin: 0px;
	border: none;
}
#featured {
  background: none;
  border: none;
}
.specialAlert {
	padding: 10px;
	background: #F15C32;
	color: #fff;
	font-size: 1.2em;
	margin: 7px;
	text-align: center;
	font-weight: bold;
}
.specialAlert a:link, .specialAlert a:visited {
	color: #fff;
}
.specialAlert a:hover, .specialAlert a:active {
	color: #ccc;
}
.instagram-media {
	margin-bottom: 5px !important;
}
</style>
</head>

<body>
<!--FB Page Plugin -->

<div id="fb-root"></div>
<script type="text/javascript">
  window.fbAsyncInit = function() {
    FB.init({
      appId      : 'your-app-id',
      xfbml      : true,
      version    : 'v2.6'
    });
	FB.Event.subscribe('xfbml.render', finished_rendering);
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script> 

<!-- END FB Page Plugin -->

<div class="container"> <a id="skiptocontent" href="#maincontent">Skip to main content</a> 
  
  <!--#include virtual="/bullying/dynamic-header.html"--> 
  <!--#include virtual="/bullying/topnav.html"-->
  <div class="content">
    <%'----------------------------------- START LAYER SLIDER -------------------------------------- %>
    <div id="slider-wrapper">
      <div id="layerslider" style="width:1011px;height:375px;max-width: 1011px; margin-left:7px;">
        <% ' -----------------------------------------------------------10TH ANNIVERSARY SLIDE------------------------------------------------------------------------------------ %>
   		<div class="ls-slide" data-ls="slidedelay: 8000; transition2d:5; ">
        <img src="/bullying/images/homepage-slider/unityDay/Bg-unityDay.jpg" class="ls-bg" alt="" />
		<img src="/bullying/images/homepage-slider/unityDay/L1-copy.png" data-ls="offsetxin:right;durationin:1000;offsetxout:0;" class="ls-l" alt="" />
		<img src="/bullying/images/homepage-slider/unityDay/L2-copy.png" data-ls="offsetxin:bottom;durationin:1000;delayin:1000;offsetxout:0;" class="ls-l" alt="" />	
		<a href="http://www.pacer.org/bullying/nbpm/unity-day.asp" class="ls-link"><span class="extralinktext">Together Against Bullying. United for Kindness, Acceptance and Inclusion. #UNITYDAY2016</span></a>
   	</div>
        <!-- END Slider --> </div>
      <!-- END Slider Wrapper --> </div>
    <%'---------------------------- END LAYER SLIDER ------------------------------------%>
    <%'---------------------------- SPECIAL ALERT MESSAGES ------------------------------------%>
    <div class="specialAlert"> 
    	<%If date < cDate("10-19-2016") Then%>
        Tomorrow is <a href="/bullying/nbpm/unity-day.asp">Unity Day</a> &mdash; Make it ORANGE and make it end! What are your true colors when it comes to bullying? If you care about safe and supportive schools and communities make your color ORANGE on Unity Day. 
		<%ElseIf date > cDate("10-19-2016") Then%>
        UNITY DAY 2016: <a href="https://www.surveymonkey.com/r/UnityDay2016" target="_blank">Share your experience with us here! <span class="fa fa-external-link"></span></a>
      <%Else%>
        Join the Movement!
     	<%End If%>
    
    	
    </div>
    <%'---------------------------- END SPECIAL ALERT MESSAGES ------------------------------------%>
    <div id="featured">
      <h1 id="maincontent"><img src="/bullying/images/features.png" width="120" height="41" alt="Features" /></h1>
      <ul>
        <%'-------------------------------------START FEATURES SECTION ------------------------------------ %>
        
 <li class="wide">
 <h3>Check Out the Unity Day 2016 Photo Album</h3>
 	<div style="width:310px; text-align:center" class="date">
    	<a href="https://www.facebook.com/PACERsNationalBullyingPreventionCenter/photos/?tab=album&amp;album_id=1155407771180930" target="_blank"><img src="/bullying/images/homepage-extra/UnityPhotoAlbum-310w.jpg" width="310" height="310" alt="Facebook Unity Day Photo Album"/>
        View Album <span class="fa fa-external-link"></span></a> </div>
        <p>Together Against Bullying - United for Kindness,   Acceptance and Inclusion! Thanks to everyone that went ORANGE to   celebrate Unity Day this year.     Please send images, with permission to share, to <a href="mailto:bullying411@pacer.org">bullying411@pacer.org</a> to be added to this album.</p>
 </li>

<li class="wide">
	<h3>Loserville - "Together we can build a kinder world" a message from #TeamLoserville</h3>
	<a class="videoPopUp" href="https://www.youtube.com/watch?v=ox17FhZZVG4"><img src="/bullying/images/homepage-extra/Loserville-unity-thumb.jpg" width="310" height="174" alt="Play TeamLoserville Unity Video 1"/></a>
	<p><a href="https://www.youtube.com/results?q=%23TeamLoserville" target="_blank" data-sessionlink="itct=CDgQ6TgiEwi1x6zPpufPAhWKJ04KHTsRCMgo-B0" data-url="/results?q=%23TeamLoserville">#TeamLoserville <span class="fa fa-external-link"></span></a> shares the important message that bullying has happened to so many for   too long. Bullying impacts all of us, but we can all be part of the   solution. Cast member Darby Stanchfield shares, &ldquo;It&rsquo;s time to send a   message that we care about creating safe and supportive schools,   communities and online environments.&rdquo;</p>
	<h3>We&rsquo;ve Been There, Know You&rsquo;re Not Alone</h3>
	<a class="videoPopUp" href="https://www.youtube.com/watch?v=xZVUign552E"><img src="/bullying/images/homepage-extra/Loserville-unity2-thumb.jpg" width="310" height="174" alt="Play TeamLoserville Unity Video 2"/></a>
	<p><a href="https://www.youtube.com/results?q=%23TeamLoserville" target="_blank" data-url="/results?q=%23TeamLoserville" data-sessionlink="itct=CDYQ6TgiEwj-mNKfp-fPAhWBIU4KHZ2UDh4o-B0">#TeamLoserville <span class="fa fa-external-link"></span></a> sends the important message to know that if you are being bullied, that   there are people who care and want to help. Cast member Marco James   Marguez shares, &ldquo;I know what its like to feel like youre alone&mdash;when you   feel like that it&rsquo;s the best time to reach out to people and ask for   help.&rdquo;</p>

</li>

<li class="wide"> 
	<h3>Show You Care. Wear &amp; Share Orange on Unity Day</h3>
	<a class="videoPopUp" href="https://www.youtube.com/watch?v=62UDT2Y8AAI"><img src="/bullying/images/homepage-extra/bethany-moa-unity2016-thumb.jpg" width="310" height="174" alt="Play Bethany's Unity Video"/></a>
	<p><strong>YouTube superstar Bethany Mota knows firsthand the pain and feelings of isolation that came with being targeted by bullying. </strong></p>
    <p>Bethany and PACER&rsquo;s National Bullying Prevention Center are teaming up to send a powerful message to young people to be confident in   their individuality and know that no one deserves to be bullied on or offline. <a href="/bullying/getinvolved/bethany.asp">Learn More</a></p>
</li>

<li class="wide">
    <blockquote class="instagram-media" data-instgrm-captioned data-instgrm-version="7" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:658px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:8px;"> <div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding:50.0% 0; text-align:center; width:100%;"> <div style=" background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAMUExURczMzPf399fX1+bm5mzY9AMAAADiSURBVDjLvZXbEsMgCES5/P8/t9FuRVCRmU73JWlzosgSIIZURCjo/ad+EQJJB4Hv8BFt+IDpQoCx1wjOSBFhh2XssxEIYn3ulI/6MNReE07UIWJEv8UEOWDS88LY97kqyTliJKKtuYBbruAyVh5wOHiXmpi5we58Ek028czwyuQdLKPG1Bkb4NnM+VeAnfHqn1k4+GPT6uGQcvu2h2OVuIf/gWUFyy8OWEpdyZSa3aVCqpVoVvzZZ2VTnn2wU8qzVjDDetO90GSy9mVLqtgYSy231MxrY6I2gGqjrTY0L8fxCxfCBbhWrsYYAAAAAElFTkSuQmCC); display:block; height:44px; margin:0 auto -44px; position:relative; top:-22px; width:44px;"></div></div> <p style=" margin:8px 0 0 0; padding:0 4px;"> <a href="https://www.instagram.com/p/BLwHB9sAvtN/" style=" color:#000; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none; word-wrap:break-word;" target="_blank">Orange for #UnityDay2016! Let’s stand united for kindness, acceptance, and inclusion. #GiveALittleTLC</a></p> <p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;">A photo posted by Whitney Way Thore⚡️ (@whitneywaythore) on <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2016-10-19T16:46:34+00:00">Oct 19, 2016 at 9:46am PDT</time></p></div></blockquote>
</li>

 <%' ----------------------- FB POST BABBLE--------------------- %>
 <li class="wide" style="margin-left:0px;">
	<div class="fb-post" data-href="https://www.facebook.com/Babble/posts/10154216242733271"></div>
 </li>
 <%' ----------------------- END FB POST ----------------- %>



<li class="wide"> 
 <blockquote class="instagram-media" data-instgrm-captioned data-instgrm-version="7" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:658px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:8px;"> <div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding:62.4537037037% 0; text-align:center; width:100%;"> <div style=" background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAMUExURczMzPf399fX1+bm5mzY9AMAAADiSURBVDjLvZXbEsMgCES5/P8/t9FuRVCRmU73JWlzosgSIIZURCjo/ad+EQJJB4Hv8BFt+IDpQoCx1wjOSBFhh2XssxEIYn3ulI/6MNReE07UIWJEv8UEOWDS88LY97kqyTliJKKtuYBbruAyVh5wOHiXmpi5we58Ek028czwyuQdLKPG1Bkb4NnM+VeAnfHqn1k4+GPT6uGQcvu2h2OVuIf/gWUFyy8OWEpdyZSa3aVCqpVoVvzZZ2VTnn2wU8qzVjDDetO90GSy9mVLqtgYSy231MxrY6I2gGqjrTY0L8fxCxfCBbhWrsYYAAAAAElFTkSuQmCC); display:block; height:44px; margin:0 auto -44px; position:relative; top:-22px; width:44px;"></div></div> <p style=" margin:8px 0 0 0; padding:0 4px;"> <a href="https://www.instagram.com/p/BLvp35-hsDq/" style=" color:#000; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none; word-wrap:break-word;" target="_blank">Wearing orange today for #unityday - in support of October being #nationalbullyingpreventionmonth #choosekindness #antibullying</a></p> <p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;">A photo posted by ginger_zee (@ginger_zee) on <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2016-10-19T12:31:47+00:00">Oct 19, 2016 at 5:31am PDT</time></p></div></blockquote>
 </li>
 
 <%' ----------------------- FB POST BRIDGE --------------------- %>
 <li class="wide" style="margin-left:0px;">
	<div class="fb-post" data-href="https://www.facebook.com/hennepin/photos/a.218115284883102.69261.211281525566478/1415803518447600/?type=3&theater#"></div>
 </li>
 <%' ----------------------- END FB POST ----------------- %>


 <%' ----------------------- FB POST Bully Project --------------------- %>
 <li class="wide" style="margin-left:0px;">
	<div class="fb-post" data-href="https://www.facebook.com/bullymovie/photos/a.180986101947875.40312.107214895991663/1231784210201387/?type=3
"></div>
 </li>
 <%' ----------------------- END FB POST ----------------- %>





        <li class="wide"> <a aria-hidden="true" href="http://www.customink.com/stopbullying" target="_blank"><img src="/bullying/images/2016-tshirt-front.jpg" alt="Purchase PACER&rsquo;s official t-shirt!" width="150" height="143" title="Custom Ink Shirts"/><img src="/bullying/images/2016-tshirt-back.jpg" width="150" height="143" alt=""/></a>
          <h3>Order the Official Shirt from CustomInk's Be Good To Each Other Campaign!</h3>
          <p>CustomInk is donating profits from the sales of bullying prevention t-shirts to benefit PACER as part of its sixth annual Be Good to Each Other campaign. BE UNITED FOR KINDNESS, ACCEPTANCE AND INCLUSION. Orders open through Oct. 31, wear this special shirt all school year!</p>
          <p><a href="http://www.customink.com/stopbullying" target="_blank">Purchase PACER&rsquo;s official t-shirt!</a></p>
        </li>
 
<li class="wide">
  
  <h3>National Bullying Prevention Month (2006-2016)</h3>
  <a href="http://www.pacer.org/bullying/nbpm/history.asp"><img src="/bullying/images/ud-10-year-thumb.jpg" alt="Learn More About the History of the month" width="150" height="136" title="Learn More About the History of the month" align="right" hspace="10"/></a>
  <p><strong>A decade together against bullying and united for kindness, acceptance and inclusion</strong><br />
    National Bullying Prevention Month is a campaign in the United States founded in 2006 by PACER&rsquo;s National Bullying Prevention Center.</p>
  <p> <a href="http://www.pacer.org/bullying/nbpm/history.asp">Learn more about the history of the month</a></p>
  </li>

         
        <li class="wide">
          <div align="center"> <a href="/bullying/getinvolved/students-with-solutions.asp"><img src="/bullying/images/students-with-solutions-300px.jpg" width="300" height="144" alt="Learn More about Student's with Solutions"/></a></div>
          <h3>Students with Solutions</h3>
          <p><strong>Engaging students to address bullying <br />
            through videos, art and writing</strong></p>
          <p>&ldquo;It&rsquo;s better to be a friend.&rdquo; The second of four exclusive animated videos launched on Monday, Oct. 10! Watch &ldquo;United For Kindness.&rdquo; Then share the discussion questions with students to share ideas on how friends and classmates can provide support and hope for those who are bullied. Then engage young people to use art, video or writing to help other kids AND to get some amazing awards for their classroom. <a href="http://www.pacer.org/bullying/getinvolved/students-with-solutions.asp" target="_blank">Be a part of the solution.</a></p>
        </li>

        
<li class="wide">
<h3>NBPC teams up with the Disney Babble Blog</h3>
<p>This is the first in a series of blogs on Babble from PACER's National Bullying Prevention Center, in honor of the 10th anniversary of National Bullying Prevention Month this October.</p>

<blockquote>
  <p><strong>Speaking Up About Being Bullied Isn&rsquo;t &ldquo;Tattling&rdquo; &mdash; and Our Kids Need to Know the Difference</strong><br />
    Being bullied as a child can be a traumatizing experience with long-lasting effects. The PACER Center offers expert tips for talking to our kids about when to speak up. <a href="https://www.babble.com/parenting/speaking-up-about-being-bullied-isnt-tattling-and-our-kids-need-to-know-the-difference/" target="_blank">Read the full post</a>.</p>
</blockquote>
</li>

  
  
  <li class="wide">
  <div align="center">
  <img src="/bullying/images/mcfinn_hero-300px.jpg" width="300" height="157" alt=""/></div>
  <h3>Malls &amp; Retailers Unite Against Bullying</h3>
  <p>Looking for a community event to engage your young child? Malls around the country have partnered during National Bullying Prevention Month to bring awareness and activities. <a href="http://www.pacer.org/bullying/getinvolved/supporter-resources/mcfinn/" target="_blank">Check out the event calendar for a mall location near you.</a></p>
  </li>
    <li class="wide"><a href="http://www.catinhat4prez.com/" target="_blank"><img src="/bullying/images/cat-in-hat-banner-310w.jpg" width="310" height="115" alt="Cat in the Hat - I'd Vote For That Campaign"/></a>
      <h3>Cat in the Hat for President</h3>
      <p>The Cat in the Hat, in his Presidential campaign, will represent all that Dr. Seuss believed about children&mdash;that they have the intellect, imagination and power to impact our world positively, while also having fun doing so. The Cat in the Hat wants to show kids that every vote counts, and every voice matters. On the ballot are his supporters and their causes, including &ldquo;kindness for all&rdquo; sponsored by PACER&rsquo;s National Bullying Prevention Center. The organization with the most votes receives a $10,000 donation. <a href="http://www.catinhat4prez.com/" target="_blank">Vote for KINDNESS TO ALL  <span class="fa fa-external-link"></span></a></p>
    </li>
    
    
    <li class="wide" id="digitalPetitionFeature">
      <h3>Unite with others and show your support</h3>
      <a href="/bullying/digitalpetition/"><img src="/bullying/images/homepage-extra/sign-the-petition.jpg" alt="Sign the Digital Petition" width="310" height="120" title="Sign the Digital Petition"/></a>
    </li>
    
  <li class="wide">
    <h3>Spookley the Square Pumpkin</h3>
    <p><img src="/bullying/images/spookley-sml.jpg" width="119" height="71" alt="" align="right"/><strong>Complete Digital Teacher "Stop Bullying Before it Starts" Toolkit(pre-school to 3rd grade)</strong><br />
      Spookley is a square pumpkin who lives in a round pumpkin patch world. This online toolkit includes resources educators can use to effectively present The Legend of Spookley the Square Pumpkin as a multi-subject learning opportunity. The core elements of the online toolkit involve a reading of the book (or viewing the free online video) supplemented by downloadable lesson plans and other activities that teach bullying prevention and character values. <a href="http://www.pacer.org/bullying/classroom/elementary/spookley/">Access the free, online toolkit </a></p>
  </li>
        
    
    
    
    
        
      </ul>
    </div>
    <div id="socialWall"> 

<div id="TweetWrapper" style="width:345px; float:left;">
<div id="TweetStyling" style="text-align:center; margin-bottom:10px;">
  <h3><a href="https://twitter.com/hashtag/unityday2016" target="_blank">Twitter #UnityDay2016 <span class="fa fa-external-link"></span></a></h3>
</div>
<div style="border:1px solid #D57700; border-radius:8px; margin-bottom:5px; ">
            <a class="twitter-timeline"  href="https://twitter.com/hashtag/unityday2016" data-widget-id="786610189805887488" data-tweet-limit="20" data-chrome="nofooter noheader">#unityday2016 Tweets</a>
          <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
          
</div>
</div>


<div id="InstagramWrapper" style="width:298px; margin-left:361px;">
<div style="text-align:center; margin-bottom:10px;">
  <h3><a href="https://www.instagram.com/explore/tags/unityday2016/" target="_blank">Instagram #UnityDay2016 <span class="fa fa-external-link"></span></a></h3>
</div>

<%
	Dim embedCode
	Do Until rsInsta.EOF
		embedCode = rsInsta("embed_code")
		embedCode = Replace(embedCode, "<script async defer src=""//platform.instagram.com/en_US/embeds.js""></script>", "")
		embedCode = Replace(embedCode, "data-instgrm-captioned", "")
		Response.Write(embedCode & vbcrlf & vbcrlf)
		rsInsta.MoveNext
	Loop
	rsinsta.Close
	Set rsInsta = Nothing
	Set rs_cmd = Nothing
%>  



</div>
    
    
    </div>
    <br class="clearfloat" />
    
    <!-- end .content --></div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
