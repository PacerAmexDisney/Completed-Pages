<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>We Will Generation - Home</title>

<!-- for Facebook -->     
<meta property="og:title" content="The WE WILL Generation - Students Leading the Bullying Prevention Movement" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/bullying/wewillgen/images/we-will-fb.jpg" />
<meta property="og:url" content="http://www.pacer.org/bullying/wewillgen/" />
<meta property="og:description" content="A free on-line, student-to-student curriculum designed for high school student leaders to engage, educate and inspire other middle and high school students to be a part of The We Will Generation. PACER is offering schools the opportunity to participate in piloting the curriculum. Pilots will be provided with assistance including webinars, staff availability for questions, evaluations, and other resources. Pilots can be initiated any time after November 2013. To sign up for this opportunity, complete the registration form, and follow the instructions to access the lessons, activities, video, advice features and other resources." />
<meta name="description" content="A free on-line, student-to-student curriculum designed for high school student leaders to engage, educate and inspire other middle and high school students to be a part of The We Will Generation. PACER is offering schools the opportunity to participate in piloting the curriculum. Pilots will be provided with assistance including webinars, staff availability for questions, evaluations, and other resources. Pilots can be initiated any time after November 2013. To sign up for this opportunity, complete the registration form, and follow the instructions to access the lessons, activities, video, advice features and other resources." />

<link rel="image_src" href="http://www.pacer.org/bullying/wewillgen/images/wewillgen.png" />
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link href="/bullying/wewillgen/css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/bullying/css/scrolling.css"/>
<link href="/js/colorbox1.5.9/colorbox.css" rel="stylesheet" type="text/css" />

<!--#include virtual="/bullying/dynamic-head-items.html"-->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script type="text/javascript" src="/js/jquery.sticky.js"></script>
<script src="/js/colorbox1.5.9/jquery.colorbox-min.js" type="text/javascript"></script>
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
		
		//----------Example of preserving a JavaScript event for inline calls(colorbox)----------
		$("#pledgebutton").click(function(){ 
			$.colorbox.close();
			$("#pledgemessage").slideDown(1000);	
			$("#pledgemessageh2").focus();			
			//$(document).scrollTop($("#takethepledgebutton").offset().top);
		//----------slide open div to show content----------	
//			$('#click').css({"background-color":"#f00", "color":"#fff", "cursor":"inherit"}).text("Open this window again and this message will still be here.");
//			return false;
		});		
		$(".pledgeitem").click(function(){
			$("#pledgebutton").removeAttr("disabled");
		});		
	 });//----------close ready function----------
</script>
<style type="text/css">
#bottomContentWrapper {
	margin: 0 auto;
	width: 930px;
}

.bottomContent { padding: 10px 45px; }

#extraSliderNav {
	width: 100%;
	text-align: center;
	padding: 10px;
}
#topheroimage h1 {
	color: #FFFFFF;
	text-shadow: 2px 2px 4px #000;
	position: absolute;
	top: 70px;
	left: 85px;
	padding: 0px;
	line-height: 1.1em;
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
</style>
</head>

<body class="onecol">

<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<div class="container">

<!--#include virtual="/bullying/dynamic-header.html"--> 
<!--#include virtual="/bullying/topnav.html"-->

