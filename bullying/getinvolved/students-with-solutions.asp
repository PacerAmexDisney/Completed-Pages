<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Students with Solutions - National Bullying Prevention Center</title>
<meta name="title" content="Students with Solutions - National Bullying Prevention Center" />
<meta name="description" content="Students with Solutions is a project for educators to engage your students to address bullying through videos, art, and writing; and receive rewards and recognition! " />

<!-- for Facebook -->
<meta property="fb:app_id" content="271376943231875"  />
<meta property="og:title" content="Students with Solutions - National Bullying Prevention Center" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/bullying/getinvolved/images/students-with-solutions-teen-fb-v2.jpg" />
<meta property="og:url" content="http://www.pacer.org/bullying/getinvolved/students-with-solutions.asp" />
<meta property="og:description" content="Students with Solutions is a project for educators to engage your students to address bullying through videos, art, and writing; and receive rewards and recognition! " />
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
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>
<script type="text/javascript">
	$(document).ready(function() {
		//----------more buttons----------
		$('.morebutton').click(function() {
			$(this).parent().parent().addClass('expanded');
		});	
	 });//----------close ready function----------
</script>
<style type="text/css">
#bottomContentWrapper {
	margin: 0 auto;
	width: 930px;
}
.bottomContent {
	padding: 10px 45px;
}
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
#wwghashtagdata {
	margin-top: 5px;
}
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
	top: 85px;
	left: 61px;
	padding: 0px;
	line-height: 1.1em;
	width: 303px;
}
#topheroimage .widebutton {
	position: absolute;
}
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
#pledgemessage {
	display: none;
}
#hashtagitems {
	width: 900px;
	margin: 0 auto;
}
.bottombox {
	width: 450px;
	float: left;
}
.logo {
	padding-right: 10px;
}
.logo-thumb {
	width: 140px;
	height: 140px;
	background-color: #fff;
	margin: 10px;
	float: left;
}
.row-purple, .row-purple h1, .row-purple h2, .row-purple h3, .row-purple .morebutton {
	background-color: #653d68;
	color: #fff;
}
.row-purple h1 {
	text-align: center;
	font-size: 30px;
	line-height: 40px;
	text-shadow: 0px 0px 5px #000;
}
.row-purple h3 {
	font-size: 1.3em;
	margin-bottom: 5px;
}
.row-purple a {
	color: #FFF;
}
.row-purple a:hover {
	color: rgba(255,255,255,0.5);
}
.row-purple .externallink {
	background: url(/bullying/images/styles/externalLinkWhite.png) no-repeat right;
}
.row-purple .externallink:hover {
	background: url(/bullying/images/styles/externalLinkWhiteHover.png) no-repeat right;
	color: rgba(255,255,255,0.5);
}
.row-purplewhite, .row-purplewhite h1, .row-purplewhite h2, .row-purplewhite h3, .row-purplewhite .morebutton {
	background-color: #fff;
	color: #653d68;
}
.row-purplewhite h1 {
	text-align: center;
	font-size: 30px;
	line-height: 40px;
	text-shadow: 0px 0px 5px #000;
}
.row-purplewhite a {
	color: #653d68;
}
.row-purplewhite a:hover {
	color: rgba(101,61,94,0.5);
}
.row-purplewhite .externallink {
	background: url(/bullying/images/styles/externalLinkWhite.png) no-repeat right;
}
.row-purplewhite .externallink:hover {
	background: url(/bullying/images/styles/externalLinkWhiteHover.png) no-repeat right;
	color: rgba(255,255,255,0.5);
}
.judge-bio {
	line-height: normal;
}
.judge-bio-left {
	margin: 0 20px 20px 0;
	float: left;
	border: 1px solid white;
}
.judge-bio-right {
	margin: 0 0 20px 20px;
	float: right;
	border: 1px solid white;
}
#download-button {
	width: 170px;
	padding: 5px;
	text-align: center;
	margin: 30px auto;
	background-color: #fff;
	border-radius: 7px;
}
#download-button a {
	color: #000;
}
#download-button a:hover {
	color: rgba(0, 0, 0, 0.5);
}
</style>
</head>

