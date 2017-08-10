<!--#include virtual="/bullying/templates/header.asp"-->

<!-- Custom for this page:START -->
<link href="/js/colorbox/colorbox.css" rel="stylesheet" type="text/css" />
<link href="/css/key-elements-responsive.min.css" rel="stylesheet" type="text/css" />
<script src="/js/colorbox/jquery.colorbox-min.js" type="text/javascript"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$(".topTenList").colorbox({inline:true, width:"60%", opacity:.5, rel:'group1'});
	});
</script>

<style type="text/css">
.eventtable {
  border-spacing: 10px;
  border-collapse: separate;
}

.eventtable td:nth-child(2) {
  border-top: 1px solid #ccc;
  padding-top: 5px;
}

.eventtable tr:first-child td { border: none; }

.eventtable td { vertical-align: top; }

.eventtable img {
  margin-bottom: 25px;
  margin-top: 5px;
}

.topTenInfo img {
  float: left;
  padding: 5px 10px;
}

.topTenInfo h3 {
  background-color: #f5592e;
  color: #fff;
  font-size: 1.7em;
  margin: 10px;
  padding: 5px 10px;
}
</style>

<!-- Custom for this page:END -->


<meta http-equiv="Content-Type" content="text/html" charset=UTF-8" />
<meta name="description" content="National Bullying Prevention Month is a nationwide campaign founded in 2006 by PACER's National Bullying Prevention Center. The campaign is held during the month of October and unites communities around the world to educate and raise awareness of bullying prevention." />
<title>National Bullying Prevention Center - National Bullying Prevention Month</title>

<meta property="og:title" content="National Bullying Prevention Center - National Bullying Prevention Month" />
<meta property="og:url" content="http://www.pacer.org/bullying/nbpm/" />
<meta property="og:image" content="http://www.pacer.org/bullying/nbpm/images/nbpm-fb-10yr.jpg" />
<meta property="og:description" content="National Bullying Prevention Month is a nationwide campaign founded in 2006 by PACER's National Bullying Prevention Center. The campaign is held during the month of October and unites communities around the world to educate and raise awareness of bullying prevention." />
</head>
<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<!--#include virtual="/bullying/templates/page-header-nav.asp"-->

<div class="breadcrumb"> <a href="/bullying/">Home</a> /</div>

<!-- ########################## LEFT NAV ########################################### -->
<div class="sidebar1">
<!--#include virtual="/bullying/nbpm/nav.html"-->
</div>
<script type="text/javascript">
	var currId="overview";
	var showTree = "none";
</script>

<script type="text/javascript">
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "active";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "submenu") {
			if (subTrees[i].id != showTree) {
				subTrees[i].className = "submenuhidden";
			}
		}
	}
</script>

<!-- ########################## MAIN CONTENT ########################################### -->


<div class="content">
    <h1 id="maincontent">October is National Bullying Prevention Month</h1>
		<h2>Sponsored by PACER's National Bullying Prevention Center</h2>
    
 <h3>More than 1 out of every 5 students report being bullied</h3>
<p>National Bullying Prevention Month is a nationwide campaign founded in 2006 by PACER's National Bullying Prevention Center. The campaign is held during the month of October and unites communities around the world to educate and raise awareness of bullying prevention. This campaign has grown from an initial week-long event to a worldwide effort with thousands of individuals participating in multiple activities throughout October.</p>
<p>Hundreds of schools, major corporations, and many celebrities have joined the movement. Take action and show that you care about kids being safe at school, while online, and in the community.</p>
		