<div id="wewill-1" class="content"> <a href="#" id="wewill-1a" class="contentrow-anchor" aria-hidden="true"></a>
	<div id="topheroimage"> <img src="/bullying/wewillgen/images/hero-gradient.jpg" width="1024" height="371" alt=""/>
		<h1 id="maincontent" style="font-size:30px">Join the<br />
			<span style="font-size:48px">We Will Generation<span style="font-size:25px; position:relative; top:-20px;">&trade;</span></span><br />
			<span style="font-size:20px; text-shadow:1px 1px 2px #000; line-height:22px;">Resources designed to encourage student engagement and <br />conversation to educate, inspire and support peers to <br />create kinder and safer schools</span></h1>
		<a id="takethepledgebutton" class="arrowredbutton widebutton inline" style="top:245px; left:85px;" href="#inline_content">Take the Pledge</a>
		<div style="display:none">
			<div id="inline_content" style="padding:20px 10px 0px; background:#fff;">
				<h2 id="pledgeformh2" tabindex="1" style="font-size:23px; text-shadow: 1px 1px 2px #000;">I pledge to join “The WE WILL Generation”</h2>
				<p style="font-size:18px; text-align:center"><strong>WE WILL be the generation to:</strong></p>
				<form method="post" class"pledge">
					<input class="pledgeitem" type="checkbox" name="issue" id="issue" tabindex="10">
					<label class="pledgeitem" for="issue">Own this issue and be the solution</label>
					<br>
					<input class="pledgeitem" type="checkbox" name="matter" id="matter" tabindex="20">
					<label class="pledgeitem" for="matter">Make sure every individual knows that they matter</label>
					<br>
					<input class="pledgeitem" type="checkbox" name="peers" id="peers" tabindex="30">
					<label class="pledgeitem" for="peers">Reach out to peers and let them know that they aren’t alone</label>
					<br>
					<input class="pledgeitem" type="checkbox" name="community" id="community" tabindex="40">
					<label class="pledgeitem" for="community">Establish a supportive community that unites in action</label>
					<br>
					<input class="pledgeitem" type="checkbox" name="change" id="change" tabindex="50">
					<label class="pledgeitem" for="change">Change the negativity that has impacted so many for so long</label>
					<br>
					<br>
					<div class="centered">
						<input disabled="disabled" id="pledgebutton" href="#" type="button" value="I pledge" tabindex="60">
					</div>
				</form>
			</div>
		</div>	
		<a class="arrowredbutton widebutton" style="top:300px; left:85px; "href="/bullying/wewillgen/advice.asp">Read and Share Advice</a> 
		</div>
	<div id="secondarynav" class="whitenav" role="navigation"> <a href="/bullying/"><img id="navlogo" src="/bullying/images/styles/navLogo.png" width="40" height="40" alt="NBPC Homepage" /></a>
		<ul class="justifiedlist">
			<li id="spynav-1"><a href="#wewill-1a">We Will Generation</a></li>
			<li class="dash"></li>
			<li id="spynav-2"><a href="#reachout-2a">Reach Out</a></li>
			<li class="dash"></li>
			<li id="spynav-3"><a href="#speakup-3a">Speak Up</a></li>
			<li class="dash"></li>
			<li id="spynav-4"><a href="#curricula-4a">Classroom Curricula</a></li>
			<li class="dash"></li>
			<li id="spynav-5"><a href="#stories-5a">Stories</a></li>
			<li class="dash"></li>
			<li id="spynav-6"><a href="#faq-6a">FAQs</a></li>			
		</ul>
	</div>
	<div id="pledgemessage" class="contentrow row-purplewhite row-shadow">
		<h2 id="pledgemessageh2" tab-index:"160" style="font-size:30px; line-height: 40px; text-shadow: 0px 0px 5px #000">Thank you for pledging!</h2>
		<div class="singlecolumn">
			<div style="float:right; width:150px">
				<img src="/bullying/wewillgen/images/weWillPledge.jpg" width="150" height="195" alt=""/>
				<p style="text-align:center"><a href="http://www.pacer.org/bullying/wewillgen/pdf/we-Will-Pledge.pdf" target="_blank">Download your <br />pledge certificate</a></p>
			</div>			
			<p>Welcome to The WE WILL Generation,</p>
			<p>The WE WILL Generation is the generation of students that believes:</p>
			<ul>
			<li>bullying is never an acceptable behavior</li>
			<li>everyone deserves to be safe</li> 
			<li>we all have a responsibility to look out for each other</li>
			</ul>
			
			<h2 style="padding-top:80px">Lead “The WE WILL Generation”</h2> 
			<p>1)Post these messages to social media or create your own message that encourages people to pledge to join the WE WILL Generation.</p>
			<p>Facebook<br />	
			I pledged to join “The WE WILL Generation” and unite with students leading the bullying prevention movement. Join me at <a href="http://www.pacer.org/wewillgen" target="_blank"> PACER.org/wewillgen</a> to take the pledge and create safer communities for all. #wewillgen</p>
			<p>Instagram<br />
			I pledge to join “The WE WILL Generation” and unite with students leading the bullying prevention movement at <a href="http://www.pacer.org/wewillgen" target="_blank"> PACER.org/wewillgen</a>.</p>
			<p>Twitter<br />
			I pledge to join #WeWillGen and unite with the bullying prevention movement <a href="http://www.pacer.org/wewillgen" target="_blank"> PACER.org/wewillgen</a></p>
			<p>2)Read <a href="#reachout-2a">WE WILL Reach Out</a> for ideas on how provide support for peers</p>
			<p>3)Visit <a href="#speakup-3a">WE WILL Speak Up</a> for resources on how talk with peers on creating safe and supportive environments</p>
			<p>3)<a href="#curricula-4a">Sign up</a> for access to the free online curriculum</p>
			<p>5)<a href="http://www.pacer.org/bullying/wewillgen/pdf/we-will-flyer.pdf" target="_blank">Download the flyer</a> and share with teachers or administrators and encourage them to share the resources school-wide</p>
		</div>	
	</div>
	
	<div id="intromessage" class="contentrow row-orange row-shadow" style="height: 275px">
	<div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>
			<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>
	
		<div class="singlecolumn" style="clear:right">
		<h2 style="font-size:48px; line-height:52px; text-shadow: 0px 0px 5px #000; margin-bottom:10px">Nearly 60%<br />
			<span style="font-size:30px; line-height:36px">of bullying situations end<br />
			when a peer intervenes.</span></h2>
			<p>A powerful statistic, showing the important influence that peers can have.  Imagine the power of student involvement in which students are educated, inspired, and supported to take positive action to help their peers.</p>
			<p>The WE WILL Generation is the generation of students that believes:</p> 
			<ul>
				<li>	bullying is never an acceptable behavior</li>
				<li>	everyone deserves to be safe</li> 
				<li>we all have a responsibility to look out for each other</li>
			</ul>
			<p>The WE WILL Generation is about providing education to students with ideas on how to take action and be a part of creating safe and supportive schools. The resources of the program are designed to be used in schools to encourage conversation and engagement around creating a culture that is together against bullying—and united for kindness, inclusion and acceptance.</p>

			<p><strong>Why is student engagement important?</strong></p>
			<ul>
			<li>Today’s students, like no other generation before them, have the opportunity to address bullying and change the culture within their schools, communities, and online.</li>
			<li>This generation knows that bullying is an issue for their peers; they want to help, and research shows that their actions will make a positive impact.</li>
			<li>To be successful students need a school-based structure, supported with resources that provide practical strategies, solid information, and action steps.</li>
			<li>Students often have an intrinsic understanding of their social environments and can exercise more “social leverage” with peers than adults.</li>
			<li>Students who feel ownership of their communities, and realize that they can make a difference, can be powerful influencers.</li>
			<li>In an interactive, conversational model, all involved –especially with students who are engaged- learn powerful lessons about bullying and what they can do to prevent it.</li>
			</ul>
			<p>This generation is ready to take action, students are important leaders and can be catalyst for changing the culture of bullying that has happened to so many for too long. The WE WILL Generation says, <em>&rdquo;This is our issue and we will be the solution.&ldquo;</em> What they need now is education, support, and inspiration – and a creative, practical program to make it happen!</p>
			
			<p>The WE WILL Generation includes the following resources for students (and adults) to create safe and supportive school environments:
				<ol>
					<li>Ideas for students –and adults-on how to <a href="#reachout-2a">REACH OUT</a> and be supportive of peers</li>
					<li>Resources that provide creative ways to <a href="#speakup-3a">SPEAK UP</a> and initiate conversation</li>
					<li>Curricula designed to <a href="#curricula-4a">EDUCATE</a> students about the dynamics of bullying and the important role students have in intervention and prevention. Presenters can be:</li>
					<ul>
						<li>educators in the classroom, or</li>
						<li>student leaders trained by an adult advisor</li>
					</ul>	
				</ol>	
 
			<p>Want to share information about The WE WILL Generation with your school? <a href="http://www.pacer.org/bullying/wewillgen/pdf/we-will-flyer.pdf" target="_blank">Share this informational flyer!</a></p>
		<div class="morebutton" id="intromessagebutton">	<div></div></div>
		</div>
	</div>
			
	<div id="reachout-2" class="contentrow row-whitered spyitem"> <a href="#" id="reachout-2a" class="contentrow-anchor" aria-hidden="true"></a>
		<h2 style="font-size:30px; line-height: 40px">WE WILL Reach Out</h2>
		<p class="singlecolumn"><em>Students reaching out to peers </em>&mdash; When you see someone being hurt, harmed or humiliated, do you think, "I want to help, but what can I do?" You're not alone in thinking that way—they are many who feel just like you. Kindness, support and hope are things that everyone can give—and your actions matter. Read these three strategies (1) Being There (2) Build Them Up and (3) Turn a 180 for ideas on how to be supportive. After reading through the ideas, be sure to take a moment to fill out the evaluation.</p>
		<ul class="justifiedlist imagethumblist threecollist">
			<li style="min-height:350px;"> <img src="/bullying/wewillgen/images/beingThere.png" width="150" height="150" alt="" />
				<h3>Being There</h3>
				<p>Imagine how lonely being bullied can feel. Then imagine what a difference knowing someone is there for you can make.</p>
				<p><a href="/bullying/wewillgen/being-there.asp" class="continuereading">continue reading<span class="extralinktext">about we will reach out, being there</span></a></p>
			</li>
			<li class="dash"></li>
			<li style="min-height:350px;"> <img src="/bullying/wewillgen/images/buildThemUp.png" width="150" height="150" alt=""/>
				<h3>Build Them Up</h3>
				<p>Bullying so often tears people down. When you know that someone has been broken down, help them back up.</p>
				<p><a href="/bullying/wewillgen/build-them-up.asp" class="continuereading">continue reading<span class="extralinktext">about we will reach out, being them up</span></a></p>
			</li>
			<li class="dash"></li>
			<li style="min-height:350px;"> <img src="/bullying/wewillgen/images/turna180.png" width="150" height="150" alt=""/>
				<h3>Turn A 180</h3>
				<p>Replace negative messages with positive actions that demonstrate inclusion and that it’s ok to be who you are.</p>
				<p><a href="/bullying/wewillgen/turn-a-180.asp" class="continuereading">continue reading<span class="extralinktext">about we will reach out, turn a 180</span></a></p>
			</li>
		</ul>
	</div>
	<div id="speakup-3" class="contentrow row-bluewhite row-shadow spyitem"> <a href="#" id="speakup-3a" class="contentrow-anchor" aria-hidden="true"></a>
		<h2 style="font-size:30px; line-height: 40px; text-shadow: 0px 0px 5px #000">WE WILL Speak Up</h2>
		<p class="singlecolumn"><em>Students speaking up to promote safe environments </em>&mdash; Want to know what really impact attitudes and creates change? It's students talking with other students—especially older students talking with younger kids. When peers show that compassion, tolerance and respect are important, they create a culture that raises the standards of behavior for everyone. These interactive ideas are a creative way to learn about how to address bullying and have meaningful dialogue about how each person can make a difference. After reviewing the activities, be sure to take a moment to fill out the evaluation.</p>
		<ul class="justifiedlist imagethumblist threecollist">
			<li style="min-height:350px;"> <img src="/bullying/wewillgen/images/classroomActivities.png" width="150" height="150" alt=""/>
				<h3>Classroom Activities</h3>
				<p>Put learning into action by creating visual displays, mentoring younger students, and presenting in class.</p>
				<p><a href="/bullying/wewillgen/classroom-activities.asp" class="continuereadingwhite">continue reading<span class="extralinktext">about we will speak up, classroom activities</span></a></p>
			</li>
			<li class="dash"></li>
			<li style="min-height:350px;"> <img src="/bullying/wewillgen/images/studentVideos.png" width="150" height="150" alt=""/>
				<h3>Student Created Videos</h3>
				<p>Show a short student created video. Then lead a classroom discussion with the questions developed by the creator of the video.</p>
				<p><a href="/bullying/wewillgen/student-created-videos.asp" class="continuereadingwhite">continue reading<span class="extralinktext">about we will speak up, student created videos</span></a></p>
			</li>
			<li class="dash"></li>
			<li style="min-height:350px;"> 
				<!--Flicker Creative Commons image #7658272558_aebe55277f_o--> 
				<img src="/bullying/wewillgen/images/bookList.png" width="150" height="150" alt=""/>
				<h3>Book List</h3>
				<p>Read these books with students. Follow up with engaging activities and discussion.</p>
				<p><a href="/bullying/wewillgen/book-club-list.asp" class="continuereadingwhite">continue reading<span class="extralinktext">about we will speak up, book list</span></a></p>
			</li>
		</ul>
	</div>
	<div id="curricula-4" class="contentrow row-whiteorange spyitem"> <a href="#" id="curricula-4a" class="contentrow-anchor" aria-hidden="true"></a>
		<h2 style="font-size:30px; line-height: 40px">WE WILL Educate (Classroom Curricula)</h2>
		<table class="threecoltable">
			<tr>
				<td><img src="/bullying/wewillgen/images/classroomCurricula.png" width="150" height="150" alt=""/></td>
				<td><p>Are you an educator—or a student—looking for an opportunity to build student leadership, to help develop advocacy skills and provide education on methods to respond to bullying? The WE WILL Generation curriculum is your answer. A free on-line, curriculum designed for (a) educators for the classroom or (b) adult advisors to train student leaders to engage, educate and inspire other students to be a part of The We Will Generation. To sign up for this opportunity, complete the registration form, and follow the instructions to access the lessons, activities, video, and other resources. </p></td>
				<td><a class="arrowredbutton widebutton" href="/bullying/wewillgen/curriculum.asp">Register for the Free<br />
					Online Curriculum</a></td>
			</tr>
		</table>
	</div>
	<div id="stories-5" class="contentrow row-redwhite row-shadow spyitem"> <a href="#" id="stories-5a" class="contentrow-anchor" aria-hidden="true"></a>
		<h2 style="font-size:30px; line-height: 40px; text-shadow: 0px 0px 5px #000">Stories We Love</h2>
		<table class="twocoltable">
			<tr>
				<td valign="center"><img src="/bullying/wewillgen/images/spreadingLove-notHate.jpg" width="250" height="350" alt=""/></td>
				<td><h3 class="centered">Spreading Love, Not Hate</h3>
					<p>When an anonymous hate page about a fellow student appeared on Instagram, concerned girls from Benicia High School (CA) decided to do something with social media that would make a positive outcome in their community: they created another Instagram account devoted to compliments.  On the “Benicia Compliments” page, the first thing you’ll see is this motto: &ldquo;Spread love, not hate. Benicia High School student who just wants people to feel happy.&rdquo;</p>
					<p>You’ll also see warm comments about the people tagged in the smiling selfies and candid photos, comments that praise kindness, beauty, inclusion, and much more. The responses from those tagged are grateful (&ldquo;Thank you so much this means a lot&rdquo;) and touched (&ldquo;Awe thank you! I really appreciate it, this really made my day&rdquo;). In an online world that can be harsh and unforgiving, Benicia High students created something positive for their peers and the social world around them. <a href="http://www.npr.org/sections/alltechconsidered/2016/03/24/470686073/teen-girls-flip-the-negative-script-on-social-media" target="_blank" class="externallink">Read the full story</a></p></td>
			</tr>
			<tr>
				<td colspan="2"><p class="centered"><a href="/bullying/wewillgen/stories.asp">view all stories</a></p></td>
			</tr>		
		
