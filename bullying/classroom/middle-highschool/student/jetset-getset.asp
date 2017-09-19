<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Classroom Toolkits - Jetset Getset - Stronger (Than You Seem) - National Bullying Prevention Center</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="/js/LayerSlider/layerslider/css/layerslider.css" type="text/css" />
<link href="/js/colorbox/colorbox.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.6.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script src="/js/colorbox/jquery.colorbox-min.js" type="text/javascript"></script>
<script src="/js/LayerSlider/layerslider/jQuery/jquery-easing-1.3.js" type="text/javascript"></script>
<script src="/js/LayerSlider/layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>

<script type="text/javascript">

	$(document).ready(function(){
		$('#layerslider').layerSlider({
			skin : 'glass',
			skinsPath : '/js/LayerSlider/layerslider/skins/',
			animateFirstLayer : false,
			navPrevNext : true,
			navStartStop : false,
			autoStart : false,
			autoPlayVideos : false,
			autoPauseSlideshow : true,
			cbAnimStop: function() {updateBio();},
			pauseOnHover : true,
			slideDelay : 10000,
			loops : 3
		});
		$(".group1").colorbox({rel:'group1'});
		//$('#justenVid .ls-videopreview').attr('src', 'http://img.youtube.com/vi/ixCjFP-p8h0/hqdefault.jpg');
		$('#layerslider').removeClass('loading');
		var jqxhr = $.getJSON('http://gdata.youtube.com/feeds/api/channels?q=Jetset%20Getset&alt=json&v=2&max-results=1&fields=entry', function(data) {
console.log( "success" );
var url = data.feed.entry[0].media$thumbnail.url;
$('#terryVid img').attr('src', url);

})
.done(function() { console.log( "second success" ); 
		

})
.fail(function() { console.log( "error" ); })
.always(function() { console.log( "complete" ); });
	
	});	


var counter = 1;
var currBio = '#toriBio';
function updateBio() {
	var lsdata = $('#layerslider').layerSlider('data');
	if (lsdata.g.curLayerIndex == 1){
		changeContent('#toriBio');
	} else if (lsdata.g.curLayerIndex == 2) {
		changeContent('#averyBio');
	
	} else if (lsdata.g.curLayerIndex == 3) {
		changeContent('#jasonBio');
	
	} else if (lsdata.g.curLayerIndex == 4) {
		changeContent('#justenBio');
	
	} else if (lsdata.g.curLayerIndex == 5) {
		changeContent('#paulBio');
	
	} else if (lsdata.g.curLayerIndex == 6) {
		changeContent('#gillianBio');
	
	} else if (lsdata.g.curLayerIndex == 7) {
		changeContent('#terryBio');
	}
	
}

function changeContent(fId){
	$(currBio).slideUp(1000, function(){
		$(fId).slideDown(1000);}
	);
	currBio = fId;
}
function ChangeSlideTo(slideNum){
	$('#layerslider').layerSlider(slideNum);
	return false;
}

</script>

<style type="text/css">

/*############Layer Slider CSS ################# */
.loading ls-layer{
	display:none;
	padding:5px;
}
#layerslider {
  width: 637px;
  height: 375px;
  border:1px solid #ccc;
  margin: 20px auto 40px;
}
.copy {
	margin-left: 35px;
	margin-right: 35px;
}
.slideNav{
	text-align:center;
	width:608px;
	margin:0px auto;
	padding:15px;
}
.bioWrapper{ min-height: 475px; }
.bio {
	width:690px;
	margin:0px auto;
	padding:15px 0px;
	/*border:1px solid #ccc;*/
}
.noShow{
	display:none;
}
.fltrt{
	float:right;
	margin-left:20px;
}
.clearfloat{
	clear:both;
}
.content {
	background: #fff;
}
#galleryWrapper {
	text-align:center;
	width: auto;
	position: relative;
	z-index: 0;
	background: #fff url('/bullying/images/window_gradient_120.jpg') repeat-x bottom;
	min-height: 150px;
}
#gallery {
	text-align:center;
}
#gallery img {
	margin: 0px 4px 4px;
	box-shadow: 2px 2px 3px #333;
}
</style>

<!--#include virtual="/bullying/dynamic-head-items.html"--></head>