<%'----------------------------------- START TOP TEN LIST -------------------------------------- %>		
		<h2 id="Top10">Top 10 reasons to celebrate</h2>
		<table id="specialevents" class="eventtable">
			<tr>
				<td><img width="160" height="160" src="/bullying/getinvolved/images/topTen_thumb.jpg" alt="" /></td>
				<td><table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="631" valign="top">
							<p>The number one reason to celebrate? You can be a part of a cause that’s uniting a nation! Historically, bullying had been viewed as “a childhood rite of passage,” but National Bullying Prevention Month is now a nationwide call to action — providing schools, parents and students with the educational resources and support to better respond to bullying behavior.</p>
							<p><a class="topTenList" href="#list1">View the top 10 list</a> to learn ways you can get involved.</p>
								<p><a class="topTenList" href="#list2" style="display:none"></a></p>	
								<p><a class="topTenList" href="#list3" style="display:none"></a></p>	
								<p><a class="topTenList" href="#list4" style="display:none"></a></p>	
								<p><a class="topTenList" href="#list5" style="display:none"></a></p>	
								<p><a class="topTenList" href="#list6" style="display:none"></a></p>	
								<p><a class="topTenList" href="#list7" style="display:none"></a></p>	
								<p><a class="topTenList" href="#list8" style="display:none"></a></p>	
								<p><a class="topTenList" href="#list9" style="display:none"></a></p>		
								<p><a class="topTenList" href="#list10" style="display:none"></a></p>
							</td>
						</tr>
					</table></td>
			</tr>
		</table>	
		
		<div style="display:none; clear:left">
			<div class="topTenInfo" id="list1">
				<h3>1. Be part of a cause that’s uniting a nation</h3>
				<img src="/bullying/nbpm/images/top10-1.jpg" width="359" height="318" alt=""/>
				<p>National Bullying Prevention Month was <a href="http://www.pacer.org/bullying/nbpm/history.asp">founded</a> in 2006 by PACER's National Bullying Prevention Center. The campaign unites communities nationwide to educate and raise awareness of bullying prevention.</p>
				<p>Historically, bullying had been viewed as “a childhood rite of passage,” but National Bullying Prevention Month is now a nationwide call to action — providing schools, parents and students with the educational resources and support to better respond to bullying behavior.</p>
			</div>
			
			<div class="topTenInfo" id="list2">
				<h3>2. Get free stuff</h3>
				<img src="/bullying/nbpm/images/top10-2.jpg" width="356" height="162" alt=""/>
				<!--<p>Eye-catching <a href="http://www.pacer.org/bullying/resources/shoelaces.asp">shoelaces</a> are a creative and inexpensive way to wear orange! Show your support of bullying prevention on <a href="http://www.pacer.org/bullying/nbpm/unity-day.asp">Unity Day</a> or throughout the year.</p>-->
				<p>Handy <a href="http://www.pacer.org/bullying/resources/bookmarks.asp">bookmarks</a> are available for elementary students who are encouraged to take the pledge to “Be a Kid Against Bullying,” and middle and high school students who can “Be a Champion Against Bullying.”</p>
				<p><em>(Shipping & Handling will be charged)</em></p>
			</div>	
			
			<div class="topTenInfo" id="list3">
				<h3>3. Create safe and supportive schools and communities</h3>
				<img src="/bullying/nbpm/images/top10-3.jpg" width="339" height="204" alt=""/>
				<p>Visit PACER’s National Bullying Prevention Center to find out how you can create a safe and supportive environment in your school and community.</p>
				<p><a href="http://www.pacer.org/bullying/nbpm/spreadtheword/key-messages.asp">Let everyone know</a> about National Bullying Prevention Month. Notify local media, share information on Facebook and Twitter, and influence key decision makers, such as school administrators and lawmakers.</p>
			</div>	
			<div class="topTenInfo" id="list4">
				<h3>4. “Being There” for someone makes a difference</h3>
				<img src="/bullying/nbpm/images/top10-4.jpg" width="357" height="237" alt=""/>
				<p>Create communities that send the message to students who are bullied that they are not alone!</p>
				<p>Toolkits help educate students, adults and community members that support, kindness and hope is something everyone can give.</p>
				<p><a href="http://www.pacer.org/bullying/yourenotalone/classroom-toolkit.asp">Classroom toolkits</a> created by PACER’ National Bullying Prevention Center provides opportunities for meaningful conversation, visual reminders and participation incentives.</p>
				<p><a href="http://www.pacer.org/bullying/yourenotalone/event-toolkit.asp">Community toolkits</a> created by PACER’ National Bullying Prevention Center includes resources for holding a public event at school or in the community with posters, a petition, handouts and giveaways.</p>
			</div>	
			<div class="topTenInfo" id="list5">
				<h3>5. Release your inner artist</h3>
				<img src="/bullying/nbpm/images/top10-5.jpg" width="312" height="240" alt=""/>
				<p>Plant a seed of unity in schools and communities by creating a Unity Tree, a powerful and visual experience to see the importance of supporting those who are experiencing bullying. Participants are reminded that we are all in this together — united for kindness, acceptance and inclusion.</p>

				<p>Citrus Grove Elementary in Palm City, Fla., shared the inspiration behind <a href="http://www.pacer.org/bullying/resources/toolkits/classroom/project-connect.asp">Project Connect</a>, which creates chains of orange that can be displayed and linked together. This project reinforces the message that while one person can speak out against bullying, our message is much stronger when we come together to make a difference.</p>
