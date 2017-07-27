<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Shine Bright</title>
<meta name="title" content="Shine Bright" />
<meta name="description" content="A free on-line, student-to-student curriculum designed for high school student leaders to engage, educate and inspire other middle and high school students to be a part of The We Will Generation. PACER is offering schools the opportunity to participate in piloting the curriculum. Pilots will be provided with assistance including webinars, staff availability for questions, evaluations, and other resources. Pilots can be initiated any time after November 2013. To sign up for this opportunity, complete the registration form, and follow the instructions to access the lessons, activities, video, advice features and other resources." />
<link rel="image_src" href="http://www.pacer.org/bullying/wewillgen/images/wewillgen.png" />
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


<script src="/js/colorbox/jquery.colorbox-min.js" type="text/javascript"></script>

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

</style>
</head>

<body class="onecol">t

<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<div class="container">

<!--#include virtual="/bullying/dynamic-header.html"--> 
<!--#include virtual="/bullying/topnav.html"-->

<div class="content"> <a href="#" class="contentrow-anchor" aria-hidden="true"></a>
	<div id="topheroimage" style="position: relative; left: 0; top: 0;"> 
	<!-- Go to www.addthis.com/dashboard to customize your tools -->
<div class="addthis_sharing_toolbox" style="position:absolute; left:830px; top:15px; z-index:10;"></div>	
	<img style="position: relative; left: 0; top: 0;" src="/bullying/shinebright/images/rudolph_hero.jpg" width="1024" height="435" alt=""/>
		<!--<img style="position: absolute; left: 40px; top: 50px;" src="/bullying/shinebright/images/hashtag_shinebright.png" alt="#shinebright"/>-->
		<img style="position: absolute; left:0px; top:20px;" src="/bullying/shinebright/images/rudolphShinebrightLogo.png" width="450" height="146" alt="Shine bright and help make the world a brighter place"/> 
	<!--<h1> <span style="font-size:.7em; text-align:center; line-height:normal; letter-spacing:normal; text-shadow:none; color:#000000">Share What Makes You Unique</span></h1>-->
<div class="centered">
	<p style="position:absolute; top: 395px; left: 33px; text-shadow:0px 0px 6px #000; font-size:1.4em; text-align:center; line-height:normal; letter-spacing:normal; color:#fff"><strong>Let&rsquo;s celebrate our differences this holiday  season by embracing what makes each of us ShineBright</strong>.</p>
</div>	

<div class="contentrow row-brightred row-shadow">
	<h2 style="font-size:30px; line-height: 40px">How do you ShineBright?</h2>
		<table class="threecoltable">
			<tr>
				<td><img src="/bullying/shinebright/images/rudolph_hermey.png" width="235" height="160" alt="Rudolph and Hermey"/></td>
				<td><p>Before Rudolph and his luminous red  nose saved the holidays, he was teased for being different from his peers—an issue  that still exists today. In celebration of the 50th anniversary of  Rudolph the Red-Nosed Reindeer on TV, parents can use this classic story as an  opportunity to start a conversation with their children about our differences.  As you gather with your family on Tuesday, December 9, to  watch how Rudolph&rsquo;s unique red nose makes him ShineBright, use this <a href="/bullying/shinebright/pdf/Educational_Worksheet.pdf" target="_blank">discussion and activity guide</a> to talk with your kids about what makes each one of us  special.<strong></strong></p><p style="font-size:1.5em">&nbsp;</p></td>
	<!--			<td><a class="arrowredbutton widebutton" href="/bullying/wewillgen/curriculum.asp">Register for the Free<br />
					Online Curriculum</a></td>-->
			</tr>
		</table>
	</div>	

<div class="contentrow row-brightwhitered">
		<h2 style="font-size:30px; line-height: 40px">Download &quot;The Legend of Rudolph  the Red-Nosed Reindeer&quot;</h2>
		<table class="threecoltable">
			<tr>
				<td><img src="/bullying/shinebright/images/e-Book.jpg" width="256" height="150" alt="The Legend of Rudolph the Red Nosed Reindeer book"/></td>
				<td><p>This classic story from the  television special can now be enjoyed as an eBook – &ldquo;The Legend of Rudolph the  Red-Nosed Reindeer&rdquo; – and $1.00 from each purchase will be donated to PACER&rsquo;s  National Bullying Prevention Center to help put an end to bullying.