<!--			<tr>
				<td valign="top"><img src="/bullying/getinvolved/student-action/events/images/olivia-ryc.jpg" width="320" height="448" alt=""/></td>
				<td><h3 class="centered">Raise Your Crown Against Bullying</h3>
					<p>My name is Olivia Pierce. I am 14 and in the 8th grade. When I was in kindergarten, I struggled with a learning disorder and acted out in class due to frustration. The other kids saw I was different and would bully me. No matter what I did after that, the kids never accepted me. With some help from my parents and teachers, things got better for me academically, but I was still bullied and didn’t have many friends. Luckily, I was able to turn to my parents for help. You should always tell your parents or another adult if you are bullied.</p>
					<p>I’ve been told I have thick skin, because I kept trying to make new friends even though it felt like I would never have any. In middle school, I finally have some good friends and they do not judge me based upon my behavior in Kindergarten. Because of my experience, I go out of my way to make kids feel accepted and I do not judge them because they are different. Now I have a lot of friends who support me in my stopping bullying effort and they accept me for who I am because I accept everyone for who they are. I don’t care what other people think of them because, to me, everyone is special on the inside no matter what they are on the outside.</p>
					<p>A year ago, I launched the “Raise Your Crown Against Bullying” initiative to help show other kids that are bullied that they are not alone. I also spend a lot of my volunteer time being an advocate for bullying prevention causes. I want every kid out there to know that bullying can happen to anyone, even adults. It is wrong, and everybody should be treated kindly.</p>
					<p>As a result of my volunteering this past year, I earned The Gold President’s Volunteer Service Award for completing 125 hours of community service. That was such an honor. Some of my bullying prevention activities include The Faces of Change — The Youth Advisory Board of PACER’s National Bullying Prevention Center, PACER’s Run Walk and Roll Against Bullying, and advocating through my own nonprofit “Raise Your Crown Against Bullying.” Learn more on my <a href="https://www.facebook.com/raiseyourcrownagainstbullying" target="_blank" class="externallink">Facebook page</a></p></td>
			</tr>
			<tr>
				<td colspan="2"><p class="centered"><a href="/bullying/wewillgen/stories.asp">view all stories</a></p></td>
			</tr>-->
		</table>
	</div>
	
	<!-- single column for youtube story--> 
	<!--	<div id="message" class="contentrow row-orange row-shadow" style="height: 275px">    
	<h2 style="font-size:48px; line-height:52px; text-shadow: 0px 0px 5px #000; margin-bottom:10px">Nearly 60%<br />
    <span style="font-size:30px; line-height:36px">of bullying situations end<br /> 
    when a peer intervenes.</span></h2>
	<p class="singlecolumn">A powerful statistic, showing the important influence that peers can have.  Imagine the power of student-to-student engagement in which students are educated, inspired, and supported to take positive action to help their peers.</p> 
    <ul class="singlecolumn">
        <li>Today’s students, like no other generation before them, have the opportunity to address bullying and change the culture within their schools, communities, and online.</li>
        <li>This generation knows that bullying is an issue for their peers; they want to help, and research shows that their actions will make a positive impact.</li>
        <li>To be successful they need a school-based structure, supported with online resources that provide practical strategies, solid information, and action steps.</li>
        <li>Students often have an intrinsic understanding of their social environments and can exercise more “social leverage” with peers than adults.</li>
        <li>Students who feel ownership of their communities, and realize that they can make a difference, can be powerful influencers.</li>
        <li>In a student-to-student model, the presenters and the audience both learn powerful lessons about bullying and what they can do to prevent it.</li>
        <li>This generation is ready to take action. What they need now is education, support, and inspiration – and a creative, practical program to make it happen!</li> 
    </ul>
	   	<div class="morebutton" id="messagebutton"><div></div></div>
	</div>--> 
	
	<!--	<div id="stories-5" class="contentrow row-redwhite row-shadow spyitem">
    <a href="#" id="stories-5a" class="contentrow-anchor" aria-hidden="true"></a>    
	<h2 style="font-size:30px; line-height: 40px; text-shadow: 0px 0px 5px #000">Stories We Love</h2>
	<ul class="justifiedlist imagethumblist twocollist" style="margin-bottom:0px; padding-bottom:0px">
		<li>
		
		
		<table><tr><td>
		<img src="/bullying/wewillgen/images/beingThere.png" width="150" height="150" alt=""/>
		</td><td>
		<h3>Story with image example</h3>
		<p>Disturbed by the amount of cyberbullying he saw among his classmates, one high school student from Osseo, MN took it upon himself to build up the students at his school. He created a Twitter account called Osseo Nice Things that posted only positive things about students – complimenting their talents, kindness, and achievements. Other schools across the country have taken note and created their own positivity campaigns. Sometimes all it takes to create a more supportive school environment is for one person to speak up!</p>
       <p><a href="#" class="continuereadingwhite">continue reading<span class="extralinktext">this story</span></a></p>
		</td></tr></table>
		
		
		</li>
		<li class="dash"></li>
		<li>
		<h3>Story without image example</h3>
		<p>Lorem ipsum dolor sit amet, consectetuer
			adipiscing elit, sed diam nonummy
			nibh euismod tincidunt ut laoreet
			dolore magna aliquam erat volutpat.Lorem ipsum dolor sit amet, consectetuer
			adipiscing elit, sed diam nonummy
			nibh euismod tincidunt ut laoreet
			dolore magna aliquam erat volutpat.</p>
			<p><a href="#" class="continuereadingwhite">continue reading<span class="extralinktext">this story</span></a></p>
	</li>
	</ul>
    <p class="centered"><a href="/bullying/wewillgen/stories.asp">view all stories</a></p>
	</div>-->
	
	<div id="bottomContentWrapper" style="text-align: center; padding: 40px;">
	<h2>Join the WeWillGen Movement on Social Media</h2>