</p>
			</div>	
			<div class="topTenInfo" id="list6">
				<h3>6. Wear Orange and Be United</h3>
				<img src="/bullying/nbpm/images/top10-6.jpg" width="355" height="277" alt=""/>
				<p>Make it orange and make it end! Watch for the &ldquo;orange-wear&rdquo; line coming soon. This will include orange t-shirts and other orange items to wear to show your support of the cause.</p>
			</div>	
			<div class="topTenInfo" id="list7">
				<h3>7. Learn that what you do matters</h3>
				<img src="/bullying/nbpm/images/top10-7.jpg" width="355" height="200" alt=""/>
				<p>Have you ever felt like the whispers, giggles, note passing and looks were directed at you or someone you care about? Imagine if all that attention was channeled into positive action.</p> 
				<p>The Disney company supports PACER’s National Bullying Prevention Center with the creation of an inspiring video titled “<a href="http://www.pacer.org/bullying/video/player.asp?video=81">You are Braver, Stronger and Smarter Than You Think</a>.”</p>
				<p>Share it with others to inspire social change among young people everywhere!</p>
			</div>			
			<div class="topTenInfo" id="list8">
				<h3>8. Recognize that your actions are powerful</h3>
				<img src="/bullying/nbpm/images/top10-8.jpg" width="395" height="222" alt=""/>
				<p>PACER’s National Bullying Prevention Center is proud to highlight “<a href="https://www.youtube.com/watch?v=_an9aIryJb8" target="_blank">Silent <span class="fa fa-external-link"></span></a>,” a short film about the power of kindness by 15-year-old Lindsey Hunter, a freshman at Folsom High School in Folsom, Calif.</p> 	
				<p>Lindsey’s powerful film is about a girl living in a silent world. She wanted to convey the message, “If you are going to say something mean, remain silent.”</p>
				<p>Lindsey’s father is blind and she has a genuine heart for those with disabilities.</p>
			</div>
			<div class="topTenInfo" id="list9">
				<h3>9. Know that you’re helping one in every five students </h3>
				<img src="/bullying/nbpm/images/top10-9.jpg" width="357" height="264" alt=""/>
				<p>One out of every five report being bullied during the school year, according to the National Center for Educational Statistics.</p>
				<p>And that’s not all. PACER’s National Bullying Prevention Center shares <a href="http://www.pacer.org/bullying/about/media-kit/stats.asp">statistics</a> on the different types of bullying as well as interventions.</p>
				<p>But there’s good news! According to another statistic, if students believe they can make a difference, they’re more likely to act.</p> 
				<p>Be the change!</p>
			</div>				
			<div class="topTenInfo" id="list10">
				<h3>10.	Meet new friends (who are “Two in a Million”)</h3>
				<img src="/bullying/nbpm/images/top10-10.jpg" width="355" height="237" alt=""/>
				<p>Meet Austin and Elena, who are two in a million — both diagnosed with <a href="http://www.tlc.com/tlcme/what-is-goldenhar-syndrome/" target="_blank">Goldenhar Syndrome <span class="fa fa-external-link"></span></a>. They appear in TLC’s new series, “Two In A Million,” which premiered in April.</p> 
				<p>They also shared their personal stories of being bullied by posting a <a href="https://www.facebook.com/PACERsNationalBullyingPreventionCenter/videos/983401041714938/" target="_blank">video <span class="fa fa-external-link"></span></a> with PACER’s National Bullying Prevention Center.</p>
				<p>“If you get pushed down, you get right back up,” Elena says.</p>
			</div>																						
		</div>
		
