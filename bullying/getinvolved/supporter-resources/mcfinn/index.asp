<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>National Bullying Prevention Center - Captain McFinn and Friends</title>
<meta name="title" content="National Bullying Prevention Center - Captain McFinn and Friends" />
<meta name="description" content="Captain McFinn is pleased to support PACER&rsquo;s National Bullying Prevention Center." />

<!-- for Facebook -->          
<meta property="og:title" content="National Bullying Prevention Center - Captain McFinn and Friends" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/bullying/getinvolved/supporter-resources/images/mcfinn_fb.jpg" />
<meta property="og:url" content="http://www.pacer.org/bullying/getinvolved/supporter-resources/mcfinn/index.asp" />
<meta property="og:description" content="Captain McFinn is pleased to support PACER&rsquo;s National Bullying Prevention Center." />

<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link href="/bullying/wewillgen/css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/bullying/css/scrolling.css"/>
<link rel="stylesheet" type="text/css" href="/php-sdk/fbwallfeed.css"/>
<link rel="stylesheet" type="text/css" href="/php-sdk/hashtagAggregator.css"/>
<link href="/js/colorbox1.5.9/colorbox.css" rel="stylesheet" type="text/css" />

<!--#include virtual="/bullying/dynamic-head-items.html"-->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script src="/js/colorbox1.5.9/jquery.colorbox-min.js" type="text/javascript"></script>

<!-- add this script -- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>


<script src="/js/colorbox/jquery.colorbox.js" type="text/javascript"></script>

<script type="text/javascript">
//<![CDATA[
	//Make Color Box Descriptions Expand Below the Image.
	$(document).bind('cbox_complete', function(){
		if($('#cboxTitle').height() > 20){
			$("#cboxTitle").hide();
			$("<div>"+$("#cboxTitle").html()+"</div>").css({color: $("#cboxTitle").css('color')}).insertAfter(".cboxPhoto");
			$.fn.colorbox.resize();
		}
	});
	
	$(document).ready(function(){
		$('#twitterData').load('/php-sdk/displayShineBrightTwitter.php', function() {
				$(".colorboximg").colorbox({rel:'colorboximg'});			
		});
		$('#instagramData').load('/php-sdk/displayShineBrightInstagram.php', function() {
				$(".colorboximg").colorbox({rel:'colorboximg'});			
		});
				
	});	
	//]]>	
</script>





<style type="text/css">
#bottomContentWrapper {
	margin: 0 auto;
	width: 930px;
}

.bottomContent { padding: 10px 45px; }

#fbfeedheader {
	min-height: 40px;
	padding-bottom: 5px;
	margin-bottom: 5px;
	border-bottom: 1px soild #ccc;
}

#wwghashtagheader {
	position: relative;
	margin-bottom: 5px;
	min-height: 40px;
	padding-bottom: 5px;
}

#wwghashtagheader h2 {
	text-align: center;
	font-weight: bold;
	color: #772828;
	font-size: 1.2em;
	text-shadow: none;
}

#wwghashtagdata { margin-top: 5px; }

#extraSliderNav {
	width: 100%;
	text-align: center;
	padding: 10px;
}

#wwgtwitterhandle {
	position: absolute;
	right: 0px;
	bottom: -15px;
}

#wwginstagramhandle {
	position: absolute;
	left: 0px;
	bottom: -15px;
}

#topheroimage h1 {
	color: #FFFFFF;
	text-shadow: 2px 2px 4px #000;
	position: absolute;
	top: 132px;
	left: 91px;
	padding: 0px;

	line-height: 1.1em;
	width: 303px;
}

#topheroimage .widebutton { position: absolute; }

.row-shadow #intromessage {
	background-image: url('/bullying/wewillgen/images/shadow-bottom.png'), url('/bullying/wewillgen/images/shadow-top.png');
	background-repeat: repeat-x, repeat-x;
	background-position: 0px 50px, left top;
}