<!--	<a href="https://twitter.com/wewillgen" title="Follow us on Twitter @WeWillGen" target="_blank">Twitter - @WeWillGen</a>
	 | 
	<a href="https://instagram.com/wewillgen/" title="Follow us on Instagram @WeWillGen" target="_blank">Instagram - @WeWillGen</a>-->
	
	<div style="width:150px; margin: 10px auto">  
        <a style="margin-right: 10px" href="https://twitter.com/WEWILLGen" title="Follow us on Instagram @WeWillGen" target="_blank"><img src="/images/twittericon_medium.gif" width="35" height="35" alt="Twitter" /></a>	
        <a style="margin-left: 10px" href="https://www.instagram.com/wewillgen/" title="Follow us on Twitter @WeWillGen" target="_blank"><img src="/images/instagramicon_medium.gif" width="35" height="35" alt="Instagram" /></a>
	</div>
	<p>	Tag us in your <strong>#WeWillGen</strong> statement for the chance to be featured!<br />
		Photos by YOU.</p>	
	<img style="border:1px solid black" src="/bullying/wewillgen/images/we-will-socialmedia.jpg" width="150" height="150" alt=""/>
	<!-- close bottomContentWrapper --> 
	</div>
	<br class="clearfloat" />
	
	
<!-- ==============================================WE WILL REPRESENT=================================================	
	<div id="represent-6" class="contentrow row-purplewhite row-shadow spyitem">
		<h2 style="font-size:30px; line-height: 40px; text-shadow: 0px 0px 5px #000">WE WILL Represent</h2>
		<ul class="justifiedlist imagethumblist twocollist" style="margin-bottom:0px; padding-bottom:0px">
			<li>
				<table>
					<tr>
						<td><img src="/bullying/wewillgen/images/wwgButton.png" width="150" height="149" alt=""/></td>
						<td><h3>Posters</h3>
							<p>Share the We Will Generation with your school or organization. Display these 24’ x 36” posters which feature the We Will Generation pledge and how to get involved. </p>
							<p><em>Under development</em></p>-->
							<!--<p><a href="#" class="externallink">place an order</a></p>-->