<%'----------------------------------- END TOP TEN LIST -------------------------------------- %>		
		
		<h2>Show Your Support</h2>
		<ul>
			<li><a href="/bullying/nbpm/partners/champions.asp">Register</a> your school or organization as a Champion Against Bullying </li>
			<li><a href="/bullying/pledge/">Add your name</a> to the digital &ldquo;Together Against Bullying&rdquo; pledge</li>
			<li><a href="/bullying/newsletter/opt-in.asp">Sign up</a> for the Bullying Prevention Newsletter</li>
			<li><a href="/bullying/nbpm/spreadtheword/">Speak in  your community</a> about bullying prevention and local activities.</li>
			<li><a href="/bullying/nbpm/pdf/NBPM_GetInvolved.pdf" target="_blank">Download, print and share</a> the flyer with your school, organization or community. </li>
			<li><a href="https://www.surveymonkey.com/r/S8ZRM38" target="_blank">Complete the brief on-line form</a> sharing your plans to celebrate National Bullying Prevention Month.</li>
            </ul>
      <h2>Unity Day 2017, Oct. 25! Wear and Share Orange!</h2>
      <table>
      <tr>
      <td valign="top"><img src="/bullying/nbpm/images/ud-crowns-160px.jpg" width="160" height="159" alt=""/></td>
			  <td><p><strong>Together against bullying &mdash; united for kindness, acceptance and inclusion.</strong></p>
              <p>Make it <span style="color:#F15C32; font-weight:bold">ORANGE</span> and make it end! What are your true colors when it comes to showing that you care about preventing bullying? Come together in one giant message of hope and support, wear and share orange to color our nation, and even the world, visibly showing that our society believes that no child should be bullied.</p>
      <h3>Wear Orange: Make a statement!</h3>
              <p>&ldquo;<span style="color:#F15C32; font-weight:bold">ORANGE</span> provides a powerful, visually compelling expression of solidarity,&rdquo; said Paula Goldberg, Executive Director of PACER Center. &ldquo;When hundreds of individuals in a school or organization wear orange, the vibrant statement becomes a conversation starter, sending the unified message to kids to know that they are not alone.&rdquo;</p>
      <h3>Share Orange: Color our online world with orange!</h3>
              <ul>
              <li>Go orange digitally!
              <ul>
                <li><a href="http://www.pacer.org/bullying/nbpm/unity-day.asp">Post images wearing orange.</a></li>
                <li><a href="http://www.pacer.org/bullying/nbpm/go-orange/socialmedia.asp">Change your profile image supporting UNITY DAY or wearing orange.</a></li>
                <li>Add a UNITY DAY frame.</li>
                <li>Add an orange tint to your Instagram profile and photos.</li>
                </ul></li>
                <li>Share posts and images.
                <ul>
                  <li>Update your status to <em>&ldquo;UNITY DAY is October 25! Join the movement to make it orange and make it end! If you are being bullied, you are not alone. Celebrate Unity Day to show we are together against bullying and united for kindness, acceptance, and inclusion.&rdquo;</em></li>
                <li>Share your stories and tag images using #UnityDay2017</li>
                <li>Download free images on the NBPC website to share online and promote participation.</li>
              </ul></li></ul>
        </td></tr>
              </table>
			
              
		<h2>Special Events</h2>
		<table id="specialevents" class="eventtable">
			<!--<tr>
				<td><img width="160" height="160" src="/bullying/nbpm/images/nbpm-sml-unityDayGallery8.jpg" alt="" /></td>

				
							<td width="631" valign="top"><h3><a href="/bullying/nbpm/unity-day.asp">Unity Day &ndash; Wed. Oct 19th</a></h3>
								<p>Make it <span style="color:#F15C32; font-weight:bold">ORANGE</span> and make it end! Unite against bullying! <br />
						  What are your true colors when it comes to bullying? If you care about safe and supportive schools and communities make your color <span style="color:#F15C32; font-weight:bold">ORANGE</span> on <strong>Unity Day</strong>. That&rsquo;s the day everyone can come together&mdash;in schools, communities, and online&mdash;and send one large <span style="color:#F15C32; font-weight:bold">ORANGE</span> message of support, hope, and unity. </p></td>
						
			</tr>-->
			<tr>
				<td><img width="160" height="160" src="/bullying/nbpm/images/nbpm-sml-RWR-2011-09.jpg" alt="" /></td>
				<td><h3><a href="/bullying/nbpm/runwalkroll/events-around-the-country.asp">Run, Walk, Roll Against Bullying</a></h3>
					<p>A family-friendly  event held by schools, businesses or communities to show the nation&rsquo;s  commitment to keeping students safe while at school, in the community, and  on-line. The event can be accompanied by pre-and post- activities such as games  for kids, speakers, music, prizes and dance.</p></td>
			</tr>
		</table>
        	
		<h2>Hold An Event</h2>
		<table id="event" class="eventtable">		
			<tr>
				<td><img width="160" height="160" src="/bullying/nbpm/images/nbpm-sml-Bg-YNA.jpg" alt="" /></td>
				<td>
					<p><a href="http://www.pacer.org/bullying/yourenotalone/event-toolkit.asp"><strong>Order the "You're Not Alone, We're Here for You"</strong></a> event toolkit designed to help you hold an awareness raising event to unite against bullying and unite together to provide community, support, and hope for those who have experienced bullying. The toolkit can be used in coordination with a bullying prevention event in the school or community, such as a "Run, Walk, Roll Against Bullying," school open house, or parent teacher conferences.</p></td>
			</tr>
		</table>			
		
		<h2>Other Exciting Opportunities</h2>
		<table id="opportunities" class="eventtable">
			<%	
