<!--#include virtual="/bullying/templates/header.asp"-->

<%
Function GenerateCode(fWhichCode)

	Dim fDay, fTime, fSeed, fCode, fHour
	If fWhichCode = "previous" Then
		fHour = DatePart("h", DateAdd("h", -6, Now))
	Else
		fHour = DatePart("h", Now)
	End If
	fDay = DatePart("d", Now)
	
	If DatePart("h", Now) < 6 Then
		fTime = "AM1"
	ElseIf DatePart("h", Now) < 12 Then
		fTime = "AM2"
	ElseIf DatePart("h", Now) < 18 Then
		fTime = "PM1"
	Else
		fTime = "PM2"
	End If
	
	fSeed = "Spookley" & fDay & fTime
	
	fCode = 0
	For i = 1 to Len(fSeed)
		fCode = fCode + Asc(Mid(fSeed, i, 1))
	Next 
	fCode = fCode * 576
	fCode = Hex(fCode)
	GenerateCode = "df4rLFv" & fCode & "v4456zkd"
End Function

If  Request.QueryString("ts") <> GenerateCode("current") And Request.QueryString("ts") <> GenerateCode("previous")Then
	Response.Redirect("./")
End If

%>
<meta name="robots" content="noindex,nofollow" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="--- Registration Required to Access -----" />
<title>All-In - National Bullying Prevention Center</title>

<meta property="og:title" content="All-In" />
<meta property="og:url" content="http://www.pacer.org/bullying/classroom/all-in/registered-entry.asp" />
<meta property="og:image" content="http://www.pacer.org/bullying/nbpm/images/unityDay-fb.jpg" />
<meta property="og:description" content="--- Registration Required to Access -----" />
<link rel="stylesheet" type="text/css" href="/bullying/css/scrolling.css" />
<script type="text/javascript" src="/js/jquery-ui-1.11.4.custom/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css" href="/js/jquery-ui-1.11.4.custom/jquery-ui.css"/>
<script type="text/javascript" src="/js/colorbox1.5.9/jquery.colorbox-min.js"></script>
<script src="/js/LayerSlider/layerslider/jQuery/jquery-easing-1.3.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="/css/tabbed-panel-responsive.min.css" />
<script type="text/javascript" src="/js/tabbed-panel-init.js"></script>

</head>
<body class="onecol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<!--#include virtual="/bullying/templates/page-header-nav.asp"-->

<div class="breadcrumb">
   <a href="/bullying/">Home</a> / <a href="/bullying/classroom/">Classroom</a> / <a href="/bullying/classroom/elementary/">Elementary School</a> / <a href="/bullying/classroom/elementary/spookley">Spookley the Square Pumpkin</a> /
</div>


<!-- ########################## MAIN CONTENT ########################################### -->