<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>
 
 <!--#include virtual="/bullying/dynamic-header.html"--> 
 <!--#include virtual="/bullying/topnav.html"--> 
 
 <script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/classroom/">Classroom</a> / <a href="/bullying/classroom/middle-highschool/">Middle and High School</a> / <a href="/bullying/classroom/middle-highschool/student/">Student Created Toolkits</a></div>
 
 <!-- ######################### NAVIGATION ################################# -->
 <div class="sidebar1"> 
  <!--#include virtual="/bullying/templates/nav.html"-->
  <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="mid-student-jetsetgetset";
	var showTree = "mid-sub";
	var showTree2 = "mid-student-sub";
	if (document.getElementById(currId)){
document.getElementById(currId).className = "active";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "submenu") {
			if (subTrees[i].id != showTree && subTrees[i].id != showTree2) {
				subTrees[i].className = "submenuhidden";
			}
		}
	}
</script> 
 </div>
 <!-- ###################### END Navigation ############################## -->
 
 <div class="content"> 
  <h1 id="maincontent">Jetset Getset - Stronger (Than You Seem)</h1>
  <p>&ldquo;Stronger&rdquo;  is a song written for the group Jetset Getset to help young people who are  feeling discouraged.&nbsp;The writer, Jennifer Eliason, shares, &quot;The  teenage years are&nbsp;a time when self-esteem can take a beating. We wanted to  write a song&nbsp;about how you can rise above the challenges and the  experience can make you stronger.&quot;</p>
	
<div style="width:640px; margin:20px auto;">


	<iframe width="640" height="360" src="//www.youtube.com/embed/CDtfpIBbpZ4?rel=0" frameborder="0" allowfullscreen></iframe>
</div>
<p style="font-size:.8em; font-style:italic; color:#666; display:block; width:640px; margin:5px auto;">From the album &quot;Saturday Night&quot; by Jetset Getset.  Courtesy of Playback Records<br />
Words and music by Jennifer Eliason &amp; Trent Eliason<br />
Song produced by Jack Gale &amp; Jim Pierce. Video by Barking Fish  Entertainment<br />
Copyright 2013. Lovey Music (BMI) All right reserved.</p>
	<hr />
	<h2><strong>Jetset Getset</strong></h2>
	<p>Jetset Getset is a country music group from Dearborn County,  Indiana, made up of mostly teenagers: singers Tori Little and Avery Eliason,  and musicians Jason Owens (lead guitar), Justen Jette (rhythm guitar), Paul  Kelley (bass), Gillian Bowman (drums) and Terry Ranck (keyboard), the only  adult who performs with the group on a regular basis. Jetset Getset began in  2011, when a former school teacher named Kelli Jette decided to form a singing  group to perform at local fairs and festivals, for fun. At first, the group  consisted of just singers who performed to pre-recorded tracks. As their  popularity grew, Kelli and the singers decided they wanted to begin doing  original songs, so they started looking for musicians to form a band and go on  tour. Jetset Getset has performed throughout the South, the Midwest and in  Southern California. Information about Jetset Getset is available at <a href="http://www.jetsetgetset.com/" target="_blank">www.JetsetGetset.com <span class="fa fa-external-link"></span></a>.</p>
<h3><strong>&ldquo;Stronger&rdquo;</strong></h3>
	<p>&ldquo;Stronger&rdquo; was written by singer Avery Eliason's mother,  Jennifer Eliason, and her college-aged brother, Trent, to help people who are  feeling discouraged.&nbsp;</p>
	<p>&quot;The girls in Jetset Getset were in junior high school  at the time,&quot; says Jennifer. &quot;Your self-esteem can take a beating at  that age. We wanted to write a song about how those kinds of challenges don't  have to bring you down; you can rise above them and the experience can make you  a stronger person.&quot;</p>
	
	<hr />
	<h2 id="bios"><strong>BIOS</strong></h2>

<%'----------------------------------- START LAYER SLIDER -------------------------------------- %>  


<div id="layerslider" class="loading">

	<div id="toriVid" class="ls-layer">
        <div class="ls-s1">
			<iframe width="637" height="375" src="http://www.youtube.com/embed/kCrmzm9cOuo?rel=0" frameborder="0" allowfullscreen></iframe>        
        </div>
    </div>