#pledgebutton {
	border-radius: 5px;
	color: #343263;
	font-size: 1.3em;
	font-weight: bold;
	min-height: 2em;
}

#pledgebutton:disabled {
	color: #ccc;
	background-color: #eee;
}

#pledgemessage { display: none; }

#hashtagitems{
    width:900px;
    margin:0 auto;
}

.bottombox {
	width:450px;
	float:left;
}
.logo {
	padding-right:10px;	
}
.logo-thumb {
	width:140px;
	height:140px;
	background-color:#fff;
	margin:10px;
	float:left;	
}

.row-lightblue, .row-lightblue h1, .row-lightblue h2, .row-lightblue h3, .row-lightblue .morebutton {
	background-color:#0085be;
	color:#fff;
}
.row-lightblue h1 {
	text-align:center;	
	font-size:30px; 
	line-height:40px; 
	text-shadow:0px 0px 5px #000;	
}
.row-lightblue a {
	color:#FFF;
}
.row-lightblue a:hover {
	color:rgba(255,255,255,0.5);
}
.row-lightblue .externallink {
	background:url(/bullying/images/styles/externalLinkWhite.png) no-repeat right;
}
.row-lightblue .externallink:hover {
	background:url(/bullying/images/styles/externalLinkWhiteHover.png) no-repeat right;
	color:rgba(255,255,255,0.5);
}

.row-purple, .row-purple h1, .row-purple h2, .row-purple h3, .row-purple .morebutton {
	background-color:#fff;
	color:#273880;
}
.row-purple h1 {
	text-align:center;	
	font-size:30px; 
	line-height:40px; 
	text-shadow:0px 0px 5px #000;	
}
.row-purple a {
	color:#273880;
}
.row-purple a:hover {
	color:rgba(255,255,255,0.5);
}
.row-purple .externallink {
	background:url(/bullying/images/styles/externalLinkWhite.png) no-repeat right;
}
.row-purple .externallink:hover {
	background:url(/bullying/images/styles/externalLinkWhiteHover.png) no-repeat right;
	color:rgba(255,255,255,0.5);
}

</style>
</head>

<body class="onecol">

<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<div class="container">

<!--#include virtual="/bullying/dynamic-header.html"--> 
<!--#include virtual="/bullying/topnav.html"-->

<div class="content"> <a href="#" class="contentrow-anchor" aria-hidden="true"></a>
	<div id="topheroimage" style="position: relative; left: 0; top: 0;"> 
	<!-- Go to www.addthis.com/dashboard to customize your tools -->
<div class="addthis_sharing_toolbox" style="position:absolute; left:700px; top:15px; z-index:10;"></div>	
	<a href="http://www.captainmcfinn.com"><img style="position: relative; left: 0; top: 0;" src="/bullying/getinvolved/supporter-resources/images/mcfinn_hero.jpg" width="1024" height="536" alt=""/></a>
	<!--<img style="position: absolute; left: 40px; top: 50px;" src="/bullying/shinebright/images/hashtag_shinebright.png" alt="#shinebright"/>-->
<!--		<img style="position: absolute; left:0px; top:20px;" src="/bullying/shinebright/images/rudolphShinebrightLogo.png" width="450" height="146" alt="Shine bright and help make the world a brighter place"/> 
-->	<!--<h1> <span style="font-size:.7em; text-align:center; line-height:normal; letter-spacing:normal; text-shadow:none; color:#000000">Share What Makes You Unique</span></h1>-->
</div>

<div class="contentrow row-purple">
		<h2 style="font-size:24px">Captain McFinn is pleased to support PACER's National Bullying Prevention Center</h2>
</div>	