<p><img class="logo" src="/bullying/shinebright/images/amazonLogo.png" align="top" width="25" height="25" /><a href="http://www.amazon.com/Legend-Rudolph-Red-Nosed-Reindeer-ebook/dp/B00OPJVUK6/ref=sr_1_1?s=digital-text&ie=UTF8&qid=1416519602&sr=1-1&keywords=the+legend+of+rudolph+the+red-nosed+reindeer" target="_blank">Amazon/Kindle</a></p>
<p><img class="logo" src="/bullying/shinebright/images/appleLogo.png" align="top" width="25" height="25" /><a href="https://itunes.apple.com/us/book/legend-rudolph-red-nosed-reindeer/id931703563?mt=11&ign-mpt=uo%3D4" target="_blank">Apple/iBooks</a></p>
<p><img class="logo" src="/bullying/shinebright/images/b_nLogo.png" align="top" width="25" height="25" /><a href="http://www.barnesandnoble.com/w/the-legend-of-rudolph-the-red-nosed-reindeer-joe-troiano/1120613426?ean=9781504000123" target="_blank">B&amp;N/Nook</a></p>
<p><img class="logo" src="/bullying/shinebright/images/googlePlayLogo.png" align="top" width="25" height="25" /><a href="https://play.google.com/store/books/details/Joe_Troiano_The_Legend_of_Rudolph_the_Red_Nosed_Re?id=GNriBAAAQBAJ&hl=en" target="_blank">Google Play</a></p>
<p><img class="logo" src="/bullying/shinebright/images/koboLogo.png" align="top" width="25" height="25" /><a href="http://store.kobobooks.com/en-us/books/the-legend-of-rudolph-the-red-nosed-reindeer/vVVtSUT6t0-8RqAFEEAF4Q?MixID=vVVtSUT6t0-8RqAFEEAF4Q&PageNumber=1" target="_blank">Kobo</a></p>				
	<!--			<td><a class="arrowredbutton widebutton" href="/bullying/wewillgen/curriculum.asp">Register for the Free<br />
					Online Curriculum</a></td>-->
			</tr>
		</table>
	</div>	

<div class="contentrow row-brightred row-shadow">	
	<h2 style="font-size:30px; line-height: 40px">ShineBright Classroom Activities</h2>
		<table class="threecoltable">
			<tr>
				<td><img src="/bullying/shinebright/images/MisfitToys_2.png" width="235" height="160" alt=""/></td>
				<td><p>By  reminding students that good things come in lots of different packages, we  teach them an important message and help put an end to bullying. <a href="/bullying/shinebright/pdf/ShineBright_Educator_Guide.pdf" target="_blank">Download these educator resources</a> to celebrate uniqueness – what makes each  of us ShineBright – and help promote acceptance in your school.</p><p style="font-size:1.5em">&nbsp;</p></td>
	<!--			<td><a class="arrowredbutton widebutton" href="/bullying/wewillgen/curriculum.asp">Register for the Free<br />
					Online Curriculum</a></td>-->
			</tr>
		</table>
	</div>	
	
<div class="contentrow row-brightwhitered">
		<h2 style="font-size:30px; line-height: 40px">ShineBright With a T-shirt</h2>
		<table class="threecoltable">
			<tr>
				<td><img src="/bullying/shinebright/images/shineBright_tshirt.jpg" width="171" height="163" alt=""/></td>
				<td><p>Your purchase of a ShineBright t-shirt will help make the world a brighter place. A portion of the sale of each shirt will be donated to PACER’s National Bullying Prevention Center.<!--Order yours today!--><br /><em>(tshirt available soon!)</em>
				
				
<!--<a href="" target="_blank">Order here</a>-->
				
				
				</p></td>
	<!--			<td><a class="arrowredbutton widebutton" href="/bullying/wewillgen/curriculum.asp">Register for the Free<br />
					Online Curriculum</a></td>-->
			</tr>
		</table>
	</div>		

<!--   <div style="padding:5px 0px; border-top:solid 1px #999; margin-left:20px; margin-right:20px;">
   </div>

<div id="hashtagitems">

 <div class="bottombox" id="tweets">
 
 <h2 style="text-shadow:none;"><a href="https://twitter.com/search?q=%23shinebright" target="_blank">#ShineBright on Twitter</a></h2>
	<div id="twitterData">
	loading ...
	</div>-->

<!-- end Icarebecause -->
<!--</div>-->
 
  
<!-- <div class="bottombox" id="instagrams">
<h2 style="text-shadow:none;"><a href="http://web.stagram.com/tag/shinebright/" target="_blank">#ShineBright on Instagram</a></h2>
<div id="instagramData">
Loading ...
</div>-->
<!-- end In The News -->
<!--</div>-->



</div>
	
	<!-- end .content --> 
</div>
<!--#include virtual="/bullying/wewillgen/footer.html"--> 
<!-- end .container -->
</div>
</body>
</html>
