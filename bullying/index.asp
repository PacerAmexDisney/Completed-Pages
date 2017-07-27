<%
 Dim ConStr, rs, conn, sql
 ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
 Set conn = Server.CreateObject("ADODB.Connection")
 conn.open ConStr
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>PACER's National Bullying Prevention Center</title>
<meta name="description" content="unites, engages, and educates kids, teens, parents and communities nationwide to address bullying through creative, relevant, and interactive resources.
" />
<meta name="keywords" content="bullying, teen bullying, bullying help, bullying for kids, bullying news articles, cyberbullying, children with disabibilities, special needs children, teen bullying, parent programs, parents of disabled child, child development, blind deaf autistic children education programs, pacer center, pacer org
" />


<!-- for Facebook ## images 600x315/1200x630 -->  
<meta property="fb:app_id" content="271376943231875" />  
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
		 var finished_rendering = function() {
 				console.log("finished rendering plugins");
				if ($('#fbItems').height() > 1500) {
					$('#icarebecause').height($('#fbItems').height()-27);
				}
				console.log($('#fbItems').height());
			}

 
	$(document).ready(function(){
 		$('.adLink').hoverIntent(function() {
				currentId = $(this).attr('id');
				//alert(currentId);
				if (currentId == 'tabLink') {
					$('#tabkab-banner').css({backgroundPosition: '0 -251px'});
				} else {
					$('#tabkab-banner').css({backgroundPosition: '0 -510px'});
				}
		}, function() {
			$('#tabkab-banner').css({backgroundPosition: '0 0'});
		});
		
		
		
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
/* 
---------------------------------------------------------
END TEMP Launch styles 
---------------------------------------------------------
*/
#featured{
	width:357px;
	float:right;
	margin-right:5px;
	border:solid 1px #ccc;
	background:rgba(255,255,255,0.50);
}
#icarebecause{
	max-height:3000px;
	height:auto;
	overflow:auto;
	font-size:.8em;
}
.loading ls-layer{
	display:none;
	padding:5px;
}
#layerslider {
 width: 637px;
 height: 375px;
 border:none;
 margin: 0px;
}
#layerslider {
 height: 375px;
 margin-left: 7px;
 visibility: visible;
 width: 1024px;
}
/* 
---------------------------------------------------------
END TEMP Launch styles 
---------------------------------------------------------

*/

#featured {
	margin-top:10px;
}
.icarebecauseItem {
	padding:5px;
	margin:5px;
	border-radius:8px;
	box-shadow:2px 2px 2px #2F2F2F;
	margin-bottom:20px;
}
.icarebecauseItem:nth-child(1n) {
	border:1px solid #E64926;
	background:rgba(253,202,187,0.50);
}
.icarebecauseItem:nth-child(2n) {
	border:1px solid #424242;
	background:rgba(188,188,188,0.22);
}
.icarebecauseItem:nth-child(3n) {
	border:1px solid #072277;
	background:rgba(222,225,250,0.49);
}
#icarebecause .icarename {
 border-bottom: none;
 font-weight: bold;
 margin: 0 10px;
 padding: 0 5px;
}
#fbItems {
	width:350px;
}
.bottombox {
	background:none;
	border:none;
}
.fb-post {
	margin-bottom:10px;
}
 #tabkab-banner {
	 margin:11px 0px 15px 7px;
	 position:relative;
	 width:646px;
	 height:224px;
	 background:#fff url(/bullying/images/homepage-extra/kab_tab_banner_sprite.jpg);
	 background-repeat:no-repeat;
	 background-position: left top;
 }
.adLink {
	 display:block;
	 width:323px;
	 height:224px;
	 position:absolute;
	 top:0px;
	 text-indent:-9999999px;
}
 #kabLink {
	 left:0px;
 }
 #tabLink {
	 right:0px;
 }
 .specialAlert {
	padding:10px; 
	background:#F15C32; 
	color:#fff; 
	font-size:1.2em; 
	margin:7px; 
	text-align:center; 
	font-weight:bold;
 }
 .specialAlert a:link, .specialAlert a:visited {
	 color:#fff;
 }
 .specialAlert a:hover, .specialAlert a:active{
	 color:#ccc;
 }
.videoPopUp {
	
}
</style>
</head>

<body>
<!--FB Page Plugin -->