<%
'	<div id="sadieVid" class="ls-layer">
'        <div class="ls-s1">
'			<iframe width="637" height="375" src="http://www.youtube.com/embed/Et0bDCr4iXM?rel=0" frameborder="0" allowfullscreen></iframe>        
'        </div>
'    </div>
%>
	<div id="averyVid" class="ls-layer">
        <div class="ls-s1">
			<iframe width="637" height="375" src="http://www.youtube.com/embed/wFJo-rW3Ivs?rel=0" frameborder="0" allowfullscreen></iframe>        
        </div>
    </div>
	<div id="jasonVid" class="ls-layer">
        <div class="ls-s1">
			<iframe width="637" height="375" src="http://www.youtube.com/embed/xQwz805Uosw?rel=0" frameborder="0" allowfullscreen></iframe>        
        </div>
    </div>
	<div id="justenVid" class="ls-layer">
        <div class="ls-s1">
			<iframe width="637" height="375" src="http://www.youtube.com/embed/ixCjFP-p8h0?rel=0" frameborder="0" allowfullscreen></iframe>        
        </div>
    </div>
	<div id="paulVid" class="ls-layer">
        <div class="ls-s1">
			<iframe width="637" height="375" src="http://www.youtube.com/embed/bHEpAu5vwXE?rel=0" frameborder="0" allowfullscreen></iframe>        
        </div>
    </div>
	<div id="gillianVid" class="ls-layer">
        <div class="ls-s1">
			<iframe width="637" height="375" src="http://www.youtube.com/embed/jmv-Kj8SSpE?rel=0" frameborder="0" allowfullscreen></iframe>        
        </div>
    </div>
	<div id="terryVid" class="ls-layer">
        <div class="ls-s1" style="background:#333; width:637px; height:375px; text-align:center;">
			<img src="/bullying/classroom/middle-highschool/student/images/Jetset-group.jpg" alt="" width="398" height="375" style="display:block; margin:0px auto" />        
        </div>
    </div>
    
				
</div>

<%'---------------------------- END LAYER SLIDER ------------------------------------%>
<div class="slideNav">
<a href="#bios" onclick="ChangeSlideTo(1)">Tori</a> | <a href="#bios" onclick="ChangeSlideTo(2)">Avery</a> | <a href="#bios" onclick="ChangeSlideTo(3)">Jason</a> | 
<a href="#bios" onclick="ChangeSlideTo(4)">Justen</a> | <a href="#bios" onclick="ChangeSlideTo(5)">Paul</a> | <a href="#bios" onclick="ChangeSlideTo(6)">Gillian</a> | <a href="#bios" onclick="ChangeSlideTo(7)">Terry</a></div>

<div class="bioWrapper">
<div class="bio" id="toriBio">
	<p><strong>Tori Little (singer)</strong></p>
	<p><img width="250" height="375" class="fltrt" src="/bullying/classroom/middle-highschool/student/images/Jetset_ToriLittle_250w.jpg" style="background:#F63;" />
	Tori was the first singer to join  Jetset Getset, when her former music teacher asked if she would like to be part  of a new singing group. Born in Montgomery, Ohio, she has been singing almost  since she was able to talk. &ldquo;I have always wanted to be a singer, even when I  was little,&rdquo; she says. &ldquo;I remember watching my family sing in church, and I  would go up and sing with them.&rdquo; Tori also studied piano and taught herself to  play the guitar. A huge country music fan, her influences include Reba  McEntire, Dolly Parton and Miranda Lambert. &ldquo;The best part of Jetset Getset is  performing and getting to travel with my friends,&rdquo; she says.
	</p>
	<div class="clearfloat">&nbsp;</div>
</div>
<%
'<div class="bio noShow" id="sadieBio">
'	<p><strong>Sadie Loveland (singer)</strong></p>	
'	<p><img src="/bullying/resources/toolkits/student/images/Jetset_SadieLoveland_250w.jpg" alt="" width="250" height="375" class="fltrt" style="background:#F63;" />
'	Sadie Loveland might be one of the  few country music singers who counts Aretha Franklin among her most important  creative influences. Sadie grew up in Aurora, Indiana. She started singing in  elementary school and in church, but it was not until her sister left home for  college that the music bug really took hold. &ldquo;My sister left her karaoke  machine at home,&rdquo; Sadie says. &ldquo;I loved singing popular songs and doing all the  dance moves.&rdquo; In middle school, Sadie became involved in show choir, and later  was invited to audition for Jetset Getset. &ldquo;Being in Jetset Getset has given me  confidence, experience, and the best of friends,&rdquo; she says. &ldquo;I&nbsp;enjoy  recording music. But mostly, I love seeing people smile when we perform for  them.&rdquo;
'	</p>
'	<div class="clearfloat">&nbsp;</div>
'</div>
%>
<div class="bio noShow" id="averyBio">
	<p><strong>Avery Eliason (singer)</strong></p>	
	<p><img width="250" height="375" class="fltrt" src="/bullying/classroom/middle-highschool/student/images/Jetset_AveryEliason_250w.jpg" alt="" style="background:#F63;" />
	Avery was born into a musical family. Her father plays classical piano and her mother and older brothers are songwriters. In fact, her mother and one of her brothers wrote &ldquo;Stronger&rdquo; to inspire people who are feeling discouraged. Avery was born in St. Louis, Missouri, and now lives in Lawrenceburg, Indiana. She has been singing since she was old enough to talk, and started taking voice lessons in the 4th grade. She has studied piano since kindergarten and recently started taking guitar lessons, but she still enjoys singing most of all, having been in several choirs and musical productions. Her musical influences include Kelly Clarkson, Beyonce and Taylor Swift. She is involved in many church-related activities and she enjoys reading (sometimes as many as five books at a time). But her favorite thing to do is perform with Jetset Getset. &ldquo;I like meeting new people and traveling around with my best friends,&rdquo; she says.
	</p>
	<div class="clearfloat">&nbsp;</div>
