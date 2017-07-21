<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Slider Test</title>

<link rel="stylesheet" href="/js/LayerSlider/layerslider/css/layerslider.css" type="text/css">


<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.6.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
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
		$('#justenVid .ls-videopreview').attr('src', 'http://img.youtube.com/vi/ixCjFP-p8h0/hqdefault.jpg');
		$('#layerslider').removeClass('loading');
		var jqxhr = $.getJSON('http://gdata.youtube.com/feeds/api/channels?q=Jetset%20Getset&alt=json&v=2&max-results=1&fields=entry', function(data) {
console.log( "success" );
$.each(data.feed.entry[0], function(i, field){
      $("body").append(i + " - " + field + "<br>");
});
//var url = data.entry.media$thumbnail.url;
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
		changeContent('#sadieBio');
	
	} else if (lsdata.g.curLayerIndex == 3) {
		changeContent('#averyBio');
	
	} else if (lsdata.g.curLayerIndex == 4) {
		changeContent('#jasonBio');
	
	} else if (lsdata.g.curLayerIndex == 5) {
		changeContent('#justenBio');
	
	} else if (lsdata.g.curLayerIndex == 6) {
		changeContent('#paulBio');
	
	} else if (lsdata.g.curLayerIndex == 7) {
		changeContent('#gillianBio');
	
	} else if (lsdata.g.curLayerIndex == 8) {
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
.slideNav{
	text-align:center;
	width:608px;
	margin:0px auto;
	padding:15px;
}
.bioWrapper{
	min-height:600px;
}
.bio {
	width:608px;
	margin:0px auto;
	padding:15px;
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
</style>

</head>

<body>

<%'----------------------------------- START LAYER SLIDER -------------------------------------- %>  


<div id="layerslider" class="loading">

	<div id="toriVid" class="ls-layer">
        <div class="ls-s1">
			<iframe width="637" height="375" src="http://www.youtube.com/embed/kCrmzm9cOuo?rel=0" frameborder="0" allowfullscreen></iframe>        
        </div>
    </div>
	<div id="sadieVid" class="ls-layer">
        <div class="ls-s1">
			<iframe width="637" height="375" src="http://www.youtube.com/embed/Et0bDCr4iXM?rel=0" frameborder="0" allowfullscreen></iframe>        
        </div>
    </div>
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
			<img src="/bullying/classroom/middle-highschool/student/images/Jetset-saturdaynight-cover.jpg" width="375" height="375" style="display:block; margin:0px auto" />        
        </div>
    </div>
    
				
</div>

<%'---------------------------- END LAYER SLIDER ------------------------------------%>
<div class="slideNav">
<a href="#" onclick="ChangeSlideTo(1)">Tori</a> | <a href="#" onclick="ChangeSlideTo(2)">Sadie</a> | <a href="#" onclick="ChangeSlideTo(3)">Avery</a> | <a href="#" onclick="ChangeSlideTo(4)">Jason</a> | 
<a href="#" onclick="ChangeSlideTo(5)">Justen</a> | <a href="#" onclick="ChangeSlideTo(6)">Paul</a> | <a href="#" onclick="ChangeSlideTo(7)">Gillian</a> | <a href="#" onclick="ChangeSlideTo(8)">Terry</a></div>

<div class="bioWrapper">
<div class="bio" id="toriBio">
	<p><strong>Tori Little (singer)</strong></p>
	<p><img width="250" height="375" class="fltrt" src="/bullying/classroom/middle-highschool/student/images/Jetset_ToriLittle_250w.jpg" style="background:#F63;" />
	Tori was the first singer to join  Jetset Getset, when her former music teacher asked if she would like to be part  of a new singing group. Born in Montgomery, Ohio, she has been singing almost  since she was able to talk. &ldquo;I have always wanted to be a singer, even when I  was little,&rdquo; she says. &ldquo;I remember watching my family sing in church, and I  would go up and sing with them.&rdquo; Tori also studied piano and taught herself to  play the guitar. A huge country music fan, her influences include Reba  McEntire, Dolly Parton and Miranda Lambert. &ldquo;The best part of Jetset Getset is  performing and getting to travel with my friends,&rdquo; she says.
	</p>
	<div class="clearfloat">&nbsp;</div>
</div>
<div class="bio noShow" id="sadieBio">
	<p><strong>Sadie Loveland (singer)</strong></p>	
	<p><img src="/bullying/classroom/middle-highschool/student/images/Jetset_SadieLoveland_250w.jpg" alt="" width="250" height="375" class="fltrt" style="background:#F63;" />
	Sadie Loveland might be one of the  few country music singers who counts Aretha Franklin among her most important  creative influences. Sadie grew up in Aurora, Indiana. She started singing in  elementary school and in church, but it was not until her sister left home for  college that the music bug really took hold. &ldquo;My sister left her karaoke  machine at home,&rdquo; Sadie says. &ldquo;I loved singing popular songs and doing all the  dance moves.&rdquo; In middle school, Sadie became involved in show choir, and later  was invited to audition for Jetset Getset. &ldquo;Being in Jetset Getset has given me  confidence, experience, and the best of friends,&rdquo; she says. &ldquo;I&nbsp;enjoy  recording music. But mostly, I love seeing people smile when we perform for  them.&rdquo;
	</p>
	<div class="clearfloat">&nbsp;</div>
</div>
<div class="bio noShow" id="averyBio">
	<p><strong>Avery Eliason (singer)</strong></p>	
	<p><img width="250" height="375" class="fltrt" src="/bullying/classroom/middle-highschool/student/images/Jetset_AveryEliason_250w.jpg" alt="" style="background:#F63;" />
	Avery was born into a musical family. Her father plays classical piano and her mother and older brothers are songwriters. In fact, her mother and one of her brothers wrote “Stronger” to inspire people who are feeling discouraged. Avery was born in St. Louis, Missouri, and now lives in Lawrenceburg, Indiana. She has been singing since she was old enough to talk, and started taking voice lessons in the 4th grade. She has studied piano since kindergarten and recently started taking guitar lessons, but she still enjoys singing most of all, having been in several choirs and musical productions. Her musical influences include Kelly Clarkson, Beyonce and Taylor Swift. She is involved in many church-related activities and she enjoys reading (sometimes as many as five books at a time). But her favorite thing to do is perform with Jetset Getset. “I like meeting new people and traveling around with my best friends,” she says.
	</p>
	<div class="clearfloat">&nbsp;</div>
</div>
<div class="bio noShow" id="jasonBio">
	<p><strong>Jason Owens (lead guitar)</strong></p>	
	<p><img width="250" height="375" class="fltrt" src="/bullying/classroom/middle-highschool/student/images/Jetset_JasonOwens_250w.jpg" alt="" style="background:#F63;" />
	Jason became seriously interested in music at the age of 10, when he heard country star Brad Paisley’s “The World” on the radio. Jason learns a lot about stage presence and different guitar techniques from watching other musicians, but he credits two guitar teachers, Aaron Mahoney and Rick Kinman, for teaching him the fundamentals. His musical influences include Brad Paisley, Keith Urban and John Mayer. Jason was invited to join Jetset Getset through a connection at a music store where he was taking lessons. “I like playing on big stages and feeding off the excitement of the audience,” he says. “There are so many wonderful and talented people in the band.” Jason resides in Union, Kentucky.Jason became seriously interested in music at the age of 10, when he heard country star Brad Paisley’s “The World” on the radio. Jason learns a lot about stage presence and different guitar techniques from watching other musicians, but he credits two guitar teachers, Aaron Mahoney and Rick Kinman, for teaching him the fundamentals. His musical influences include Brad Paisley, Keith Urban and John Mayer. Jason was invited to join Jetset Getset through a connection at a music store where he was taking lessons. “I like playing on big stages and feeding off the excitement of the audience,” he says. “There are so many wonderful and talented people in the band.” Jason resides in Union, Kentucky.
	</p>
	<div class="clearfloat">&nbsp;</div>
</div>
<div class="bio noShow" id="justenBio">
	<p><strong>Justen Jette (rhythm guitar)</strong></p>	
	<p><img width="250" height="375" class="fltrt" src="/bullying/classroom/middle-highschool/student/images/Jetset_JustenJette_250w.jpg" alt="" style="background:#F63;" />
	With his mom being the founder and manager of Jetset Getset, you might think Justen was one of the first members of the group. But it was not until lead guitarist Jason Owens joined Jetset Getset that Justen decided to get involved. Impressed with Jason’s guitar playing, Justen decided that he, too, wanted to learn how to play the guitar, and he started taking lessons. Justen likes pop, hip-hop, rock and country music, and considers Toby Keith, Bob Seger and Wiz Khalifa among his biggest influences. He lives in Dearborn County, Indiana.
	</p>
	<div class="clearfloat">&nbsp;</div>
</div>
<div class="bio noShow" id="paulBio">
	<p><strong>Paul Kelley (bass guitar)</strong></p>	
	<p><img width="349" height="591" class="fltrt" src="/bullying/classroom/middle-highschool/student/images/Jetset_PaulKelley_250w.jpg" alt="" style="background:#F63;" />
	Paul comes from a heavy metal background, but became interested in country music after a friend introduced him to Jetset Getset. “It’s a lot of fun, being part of Jetset Getset,” he says. “I love the social aspect of the band, meeting so many great musicians and playing live gigs.” Paul lives in Grant County, Kentucky.
	</p>
	<div class="clearfloat">&nbsp;</div>
</div>
<div class="bio noShow" id="gillianBio">
	<p><strong>Gillian Bowman (drummer)</strong></p>	
	<p><img width="250" height="375" class="fltrt" src="/bullying/classroom/middle-highschool/student/images/Jetset_GillianBowman_250w.jpg" alt="" style="background:#F63;" />
	Gillian Bowman (her friends call her “Gily”) has been studying music since she was 3 years old, under the direction of her parents, both of whom are music teachers and owners of Bowman Music & Creative Outlet in Burlington, Kentucky. In addition to drumming, she is also a talented singer, piano player, guitar player, dancer (tap, ballet and jazz), and even studied acrobatics for five years. She also writes songs and enjoys singing at her church. Gily’s musical influences include The Beatles, TobyMac and even the classic rock group Rush. “I love being a part of Jetset Getset because it has given me amazing opportunities that not many people get,” she says. “I am so blessed to be a part of this band with such great people.”
	</p>
	<div class="clearfloat">&nbsp;</div>
</div>
<div class="bio noShow" id="terryBio">
	<p><strong>Terry Ranck (keyboard, saxophone)</strong></p>	
	<p><img width="250" height="375" class="fltrt" src="/bullying/classroom/middle-highschool/student/images/Jetset_TerryRanck_250w.jpg" alt="" style="background:#F63;" />
	Terry Ranck is the only adult who performs with Jetset Getset on a regular basis. He is the father of the group’s manager and founder, Kelli Jette, and grandfather of rhythm guitar player Justen Jette. He majored in music performance and education at the University of Cincinnati College-Conservatory of Music. After playing with some local rock bands in the early 1970s, he was a music teacher for 35 years. His musical influences include a lot of 60s and 70s pop and rock artists, especially Roy Orbison and horn bands like Blood, Sweat & Tears. In addition to playing keyboard and saxophone, Terry is also the group’s equipment manager, head roadie, lunch-getter and advice-giver. “Working with Jetset Getset makes me feel young,” he laughs. Terry lives in Dearborn County, Indiana.
	</p>
	<div class="clearfloat">&nbsp;</div>
</div>
</div>


UCX2OGVu2MIiBl-U_lTHvDkg<br />

</body>
</html>