<body class="onecol">
<div class="container"> <a id="skiptocontent" href="#maincontent">Skip to main content</a> 
  <!--#include virtual="/bullying/dynamic-header.html"--> 
  <!--#include virtual="/bullying/topnav.html"-->
  
  <div class="content"> <a href="#" class="contentrow-anchor" aria-hidden="true"></a>
    <div id="topheroimage" style="position: relative; left: 0; top: 15px; height:250px"> <img src="images/students-with-solutions-teen.jpg" width="1024" height="226" alt="">
      <div class="addthis_sharing_toolbox" style="position:absolute; left:740px; top:5px; z-index:10; min-width: 290px;"></div>
      <p style="position: absolute; top: 175px; right: 150px; width:600px; font-size:1.2em;">Engaging students to address bullying through videos, art and writing</p>
    </div>
    <div class="contentrow row-purple row-shadow" style="">
      <div class="singlecolumn" style="clear:right">
        <h2 style="font-size:30px; line-height: 40px">Next contest to be held in Fall 2017</h2>
        <p><strong>Students with Solutions</strong> is a project for educators to engage your students to address bullying through videos, art, and writing; and receive rewards and recognition! How it works:</p>
        <ol>
          <li><strong>WATCH</strong> the video, then hold classroom discussion.</li>
          <li><strong>CREATE</strong> drawings, write poetry, or even film a video responding to the themes portrayed in the video.</li>
          <li><strong>SEND</strong> your images, writings, or videos to PACER’s National Bullying Prevention Center.</li>
        </ol>
        <p>At the close of each contest—which is held twice a school year, once in the fall, again in the spring—a judges panel will review entries. Selected submissions will receive awards and students will have their work recognized on PACER's National Bullying Prevention Center website and social media.</p>
      </div>
    </div>
    <div class="contentrow row-purplewhite">
      <div class="singlecolumn" style="clear:right">
        <h2 style="font-size:30px; line-height: 40px">View 2016-17 Videos</h2>
        <p style="text-align: center">The videos shared during the 2016-17 are still available!</p>
        <p><strong>Middle and High School</strong>: &ldquo;<a href="http://www.pacer.org/bullying/classroom/middle-highschool/mh-video-discussion.asp">Teen Talk on Cyberbullying</a>&rdquo; is a five-minute video designed for middle and high school students to provide authentic insight and perspective from peers on issues related to cyberbullying.</p>
        <div style="margin:20px auto; width:500px;"> <img src="images/students-with-solutions-teen-video.jpg" width="500" height="240" alt="clairsonic logo"/> </div>
        <p><strong>Elementary School</strong>: A series of four animated videos titled &ldquo;<a href="http://www.pacer.org/bullying/classroom/elementary/united-video-series.asp">Together Against Bullying, United for Kindness, Acceptance and Inclusion</a>,&rdquo; which creatively illustrate what it feels like to be bullied, what students can do if they see bullying, and how to be an advocate against bullying.</p>
        <div style="margin: 20px auto; width:500px;"> <img src="images/students-with-solutions.jpg" width="500" height="240" alt="clairsonic logo"/> </div>
      </div>
    </div>
    <div class="contentrow row-purple row-shadow">
      <div class="singlecolumn">
        <h2 style="font-size:30px; line-height: 40px">Submission Guidelines</h2>
        <ul>
          <li>Send artwork, photographs, graphics, poems, videos, or stories to <a href="mailto:bullying411@PACER.org">bullying411@PACER.org</a>, or to PACER’s National Bullying Prevention Center, 8161 Normandale Blvd., Bloomington, MN 55437.</li>
          <li>Entries will be accepted during the designated time period.</li>
          <li>All students are eligible to participate. Classroom contributions (as an entire class or individually) are encouraged, but individual students can also send in their submissions.</li>
          <li>A panel will review and determine the submissions to feature on PACER's National Bullying Prevention Center website and social media.</li>
          <li>Awards and recognition will be given. Those selected will be notified by PACER's National Bullying Prevention Center.</li>
          <li>PACER’s National Bullying Prevention Center maintains the right to share and post all artwork, stories, and images that are submitted.</li>
        </ul>
      </div>
    </div>
    <div class="contentrow row-purplewhite">
      <div class="singlecolumn">
        <h2 style="font-size:30px; line-height: 40px">Special Thanks to Supporters</h2>
        <div style="margin:0 auto 20px; width: 350px;"> <a href="https://www.verizon.com/about/responsibility/domestic-violence-prevention" target="_blank"><img src="images/hopeline-verizon-logo.jpg" width="350" height="92" alt="clairsonic logo"/></a> </div>
<!--        <p><a href="http://www.clarisonic.com" target="_blank">Clarisonic</a>, the creator of the most recommended skin cleansing devices by US dermatologists, was founded with the belief that healthy, beautiful-looking skin can help people be their most confident selves. Clarisonic supports PACER’s National Bullying Prevention Center to encourage young people to love the skin they’re in and to be confident advocates for themselves and others.</p>-->
        <div style="margin:0 auto 20px; width: 383px;"> <a href="http://www.clarisonic.com/" target="_blank"><img src="images/clairsonic-logo.jpg" width="383" height="75" alt="clairsonic logo"/></a> </div>
<!--        <p><a href="https://www.lilgadgets.com" target="_blank">LilGadgets Headphones</a> are designed to create the best listening experience for kids. Connect. Share. Love. That is the driving theme we follow when building both our headphones and our business. And that is why we believe in supporting causes like bullying awareness. With comfort, safety, premium materials, and high quality audio incorporated into each pair, you can rest assured there's nothing better on the market for young people.</p>-->
        <div style="margin:0 auto 20px; width: 317px;"> <a href="https://www.lilgadgets.com" target="_blank"><img src="images/lilgadget-logo.jpg" width="317" height="75" alt="lil gadgets logo"/></a> </div>
      </div>
    </div>
    <!-- end .content --> 
  </div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --> 
</div>
</body>
</html>