<div id="fb-root"></div>
<script type="text/javascript">
 window.fbAsyncInit = function() {
 FB.init({
 appId : 'your-app-id',
 xfbml : true,
 version : 'v2.6'
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



<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>


<!--#include virtual="/bullying/dynamic-header.html"-->
<!--#include virtual="/bullying/topnav.html"-->
 <div class="content">

<!--
<% '----------------------------------- START LAYER SLIDER --------------------------------------' %> 
-->
<div id="slider-wrapper">
		<div id="layerslider" style="width:1011px;height:375px;max-width: 1011px; margin-left:7px;">


<!--<% ' -----------------------------------------------------------STATISTIC 1 SLIDE------------------------------------------------------------------------------------' %> 
-->
 <div class="ls-slide" data-ls="slidedelay: 8000; transition2d:5; ">
  <img src="/bullying/images/homepage-slider/statistics/statistic1/bg-statistic1.jpg" class="ls-bg" alt="" />
		<img src="/bullying/images/homepage-slider/statistics/statistic1/L1-copy.png" data-ls="offsetxin:top;durationin:1000;offsetxout:0;" class="ls-l" alt="" />
		<img src="/bullying/images/homepage-slider/statistics/statistic1/L2-copy.png" data-ls="offsetxin:right;durationin:1000;delayin:1000;offsetxout:0;" class="ls-l" alt="" />
		<img src="/bullying/images/homepage-slider/statistics/statistic1/L3-copy.png" data-ls="offsetyin:bottom 0;durationin:1000;delayin:2000;offsetyout:0;" class="ls-l" alt="" />	
		<a href="http://www.pacer.org/bullying/getinvolved/" class="ls-link"><span class="extralinktext">Almost 1 of every 4 students 
will be bullied this year. Learn how you can help prevent bullying.</span></a>
 </div>
 
 <!--<% ' -----------------------------------------------------------EXPERIENCING BULLYING SLIDE------------------------------------------------------------------------------------' %> 
-->
 <div class="ls-slide" data-ls="slidedelay: 8000; transition2d:5; ">
  <img src="/bullying/images/homepage-slider/experiencing-bullying/Bg-experiencing-bullying.jpg" class="ls-bg" alt="" />
		<img src="/bullying/images/homepage-slider/experiencing-bullying/L1-copy.png" data-ls="offsetxin:left;durationin:1000;offsetxout:0;" class="ls-l" alt="" />
		<img src="/bullying/images/homepage-slider/experiencing-bullying/L2-copy.png" data-ls="offsetxin:right;durationin:1000;delayin:1000;offsetxout:0;" class="ls-l" alt="" />
		<a href="http://www.pacer.org/bullying/resources/parents/helping-your-child.asp" class="ls-link"><span class="extralinktext">Is Your Child Experiencing Bullying?</span></a>
 </div> 

 <!--<% ' -----------------------------------------------------------STUDENTS WITH SOLUTIONS SLIDE------------------------------------------------------------------------------------' %> 
-->
	<div class="ls-slide" data-ls="slidedelay:10500;transition2d:11;">
		<img src="/bullying/images/slider-bg.jpg" class="ls-bg" alt="" />
		<div class="ls-l" style="left:172px; white-space:nowrap;" data-ls="offsetxin:0; offsetyin:0;">
			 <iframe width="667" height="375" src="https://www.youtube.com/embed/adV0rxAdJV8?rel=0" frameborder="0" allowfullscreen></iframe> 	
		</div>
  <h3 class="ls-l" data-ls="showuntil: 8000;" style="top: 5px; left: 50%; background:hsla(0,0%,100%,0.70); border-radius:8px; padding:5px; text-align:center">Video: Teen Talk on Cyberbullying</h3>
	</div> 	

<!--
<% ' -----------------------------------------------------------10TH ANNIVERSARY SLIDE------------------------------------------------------------------------------------' %> 
-->
<!-- <% '<div class="ls-slide" data-ls="slidedelay: 8000; transition2d:5; ">
  '<img src="/bullying/images/homepage-slider/10yrAnniversary/Bg-10yrAnniversary.jpg" class="ls-bg" alt="" />
	'	<img src="/bullying/images/homepage-slider/10yrAnniversary/L1-copy.png" data-ls="offsetxin:right;durationin:1000;offsetxout:0;" class="ls-l" alt="" />
	'	<img src="/bullying/images/homepage-slider/10yrAnniversary/L2-copy.png" data-ls="offsetxin:right;durationin:1000;delayin:1000;offsetxout:0;" class="ls-l" alt="" />
	'	<img src="/bullying/images/homepage-slider/10yrAnniversary/L3-copy.png" data-ls="offsetyin:bottom 0;durationin:1000;delayin:2000;offsetyout:0;" class="ls-l" alt="" />		
	'	<a href="http://www.pacer.org/bullying/nbpm/" class="ls-link"><span class="extralinktext">10 Year Anniversary of National Bullying Prevention Month (2006 - 2016). A decade together against bullying - and united for kindness, acceptance and inclusion. Join The Movement</span></a>
 '</div>' %> -->
	
<!--<% ' -----------------------------------------------------------WE WILL GEN SLIDE------------------------------------------------------------------------------------' %> 
-->
 <div class="ls-slide" data-ls="slidedelay: 8000; transition2d:5; ">
  <img src="/bullying/images/homepage-slider/weWillGen/Bg-weWillGen.jpg" class="ls-bg" alt="" />
		<img src="/bullying/images/homepage-slider/weWillGen/L1-copy.png" data-ls="offsetxin:left;durationin:1000;offsetxout:0;" class="ls-l" alt="" />
		<img src="/bullying/images/homepage-slider/weWillGen/L2-copy.png" data-ls="offsetxin:left;durationin:1000;delayin:1000;offsetxout:0;" class="ls-l" alt="" />
		<a href="http://www.pacer.org/bullying/wewillgen/" class="ls-link"><span class="extralinktext">Curriculum to inform and inspire students to support peers</span></a>
 </div>	
	
<!--<% ' -----------------------------------------------------------RAISE YOUR VOICE VIDEO SLIDE------------------------------------------------------------------------------------' %> 
-->
	<div class="ls-slide" data-ls="slidedelay:10500;transition2d:11;">
		<img src="/bullying/images/slider-bg.jpg" class="ls-bg" alt="" />
		<div class="ls-l" style="left:172px; white-space:nowrap;" data-ls="offsetxin:0; offsetyin:0;">
			<iframe width="667" height="375" src="https://www.youtube.com/embed/gAGcPvygSOw?rel=0" frameborder="0" allowfullscreen></iframe>	
		</div>
  <h3 class="ls-l" data-ls="showuntil: 8000;" style="top: 5px; left: 50%; background:hsla(0,0%,100%,0.70); border-radius:8px; padding:5px; text-align:center">Video: Raise Your Voice Against Cyberbullying<br />Join Norton to take a stand against cyberbullying #RaiseOurVoices</h3>
	</div> 				
	
<!--<% ' -----------------------------------------------------------YNA SLIDE------------------------------------------------------------------------------------' %> -->

 <div class="ls-slide" data-ls="slidedelay: 8000; transition2d:5; ">
  <img src="/bullying/images/homepage-slider/youreNotAlone/Bg-youreNotAlone.jpg" class="ls-bg" alt="" />
		<img src="/bullying/images/homepage-slider/youreNotAlone/L2-copy.png" data-ls="offsetyin:bottom 0;durationin:1000;offsetxout:0;" class="ls-l" alt="" />
		<a href="http://www.pacer.org/bullying/yourenotalone/" class="ls-link"><span class="extralinktext">You're not alone. We're here for you. Toolkits for events and classrooms.</span></a>
 </div>
		
<!--<% ' -----------------------------------------------------------ASK CARMEN SLIDE------------------------------------------------------------------------------------' %> 
-->
 <div class="ls-slide" data-ls="slidedelay: 8000; transition2d:5; ">
  <img src="/bullying/images/homepage-slider/askCarmen/Bg-askCarmen.jpg" class="ls-bg" alt="" />
		<img src="/bullying/images/homepage-slider/askCarmen/L1-copy.png" data-ls="offsetxin:right;durationin:1000;offsetxout:0;" class="ls-l" alt="" />
		<img src="/bullying/images/homepage-slider/askCarmen/L2-copy.png" data-ls="offsetyin:bottom 0;durationin:1000;delayin:1000;offsetyout:0;" class="ls-l" alt="" />		
		<a href="http://www.pacerkidsagainstbullying.org/kab/what-is-bullying/carmens-advice/" target="_blank" class="ls-link"><span class="extralinktext">Carmen gives great advice about bullying to kids around the country. Read what she has said to other kids, and ask her your own question!</span></a>
 </div>

<!--<% ' -----------------------------------------------------------BRAVER, STRONGER VIDEO SLIDE------------------------------------------------------------------------------------' %> 
-->		
	<div class="ls-slide" data-ls="slidedelay:10500;transition2d:11;">
		<img src="/bullying/images/slider-bg.jpg" class="ls-bg" alt="" />
		<div class="ls-l" style="left:172px; white-space:nowrap;" data-ls="offsetxin:0; offsetyin:0;">
			<iframe width="667" height="375" src="https://www.youtube.com/embed/R8lUD6BHunE?showinfo=0?rel=0" frameborder="0" allowfullscreen></iframe>
		</div>
  <h3 class="ls-l" data-ls="showuntil: 8000;" style="top: 5px; left: 50%; background:hsla(0,0%,100%,0.70); border-radius:8px; padding:5px;">Video: You Are Braver, Stronger and Smarter Than You Think | Disney</h3>
	</div> 		
		
<!--<% ' -----------------------------------------------------------TURN A LIFE AROUND VIDEO SLIDE------------------------------------------------------------------------------------' %> 		-->
		
	<div class="ls-slide" data-ls="slidedelay:10500;transition2d:11;">
		<img src="/bullying/images/slider-bg.jpg" class="ls-bg" alt="" />
		<div class="ls-l" style="left:172px; white-space:nowrap;" data-ls="offsetxin:0; offsetyin:0;">
			<iframe width="667" height="375" src="https://www.youtube.com/embed/dzD1qVfr5gs?showinfo=0?rel=0" frameborder="0" allowfullscreen></iframe>
		</div>
  <h3 class="ls-l" data-ls="showuntil: 8000;" style="top: 5px; left: 50%; background:hsla(0,0%,100%,0.70); border-radius:8px; padding:5px;">Video: Turn a Life Around</h3>
	</div> 			
		
<!-- END Slider -->		</div>
<!-- END Slider Wrapper -->	</div>
<!--<%'---------------------------- END LAYER SLIDER ------------------------------------' %>
--> 
 
 
<!--<%'---------------------------- SPECIAL ALERT MESSAGES ------------------------------------' %>
--> <%If DateDiff("n", Now, cDate("10-31-2016 11:59 PM")) > 0 Then 'turn off after date%>
 <div class="specialAlert">
 
 Orders close Monday, Oct. 31 for the official &ldquo;BE UNITED FOR KINDNESS, ACCEPTANCE, AND INCLUSION&rdquo; t-shirt. <br />
 <a href="https://www.booster.com/pacer2016?ref=CI_Other_BG2EO16&amp;utm_source=CI_Other&amp;utm_medium=customink_promo&amp;utm_campaign=BG2EO16&amp;utm_term=pacer2016" target="_blank">Get Yours Today <span class="fa fa-external-link"></span></a> </div>
 <%End If%>
<!--<%'---------------------------- END SPECIAL ALERT MESSAGES ------------------------------------' %>
--> 
 
 <div id="featured">
 <h1 id="maincontent"><img src="/bullying/images/features.png" width="120" height="41" alt="Features" /></h1> 
 <ul>
<!--<%'-------------------------------------START FEATURES SECTION ------------------------------------' %>-->

<li class="wide">
	<h3>NOMINATE SOMEONE FOR TLC&rsquo;s &ldquo;GIVE A LITTLE&rdquo; CONTEST</h3>
	<img style="border:1px solid #999" src="/bullying/images/give-tlc-banner.jpg" width="315" height="105" alt=""/>
<p>Stand up against bullying and win! TLC is committed to bringing awareness for bullying prevention. Celebrate someone (or maybe even you) in your community who has made a difference. One person will receive $5,000 to help their cause. Share their story by July 18, 2017, at <a href="http://www.tlc.com/tv-shows/give-a-little-tlc/give-a-little-contest/" target="_blank">TLC.com/GiveALittleContest</a>.</p>
	 </li>

<li class="wide">
	
	<h3>Pledge To Join &ldquo;Together Against Bullying&rdquo;</h3>
	<img style="border:1px solid #999" src="/bullying/pledge/images/pledge-banner.jpg" width="315" height="100" alt=""/>
	<p>More than one of every five students report being bullied. This might be happening to someone you know and care about. Want to take action to help prevent bullying?</p>
	<p><a href="/bullying/pledge">Take the pledge</a> and <a href="http://www.pacer.org/bullying/pledge/#hold-a-pledge-event">encourage others</a> to get involved.</p>
</li>


<!--<li class="wide">
	
	<h3>5 Tips for Raising an Empathetic Child - Starting in Preschool</h3>
	<p>Babble partners with PACER Center to help readers better understand and navigate the needs of young children. This <a href="https://www.babble.com/parenting/tips-for-raising-an-empathetic-child-starting-in-preschool/" target="_blank">blog post</a> shares simple ways to teach empathy to preschool-aged children.</p>
</li>-->

<li class="wide">
  <h3>Together Against Bullying<a class="videoPopUp" href="https://www.youtube.com/watch?v=xUoe8ZSBGvc"><img src="/bullying/images/homepage-extra/together-against-bullying-thumb.jpg" width="310" height="174" alt="Play - Together Against Bullying"/></a></h3>
	<p>Animated video created from student drawings and writing, brought to life with the voices of youth. It poignantly provides insight into how painful bullying can feel, but also touchingly shows that kids want it to stop and want to be part of the solution.</p>
</li>




<li class="wide">
<img src="/bullying/images/qa-bullied-more-w275px.jpg" width="275" height="275" alt=""/>
<h3>More Answers to Your Questions!</h3>
<p>New questions featuring shareable images, 60 second response and detailed article! Find out &ldquo;if students are bullied more often than adults think,&rdquo; along other &ldquo;Questions Answered.&rdquo;</p>
 
<p><a href="http://www.pacer.org/bullying/resources/info-facts.asp">Find responses to questions inspired by our audience.</a></p>
</li>



 <li class="wide">
 <img width="100%" src="/bullying/getinvolved/images/natalieHamptonBanner.jpg" alt="" />
 <h3>SIT WITH US! Teen App Developer Partners with PACER’s NBPC to Create Inclusive Communities</h3>
 <p>At 16 years old Natalie Hampton designed the app SIT WITH US to address bullying by helping students who have difficulty finding a place to sit locate a welcoming group in the lunchroom. Natalie is teaming with NBPC to share the message that no one should ever have to feel alone. </p>
 <p><a href="/bullying/getinvolved/natalie-hampton.asp">Learn More</a></p>
 </li>
 
 <li class="wide">
 	
  <h3>Advocating for students with disabilities</h3>
  <p><img class="fltrt" src="/bullying/images/homepage-extra/friendsinblue-150w.jpg" width="150" height="218" alt=""/>
  Visit the comprehensive online module to get informed and learn what you can do to help. Including creative resources for the classroom, designed to educate peers on what they can do to address&nbsp;bullying of students with disabilities. </p>
	<p><a href="/bullying/resources/students-with-disabilities/">Learn More</a></p>
</li>
 
 <li class="wide">

<h3>Erin Barlow is now available as National Ambassador and Motivational Speaker</h3>
<a href="/bullying/getinvolved/erin-barlow.asp"><img src="/bullying/images/homepage-extra/Erin-Barlow-thumb.jpg" alt="View Erin Barlow's Video" width="310" height="174" style="width:100%; height: auto;" /></a>
<p>Barlow, a Theater major at UCLA, is available to speak to middle and high school students around the United States. It is Barlow&rsquo;s mission to let all know they are not alone. &ldquo;If you have been bullied please know, please know that everyone deserves to be safe, respected and valued ,&rdquo; Barlow said at the Benefit. &ldquo;Never let others determine your self-worth. Striving for happiness and getting help was the best decision I made. I didn&rsquo;t give up on myself and neither should you.&rdquo;</p>
<p><a href="/bullying/getinvolved/erin-barlow.asp">View her videos</a></p>
 </li>
 
 
<li class="wide">
 <div align="center">
 <img src="/bullying/classroom/elementary/activities/images/activity-book-thumb.jpg" alt="" width="150" />
 </div>
 <h3>Kids Against Bullying Classroom Activity Book</h3>
 <p>Eight-page classroom activity book designed with educational activities for young learners. The content provides activities to help students think about their feelings, explore responses to bullying situations, and take the pledge to be a Kid Against Bullying. Download the book at no cost or order color copies, $25 for 25 color copies. </p>
 <p><a href="http://www.pacer.org/bullying/classroom/elementary/activities/activity-book.asp" target="_blank">Download or order</a></p>
 </li> 
 
 
<li class="wide">
	<h3>"Together we can build a kinder world" a message from #TeamLoserville</h3>
	<a class="videoPopUp" href="https://www.youtube.com/watch?v=ox17FhZZVG4"><img src="/bullying/images/homepage-extra/Loserville-unity-thumb.jpg" width="310" height="174" alt="Play TeamLoserville Unity Video 1"/></a>
	<p>#TeamLoserville shares the important message that bullying has happened to so many for too long. Bullying impacts all of us, but we can all be part of the solution. Cast member Darby Stanchfield shares, &ldquo;It&rsquo;s time to send a message that we care about creating safe and supportive schools, communities and online environments.&rdquo; Watch this video along with three more featuring the cast and crew from the newly released film &ldquo;Loserville.&rdquo;</p>
	<p><a href="https://www.youtube.com/results?search_query=%23TeamLoserville" target="_blank">View the four videos <span class="fa fa-external-link"></span></a> | <a href="https://gowatchit.com/microsite/4109?gwi_origin=tracking_link&amp;gwi_origin_context=microsite#rent_own_online-11098" target="_blank">Watch the movie trailer <span class="fa fa-external-link"></span></a></p>
</li>


 <li>
 <p class="fIcon fInfo">Notifying the School About Bullying &ndash; Using a Template Letter</p>
 <p><a href="/bullying/resources/publications/#notifytheschool"><img class="fltrt" src="/bullying/images/homepage-extra/template-letter-thumb.jpg" width="120" height="155" alt="Read More"/></a>Parents should contact school staff each time their child informs them that he or she has been bullied.  PACER Center has created template letters that parents may use as a guide for writing a letter to their child&rsquo;s school.  These letters contain standard language and &ldquo;fill in the blank&rdquo; spaces so the letter can be customized for your child&rsquo;s situation.</p>
 <p><a href="/bullying/resources/publications/#notifytheschool">Read More</a></p>
</li>

<li>
 <p class="fIcon fInfo">Student Action Plan Against Bullying</p>
 <p><a href="/bullying/pdf/StudentActionPlan.pdf"><img class="fltrt" src="/bullying/images/homepage-extra/student-action-plan-thumb.jpg" width="120" height="155" alt="Read More"/></a>Are you an educator working with a student being bullied, a parent  looking for ways to help your child change their behavior, or a student  who wants to take action against bullying, but isn&rsquo;t sure what to do? As  a student, bullying is something that impacts you, your peers, and your  school &ndash; whether you&rsquo;re the target of bullying, a witness, or the  person who bullies. Bullying can end, but that won&rsquo;t happen unless  students, parents, and educators work together and take action.</p>
 <p>To get started, <a href="/bullying/pdf/StudentActionPlan.pdf" target="_blank">download the Student Action Plan <span class="fa fa-external-link"></span></a> and learn more about developing a plan.</p>
 <p>Also available in Spanish: <a href="/publications/bullypdf/BP-25s.pdf" target="_blank">Handout <span class="fa fa-external-link"></span></a> and <a href="/publications/bullypdf/MyPersonalPlan-Spanish.pdf" target="_blank">Personal Plan <span class="fa fa-external-link"></span></a></p>
</li>
 
 
 <li>
 <h3 class="fIcon fPdf">Spanish Translations</h3>
 <p><a href="/bullying/resources/publications/spanish-materials.asp">See our spanish translations section to find out what informational handouts are available.</a></p>
 </li>
 
 <li>
 <p class="fIcon fNewsfeed">Resources for LGBTQ Students and Their Families</p>
 <p><a href="http://www.thetrevorproject.org/" target="_blank">The Trevor Project</a> provides crisis intervention and suicide prevention services to lesbian, gay, bisexual, transgender, and questioning youth.</p>
 <p><a href="http://www.glsen.org/cgi-bin/iowa/all/about/history/index.html" target="_blank">GLSEN</a> seeks to develop school climates where difference is valued for the positive contribution it makes in creating a more vibrant and diverse community.</p>
 </li>
 <!-- 
 <% ' ------------------------------------ PREVIOUS FEATURED POSTS -------------------------------'
'<li class="wide">
'<img src="/EAPlaytoGive/images/EA_Play_To_Give-300w.png" alt="EA Play to Give" width="100%" />
'	<p><strong>EA PARTNERS WITH PACER&rsquo;s NATIONAL BULLYING PREVENTION CENTER WITH &ldquo;PLAY TO GIVE&rdquo;</strong> <br />
'		<em>EA&rsquo;s Play to Give program promoting in-game challenges and donation to charitable partners</em></p>
'	<p>Through <a href="https://www.ea.com/eaplay2017/play-to-give" target="_blank">Play to Give <span class="fa fa-external-link" aria-hidden="true"></span></a>, EA celebrates the importance of inclusion and play and the positive connections it makes for all the diverse players around the world. With millions of hours spent in play every day, games are a powerful platform for creating positive, inclusive connections. <a href="http://www.pacer.org/eaplaytogive/">You can support the cause too</a>.</p>
'	 </li>

 
 
 '<li class="wide">
' <h3>View the Unity Day 2016 Photo Album</h3>
' 	<div style="width:310px; text-align:center" class="date">
' 	<a href="https://www.facebook.com/PACERsNationalBullyingPreventionCenter/photos/?tab=album&amp;album_id=1155407771180930" target="_blank"><img src="/bullying/images/homepage-extra/UnityPhotoAlbum-310w.jpg" width="310" height="310" alt="Facebook Unity Day Photo Album"/>
'  View Album <span class="fa fa-external-link"></span></a> </div>
'  <p>Together Against Bullying. United for Kindness, Acceptance and Inclusion! Thanks to everyone that went ORANGE to celebrate Unity Day this year. Please send images, with permission to share, to <a href="mailto:bullying411@pacer.org">bullying411@pacer.org</a> to be added to this album.</p>
' </li>
' <li class="wide">
' <div align="center">
' <img src="/bullying/images/mcfinn_hero-300px.jpg" width="300" height="157" alt=""/></div>
' <h3>Malls &amp; Retailers Unite Against Bullying</h3>
' <p>Looking for a community event to engage your young child? Malls around the country have partnered during National Bullying Prevention Month to bring awareness and activities. <a href="http://www.pacer.org/bullying/getinvolved/supporter-resources/mcfinn/" target="_blank">Check out the event calendar for a mall location near you.</a></p>
' </li>
' 
' <li class="wide" id="digitalPetitionFeature">
' <h3>Unite with others and show your support</h3>
' <a href="/bullying/digitalpetition/"><img src="/bullying/images/homepage-extra/sign-the-petition.jpg" alt="Sign the Digital Petition" width="310" height="120" title="Sign the Digital Petition"/></a>
' </li>
' 
' <li class="wide">
' <h3>Spookley the Square Pumpkin</h3>
' <p><img src="/bullying/images/spookley-sml.jpg" width="119" height="71" alt="" align="right"/><strong>Complete Digital Teacher "Stop Bullying Before it Starts" Toolkit(pre-school to 3rd grade)</strong><br />
' Spookley is a square pumpkin who lives in a round pumpkin patch world. This online toolkit includes resources educators can use to effectively present The Legend of Spookley the Square Pumpkin as a multi-subject learning opportunity. The core elements of the online toolkit involve a reading of the book (or viewing the free online video) supplemented by downloadable lesson plans and other activities that teach bullying prevention and character values. <a href="http://www.pacer.org/bullying/classroom/elementary/spookley/">Access the free, online toolkit </a></p>
' </li>
 

' <li class="wide">
' <h3>National Bullying Prevention Month (2006-2016)</h3>
' <a href="http://www.pacer.org/bullying/nbpm/history.asp"><img src="/bullying/images/ud-10-year-thumb.jpg" alt="Learn More About the History of the month" width="150" height="136" title="Learn More About the History of the month" align="right" hspace="10"/></a>
' <p><strong>A decade together against bullying and united for kindness, acceptance and inclusion</strong><br />
' National Bullying Prevention Month is a campaign in the United States founded in 2006 by PACER&rsquo;s National Bullying Prevention Center.</p>
' <p> <a href="http://www.pacer.org/bullying/nbpm/history.asp">Learn more about the history of the month</a></p>
'</li> 
'
'<li class="wide">
' <a aria-hidden="true" href="http://www.customink.com/stopbullying" target="_blank"><img src="/bullying/images/2016-tshirt-loserville-310w.jpg" alt="Purchase PACER&rsquo;s official t-shirt!" width="310" height="310" title="Custom Ink Shirts"/></a>
'<h3>FINAL DAYS! Order the Official Shirt from CustomInk's Be Good To Each Other Campaign!</h3>
'<p>BE UNITED FOR KINDNESS, ACCEPTANCE AND INCLUSION! Wear this special shirt all school year!</p>
'<p>Orders close Monday, Oct. 31st. CustomInk is donating profits from the sales of bullying prevention T-shirts to benefit PACER&rsquo;s NBPC as part of its sixth annual Be Good to Each Other campaign.</p>
'<p><a href="http://www.customink.com/stopbullying" target="_blank">Purchase PACER&rsquo;s official t-shirt!</a></p>
'<p>For a chance to win an iPad from CustomInk, <a href="http://www.customink.com/besweeps" target="_blank">upload your #UnityDay2016 photo!</a></p>
' </li>
 
 
' <li class="wide">
' <img class="centered" src="/bullying/nbpm/images/fb_unityday_shares_quote.jpg" width="301" height="112" alt=""/> 
'<h3>Unity Day 2016, Oct. 19<sup>th</sup><br />
' Make it orange! Make it end!
'</h3>
'<p><strong><a href="/bullying/nbpm/unity-day.asp">UNITY DAY: Together against bullying — united for kindness, acceptance and inclusion.</a></strong><br />
' 
'Go orange to show your support! Ideas to share orange online include:</p>
'<ol type="square">
'<li>Change your social media profiles on <a href="http://www.pacer.org/bullying/nbpm/go-orange/socialmedia.asp" target="_blank">Facebook and Instagram</a></li>
'<li>Tag your social media photos using #UnityDay2016</li>
'<li>Share your pictures to the <a href="https://www.facebook.com/events/968592066590983/" target="_blank">Facebook event page</a></li>
'<li>Share the Unity Day page with friends through <a href="http://www.pacer.org/bullying/nbpm/unity-day.asp" target="_blank">social media</a></li>
'<li><a href="https://www.instagram.com/explore/tags/unityday2016/" target="_blank">#UnityDay2016 <span class="fa fa-external-link"></span></a></li>
'</ol>
' </li>
'
'
'
'<li class="wide"> 
'	<h3>Show You Care. Wear &amp; Share Orange on Unity Day</h3>
'	<a class="videoPopUp" href="https://www.youtube.com/watch?v=CB0sjZzUScQ"><img src="/bullying/images/homepage-extra/NatalieH-UnityDay2016-310w.jpg" width="310" height="174" alt="Play Natalie's Unity Video"/></a>
'	<p>At 16 years old Natalie Hampton designed the app Sit With Us to address bullying by helping students who have difficulty finding a place to sit locate a welcoming group in the lunchroom. <a href="/bullying/getinvolved/natalie-hampton.asp">Learn More</a></p>
'</li>

 
' 
' <li class="wide">
' <img src="/bullying/images/Beyond-Sticks-315px.jpg" width="315" height="236" alt=""/>
' <h3>Beyond Sticks &amp; Stones:<br />
'  How to Help Your Child Address Bullying</h3>
' <p><em>Price reduced! Only $5!</em> This important book offers real-world bullying prevention strategies for children at home, in school, and online. It contains the latest information and practical tools that can help parents and others take action against bullying. <a href="http://www.pacer.org/bullying/resources/publications/" target="_blank">Order today</a></p>
' </li>
' 
'  <li class="wide"><a href="/bullying/yourenotalone/" target="_blank">
' <img src="/bullying/images/youre-not-alone-screen.jpg" width="320" height="271" alt="You&rsquo;re Not Alone. We&rsquo;re Here for You."/></a>
' <p>This campaign provides education and resources on ways to provide support, hope and help for those who have experienced bullying. Features classroom and event toolkits designed to start conversation and initiate action on ways to &ldquo;be there&rdquo; united together against bullying.</p>
' <p class="centered"><a href="/bullying/yourenotalone/" target="_blank">You're Not Alone Campaign</a></p>
' </li>
' 
' <li class="wide"><h3>Unity Day &mdash; Wed., Oct. 19</h3>
' <p>Make it ORANGE and make it end! What are your true colors when it comes to bullying? If you care about safe and supportive schools and communities make your color ORANGE on Unity Day. <a href="http://www.pacer.org/bullying/nbpm/unity-day.asp">Learn how to get involved</a></p>
' 
' <h3><a href="/bullying/resources/posters.asp"><img src="/bullying/resources/images/unity-day-poster-fb.jpg" alt="Order Unity Day Posters" style="width:100%" title="Pace Your Order" align="right"/></a>
' Unity Day Posters &mdash; Available Now!</h3>
' <p>Promote Unity Day by displaying this poster in your school, home, or community.</p>
' <p><a href="/bullying/resources/posters.asp">Place your order</a></p>
' </li>
 
 
'<li class="wide">
' <img src="/bullying/newsletter/images/UnityAwards.jpg" width="300" height="191" alt=""/>
'<h3>The Unity Awards</h3>
' <p>The Unity Awards are designed to honor and celebrate a few of those individuals and groups who have made outstanding contributions to address and prevent bullying &ndash; whether it&rsquo;s building awareness of bullying prevention, inspiring and empowering others to take positive actions, or advocating for those who need support. Nominations are now open for the second annual Unity Awards; anyone can submit a nomination and the online form is open through April 15, 2016. </p>
' <ul>
'	<li><a href="http://www.pacer.org/bullying/getinvolved/unity-awards.asp" target="_blank">Learn more about the Unity Awards</a></li>
' </ul></li>
' 
'<li class="wide">
'<h3>Support Bullying Prevention in Style with CustomInk</h3>
'<img src="/bullying/images/2015-tshirt-promo.jpg" width="320" height="213" alt=""/>
'<p><strong>Make Plans Now To Wear Orange on Unity Day Oct. 21 and Show Support of Kindness, Inclusion and Acceptance</strong><br />
' PACER has partnered with CustomInk to launch its fifth annual &lsquo;<a href="http://www.customink.com/stopbullying" target="_blank">Be Good to Each Other</a>&rsquo; campaign in support of Unity Day and PACER&rsquo;s National Bullying Prevention Month in October. The campaign encourages students, groups, and others to take a stand for kindness, respect, and inclusion by designing and wearing custom bullying prevention t-shirts. Official Unity Day t-shirts are still&nbsp;available for purchase for $12 at <a href="http://customink.com/stopbullying" target="_blank">customink.com/stopbullying</a>. <strong>Please note that t-shirts ordered between 10/14-10/31 will NOT arrive in time for Unity Day.</strong> You can also take a stand with celebrity supporters by purchasing a celebri-tee for $20. Click <a href="http://www.customink.com/stopbullying" target="_blank">here to view and purchase celebrity t-shirts</a>. CustomInk will donate all profits (approximately $8 per shirt) back to PACER.</p>
' </li>
 
'<li class="wide">
'	<div>
'	<h3>YouTube Sensation Bethany Mota joins PACER’s National Bullying Prevention Center and Viktor’s Quest to S.T.O.P. Bullying at Mall of America&reg; October 20th</h3>
'	<img src="/bullying/images/homepage-extra/bethany-moa.jpg" style="border:1px solid black;" width="320" height="213" alt=""/>
'	<p>October is National Bullying Prevention Month, which was started by PACER Center in 2006, and YouTube sensation Bethany Mota will help mark the occasion Tuesday, Oct. 20 at Mall of America&reg; during PACER’s Together Against Bullying Day. <a href="http://www.pacer.org/bullying/getinvolved/moa-event.asp">Learn More >>></a></p>
'	</div>
'</li>



'<li class="wide"> <a href="/bullying/getinvolved/unity-awards.asp"><img style="padding:5px 0" src="/bullying/images/homepage-extra/unityAwardsBanner-sml.jpg" width="320" height="95" alt="Unity Awards"/></a>
'	<h3><strong>The Unity Awards: Recognize someone who has gone above and beyond to prevent bullying</strong></h3>
' <p>On Tuesday, June 9th, the youth advisory board "The Faces of Change" recognized individuals from across the nation who have made a difference in their communities.</p>
' <p><a href="/bullying/getinvolved/unity-awards.asp">Learn more &gt;&gt;&gt;</a></p>
'</li>
%>
 -->
 </ul> 
 </div>
 
 

<div class="topAdSpace">
	<div id="tabkab-banner">
 	<a href="http://www.pacerkidsagainstbullying.org/kab/" target="_blank" id="kabLink" class="adLink">Teens Against Bullying Website</a>
 	<a href="http://www.pacerteensagainstbullying.org/tab/" target="_blank" id="tabLink" class="adLink">Kids Against Bullying Website</a>
	</div>
</div> 
 
 
 <div id="facebook-icarebecause">
 <div class="bottombox" id="fbItems">
 
 
 <h2><a href="https://www.facebook.com/PACERsNationalBullyingPreventionCenter" target="_blank"><img class="glowred" src="/bullying/images/followusonfacebook.png" width="230" height="33" alt="Facebook" /><img style="vertical-align:top"src="/images/facebookicon_medium.gif" width="35" height="35" alt="Facebook" /></a></h2> 
<!-- <h2 style=" margin-left:15px; text-shadow:none;"><a href="https://www.facebook.com/PACERsNationalBullyingPreventionCenter" target="_blank">Follow Us on Facebook <img style="vertical-align:middle" src="/images/facebookicon_medium.gif" width="35" height="35" alt="Facebook" /></a></h2>-->
<% 
 sql = "SELECT TOP 5 * FROM bullyFacebook ORDER BY date_stamp DESC"
 Set rs = conn.execute(sql)

Do Until rs.eof
%>
 <div class="fb-post" data-href="<%=rs("fb_url")%>" 
	data-width="350"></div>


<%
rs.movenext
 loop
 rs.close
 set rs = nothing
%>
 
<!-- end FB Posts --></div>


 <%'----------------------------I CARE BECAUSE DATA SET ------------------------------------'
 sql = "SELECT TOP 15 * FROM icarebecause WHERE bullysupport_online = 'Approve' OR bullysupport_online = 'Approve-NoKids' ORDER BY NEWID()"
 Set rs = conn.execute(sql)
%>
 <div class="bottombox" id="icarebecause" style="width:283px;">
 <div class="toprightbox" id="submitstory"><a href="/bullying/icarebecause/add-your-comment.asp"><img class="glowred" src="images/addyourcomment.png" width="67" height="26" alt="Add Your Comment" /></a></div> 
 <h2><a href="/bullying/icarebecause/"><img class="glowred" src="/bullying/images/icarebecause.png" width="155" height="33" alt="I Care Because" /></a></h2>

<%Do Until rs.eof%>
	<div class="icarebecauseItem">
 <pre class="icareitem"><%=rs("bullysupport_comment")%></pre>
	<p class="icarename"><%=rs("bullysupport_fname")%>, <%=rs("bullysupport_age")%>, <%=rs("bullysupport_state")%></p>
	</div>
<%rs.movenext
 loop
 If conn.State = adStateOpen then
  conn.Close
 End If
 rs.close
 set rs = nothing
%>

<h3 style="text-align:right; border:none; margin-right:5px;margin-top:10px;"><a href="/bullying/icarebecause/">Read More</a> | <a href="/bullying/icarebecause/add-your-comment.asp">Add Your Comment</a></h3>



<!-- end Icarebecause --></div>
</div>

<script type="text/javascript" language="javascript">
	//$('#icarebecause').delay(2000).css('height', ($('#newsitems').outerHeight() - 19)+'px').alert($('#icarebecause').height());
</script>



<div class="additionalinfobox" id="supportPacer">
<h2>Support Kindness, Acceptance and Inclusion for All Students</h2>

<table id="support-table" cellspacing="0">
<!--	<tr>
		<td>
			<h3>Vote &ldquo;Kindness&rdquo;</h3>
			<p>The Cat in the Hat, in his Presidential campaign, will represent all that Dr. Seuss believed about children—that they have the intellect, imagination and power to impact our world positively, while also having fun doing so. On the ballot are his supporters and their causes, including “kindness for all” sponsored by PACER’s National Bullying Prevention Center. The organization with the most votes receives a $10,000 donation.</p>
			<p><a href="http://www.seussville.com/catinhat4prez/" target="_blank">Vote to support kindness</a></p>
		</td>
		<td>
			<img src="/bullying/images/cat-in-hat-200w.jpg" width="200" height="200" alt=""/>
		</td>
	</tr>-->

	<tr>
		<td>
			<h3>Take surveys, join Survey Monkey Contribute</h3>
			<p>Sign up and you will receive surveys by e-mail from SurveyMonkey customers who need your opinion. For every survey you take, SurveyMonkey will donate 50 cents to PACER's National Bullying Prevention Center, plus you'll get a chance to win $100 in an instant win game.</p>
			 <p><a href="https://contribute.surveymonkey.com/sign-in" target="_blank">Join Survey Monkey in supporting PACER’s NBPC</a></p>
		</td>
		<td>
			<img src="/bullying/images/survey-monkey-200w.jpg" width="200" height="200" alt=""/>
		</td>	
	</tr>	
 
<!--	<tr>
		<td>
			<h3>Win headphones for your entire classroom</h3>
			<p>View the animated video series created with drawings from young students around the country. After viewing the videos, students can share their poetry or stories, create a drawing, film a short video, or design a graphic that can entered in our online contest. Every student in four classrooms will be awarded LilGadget headphones and a pizza party!</p>
			<p><a href="http://www.pacer.org/bullying/getinvolved/students-with-solutions.asp">Support creative action to prevent bullying</a></p>
		</td>
		<td>
			<img src="/bullying/images/lil-gadgets-200w.jpg" width="200" height="200" alt=""/>
		</td>	
	</tr>	-->
	
	<tr>
		<td>
			<h3>Win Clarisonic for your entire classroom</h3>
			<p>Watch <em>Teen Talk on Cyberbullying</em>, an unscripted video in which teens provide authentic insight and perspective on issues related to cyberbullying. After viewing the videos, students can share their poetry or stories, create a drawing, film a short video, or design a graphic that can will then be eligible for prizes, including the <a href="http://www.clarisonic.com/facial-cleansing-brushes/mia-1-CL370.html?utm_source=partner&utm_medium=pr&utm_campaign=pacer&utm_content=mia1" target="_blank"> Clarisonic MIA 1</a> for entire classrooms.</p>
			<p><a href="http://www.pacer.org/bullying/getinvolved/students-with-solutions.asp">Watch and listen to what teens are thinking about cyberbullying</a></p>
		</td>
		<td>
			<img src="/bullying/images/clarisonic-200w.jpg" width="200" height="200" alt=""/>
		</td>	
	</tr>		

	<tr>
		<td>
			<h3>Share how PACER&rsquo;s NBPC has helped you</h3>
			<p>KakashiI, a 17-year-old from Los Angeles, writes: &ldquo;<em>I have been bullied because my love for anime is &lsquo;too extreme.&rsquo; People have picked on me for the way I run, the things I like, and the clothes I wear. It is not fair to judge me based on my love for Japanese culture. I care because I feel everyone should be able to enjoy what they love and what they do without the cruel judgments of &lsquo;normies.&rsquo;&rdquo;</em></p>
			<p><a href="http://www.pacer.org/bullying/icarebecause/add-your-comment.asp">Share your story</a></p>
		</td>
		<td>
			<img src="/bullying/images/nbpc-quote-200w.jpg" width="200" height="200" alt=""/>
		</td>	
	</tr>	
	
	<tr>
		<td>
			<h3>Nominate someone for a Unity Award</h3>
			<p>The annual Unity Awards event celebrates a few individuals and groups, in Minnesota and throughout the nation, who have made outstanding contributions to prevent bullying—whether it’s building awareness, inspiring and empowering others to take positive action, or advocating for those who need support.</p>
			<p><a href="http://www.pacer.org/bullying/getinvolved/unity-awards.asp">Recognize someone in your community.</a></p>
		</td>
		<td>
			<img src="/bullying/images/unity-awards-200w.jpg" width="200" height="200" alt=""/>
		</td>	
	</tr>		
	
	<tr>
		<td>
			<h3>Hold an event in your community</h3>
			<p>A complete event toolkit provides resources and giveaways to initiate conversation and action on ways to “be there” for those who experience bullying, providing kindness, hope, and support. The toolkit can be used in coordination with a bullying prevention event in the school or community, such as a Run, Walk, Roll Against Bullying, school open house, or parent-teacher conferences.</p>
			<p><a href="http://www.pacer.org/bullying/yourenotalone/event-toolkit.asp">Order the &ldquo;You're Not Alone, We're Here for You&rdquo; toolkit</a></p>
		</td>
		<td>
			<img src="/bullying/images/yna-200w.jpg" width="200" height="200" alt=""/>
		</td>	
	</tr>			
	
</table>
</div>

<!--
<%
'<div id="catinhat"> <a href="http://www.catinhat4prez.com/" target="_blank"><img class="fltrt" src="/bullying/images/cat-in-hat-banner-310w.jpg" width="310" height="115" alt="Cat in the Hat - I'd Vote For That Campaign"/></a>
' <h3>Cat in the Hat for President</h3>
' <p>The Cat in the Hat, in his Presidential campaign, will represent all that Dr. Seuss believed about children&mdash;that they have the intellect, imagination and power to impact our world positively, while also having fun doing so. The Cat in the Hat wants to show kids that every vote counts, and every voice matters. On the ballot are his supporters and their causes, including &ldquo;kindness for all&rdquo; sponsored by PACER&rsquo;s National Bullying Prevention Center. The organization with the most votes receives a $10,000 donation. </p>
' <p><a href="http://www.catinhat4prez.com/" target="_blank">Vote for KINDNESS TO ALL <span class="fa fa-external-link"></span></a></p>
' </div>
%>

<%
'<div id="SurveyMonkey">
 ' <h3><img class="fltlft" style="margin-bottom:5px;" src="/images/homenews-sml/survey-monkey.png" width="50" height="33" alt="" />Join <a href="https://contribute.surveymonkey.com/charity/pacer" target="_blank">Survey Monkey 'Contribute</a></h3>
' <p>PACER&rsquo;s National Bullying Prevention Center is excited to announce our new partnership with <a href="https://contribute.surveymonkey.com/charity/pacer" target="_blank">SurveyMonkey Contribute</a> and a new way for anyone to give their support! Sign up and you will receive surveys by e-mail from SurveyMonkey customers who need your opinion. For every survey you take, SurveyMonkey will donate $0.50 to PACER's National Bullying Prevention Center, and you'll get a chance to win $100 in an instant-win game. </p>
'</div>
%>

<%
'<div id="TAG">
'		<div class="featuredDescription">
'		<p><strong>T</strong>ogether <strong>AG</strong>ainst Bullying&trade; is a campaign for PACER&rsquo;s National Bullying Prevention Center, inspired by Carrot Top. Donate, receive stickers to TAG your friends, and share on social media. Your support means one less student being bullied, one more person speaking out, or one more kid knowing that he or she isn't alone!</p></div>
'		<div class="featuredLink"><a href="http://togetheragainst.org/" target="_blank">TAG it forward!</a></div>
'	</div>
%>

<%
'<h3 style="padding-left:5px;"><img src="/bullying/images/text-donate-pacer.jpg" width="630" height="185" alt="text-donate"/></h3>
%>

<%
'<h3>Creative Kids Card Now Available!</h3>
' <p><img src="/bullying/images/CreativeKidsCard-300px.jpg" width="250" height="166" alt="" class="fltrt" style="margin-bottom:10px;"/>Since 2006, PACER has held CREATIVE KIDS, an event in which children with disabilities are invited to use their imaginations to express themselves through various mediums and vibrant colors. This year&rsquo;s artwork focused on themes of unity, inclusion, kindness and friendship. The 2016 design was created by Isabella and is now on sale for $10 per box. <a href="http://www.pacer.org/help/creativeKids/creative2016.asp" target="_blank">Learn more about Isabella, her new design and how to purchase &gt;&gt;&gt;</a></p>
' <br style="clear:left" />
%>

<%
'<h3>All About Bullies . . . Big And Small</h3>
'<p><a href="http://allaboutbulliesbigandsmall.com/" target="_blank"><img class="fltlft" style="margin-bottom:10px;" src="/bullying/getinvolved/supporter-resources/images/All-About-Bullies-CD-front3.jpg" width="146" height="147" 'alt="All About Bullies &hellip; Big and Small" /></a>A CD for young children, and winner of a Grammy for Best Children&rsquo;s Album, <a href="http://allaboutbulliesbigandsmall.com/" target="_blank">All About Bullies &hellip; Big 'and Small</a> is a collection of music, poetry and storytelling designed to put an interesting and heartfelt twist on bullying prevention, so that young learners can identify with the topic in an age appropriate manner. The 'artists all generously contributed their time and talents. 100% of the profit proceeds are donated to PACER’s Kids Against Bullying initiatives. </p>
'<br style="clear:left" />
'</div>

%>
-->

<br class="clearfloat" />

 <!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
<!-- end .container --></div>
</body>
</html>