<div class="content">

    <h1 style="text-align:center">All-In Toolkit &mdash; Registered Entry</h1>

 <div class="contentrow row-orange row-shadow">
             

             <h1 id="maincontent" style="text-align:left; padding-top:20px;">All In!</h1>
             <h3>Year-long classroom resources designed to create environments in   which every student <br>
             is included, involved, and invested in preventing   and addressing bullying</h3>
   	</div>
      <div class="tabbedPanel">
      <div id="tabs">
        <ul>
          <li><a href="#tab-overview">Overview</a></li>
          <li><a href="#tab-sep">Sep</a></li>
          <li><a href="#tab-oct">Oct</a></li>
          <li><a href="#tab-nov">Nov</a></li>
          <li><a href="#tab-dec">Dec</a></li>
          <li><a href="#tab-jan">Jan</a></li>
          <li><a href="#tab-feb">Feb</a></li>
          <li><a href="#tab-mar">Mar</a></li>
          <li><a href="#tab-apr">Apr</a></li>
        </ul>
		<div id="tab-overview">
			<h3>Welcome and thank you for registering!</h3>
	<p><em>Free, easy to implement online resources designed to inspire students to be invested in creating safe and supportive schools and communities through education, engagement, and peer interaction.</em></p>
     
     <p>Objective: To provide everything needed for an adult presenter in a classroom or community organization to deliver information on addressing and preventing bullying within the school, in online platforms, and in the community.</p>
	<p><strong>Lessons</strong></p>
     <ul>
		 <li>Each tab in the online module contains all the materials for the month.</li>
		 <li>Lessons are designed to be presented each week during the school calendar year (September through April).</li>
		 <li>They can be delivered within a 20-minute time frame or adapted to fit the time requirements.</li>
	</ul>
	<p><strong>Audience:</strong></p>
     <ul>
		 <li>Resources and activities are appropriate for grades K-12.</li>
		 <li>Some of the resources are designated for either (a) elementary school students, or (b) middle and high school students.</li>
	</ul>
	<p><strong>Structure:</strong></p>
     <ul>
		 <li>Designed to be used in a classroom or community setting</li>
		 <li>Each month focuses on a theme</li>
		 <li>Within each month, there is a weekly pattern:
			 <ul>
				 <li>Week One: PowerPoint designed to be delivered by the instructor</li>
				 <li>Week Two: Classroom interaction to supplement the instruction provided in week one</li>
				 <li>Week Three: Club sponsored activity designed to provide every student the opportunity to participate</li>
				 <li>Week Four: Video or book with a follow-up activity or discussion questions</li>
			 </ul></li></ul>
	  
	</div>  
   
		<div id="tab-sep">
		  <h2>September: Starting the Conversation</h2>
		  <h3><strong>Monthly Introduction</strong></h3>
			<p>The objective for September is to start the conversation  with your students on bullying. Within the education piece, students will learn  all about the basics of bullying – including everything from the definition of  bullying, roles students play, and what they can do to address bullying  situations at school. This will be a great foundation for the upcoming month&rsquo;s activities.  The following week of interaction will test their knowledge with a quiz and  clarify any follow up questions your students may have about the topic of  bullying. The club activity of creating welcoming messages will start the  school year off on an encouraging note, showing that students are united for  kindness, acceptance and inclusion. The month will wrap up with videos and  activities that reinforce the positive messages from the month.</p>
			
  <h3>Week 1 - Education: Bullying  101</h3>
			<p>Age relevant classroom guides to start the bullying  prevention conversation. Include group discussion questions for certain slides,  ask their students about their own experience if they are willing to share. </p>
            <ul>
              <li><a href="/bullying/classroom/all-in/ppt/bullying101-kab.pptx" target="_blank">Elementary School Students — Bullying 101:  The Club Crew&rsquo;s Guide to Bullying Prevention</a><br />
				  A visually friendly, age-appropriate 16-page colorful guide for early  learners. The guide provides helpful information to use when talking with  children about what bullying is and isn&rsquo;t, the roles of students, and tips on  what students can do to address bullying situations.</li>
              <li><a href="/bullying/classroom/all-in/ppt/bullying101-tab.pptx" target="_blank">Middle and High School Students — Bullying 101:  Guide for Middle and High School Students</a><br>
			  A  visual, age appropriate 14-page guide with easily understood information. The  guide provides the basics for talking with students about what bullying is and  isn&rsquo;t, the roles of students, and tips on what students can do to address  bullying situations.</li>
			</ul>
              <h3>Week 2 - Interaction: Test  your knowledge! </h3>
              <p>Give students the age-appropriate quiz to gage what they  know about bullying as you begin to start this year long toolkit.<strong> </strong>Ask students to complete the quiz on  their own and then go over answers as a class. Ask students why they chose  certain answers and share information from the educator guide with the  students.</p>
            <ul>
              <li class="pdficonlist"><a href="/bullying/classroom/all-in/pdf/ElementarySchoolQuiz-Sept.pdf" target="_blank">Elementary School Quiz</a></li>
              <li class="pdficonlist"><a href="/bullying/classroom/all-in/pdf/ElementarySchoolEducatorAnswerGuide-Sept.pdf" target="_blank">Elementary School Quiz – Educator&rsquo;s Guide</a></li>
              <li class="pdficonlist"><a href="/bullying/classroom/all-in/pdf/MiddleHighSchoolQuiz-Sept.pdf" target="_blank">Middle and High School Quiz</a></li>
              <li class="pdficonlist"><a href="/bullying/classroom/all-in/pdf/MiddleHighSchoolEducatorAnswerGuide-Sept.pdf" target="_blank">Middle and High School Quiz – Educator&rsquo;s Guide</a></li>
            </ul>
          <h3>Week 3 – Club Activity: Welcoming  Messages</h3>
          <p>The start of a new academic year brings many new students to  your school. To welcome these – as well as returning students – for a great and  positive year, use the schoolwide &ldquo;Welcoming Messages&rdquo; activity.</p>
            <p>Have your club set up a table during lunch hour or in the  library before school. On the table, have Post-it notes or pieces of paper, as  well as pens and markers. Ask students to write a welcoming message on the  paper to an anonymous peer at their school. You can have examples at the table  for students to reference. Encourage students to write multiple notes, so you  have enough for every student. Your club or group may need to write additional  notes to ensure you have enough.</p>
            <p>Once you have enough welcoming messages, place a note on  every student&rsquo;s locker. This is recommended to do after school one day, so  students are surprised and encouraged by their welcome note the next morning  when they come to school. </p>
          <h3>Week 4 – Book or Video</h3>
          <h4>Elementary  School </strong>– Video - <a href="http://www.pacer.org/bullying/video/player.asp?video=81" target="_blank">You are Braver,  Strong and Smarter Than You Think</a></h4>
		  <p>Have you ever felt  like the whispers, giggles, note passing, and looks were directed at you or  someone you care about? Imagine if all that attention was channeled into  positive action. The Walt Disney Company supported PACER&rsquo;s National Bullying  Prevention Center with the creation of an inspiring video titled, &ldquo;You are  Braver, Stronger and Smarter Than You Think.&rdquo;</p>          
		  <blockquote>
		    <p><strong>As a follow-up activity</strong>, have students in your class write a  positive note with encouraging messages they&rsquo;d like to hear, similar to the  message on the note passed around the class. At the end of the activity,  collect all the notes, shuffle them, and then distribute them randomly back to  students in your class. Be sure to read all the notes before passing them out  to ensure the messages are appropriate. This is a great way to bring joy and  positivity in your students&rsquo; day!</p>
	      </blockquote>
             
		  <h4>Middle  and High School - Video – <a href="https://www.youtube.com/watch?v=_an9aIryJb8" target="_blank">Silent, An Award Winning  Short Film about the Power of Kindness</a></h4>
		  <p>Lindsey Hunter is a  15-year-old freshman at Folsom High School in Folsom, CA. &ldquo;Silent&rdquo; is her first  short film. Lindsey wanted to create a silent film about a girl living in a  silent world to convey the message, &ldquo;If you are going to say something mean,  remain silent.&rdquo; Lindsey has grown up around people with disabilities, as her  father is blind. In fact, when she first showed &ldquo;Silent&rdquo; to her father, Lindsey  had to describe each scene to him. The story brought her dad to tears.</p>
             
		  <p><strong>As a follow-up  activity</strong>, use the idea below to inspire students&rsquo; creative thinking:</p>
		  <blockquote>
		    <p>Give each student  in your class a Post-it note. Ask them, &ldquo;What are your ideas / solutions as a  student to prevent bullying in your school or community?&rdquo; Give each student 3  minutes to write their ideas down on the Post-it note. Afterwards, have them  turn to a partner and discuss their ideas. Together, have them come up with the  best idea or solution for bullying prevention. Give students 5 minutes for  partner discussion. Next, have students get into groups of 6 and share the  ideas they come up with in pairs. As a group, they will then come up with their  favorite idea or solution. Give students 5 minutes for this second group  discussion.</p>
		    <p>After groups have  their best idea, have each group share their best idea with the class. Have the  class give feedback and choose what ideas they would like to implement. If the  ideas are realistic and actionable for your school, try to incorporate them  into a club activity throughout the year.</p>
	      </blockquote>
	    </div> 
           
		<div id="tab-oct">
			<h2>October: National Bullying Prevention Month<br>
		    United!  Together Against Bullying, United for Kindness, Acceptance and Inclusion</h2>
			<h3>Monthly Introduction</h3>
			<p>The  objective of this month is for students to learn more about the importance of  unity and coming together as a class (or group), a school, and a community to  prevent bullying. So often the focus is put on just one person to stand up to a  bullying situation, but real social change occurs when we stand united. During  this month&rsquo;s education piece, students will learn more about what unity means  and why it&rsquo;s important in bullying prevention. The following three weeks will  build on this important idea as students take a pledge and create a Unity Tree  to show the power of Unity. The book or video will wrap up the month on a  positive note, further encouraging students to unite to create a safe and  supportive school environment. </p>
            <p><strong>Save the Date! </strong>We encourage you to participate in <strong>Unity Day</strong>, held towards the end of  October!<strong> </strong></p>
            <p>Make it  ORANGE and make it end! What are your true colors when it comes to bullying? If  you care about safe and supportive schools and communities, make your color  ORANGE on Unity Day. That&rsquo;s the day everyone can come together — in schools,  communities, and online — and send one large ORANGE message of support, hope,  and unity to show that we are together against bullying and united for  kindness, acceptance, and inclusion. Ideas include: </p>
            <ul>
              <li>Wear  orange to show that we are together against bullying and united for kindness  and acceptance</li>
              <li>Share  stories and pictures of your celebrations using #UnityDay2017</li>
              <li>Encourage  participating in activities such as creating orange chains, unity trees, unity  parade, and much more. </li>
              <li>Display  a unity banner at your school and ask everyone to sign.</li>
            </ul>
            <p>Visit the <a href="http://www.pacer.org/bullying/nbpm/unity-day.asp" target="_blank">Unity Day</a> page for  more ideas, including how to order posters and other materials.</p>
			<h3>Week 1 - Education: What does the word &ldquo;unity&rdquo; mean and how does it apply to  bullying prevention?</h3>
          <p>During this  week&rsquo;s education piece, share the included PowerPoint with your students to  begin the discussion about the concept of unity and what it means to stand  together for kindness, acceptance and inclusion. <a href="/bullying/classroom/all-in/ppt/OctoberEducationPPT.PPTX" target="_blank">View the PowerPoint presentation, with  educator notes</a>.</p>
            <h3>Week 2 - Interaction: Take  the Pledge and plan a Unity Day celebration in your school or community </h3>
            <p>Write the pledge below on a large poster, take together as a  class, and then have your students sign. Keep the pledge up throughout the year  to remind students about the pledge they took. You can also create your own  classroom pledge around bullying prevention. Have students share words or  phrases they think represent the type of classroom they want (such as united,  inclusive, supportive, caring, or powerful) and then create your own pledge.</p>
            <h4><strong>Middle and high school students</strong>:</h4>
            <p>Make a  commitment to:</p>
            <ul>
              <li><strong>Support</strong> others who have been hurt or harmed</li>
              <li>Treat others with <strong>kindness</strong></li>
              <li>Be more <strong>accepting</strong> of people&rsquo;s differences</li>
              <li>Help <strong>include </strong>those who are left out</li>
          </ul>
          <p>Note: An  interactive pledge is also available <a href="http://staging.pacer.org/bullying/pledge/" target="_blank">online</a>.</p>
            <h4>Elementary  school students:</h4>
            <p>Take the  pledge:<br>
              As a Kid  Against Bullying, I will:<br>
              Speak up  when I see bullying<br>
              Reach out to  others who are bullied<br>
              And be a  friend whenever I see bullying</p>
            <p>Note: An  interactive pledge is also available <a href="https://pacerkidsagainstbullying.org/join-the-cause/take-the-pledge/" target="_blank">online</a>.</p>
            <h3>Week 3 – Club Activity: Unity  Tree</h3>
            <p>The Unity Tree is a powerful symbol reminding everyone that  bullying can be prevented when we all come together – united for kindness,  acceptance and inclusion.</p>
            <p>Creating a Unity Tree is an interactive and hands-on  activity, a shared experience in which anyone can participate and everyone can  watch the tree grow. Each person contributes their own unique experiences,  creative ideas, and strategies by writing positive messages on leaves that are  attached to the tree. As the number of leaves increases, it creates a visual  reminder, demonstrating that when we are united we can create social change.</p>
            <ol start="1" type="1">
              <li>On the classroom       wall or bulletin board, create the trunk of a tree, along with branches,       with construction paper or materials of your own choosing.</li>
              <li>Next, cut out       leaf shaped pieces of orange paper; make them large enough for students to       write a message. Below are three options for types of messages, or create       your own:
              <ul>
                <li>If you planted a seed, what would you tell your  seed about bullying?</li>
                <li>What can you do change/impact your school&rsquo;s  culture about bullying?</li>
                <li>How can you support a friend/peer who is being  bullied?</li>
			    </ul></li>
              <li>Have each       student write down their response on a leaf.</li>
              <li>Attach each of       the leaves to the tree.</li>
            </ol>
          <p>Find the full Unity Tree activity <a href="http://www.pacer.org/bullying/classroom/schoolwide/unity-tree.asp" target="_blank">here</a>. </p>
            <h3><strong>Week 4 – Book or Video</strong></h3>
             <h4>Elementary School</strong> - Book - <a href="http://www.pacer.org/bullying/classroom/elementary/spookley/" target="_blank">The Legend of Spookley and the Square Pumpkin</a>, by Joe Troiano and       illustrated by Susan Banta</h4>
          <p>Spookley the Square Pumpkin is a square pumpkin who lives  in a round pumpkin patch world.&nbsp;<em>The Legend of Spookley the Square  Pumpkin</em>, available as both a book and movie, delivers a message of  tolerance and kindness in a fun, accessible format that is easily grasped by  young students. By making these advanced concepts easily understood by early  learners, teachers can help stop bullying before it begins.</p>
            <blockquote>
              <p><strong>As a follow-up activity</strong>, use the Spookley <a href="http://www.pacer.org/bullying/classroom/elementary/spookley/index.asp" target="_blank">online  toolkit</a>, which includes downloadable lesson plans, Spookley play, video  reading of the story, and more.<strong></strong></p>
            </blockquote>
              <h4>Middle and High School</strong> - Video – <a href="http://www.pacer.org/bullying/video/player.asp?video=58" target="_blank">You&rsquo;re Not       Alone</a></h4>
          <p>Every year, 13  million kids in America are bullied. This video features facts and information  about bullying, as well as how PACER's National Bullying Prevention Center  helps.</p>
            <blockquote>
              <p><strong>As a follow up activity</strong>, have students write down words and phrases  that they think are important for creating a united school community around  bullying prevention. Then have students create an image, or &ldquo;word bubble,&rdquo; out  of these phrases. This can be done online with a word bubble generator website  or by hand drawing. Hang the word bubbles in the classroom as a reminder for  students.</p>
            </blockquote>
            <div>
              <div> </div>
          </div>
        </div>    
		<div id="tab-nov">
			<h2>November: Reality about Bullying</h2>
			<h3>Monthly Introduction</h3>
			<p>During this month, students will dive further into the realities of  bullying. The objective of this month is for students to learn more about  bullying, as well as get answers to frequently asked questions and common myths  about bullying. Within the educational component, content will further break  down some of the specifics about bullying, such as the difference between  bullying and conflict, and if friends can bully each other. These go beyond the  basics and will give students further information about the topic of bullying.  This theme continues through the interaction piece as students take the myth or  truth quiz to learn more about common misperceptions about bullying and the  truth behind them. During the club activity, students will see the impact that  kindness has through the All In Cards. The month will wrap up with great videos  that share about the impact bullying has and how we can all make a difference. </p>
			<h3>Week 1 - Education: Did  You Know? </h3>
			<p>Now that students know  more about the basics of bullying, this week&rsquo;s education piece will begin to  break down some of the more complex issues surrounding bullying.  This will expand student&rsquo;s knowledge about  the issues of bullying, as well as answer frequently asked questions, such as  &ldquo;Do friends every bully friends?&rdquo; and &ldquo;Does bullying happen more often than  adults think?&rdquo; <a href="/bullying/classroom/all-in/ppt/November_DidYouKnow.pptx" target="_blank">View the PowerPoint presentation, with educator  notes</a>. </p>
			<h3>Week 2 - Interaction: Myth  or Truth? </h3>
			<p>For many  years, bullying was considered a normal part of childhood and that those who  were bullied just needed to toughen up and deal with it. Together, let&rsquo;s find  out the reality behind some of these common misperceptions. Read to students  the common views about bullying in the handouts below and ask them if they  think it&rsquo;s a myth or truth. Then share the facts behind the statement. At the  end of the discussion, ask the students if there are any other myths about  bullying that they&rsquo;ve heard before. </p>
            <ul>
              <li class="pdficonlist"><a href="/bullying/classroom/all-in/pdf/ElementarySchoolQuiz-Nov.pdf" target="_blank">Elementary School Quiz</a></li>
              <li class="pdficonlist"><a href="/bullying/classroom/all-in/pdf/ElementarySchoolEducatorAnswerGuide-Nov.pdf" target="_blank">Elementary School Educator Answer Guide</a></li>
              <li class="pdficonlist"><a href="/bullying/classroom/all-in/pdf/MiddleHighSchoolQuiz-Nov.pdf" target="_blank">Middle and High School Quiz</a></li>
              <li class="pdficonlist"><a href="/bullying/classroom/all-in/pdf/MiddleHighSchoolEducatorAnswerGuide-Nov.pdf" target="_blank">Middle and High School Educator Answer Guide</a></li>
          </ul>
            <h3>Week  3 – Group Activity: All In Cards </h3>
            <p><strong>Goal:</strong> Service-oriented  activity in which all students can individually participate and see group  results of their efforts.</p>
            <p><strong>Overview</strong>: Club  members, or other students and adults, hold a table in which all students are  invited to participate by selecting a card with instructions on doing something  for others, such as holding the door, saying hi to someone new, or giving a  compliment. Once students have completed their kind act, they record how the  act made them feel, and turn it in for an incentive. The description or outcome  (no names) of how the act made them feel is then recorded on a mural or graph  for all to see.</p>
            <p><strong><em>Ideas  for kind acts: </em></strong></p>
            <ul>
              <li>Download and print copies of the <a href="/bullying/classroom/all-in/pdf/All_In_Cards-concepts.pdf" target="_blank">All  In Cards</a> on cardstock.</li>
              <li><a href="/bullying/classroom/all-in/pdf/All_In_Cards-blank.pdf" target="_blank">Create  your own</a>! It&rsquo;s  helpful to ask the students for their ideas.</li>
            </ul>
          <p><strong><em>Recording  the outcome:</em></strong></p>
            <ul type="disc">
              <li>Option One: Invite students to write       something on the card about how their actions made them feel or how they       think it made the other person feel. Turn the cards in to a designated       person who then records the responses on a public banner or mural.</li>
              <li>Option Two: Download and print a copy of the       <a href="/bullying/classroom/all-in/pdf/All_ln_Graph-November.pdf" target="_blank">All       In graph</a> for each       classroom. Invite students to color in the box(es), using different       colored pens/markers/crayons, which correspond with their responses.<br>
              Note: Page one is  for recording how it made the student feel. Page two is for how they think it  made the other person feel.</li>
              <li>Option Three: Be creative! Think of other       ways to share the outcome of students participating.</li>
          </ul>
            <p><strong><em>Incentives:</em></strong><br>
              Provide  each student who agrees to do an action with an incentive, such as a cookie  coupon for the lunchroom, pencil, or bookmarks (<a href="http://www.pacer.org/bullying/resources/bookmarks.asp" target="_blank">order  online</a>).</p>
            <h3>Week  4 – Book or Video</h3>
            <h4><strong>Elementary School</strong> <strong></strong></h4>
            <p><strong>Option One –  Book</strong> – Frenemy Jane: The Sometimes Friend</p>
            <p>One topic covered  within this month&rsquo;s PowerPoint is bullying behavior that may happen from a  friend. To continue this conversation, read the book <em>Frenemy Jane: The Sometimes Friend</em> as a class. This book tackles  the issue of a &lsquo;sometimes friend,&rsquo; nice one day, not so nice the next! <a href="/bullying/classroom/all-in/pdf/FrenemyJane.PDF" target="_blank">View a  free PDF version</a> of the book to use with your students.</p>
            <p><strong>As a follow-up activity, </strong>use the classroom discussion questions  listed at the back of the book to further discuss the question, &ldquo;Can a friend  be bullying me?&rdquo;</p>
            <p><strong>Option Two – Video</strong> - Kids Against Bullying Video Series<strong></strong></p>
            <p>To further the  conversation with your students about the reality of bullying, watch this video  series, featuring the following topics:</p>
            <ul>
              <ul>
                <li><a href="https://www.youtube.com/watch?v=-BVziD6mpkg" target="_blank">What Bullying is</a></li>
                <li><a href="https://www.youtube.com/watch?v=SWox7KcpW8Y" target="_blank">How Bullying Feels</a></li>
                <li><a href="https://www.youtube.com/watch?v=lY0xQh8VvXo" target="_blank">What You Can Do</a></li>
              </ul>
            </ul>
            <p><strong>As a follow-up activity</strong>, complete the Wrinkled Heart Activity with  your students! This provides students with a powerful visual that shows the  effects hurtful words or behaviors have on someone. The activity is simple and  a great reminder to be kind to others.<strong></strong></p>
            <ul>
              <li>Cut out a paper heart for each student, or a  large heart to use as a class.</li>
              <li>Ask the class for examples of things that people  say or do that hurts their feelings. For each example, have students wrinkle or  fold their heart. If you are doing this activity with one group heart, pass it  around in a circle and have each student create a fold.</li>
              <li>Then, have students share positive experiences  or ways that others have made them feel good. For each response or example,  unfold the heart.</li>
            </ul>
            <p>Learn more about  the activity and find additional discussion questions for The Wrinkled Heart <a href="http://www.pacer.org/bullying/classroom/elementary/activities/wrinkled-heart.asp">here</a>.</p>
            <h4>Middle and High School - Video       -  <a href="https://www.youtube.com/watch?v=Q5D2kaunXEg" target="_blank">Bullying is Real at       Leon High School – Bullying Awareness video</a><strong></strong></h4>
            <p>Bullying has been  seen in the news and in online videos in schools across the nation, but a lot  of times we don't realize that it's also happening right at our school. It's  important for students who are victims or witnesses of bullying to know where  they can get help. Students from Leon High School share how bullying can make a  person feel and give advice to how to prevent bullying.</p>
            <p><strong>As a follow-up activity,</strong> have students get into small groups of 3-4  people and create a poster with their top tips to prevent bullying.</p>
            
        </div>    
		
		<div id="tab-dec">
			<h2>December: Cyberbullying</h2>
			<h3>Monthly Introduction</h3>
          <p>This month,  students will be learning about all things cyberbullying. Just as the use of  technology itself has evolved, so have the methods used to bully. Bullying,  once restricted to the school or neighborhood, has moved into the online world.  Bullying through electronic means is referred to as &ldquo;cyberbullying.&rdquo; Within the  education piece, students will learn more about cyberbullying, action steps to  take when they see or experience cyberbullying, and tips to being safe online.  Following this PowerPoint, students will learn tangible action steps through  the interaction piece, where they will research cyberbullying policies for  sites such as social media, gaming websites, and more. During the club  activity, students will to get to know their peers and find new ways to engage  through the &ldquo;Sit With Us&rdquo; Activity. Finally, the month will wrap up with a book  and video that continue to celebrate acceptance and inclusion – both online and  in-person. </p>
            <h3>Week 1- Education: Digital History</h3>
            <p>Using  technology is the newest way to bully. Cyberbullying is when someone uses  technology to send mean, threatening, or embarrassing messages to or about  another person. It could be through video games, text, email, messages, or in a  post online. Present the included cyberbullying PowerPoint to your students to  educate them about cyberbullying, creating a positive digital history, and more  tips to being safe online. <a href="/bullying/classroom/all-in/ppt/December_Cyberbullying.PPT" target="_blank">View the PowerPoint presentation, with educator  notes</a>. </p>
            <h3>Week 2 - Interaction: Online Safety</h3>
            <p>It&rsquo;s  important for students to know just as there are action steps they can take to  stay safe at school, there are similar steps they can take to be safe online.  As an interaction piece, break students up into small groups for this online  safety activity. </p>
            <ul>
              <li>Give each group a different social media platform  or online interaction site and have them research the policies and rules on  safety and cyberbullying within that site. </li>
              <li>Along with their assigned platform, provide the  group with a copy of the <a href="/bullying/classroom/all-in/pdf/SocialMediaPrivacyAndReportingChart.pdf" target="_blank">&ldquo;Social Media Privacy and Reporting Assessment&rdquo;</a> to  help guide their research.</li>
              <li>After groups research their sites, have groups  create a poster sharing a summary of these policies, as well as steps their  peers can take if they experience cyberbullying. Share posters with the class  so all students are aware of their online rights.</li>
            </ul>
            <p>Social media  sites and other websites where students interact, such as online games (add  different sites that are popular with your students):</p>
          <ul type="disc">
              <li>Afterschool: <a href="https://afterschoolapp.com/safety/" target="_blank">https://afterschoolapp.com/safety/</a></li>
              <li>Instagram: <a href="https://help.instagram.com/502946753134317" target="_blank">https://help.instagram.com/502946753134317</a>  </li>
              <li>Facebook: <a href="https://www.facebook.com/safety/bullying" target="_blank">https://www.facebook.com/safety/bullying</a></li>
              <li>Snapchat: <a href="https://www.snapchat.com/safety" target="_blank">https://www.snapchat.com/safety</a></li>
              <li>Tumblr: <a href="https://www.tumblr.com/policy/en/community" target="_blank">https://www.tumblr.com/policy/en/community</a></li>
              <li>Twitter: <a href="https://about.twitter.com/safety/teens" target="_blank">https://about.twitter.com/safety/teens</a></li>
              <li>WhatsApp: <a href="https://www.whatsapp.com/security" target="_blank">https://www.whatsapp.com/security</a></li>
              <li>YouTube: <a href="https://www.youtube.com/yt/policyandsafety/safety.html" target="_blank">https://www.youtube.com/yt/policyandsafety/safety.html</a></li>
              <li>Club Penguin: <a href="https://www.clubpenguinisland.com/safety/" target="_blank">https://www.clubpenguinisland.com/safety/</a></li>
              <li>Neopets: <a href="http://www.neopets.com/safetytips.phtml" target="_blank">http://www.neopets.com/safetytips.phtml</a></li>
            </ul>
            <h3>Week  3 – Club Activity: Sit  With Us</h3>
            <p>Goals: Meet new people;  learn communication skills; no one eats alone.</p>
          <p>This activity will mix  up the normal lunch groups and introduce students to new peers in a fun way.  This can also be done in settings outside the cafeteria, such as a classroom  during a free period. Before this activity, set up tables for small groups,  with each table having a colored sign. On each table, have a few supplies that  students can build structures with, such as straws, popsicle sticks, pipe  cleaners, tape, or whatever you have easily available. As students enter the  cafeteria, give them a piece of colored paper. Groups of five to seven students  typically work best for this activity. Students will go to the table with the  coordinating color on it and introduce themselves to others in their groups. Once  all groups are settled into their tables, give them the challenge to create a  winter-themed structure with all the materials at their table. Give students  about 10 to 15 minutes to build their sculpture. If there&rsquo;s time at the end of  activities, have groups circle around the room to view other groups&rsquo;  sculptures. </p>
            <h3><strong>Week  4 – Book or Video</strong></h3>
            <h4>Elementary School - Book – Team       Rudolph and the Reindeer Games <strong></strong></h4>
            <p>We all recall the most famous reindeer of  all. But how much do you know about the story of the Reindeer Games and the  other eight reindeer? Well, now you can know the whole story, meet the rest of  Santa's trusted reindeer, and learn what it means to be on T.E.A.M. Rudolph!<strong></strong></p>
            <p><strong>As a  follow-up activity</strong>, register for PACER&rsquo;s free toolkit on T.E.A.M. Rudolph.  This includes a video picture book of T.E.A.M. Rudolph and the Reindeer Games  you can share with your students, learning activities, discussion guidelines,  music, and more to bring the lessons to life. Register and learn more <a href="http://www.pacer.org/bullying/classroom/elementary/team-rudolph/" target="_blank">here</a>.</p>
            <h4>Middle and High School - Book - <a href="http://aijamayrock.com/thesurvivalguidetobullying/" target="_blank">The Survival       Guide to Bullying</a>, Written by Aija Mayrock<strong></strong></h4>
            <p><em>The Survival Guide to Bullying</em> covers everything from cyberbullying,  how to deal with fear, to how to create the life you dream of having. From  inspiring &quot;roems&quot; (rap poems), survival tips, personal stories, and  quick quizzes, this book will light the way to a brighter future. If you are  unable to access the book, there are also videos of Aija performing &ldquo;roems&rdquo;  about bullying on her <a href="https://www.youtube.com/user/amayrock/videos" target="_blank">YouTube  channel</a>.<strong></strong></p>
            <p><strong>As a follow-up activity</strong>, have students create their own &ldquo;roem&rdquo; or  poem, individually or in groups, about cyberbullying or about standing  together. To celebrate the end of the semester, have a poetry reading where  students can share written pieces if they feel comfortable and celebrate the  hard work they have done this semester to make their school a kinder, more  accepting place.  </p>
        </div>    

			<div id="tab-jan">
			<h2>January: Being There &ndash; Show Your Support!</h2>
			<h3>Monthly Introduction</h3>
            <p>The  objective for this month is for students to learn more about how to support a  peer that may be experiencing bullying. So often, students see a bullying  situation and want to help, but don&rsquo;t know what to do. During the education  piece this month, students will learn steps they can take to support someone  who is being bullied, as well as steps they can take if they experience  bullying themselves. The following three weeks will build on positive behaviors  that can prevent bullying with the &ldquo;above the line / below the line&rdquo; activity  and Project Connect, which shows how much our actions matter. The book or video  this month will wrap up the theme of being supportive in an encouraging manner.  Kindness, support, and hope are things everyone can give. </p>
            <h3>Week 1 - Education: Ways to be there as a kid or teen </h3>
            <p>Think about  what it means to feel all alone, to believe that no one cares, or to think that  there is no way to change what is happening when you are being bullied. That is  a lonely place to be. Now imagine how all that can be different. Imagine during  those times when you feel alone that someone is there for you. Consider how  simple it is to tell someone you care. Your support is meaningful! This week&rsquo;s  educational piece will teach students about how they can support a peer that is  experiencing bullying, as well as action steps they can take if they experience  bullying. <a href="/bullying/classroom/all-in/ppt/JanuaryEducationPPT.PPTX" target="_blank">View  the PowerPoint presentation, with educator notes</a>.</p>
            <h3>Week 2 - Interaction: Above the Line / Below the Line </h3>
            <p><strong>GOAL</strong>: To help students understand the  concept of above the line versus below the line behaviors, and to make a  commitment to promoting above the line behaviors at their school.</p>
            <ol start="1" type="1">
              <img class="fltrt mobileCentered" src="/bullying/classroom/all-in/images/January-Chart.jpg" alt=""/>
              <li>While one presenter is talking, have another draw a line across the paper. Write &ldquo;above the line&rdquo; on top of the line and &ldquo;below the line&rdquo; under the line, with arrows pointing up and down, respectively (i.e. copy the accompanying graphic).</li>
              <li>Ask the group to brainstorm ideas of what behaviors might be above or below the line in a bullying situation. Answers might include:
              <ol type="a">
                <li>Above the line
            <ul>
              <li>Saying  something nice to the target</li>
              <li>Asking  the target to sit with you at lunch</li>
              <li>Telling  the person bullying that what they&rsquo;re doing is not OK</li>
				  </ul></li>
                <li>Below the line
            <ul>
              <li>Joining  in the bullying</li>
              <li> Laughing at the target</li>
              <li>Saying  something mean to the target</li>
				  </ul></li></ol>
              <li>Write the group&rsquo;s answers on the poster in the appropriate locations. </li>
              <li>Ask the group to brainstorm answers to these questions:
              <ol type="a">
                <li>What happens at our school when students engage in above the line behaviors?</li>
                <li>What happens when they engage in below the line behaviors?</li>
			    </ol></li>
              <li>Ask students to commit to having more above the line behaviors and fewer below the line behaviors in their classroom.</li>
              <li>Find a place to display the poster as a reminder to students of their commitment.</li>
            </ol>
            <h3>Week 3 – Club Activity: Project Connect</h3>
            <p>Project  Connect joins students, schools, and communities to make a powerful statement  about uniting against bullying. The process is simple. </p>
            <ol start="1" type="1">
              <li>Create the strips (links)       using sheets of 8 ½ x 11 ORANGE construction paper. Cut into strips of 1       ½&rdquo; to 2&rdquo; wide and 11&rdquo; long. </li>
              <li>Students write what they do to       help make their school a safer place for their peers or a quality that       makes them unique and proud of who they are as individuals.</li>
              <li>The strips are then stapled or       glued together, resulting in one long, connected chain that visually       represents the power of uniting for a common cause. </li>
            </ol>
            <p>The message  is this: While one person can speak out against bullying, our message is much  stronger when we come together to make a difference. View Project Connect  online <a href="http://www.pacer.org/bullying/classroom/schoolwide/project-connect.asp">here.</a></p>
            <h3>Week 4 – Book or Video</h3>
            <h4>Elementary School – Book – Great Things To Be<strong></strong></h4>
            <p><em>Great Things To Be</em> features upbeat rhymes and colorful, full-page illustrations  that teach children positive characteristic traits that encourage and build up  their self-esteem and improve their approach to life. Let&rsquo;s help children  choose kindness over bullying and confidence over self-doubt as they embrace  these easy to understand messages. <a href="/bullying/classroom/all-in/pdf/GreatThingsToBe-forTeachers.pdf" target="_blank">View a free PDF version of the book</a> to use with your students. </p>
            <p><strong>As a follow-up activity,</strong> download the <a href="/bullying/classroom/all-in/pdf/DiscussionQuestions-GreatThingsToBe.pdf" target="_blank">teacher guide  to <em>Great Things To Be</em></a><em> </em>for  a classroom discussion about themes within the book.</p>
            <h4>All ages - Video – <a href="https://www.youtube.com/watch?v=75gsCJaXTnQ">Who Will Stop the       Bullying?</a><strong></strong></h4>
            <p>This video shows a young girl getting  bullied at a bus stop. Will the bystanders remain silent or will they take a  stand? This video is a great conversation starter about the importance of  supporting those experiencing bullying.</p>
            <p><strong>As  a follow-up activity</strong>, use an interactive discussion model (Pair &amp;  Share) to talk about the video. Have students walk around the room while music  plays. When the music stops, have each student find a partner closest to them  and high five. Now that they have a partner ask the students question #1 (see below).  Give student 3 minutes to discuss (depending on the question; gauge the  room).  Once they&rsquo;ve had a chance to  discuss, play the music again as students walk around. When the music stops,  they will find a new partner and facilitator will share question #2. Continue  this until students have discussed all four questions.  </p>
            <ul>
              <li>How do you think  being bullied feels?</li>
              <li>Do you think the  bystander role is important in a bullying situation? Why or why not?</li>
              <li>What ideas do you  have about how to support someone being bullied?</li>
              <li>What type of impact  do you think supporting someone experiencing bullying can make?</li>
            </ul>
            </div>        
		<div id="tab-feb">
			<h2>February</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia odio illo amet, commodi maiores quas ab impedit deleniti temporibus ratione expedita aperiam cumque quos sint nesciunt dicta, dolorum aut, adipisci?</p>
		</div>
		<div id="tab-mar">
			<h2>March: Inclusion</h2>
			<h3>Monthly Overview</h3>
			<p>The  objective of this month is for students to learn about inclusion and why it  matters in creating safe and supportive schools. When we are inclusive,  everyone feels respected and a sense of belonging. During this month&rsquo;s  education piece, students will learn what inclusion means, how it relates to  bullying prevention, and tangible action steps they can take to be inclusive in  their school and community. The following three weeks with continue to build on  the importance of inclusiveness. The interaction piece and club activity gives  the opportunity to reflect on similarities they may have with others – whether  it&rsquo;s peers or other students across the country. Finally, the month wraps up  with videos focused on kindness and supporting peers. </p>
            <h3>Save the Date! Participate  in &ldquo;Spread the Word to End the Word&rdquo;</h3>
            <p>Pledge to stop saying  the R-word and hold an event at your school encouraging others to pledge as  well. Your pledge shows that you are committed to use language that respects  the dignity of people with intellectual disabilities and to create more  accepting attitudes and communities for all people.</p>
            <p>The campaign is  generally held in March each year. The &ldquo;R-word&rdquo; campaign is supported by  Special Olympics, Best Buddies, and more than 200 other organizations from  around the world.</p>
          <ol start="1" type="1">
              <li>Visit the campaign <a href="http://www.r-word.org/" target="_blank">website</a>.</li>
              <li>Access the online <a href="http://www.r-word.org/r-word-resources.aspx" target="_blank">resources</a>.</li>
            </ol>
          <h3>Week  1 - Education: All  about Inclusion</h3>
            <p>This week&rsquo;s education  piece focuses on inclusion. Share the presentation with your students to start  the conversation about what inclusion means and why it&rsquo;s important in bullying  prevention. Your students will learn different ways to be inclusive at school  and in the community, and will then brainstorm their own ideas.  <a href="/bullying/classroom/all-in/ppt/March_AllAboutInclusion.pptx" target="_blank">View the PowerPoint presentation, with educator  notes</a>. </p>
            <h3>Week  2 - Interaction:  </h3>
            <h4><strong>Elementary  School Students: More Alike Than Different</strong></h4>
            <p>The goal of this activity is to creatively engage  youth through an interactive, thoughtful activity, and reflect that we are all  much more alike than we are different. For this activity, you will need:</p>
            <ul>
              <li>Two  jars of brightly colored candy, such as M&amp;M&rsquo;s or Skittles
              <ul>
                <li>One  of all the same color</li>
                <li>Second  with many different colors</li>
			    </ul></li>
          </ul>
          <p>Instructions</p>
            <ol>
              <li>Presenter  Question: &ldquo;What is the best part about this brightly colored candy?&rdquo;<br>
                Presenter  or audience answer: &ldquo;How great it tastes!&rdquo;<br>
              Presenter  statement: &ldquo;The color of the candy doesn&rsquo;t really matter, does it?&rdquo;</li>
              <li>Presenter  will ask or select a volunteer. Instruct them to close their eyes and taste a  candy. Then ask the volunteer to guess what color it is. When the volunteer  guesses, the presenter will say, &ldquo;You couldn&rsquo;t really tell, right?&rdquo;</li>
              <li>Invite  all students to look around. Share that people are like the brightly colored  candy. It doesn&rsquo;t matter what we look like on the outside, it&rsquo;s what&rsquo;s on the  inside that counts.</li>
              <li>Presenter  then holds up the jar of the one color of candy, say, &ldquo;We all look a little  different on the outside. We are different heights, and have different colors  of eyes and hair. But like this candy, even though we look different on the  outside, we are the same on the inside. So why should anyone be treated  differently for how they look?&rdquo;</li>
              <li>Share,  &ldquo;Sometimes students are left out of games or activities or even made fun of  because their differences.&rdquo; Then ask the students for their ideas on how to be  a good friend or how to make sure everyone feels included.</li>
          </ol>
            <h3>Middle  and High School Students –  &ldquo;I Was Bullied Because...&rdquo;</h3>
            <ol start="1" type="1">
              <li>Hand out copies of the&nbsp;<a href="/bullying/classroom/all-in/pdf/PeopleArticle.PDF" target="_blank">PEOPLE Magazine article</a>&nbsp;or display on a monitor</li>
              <li>Pass out the&nbsp;<a href="/bullying/classroom/all-in/pdf/PeopleMagazineArticleHandout.pdf" target="_blank">&ldquo;PEOPLE       Magazine Article &ldquo;I Was Bullied Because . . .&rdquo;</a>&nbsp;worksheet</li>
              <li>Ask students to complete and then discuss       responses as a class or in small groups.</li>
          </ol>
            <p>Along with the discussion questions on the worksheet,  you can also ask the class the following questions:</p>
          <ul>
              <li>Ask  the class to name people – celebrities, fictional characters, etc. – whom they  would call &ldquo;individuals.&rdquo; Discuss why those people may have been excluded.</li>
              <li>Ask  the class: &ldquo;Do you think there is a lot of pressure to fit in? Discuss why or  why not.&rdquo;</li>
              <li>You  can also discuss why people want to fit in, what&rsquo;s so great about fitting in,  and why it&rsquo;s hard when you feel like you don&rsquo;t.</li>
            </ul>
          <h3>Week  3 – Club Activity: Sit  With Us</h3>
          <p><strong>Goals:</strong> Meet new people; learn communication skills; no one eats alone.</p>
          <p>This activity will mix up the normal lunch groups and  introduce students to new peers in a fun way. This can also be done in settings  outside the cafeteria, such as in a classroom during a free period. Before this  activity, set up tables for small groups, with each table having a colored sign  on it. As students enter the cafeteria, give them a piece of colored paper.  Groups of 5-7 students typically works best for this activity. Students will go  to the table with the coordinating color on it and introduce themselves to  others in their groups. Once all groups have settled into their tables, give  them the challenge to create an original handshake. Share that everyone in their  group needs to be involved, and the handshake can be as simple or complex as  they want. Give students about 10 to 15 minutes to create their group  handshake. If you have time at the end of the activity, have groups share their  original handshake with other groups.</p>
            <h3>Week  4 – Book or Video</h3>
            <h4>Elementary School – Video – <a href="http://www.pacer.org/bullying/stories/?id=563" target="_blank">A Wave of Kindness:       Ride the Wave!</a><strong></strong></h4>
            <p>Falmouth Public School District created  a video titled &ldquo;A Wave of Kindness&rdquo; to show the ripple effect that kindness can  have in schools and communities. This video shows that kindness, support, and  hope are things everyone can give that make a POSITIVE impact on students  experiencing bullying.</p>
            <blockquote>
              <p><strong>As a follow-up activity</strong>, have your students complete the kindness  poem. The <a href="http://www.pacer.org/bullying/resources/students-with-disabilities/pdf/kindness.pdf" target="_blank">&ldquo;Kindness  Poem&rdquo;</a> is an activity in which students can write a word or line of poetry  that starts with each letter in the word KINDNESS. It can be about helping  others, making a difference, or being a good classmate. Kindness is something  that everyone can share—and it makes a difference! Download the <a href="http://www.pacer.org/bullying/resources/students-with-disabilities/pdf/kindness.pdf" target="_blank">template</a>.</p>
            </blockquote>
            <h4>Middle and High School – Video – Student-to-Student Advice on       Bullying<u></u></h4>
            <p>In this 8-minute  video, high school students give advice to middle school students about  bullying. They share their thoughts about the types of bullying that happens,  as well as advice on what to do if you experience or witness bullying. This  video is a great way for students to reflect on their own experience around  bullying and what advice they might give to younger students.</p>
            <blockquote>
              <p><strong>As a follow-up activity, </strong>have your  students craft their own advice that they would give to younger students about  bullying. For high school students, this will be directed for middle school  students. For middle school students, this can be directed at elementary school  students or new incoming middle school students. Students can answer similar  questions as those on the video and write their answers on notecards, posters,  or in a letter format. As an educator, if you have a connection with a local  middle school or elementary school, consider sharing these advice notes with  the younger students for upcoming school year. <u> </u></p>
            </blockquote>
            <div>
              <div> </div>
              <div> </div>
              <div> </div>
              <div> </div>
          </div>
        </div>
		<div id="tab-apr">
			<h2>April</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia odio illo amet, commodi maiores quas ab impedit deleniti temporibus ratione expedita aperiam cumque quos sint nesciunt dicta, dolorum aut, adipisci?</p>
		</div>
     </div>
     </div>																					 </div>
      
      
 <script type="text/javascript" src="/js/tabbed-panel.min.js"></script>

  	

<!--#include virtual="/bullying/templates/footer.asp"-->