</div>
<div class="bio noShow" id="jasonBio">
	<p><strong>Jason Owens (lead guitar)</strong></p>	
	<p><img width="250" height="375" class="fltrt" src="/bullying/classroom/middle-highschool/student/images/Jetset_JasonOwens_250w.jpg" alt="" style="background:#F63;" />
	Jason became seriously interested in music at the age of 10, when he heard country star Brad Paisley�s &ldquo;The World&rdquo; on the radio. Jason learns a lot about stage presence and different guitar techniques from watching other musicians, but he credits two guitar teachers, Aaron Mahoney and Rick Kinman, for teaching him the fundamentals. His musical influences include Brad Paisley, Keith Urban and John Mayer. Jason was invited to join Jetset Getset through a connection at a music store where he was taking lessons. &ldquo;I like playing on big stages and feeding off the excitement of the audience,&rdquo; he says. &ldquo;There are so many wonderful and talented people in the band.&rdquo; Jason resides in Union, Kentucky.
	</p>
	<div class="clearfloat">&nbsp;</div>
</div>
<div class="bio noShow" id="justenBio">
	<p><strong>Justen Jette (rhythm guitar)</strong></p>	
	<p><img width="250" height="375" class="fltrt" src="/bullying/classroom/middle-highschool/student/images/Jetset_JustenJette_250w.jpg" alt="" style="background:#F63;" />
	With his mom being the founder and manager of Jetset Getset, you might think Justen was one of the first members of the group. But it was not until lead guitarist Jason Owens joined Jetset Getset that Justen decided to get involved. Impressed with Jason�s guitar playing, Justen decided that he, too, wanted to learn how to play the guitar, and he started taking lessons. Justen likes pop, hip-hop, rock and country music, and considers Toby Keith, Bob Seger and Wiz Khalifa among his biggest influences. He lives in Dearborn County, Indiana.
	</p>
	<div class="clearfloat">&nbsp;</div>
</div>
<div class="bio noShow" id="paulBio">
	<p><strong>Paul Kelley (bass guitar)</strong></p>	
	<p><img width="250" height="375" class="fltrt" src="/bullying/classroom/middle-highschool/student/images/Jetset_PaulKelley_250w.jpg" alt="" style="background:#F63;" />
Paul comes from a heavy metal background, but became interested in country music after his friend, Jason Owens, introduced him to Jetset Getset. &ldquo;It&rsquo;s a lot of fun, being part of Jetset Getset,� he says. �I love the social aspect of the band, meeting so many great musicians and playing live gigs.&rdquo; Paul lives in Grant County, Kentucky.	</p>
	<div class="clearfloat">&nbsp;</div>
</div>
<div class="bio noShow" id="gillianBio">
	<p><strong>Gillian Bowman (drummer)</strong></p>	
	<p><img width="250" height="375" class="fltrt" src="/bullying/classroom/middle-highschool/student/images/Jetset_GillianBowman_250w.jpg" alt="" style="background:#F63;" />
	Gillian Bowman (her friends call her &ldquo;Gily&rdquo;) has been studying music since she was 3 years old, under the direction of her parents, both of whom are music teachers and owners of Bowman Music & Creative Outlet in Burlington, Kentucky. In addition to drumming, she is also a talented singer, piano player, guitar player, dancer (tap, ballet and jazz), and even studied acrobatics for five years. She also writes songs and enjoys singing at her church. Gily�s musical influences include The Beatles, TobyMac and even the classic rock group Rush. &ldquo;I love being a part of Jetset Getset because it has given me amazing opportunities that not many people get,&rdquo; she says. &ldquo;I am so blessed to be a part of this band with such great people.&rdquo;
	</p>
	<div class="clearfloat">&nbsp;</div>
