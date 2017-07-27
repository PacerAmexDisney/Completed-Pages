<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />

<!-- for Facebook -->     
<meta property="fb:app_id" content="271376943231875"  />
<meta property="og:title" content="" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:url" content="" />
<meta property="og:description" content="" />


<title>- PACER Center</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/stylenoleftright.css" />
<link rel="stylesheet" href="/js/LayerSlider/layerslider/css/layerslider.css" type="text/css" />

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
<style type="text/css">
	#layerslider {
		width: 1200px; 
		height: 260px; 
		max-width: 100%;
		background: white;
	}
	</style>

</head>

<body>

<div id="skiptocontent">
<a href="#maincontent">Skip to main content</a>
</div>

<div id="wrapper">

<div id="main">
<div id="header">
	<div>			<!--#include virtual="/googleSearchBox.htm"-->
            <!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>



<div id="maincontent">
<div id="pagetoporange">
<div id="breadcrumb">
	<a href="/">Home</a>/ <a href="/help/events.asp">Events</a> / <a href="../">Benefit</a> /
	<h1>Title</h1>
	
</div>
</div>

	
<div id="pagecontent">
<!--BEGIN CONTENT-->

  <%'----------------------------------- START LAYER SLIDER -------------------------------------- %>
  <div id="layerslider" class="loading">
    <div id="UnityDay" class="ls-layer" rel="slidedirection: left;">
     	<img src="http://www.pacer.org/bullying/nbpm/images/unityDaySlider/Bg-UnityDay.jpg" alt="" width="1014" height="300" class="ls-bg" rel="delayIn: 0;"/>
    </div>
    
    <div id="GoOrange" class="ls-layer" rel="slidedirection: left;"> 
    	<img src="http://www.pacer.org/bullying/nbpm/images/unityDaySlider/Bg-GoOrange.jpg" alt="" width="1014" height="300" class="ls-bg" rel="delayIn: 0;"/> 
    </div>
    
    <div id="Community" class="ls-layer" rel="slidedirection: left;">
    	<img src="http://www.pacer.org/bullying/nbpm/images/unityDaySlider/Bg-Community.jpg" alt="" width="1014" height="300" class="ls-bg" rel="delayIn: 0;"/>
    </div>
    
    <div id="School" class="ls-layer" rel="slidedirection: left;">
    	<img src="http://www.pacer.org/bullying/nbpm/images/unityDaySlider/Bg-School.jpg" alt="" width="1014" height="300" class="ls-bg" rel="delayIn: 0;"/>
    </div>
    
    <div id="Workplace" class="ls-layer" rel="slidedirection: left;">
    	<img src="http://www.pacer.org/bullying/nbpm/images/unityDaySlider/Bg-Workplace.jpg" alt="" width="1014" height="300" class="ls-bg" rel="delayIn: 0;"/>
    </div>
    
    <div id="StandTogether" class="ls-layer" rel="slidedirection: left;">
    	<img src="http://www.pacer.org/bullying/nbpm/images/unityDaySlider/Bg-StandTogether.jpg" alt="" width="1014" height="300" class="ls-bg" rel="delayIn: 0;"/>
    </div>    

  </div>
  <%'---------------------------- END LAYER SLIDER ------------------------------------%>

<p>Content</p>


<!--END CONTENT-->
<div id="pageextender" style="clear:both">&nbsp;</div>
</div>



</div>
</div>


<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>