<!--					</tr>
				</table>
			</li>
			<li class="dash"></li>
			<li>
				<table>
					<tr>
						<td><img src="/bullying/wewillgen/images/wwgButton.png" width="150" height="149" alt=""/></td>
						<td><h3>Bookmarks</h3>
							<p>Provide every student with a bookmark as a reminder that they are part of the We Will Generation—and that they are making a difference.</p>
							<p><em>Under development</em></p>
							<!--<p><a href="#" class="externallink">place an order</a></p>-->
<!--					</tr>
				</table>
			</li>
		</ul>
	</div>
	
==============================================END WE WILL REPRESENT=================================================	-->


	<div id="faq-6a" class="contentrow row-purplewhite row-shadow spyitem">
		<h2 style="text-align:center">Frequently Asked Questions</h2>
		<h3 class="singlecolumn centered">What is “The WE WILL Generation”?</h3>
		<div class="singlecolumn">
			<p>The WE WILL Generation is a movement designed to engage students to take powerful action to address bullying in schools, online, and in their communities. Bullying is an issue that directly impacts their generation and a student-centered program provides the opportunity to own the issue and to be the solution.</p>
		</div>
		<div class="centered">
			<a class="arrowwhitebutton widebutton" id="flyerbutton" href="/bullying/wewillgen/faq.asp">Read more FAQs</a>
		</div>
	</div>
	
	<div id="nbpc-7" class="contentrow row-whitered spyitem">
		<h2 style="text-align:center">PACER’s National Bullying Prevention Center</h2>
		<h3 class="singlecolumn centered">The WE WILL Generation<sup style="font-size:.9em;">&trade;</sup></h3>
		<div style="width:380px; height:190px; margin:20px auto; background-color:#fff; border-radius:5px;">
			<img src="/bullying/wewillgen/images/weWillGen.jpg" style="display:block; margin-left:auto; margin-right:auto; padding-top:15px" width="346" height="159" alt=""/>
		</div>
		<div class="singlecolumn">
			<p>The WE WILL GENERATION was designed for schools and other organizations to leverage resources, at no cost and easily accessible on-line, to encourage student conversation to educate, inspire and support peers to address bullying and create kinder and safer schools.</p> 
			<p>Students are ready to take a significant role in the bullying prevention movement. “We will be the generation that says, ‘This is our issue and we will be the solution.’” Bullying is an issue that directly impacts children and youth every day. Today’s generation of students is ready to take action and uniquely positioned to prevent and stop bullying. What they need is education, support, and inspiration – and a creative program that will give them the practical skills to be part of the solution. The WE WILL Generation is an exciting new initiative developed by PACER’s National Bullying Prevention Center that uses an interactive, conversational model to build leadership and encourage a change in culture to address bullying.</p>
		</div>
		<div class="centered">
		<a class="arrowredbutton widebutton" id="flyerbutton" href="/bullying/wewillgen/pdf/we-will-flyer.pdf" target="_blank">Download the Flyer</a>
		</div>
	</div>
	<br class="clearfloat" />
	
	<!-- end .content --> 
</div>
<!--#include virtual="/bullying/footer.html"-->
<!-- end .container -->
</div>
</body>
</html>