<div class="contentrow row-lightblue row-shadow">
	<h2 style="font-size:30px; line-height: 40px">Event Calendar at Locations Around the Nation</h2>
		<table class="threecoltable">
			<tr>
				<td style="vertical-align:top"><img src="/bullying/getinvolved/supporter-resources/images/tammin-sursok.jpg" width="235" height="353" alt=""/></td>
				<td style="vertical-align:top"><p>Mother and actress Tammin Sursok has joined Captain McFinn as the Malls & Retailers Unite Against Bullying Ambassador. Tammin will be making appearances at several malls across the country to join with you in signing the Bully-Free Pledge.</p>
				<p>Find the mall closest to you to see when you will have the opportunity to meet Tammin and support all the Malls & Retailers Unite Against Bullying activities. </p>
				<div style="align:middle">
					<div class="logo-thumb"><a href="http://www.governorssquare.net" target="_blank"><img src="/bullying/getinvolved/supporter-resources/images/mall-logo1.jpg" width="140" height"140" alt""/></a></div>
					<div class="logo-thumb"><a href="http://www.eastwoodmall.com" target="_blank"><img src="/bullying/getinvolved/supporter-resources/images/mall-logo2.jpg" width="140" height"140" alt""/></a></div>
					<div class="logo-thumb"><a href="http://www.huntingtonmall.com" target="_blank"><img src="/bullying/getinvolved/supporter-resources/images/mall-logo3.jpg" width="140" height"140" alt""/></a></div>
					<div class="logo-thumb"><a href="http://www.kennedymall.com" target="_blank"><img src="/bullying/getinvolved/supporter-resources/images/mall-logo4.jpg" width="140" height"140" alt""/></a></div>
					<div class="logo-thumb"><a href="http://www.kentuckyoaksmall.com" target="_blank"><img src="/bullying/getinvolved/supporter-resources/images/mall-logo5.jpg" width="140" height"140" alt""/></a></div>
					<div class="logo-thumb"><a href="http://www.millcreekmall.net" target="_blank"><img src="/bullying/getinvolved/supporter-resources/images/mall-logo6.jpg" width="140" height"140" alt""/></a></div>
					<div class="logo-thumb"><a href="http://www.themallofmonroe.com" target="_blank"><img src="/bullying/getinvolved/supporter-resources/images/mall-logo7.jpg" width="140" height"140" alt""/></a></div>
					<div class="logo-thumb"><a href="http://www.ohiovalleymall.net" target="_blank"><img src="/bullying/getinvolved/supporter-resources/images/mall-logo8.jpg" width="140" height"140" alt""/></a></div>
					<div class="logo-thumb"><a href="http://www.sandusky-mall.com" target="_blank"><img src="/bullying/getinvolved/supporter-resources/images/mall-logo9.jpg" width="140" height"140" alt""/></a></div>
					<div class="logo-thumb"><a href="http://www.southhillmall.com" target="_blank"><img src="/bullying/getinvolved/supporter-resources/images/mall-logo10.jpg" width="140" height"140" alt""/></a></div>
					<div class="logo-thumb"><a href="http://www.spotsylvaniatownecentre.com" target="_blank"><img src="/bullying/getinvolved/supporter-resources/images/mall-logo11.jpg" width="140" height"140" alt""/></a></div>
					<div class="logo-thumb"><a href="http://www.meadowbrookmall.com" target="_blank"><img src="/bullying/getinvolved/supporter-resources/images/mall-logo12.jpg" width="140" height"140" alt""/></a></div>																			
				</div>
			</td>
	<!--			<td><a class="arrowredbutton widebutton" href="/bullying/wewillgen/curriculum.asp">Register for the Free<br />
					Online Curriculum</a></td>-->
			</tr>
		</table>
	</div>	