'	<tr>
'		<td><img width="160" height="160" src="/bullying/nbpm/images/nbpm-sml-ProjectConnect-Pic1a.jpg" alt="" /></td>
'		<td><p><strong>HOLD A SCHOOL EVENT &ndash;  Available Summer 2014</strong>			</p>
'			<p>The <strong>Safe Schools For All Summit</strong> is a one-day, school-wide event promoting empathy, kindness and respect with  activities for students, parents and community members. A toolkit provides  ideas, resources and activities to engage audiences of all ages and abilities  on their role in building a safer school climate. </p></td>
'	</tr>
%>
			<tr>
				<td><img width="160" height="160" src="/bullying/nbpm/images/nbpm-sml-Bg-weWill1.jpg" alt="" /></td>
				<td><h3><strong>Involve Students</strong></h3><p><a href="/bullying/wewillgen/"><strong>The  WE WILL Generation</strong></a> is a program designed to inspire student to student engagement to lead the bullying prevention movement! Students say, &ldquo;<em>We will be the generation that  says, &lsquo;This is our issue and we will be the solution</em>.&rsquo;&rdquo; &nbsp;The program includes education on what students can do to help someone being bullied, ideas for connecting older  students with younger students, and a student taught curriculum.</p></td>
			</tr> 
			<tr>
				<td><img width="160" height="160" src="/bullying/nbpm/images/nbpm-sml-Bg-connect.jpg" alt="" /><br />
					<img width="160" height="161" src="/bullying/nbpm/images/nbpm-sml-kab-poster.jpg" alt="" /><br />
					<img width="160" height="160" src="/bullying/nbpm/images/nbpm-sml-above-the-line-image.png" alt="" /></td>
				<td><h3><a href="/bullying/resources/activities/">Educational Activities</a></h3>
					<p>PACER&rsquo;s National Bullying Prevention Center offers several, free creative activities and resources for K-12 students, educators, and parents. The goal is to raise awareness and increase understanding of how to respond to bullying. The resources are free, available on-line, and easy to implement in the school and community.</p>
					<ul>
						<li><a href="/bullying/resources/toolkits/classroom/project-connect.asp">Project Connect</a><strong> &ndash; </strong>Invite students to write a message on a strip of <strong>ORANGE</strong> construction paper. The strips are then stapled or glued together, resulting in one long, connected chain that visually represents the power of uniting for a common cause.</li>
						<li><a href="/bullying/resources/activities/poster.asp">Create A Poster</a> - Send us your story, poem, artwork or video on the topic expressing your ideas on bullying prevention.</li>
						<li><strong>Unity Banner - </strong>Create a huge banner with the word UNITY as the central theme. Ask everyone to sign the banner, define what unity means to them, or make a suggestion about ways to unite as a school or organization.</li>
						<li><a href="/bullying/wewillgen/classroom-activities/above-the-line.asp">Above the Line&mdash;Below The Line</a><strong> &ndash; Create a chart that helps</strong> students actively define behaviors that they consider &ldquo;above the line&rdquo; versus &ldquo;below the line&rdquo;. </li>
						<li><a href="/bullying/classroom/schoolwide/intro-to-bullying-prevention.asp">Introduction to Bullying Prevention</a><strong> &ndash; Schoolwide, All Ages and Grades</strong> <br />Looking for a way to introduce bullying prevention and awareness into your classroom, school, or community organization? The Introductory Toolkit contains daily learning opportunities and engaging activities to get students talking about bullying. The toolkit provides the basics about bullying and sets the stage for student-supported initiatives.</li>						
						<%
					'<li><strong>Book Club</strong> &ndash; Launching Summer 2014 - Read these books with classrooms and follow up activities and discussion.</li>
					%>
					</ul></td>
			</tr>
		</table>
		<p>&nbsp;</p>



<!--#include virtual="/bullying/templates/footer.asp"-->