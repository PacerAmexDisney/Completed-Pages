<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Thank You for your Purchase - You're Not Alone - NBPC</title>
<meta name="title" content="Thank You for your Purchase - You're Not Alone - NBPC" />

<link rel="image_src" href="http://www.pacer.org/bullying/images/nbpc-logo.png" />
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link href="/bullying/wewillgen/css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/bullying/css/scrolling.css"/>
<link rel="stylesheet" type="text/css" href="/php-sdk/fbwallfeed.css"/>
<link rel="stylesheet" type="text/css" href="/php-sdk/hashtagAggregator.css"/>
<link href="/js/colorbox/colorbox.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="/js/LayerSlider/layerslider/css/layerslider.css" type="text/css" />

<!--#include virtual="/bullying/dynamic-head-items.html"-->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.7.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>

<script type="text/javascript" src="/js/jquery.sticky.js"></script>
<script src="/js/colorbox/jquery.colorbox-min.js" type="text/javascript"></script>
<script src="/js/LayerSlider/layerslider/jQuery/jquery-easing-1.3.js" type="text/javascript"></script>
<script src="/js/LayerSlider/layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>
<!--<script type="text/javascript" src="/js/jquery-scrollspy-0.1.2/scrollspy.js"></script>-->


<script type="text/javascript">
	$(document).ready(function() {
		$("#secondarynav").sticky({ topSpacing:0 });
		
//		$('.spyitem').on('scrollSpy:enter', function() {
//			//$('#secondarynav li').removeClass('active');
//			var idnum = String($(this).attr('id'));
//			idnum = idnum.split('-');
//			$('#spynav-' + idnum[1]).addClass('active');
//			});	
//			$('.spyitem').on('scrollSpy:exit', function() {
//			var idnum = String($(this).attr('id'));
//			idnum = idnum.split('-');
//			$('#spynav-' + idnum[1]).removeClass('active');
//			});	
//	
//		$('.spyitem').scrollSpy();

		$('.dash').attr('aria-hidden','true');
		//----------more buttons----------
		$('.morebutton').click(function() {
			$(this).parent().parent().addClass('expanded');
		});
		$(document).bind('cbox_complete', function(){
		  $("#pledgeformh2").focus();
		});		
		//----------color box pop up window----------		
				$(".inline").colorbox({inline:true, width:"50%"});
		
		$(".group1").colorbox({rel:'group1'});
	 });//----------close ready function----------
</script>

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
	});

</script>

<style type="text/css">
.loading ls-layer {
	display: none;
	padding: 5px;
}
#layerslider {
	width: 1024px;
	height: 371px;
/*	border: 1px solid #ccc;
	margin: 0 0 35px 5px;*/
}

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
	position: relative;
	left:20px;
	top:-120px;
	width: 400px;
	line-height: 1.1em;
	text-align:center;
	font-size:1.2em; 
	color:#000000;
	text-shadow:none;  	
}

#topheroimage .widebutton { position: absolute; }

.row-shadow #message {
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

#flyerbutton {
	display: inline-block;
	text-decoration: none;
	text-align: left;
	width: 140px;
}
.inrow-button {
	width:250px;
	height:150px;
	/*border:1px solid black;*/
	background-color:#C85024;
	color:#fff;
	text-align:center;
	padding-top:10px;
	border-radius:7px;
}
.inrow-button p {
	color:#fff;	
	padding-top:10px;		
}
.inrow-button a {
	font-size:1.3em;
	color:#fff;
}
.inrow-button a:hover {
	color:rgba(255,255,255,0.50)
}
#gallery {
	text-align:center;
}
#gallery img {
	margin: 0px 4px 4px;
	box-shadow: 2px 2px 3px #333;
}
.addthis_sharing_toolbox{
	position:absolute;
	right:-145px;	
}
.justifiedlist li p {
	padding-left:45px;	
}
	
#secondarynav ul {
	width:700px;
}
	
#secondarynav ul a{
	text-decoration: none;
}	
	
#secondarynav ul a:hover{
	text-decoration: underline;
}	
</style>
</head>

<body>

<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<div class="container">

<!--#include virtual="/bullying/dynamic-header.html"--> 
<!--#include virtual="/bullying/topnav.html"-->

<div class="content"> <a href="#" id="youre-not-alone" class="contentrow-anchor" aria-hidden="true"></a>


<!--  <%'----------------------------------- START LAYER SLIDER -------------------------------------- %>-->
  <div id="layerslider" class="loading">
    <div id="banner1" class="ls-layer" rel="slidedirection: left;">
     	<img src="/bullying/yourenotalone/images/yna-banner1.jpg" alt="" width="1024" height="371" class="ls-bg" rel="delayIn: 0;"/>
    </div>
    
    <div id="banner2" class="ls-layer" rel="slidedirection: left;"> 
    	<img src="/bullying/yourenotalone/images/yna-banner2.jpg" alt="" width="1024" height="371" class="ls-bg" rel="delayIn: 0;"/> 
    </div>
    
    <div id="banner3" class="ls-layer" rel="slidedirection: left;">
    	<img src="/bullying/yourenotalone/images/yna-banner3.jpg" alt="" width="1024" height="371" class="ls-bg" rel="delayIn: 0;"/>
    </div>   

  </div>
  
	<div id="secondarynav" style="border-top:solid 1px #ccc" class="whitenav" role="navigation"> <a href="/bullying/"><img id="navlogo" src="/bullying/images/styles/navLogo.png" width="40" height="40" alt="NBPC Homepage" /></a>
		<ul class="justifiedlist">
			<li id="spynav-1"><a href="/bullying/yourenotalone/#youre-not-alone">PACER's You're Not Alone&reg;</a></li>
			<li class="dash"></li>
			<li id="spynav-3"><a href="/bullying/yourenotalone/#stand-together">Event Toolkit</a></li>
			<li class="dash"></li>
			<li id="spynav-4"><a href="/bullying/yourenotalone/#be-there">Ways to Be There</a></li>
		</ul>
	</div>

	<div id="thankyou" style="text-align:center; margin-top:30px;">
	  <h1 id="maincontent">Thank You for Your Order.</h1>
      <p>Please allow two weeks from date of order for delivery.</p>
	</div>


	<br class="clearfloat" />
	
	<!-- end .content --> 
</div>
<!--#include virtual="/bullying/yourenotalone/footer.html"--> 
<!-- end .container -->
</div>
</body>
</html>