<div class="contentrow row-purple">
		<h2 style="font-size:30px; line-height: 40px">Engaging Activities for Young Learners</h2>
			<div style="width:700px; margin:50px auto">
			<h3>Coloring Pages</h3>
				<p>Captain McFinn wants to see your creative side!</p>
				<img style="border:1px solid black; margin: 0 25px" src="/bullying/getinvolved/supporter-resources/images/mcfinn-coloringpage1.jpg" width="300" height="392" alt=""/>
				<img style="border:1px solid black; margin: 0 20px" src="/bullying/getinvolved/supporter-resources/images/mcfinn-coloringpage5.jpg" width="300" height="392" alt=""/>
				<img style="border:1px solid black; width:392px; margin: 10px auto; display:block" src="/bullying/getinvolved/supporter-resources/images/mcfinn-coloringpage2.jpg" width="392" height="300" alt=""/>
				<img style="border:1px solid black; margin: 10px auto; display:block" src="/bullying/getinvolved/supporter-resources/images/mcfinn-coloringpage3.jpg" width="392" height="300" alt=""/>
				<img style="border:1px solid black; margin: 10px auto; display:block" src="/bullying/getinvolved/supporter-resources/images/mcfinn-coloringpage4.jpg" width="392" height="300" alt=""/>
		<h3>Shark Fin Hats</h3>
				<p>Check out this Shark Finn Hat that’s easy to color, cut and paste together</p>
				<img style="border:1px solid black; margin: 10px auto; display:block" src="/bullying/getinvolved/supporter-resources/images/mcfinn-sharkhat.jpg" width="300" height="392" alt=""/>
				<p>Check out the website on the <a href="http://www.captainmcfinn.com/activity/" target="_blank">Activity <span class="fa fa-external-link"></span></a> page for more coloring activities and lots of other games.</p>
			</div>	
</div>	

<div class="contentrow row-lightblue row-shadow">
	<h2 style="font-size:30px; line-height: 40px">Purchase the Book</h2>
		<div style="width:600px; margin:50px auto">
		<img style="float:left; margin:10px 10px 30px 10px" src="/bullying/getinvolved/supporter-resources/images/mcfinn-book-cover.jpg" width="183" height="250" alt=""/>
<p>Captain McFinn was once one of the biggest bullies on Sand Dusty Reef, but when he meets the Undersea Friends, he learns that being a friend is always better than being someone who bullies. Come along with Captain McFinn and Friends and see how McFinn, the bully, became Captain McFinn the leader and protector of Sand Dusty Reef. <a href="http://www.explorekindness.com/products/" target="_blank">Order the book <span class="fa fa-external-link"></span></a></p>
		</div>
	<div style="clear:left"></div>
</div>	

<div class="contentrow row-purple">
		<h2 style="font-size:30px; line-height: 40px">Captain McFinn’s Bully Free Zone App</h2>
		<div style="width:700px; margin:50px auto">
			<img style="margin-bottom:20px" src="/bullying/getinvolved/supporter-resources/images/mcfinn-bullyfreeapp.jpg" width="700" height="301" alt=""/>
			<p>Captain McFinn’s Bully Free Zone App is a free interactive solution to help put an end to one of the biggest social epidemics of today—bullying. The host of the Bully Free Zone App, Captain McFinn, builds courage and confidence in kids with helpful activities, including The Kindness Calendar, acts of kindness ideas, the Bully Free pledge, and an anti-bullying singalong video. <a href="http://www.captainmcfinn.com/bully-free-zone-app/" target="_blank">Get the app here <span class="fa fa-external-link"></span></a></p>
			
<h3 style="text-align:center; margin-top:50px">Connect with Captain McFinn</h3>
	<div style="width:165px; margin:0 auto">
		<a style="margin:0 10px" href="https://www.facebook.com/CaptainMcFinn" target="_blank"><img src="/images/facebookicon_medium.gif" width="35" height="35" alt="Facebook" /></a>
		<a style="margin:0 10px" href="https://www.pinterest.com/captainmcfinn/" target="_blank"><img src="/images/pinteresticon_medium.png" width="35" height="35" alt="Pinterest" /></a>
		<a style="margin:0 10px" href="https://www.youtube.com/user/McFinnandFriends" target="_blank"><img src="/images/youtubeicon_red_medium.png" width="35" height="35" alt="You Tube" /></a>
 	</div>

		
</div>
</div>
	
	<!-- end .content --> 
</div>
<!--#include virtual="/bullying/footer.html"--> 
<!-- end .container -->
</div>
</body>
</html>