</div>
<div class="bio noShow" id="terryBio">
	<p><strong>Terry Ranck (keyboard, saxophone)</strong></p>	
	<p><img width="250" height="375" class="fltrt" src="/bullying/classroom/middle-highschool/student/images/Jetset_TerryRanck_250w.jpg" alt="" style="background:#F63;" />
	Terry Ranck is the only adult who performs with Jetset Getset on a regular basis. He is the father of the group�s manager and founder, Kelli Jette, and grandfather of rhythm guitar player Justen Jette. He majored in music performance and education at the University of Cincinnati College-Conservatory of Music. After playing with some local rock bands in the early 1970s, he was a music teacher for 35 years. His musical influences include a lot of 60s and 70s pop and rock artists, especially Roy Orbison and horn bands like Blood, Sweat & Tears. In addition to playing keyboard and saxophone, Terry is also the group�s equipment manager, head roadie, lunch-getter and advice-giver. &ldquo;Working with Jetset Getset makes me feel young,&rdquo; he laughs. Terry lives in Dearborn County, Indiana.
	</p>
	<div class="clearfloat">&nbsp;</div>
</div>
</div>
<hr />
<h2>DISCUSSION QUESTIONS</h2>
<p>After viewing the video STRONGER and the artist videos,  the following questions can be used in the classroom to encourage further  conversation about the video content. </p>
<ul>
	<li>What is the theme of &quot;Stronger&quot;?</li>
	<li>What is your favorite lyric? And why?</li>
	<li>The opening line is a comparison and contrast-a  beat up Chevy and a Cadillac.&nbsp; How does that relate to how we perceive  ourselves and others?</li>
	<li>Another line from the song compares diamonds and  coal. Did you know that diamonds start out as coal? What are influences in life  that can help shape people in positive ways? </li>
	<li>The people in the video who were being bullied  are carrying bags of flour. What is the symbolism of that image?</li>
	<li>At the end of the video, all involved come  together. What is the significance of their uniting? </li>
	<li>The video from the band members are from regular  kids, just like you.&nbsp; Did you relate to what they were saying? Did  anything they said make you want to be a stronger person? A stronger friend? A  stronger individual in your school?</li>
</ul>
 
    <!-- PHOTO GALLERY START -->
    <div id="galleryWrapper">
    <p class="date" style="font-style:italic; margin-bottom:2px; text-align:center">Click on an image to enlarge.</p>
    <div id="gallery">
        <a class="group1" href="/bullying/classroom/middle-highschool/student/images/jetset_Gallery1.jpg" title="Visiting THE VOICE at Seacrest Studios at Children's Healthcare of Atlanta."><img src="/bullying/classroom/middle-highschool/student/images/jetset_Thumb1.jpg" width="150" height="100" alt="" /></a>
        <a class="group1" href="/bullying/classroom/middle-highschool/student/images/jetset_Gallery2.jpg" title="Interviewed at THE VOICE at Seacrest Studios at Children's Healthcare of Atlanta."><img src="/bullying/classroom/middle-highschool/student/images/jetset_Thumb2.jpg" width="150" height="100" alt="" /></a>
        <a class="group1" href="/bullying/classroom/middle-highschool/student/images/jetset_Gallery3.jpg" title="Posing with DJ Lisa Clark of WAIN-FM in Columbia, Kentucky."><img src="/bullying/classroom/middle-highschool/student/images/jetset_Thumb3.jpg" width="150" height="100" alt="" /></a>
        <a class="group1" href="/bullying/classroom/middle-highschool/student/images/jetset_Gallery4.jpg" title="Visiting with students at Fairview High School in Alabama."><img src="/bullying/classroom/middle-highschool/student/images/jetset_Thumb4.jpg" width="150" height="100" alt="" /></a>
	</div>
	</div>    
    <!-- END PHOTO GALLERY -->  
 </div> 

<br class="clearfloat" />
<!-- end .content -->

<!--#include virtual="/bullying/footer.html"--> 
<!-- end .container --></div>
</body>
</html>
