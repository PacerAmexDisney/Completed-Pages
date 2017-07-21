<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
Dim RegistrationOpen 
	RegistrationOpen = false
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Minnesota Safe &amp; Supportive Schools Conference: Addressing Bullying in Schools - National Bullying Prevention Center</title>
<meta name="title" content="Minnesota Safe & Supportive Schools Conference: Addressing Bullying in Schools - National Bullying Prevention Center" />
<meta name="description" content="Friday, January 22, 2016 - This one-day conference will convene Minnesota educators, school support staff, parents, student leaders and education stakeholders to increase knowledge about bullying prevention and how to create a positive school climate." />


<!-- for Facebook -->  
<meta property="og:title" content="Minnesota Safe & Supportive Schools Conference: Addressing Bullying in Schools" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/bullying/getinvolved/images/mde-logo-fb.jpg" />
<meta property="og:url" content="http://www.pacer.org/bullying/getinvolved/mn-safe-schools-event.asp" />
<meta property="og:description" content="Friday, January 22, 2016 - This one-day conference will convene Minnesota educators, school support staff, parents, student leaders and education stakeholders to increase knowledge about bullying prevention and how to create a positive school climate." />

<link rel="image_src" href="http://www.pacer.org/bullying/images/nbpc-logo.png" />
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="/js/LayerSlider/layerslider/css/layerslider.css" type="text/css" />
<link href="/js/colorbox/colorbox.css" rel="stylesheet" type="text/css" />

<!--#include virtual="/bullying/dynamic-head-items.html"-->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
 document.write(unescape("%3Cscript src='/js/jquery-1.7.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>

<script type="text/javascript" src="/js/pacer-expanding-box.js"></script>
<link rel="stylesheet" type="text/css" href="/js/pacer-expanding-box.css"/>

<script src="/js/colorbox/jquery.colorbox-min.js" type="text/javascript"></script>
<script src="/js/LayerSlider/layerslider/jQuery/jquery-easing-1.3.js" type="text/javascript"></script>
<script src="/js/LayerSlider/layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$(".awardBio").colorbox({inline:true, width:"60%", opacity:.5, rel:'group1'});
		$(".info").colorbox({inline:true, width:"60%", opacity:.5, rel:'group2'});
	});
</script>

<style type="text/css">
h1, h2, h3, h4, h5, h6 {
  color: #000;
}
.indentextratext {
	padding-left: 20px;
	font-style: italic;
	font-size: .9em;
}

.posterSidebar {
	margin-right: 5px;
	margin-left: 15px;
	background: #CCC;
	border-left: 1px solid #333;
	border-right: 1px solid #333;
	border-top: 1px solid #333;
	border-bottom: 1px solid #333;
	padding: 15px 5px;
}

.loading ls-layer {
	display: none;
	padding: 5px;
}

#layerslider {
	width: 1014px;
	height: 300px;
	border: 1px solid #ccc;
	margin: 0 0 35px 5px;
}

.content {
	width: auto;
	position: relative;
	z-index: 0;
	float: left;
	background: #fff url('/bullying/images/window_gradient_small.jpg') repeat-x bottom;
	min-height: 670px;
}

.copy {
	margin-left: 35px;
	margin-right: 35px;
}

#gallery { text-align: center; }

#gallery img {
	margin: 0px 4px 4px;
	box-shadow: 2px 2px 3px #333;
}

.nominations { list-style-type: decimal; }

.nomination_button { margin-bottom: 30px; }

.nomination_button a {
	height: 42px;
	width: 285px;
	padding: 5px 15px;
	text-align: center;
	background: #F5592E;
	border: 1px solid #D6360A;
	border-radius: 5px;
	font-size: 1.7em;
	letter-spacing: .03em;
	color: #fff;
	text-shadow: 1px 1px 1px #000;
	text-decoration: none;

}
.nomination_button a:hover {
	background: #F89479;
}
.orange_box {
	height: 42px;
	width: 515px;
	padding: 10px 15px 0px;
	text-align: center;
	background: #F5592E;
	border: 1px solid #D6360A;
	border-radius: 5px;
	font-size: 1.4em;
	letter-spacing: .03em;
	color: #fff;
	text-shadow: 1px 1px 1px #000;
	text-decoration: none;	
}

.orange_box a {
	color:#fff;	
}

.orange_box a:hover {
	color:#ccc;	
}

#thanks-list {
	list-style-type: none;
 list-style-position: inside;
 margin-left: -10px;
 padding: 0; 
}

#thanks-list .list-space {
	margin-bottom:2em;	
}

.bioBox {
	text-align:center;
	width:105px;
	float:left;
	padding:5px;
	margin:10px;
	background:#F5592E;
	border-radius:8px;
	box-shadow: 5px 5px 10px -3px rgba(128,128,128,1);
}
.bioBox img{
	border:solid 2px #fff;
}
.bioBox a{
	color:#fff;	
}
.bioBox a:hover{
	color:#000;
	color:rgba(255,255,255,.5);
}
.bioInfo img{
	float:left; 
	padding:5px 10px;
}
.bioInfo h3{
	background-color: #f5592e;
	color: #fff;
	font-size: 1.7em;
	margin: 10px;
	padding: 5px 10px;
}
.awardInfo img{
	float:left; 
	padding:5px 10px;
}
.awardInfo h3{
	background-color: #f5592e;
	color: #fff;
	font-size: 1.7em;
	margin: 10px;
	padding: 5px 10px;
}
#nominations li{
	padding-bottom:20px;	
}
#presenter-bios h3 {
	font-size:1.4em;
	color:#7D8B25;
	text-shadow:1px 1px #888;
	margin-top:40px; 
	margin-bottom:40px;
}
#sidebar-wrapper .ExpandItem {
	padding:0px;
}
.resources {
	border:1px solid #8F9A43;
}
</style>
<script type="text/javascript">

$(document).ready(function(){

		$('#layerslider').removeClass('loading');

		$('#layerslider').layerSlider({

			skin : 'noskin',

			skinsPath : '/js/LayerSlider/layerslider/skins/',

			//youtubePreview : 'hqdefault.jpg',

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
		$(".group2").colorbox({rel:'group2'});

	});



</script>
</head>
<body>
<div class="container"> <a id="skiptocontent" href="#maincontent">Skip to main content</a> 
	
	<!--#include virtual="/bullying/dynamic-header.html"--> 
	
	<!--#include virtual="/bullying/topnav.html"-->
	
	<div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/getinvolved/">Get Involved</a> /
 		<div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>
			<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>
 </div>
	

	<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show --> 
	
	<script type="text/javascript">

	// ID and SubId to be Orange

	var currId="unityday";

	var showTree = "none";

	var currSubId="none";

	if (document.getElementById(currId)){

		document.getElementById(currId).className = "active";

	}

	if (document.getElementById(currSubId)){

		document.getElementById(currSubId).className = "active";

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
	<div class="content">
		<div class="copy">
 <div id="sidebar-wrapper" class="fltrt centered" style="width:275px; padding-right:0px; padding-bottom:20px;">
				
				<div class="posterSidebar" style="background-color:#fff">
					<img src="/bullying/getinvolved/images/mde-logo.png" width="180" height="106" alt="Minnesota Department of Education School Safety Technical Assistance Center"/>
				</div>
				
				<div class="posterSidebar">
					<p><strong>Opening Keynote</strong><br />
					  <img src="/bullying/getinvolved/images/david-esquith.jpg" style="margin-top:15px" width="150" height="188" alt=""/>
					<p style="font-size:.9em; line-height:1.2;"><strong>David Esquith</strong><br />
					Director, Office of Safe and Healthy Students
					</p>
					
                    <p class="ExpandHeader">Bio Info</p>
                  <div class="ExpandItem">
                    	<p style="font-size:.9em; line-height:1.2; text-align:left">David Esquith is the Director of the U.S. Department of Education's Office of Safe and Healthy Students located within the Office of Elementary and Secondary Education. Mr. Esquith is a former Peace Corps volunteer, special education teacher, lobbyist for the Association for Retarded Citizens, and Congressional aide.</p>
					</div>
                    <hr />
				  <p><strong>Closing Keynote</strong><br />
				    <img src="/bullying/getinvolved/images/osher-david.jpg" style="margin-top:15px" width="150" height="188" alt=""/>
				  <p style="font-size:.9em; line-height:1.2;"><strong>David Osher</strong><br />
					Vice President in Education, Human Development and the Workforce at the American Institutes for Research
				  </p>
					
                    <p class="ExpandHeader">Bio Info</p>
                  <div class="ExpandItem">
                    	<p style="font-size:.9em; line-height:1.2; text-align:left">
                        	His work focuses on collaboration, children’s services, prevention, social emotional learning, youth development, the social and emotional conditions for learning, teaching, and healthy development, and culturally competent interventions for children and youth with mental health problems and disorders and their families.
                        </p>
					</div>
                    
                    
                    
        </div>	
		 </div>
		 <h1 id="maincontent" style="line-height:1.2; font-family: 'Times New Roman' Times, serif; color:rgba(147,164,44,1.00)">Minnesota Safe & Supportive Schools Conference: Addressing Bullying in Schools</h1>
		 
		  <p>The Minnesota Department of Education, School Safety Technical Assistance Center, is hosting the conference in partnership with PACER’s National Bullying Prevention Center and Hamline University’s School of Education.</p>
			<p>This one-day conference will convene Minnesota educators, school support staff, parents, student leaders and education stakeholders to increase knowledge about bullying prevention and how to create a positive school climate.</p>
      
			
     <div class="alertBox" style="text-align:center; background:#C9D195; border:1px solid #57611A; width:150px; border-radius:8px;">
			 <h3 style="color:#000;">Downloads</h3>
			 <p><a href="/bullying/getinvolved/pdf/MDE-Flyer-2-sided.pdf" target="_blank">
       <img src="/bullying/getinvolved/images/MDE-Flyer-2-sided-thumb.jpg" width="123" height="159" alt=""/><br />
     Conference flyer</a></p></div>
      <div id="topics" style="max-width:570px;">
 			 <h3 style="color:#000; clear:none;" class="ExpandHeader">Show Conference Topics</h3>
  				<div id="topicList" class="ExpandItem" style="background:rgba(147,164,44,.50); border-radius:8px; margin-bottom:20px;">
       	<ul>
           <li>Working with children and adolescents who bully </li>
          <li>Practical strategies to support students in bullying situations </li>
          <li>Safety on social media, including &quot;social reporting&quot;, presented by Facebook </li>
          <li>Gender identity based bullying </li>
          <li>Bullying&nbsp;involving students with disabilities </li>
          <li>Addressing the biases behind bullying </li>
          <li>Restorative practices in schools </li>
          <li>Using the Minnesota School Survey date&nbsp;to create youth profiles of developmental skills, supports, and challenges</li>
          <li>Youth led presentations</span></li>
       	</ul>
 				</div>
		  </div>
  <p><strong>Date:</strong> Friday, January 22, 2016</p>
			<p><strong>Time:</strong> 8:30 – 9:00: Registration, food and beverages. Conference to start promptly at 9:00.<br />
			9:00 am – 4:30 pm: Conference</p>
			<p><strong>Location:</strong> <a href="http://everywhere.hamline.edu/s/1545/index.aspx?sid=1545&amp;gid=1&amp;sitebuilder=1&amp;pgid=461" target="_blank">Anderson Center, Hamline University</a><br />
			 774 Snelling Avenue North<br />
			 Saint Paul, MN 55104
			 </p>

<%
If RegistrationOpen Then
%>
			<p><strong>Cost:</strong> $30</p>
			<p>Registration is non-refundable</p>
			<p><a href="https://pacer.ejoinme.org/MyPages/MinnesotaSafeSupportiveSchoolsConference/tabid/726671/Default.aspx" target="_blank" class="btn btn-cta">Register Now</a></p>

			<p>Registration includes lunch on-site at the <a href="http://hamline.campusdish.com/Locations/BishopsBistro.aspx" target="_blank">Hamline’s Bishop’s Bistro</a>, cafeteria along with snacks and beverages during registration and breaks. The all-you-care-to-eat location features international entrees, pizza, grill, deli, salad bar, and more! Bishop’s Bistro also offers vegetarian, vegan, and gluten-free options.		 </p>
		 <p><strong>Need Disability-Related Accommodations?</strong></p>
		 <p>Contact PACER&rsquo;s National Bullying Prevention Center at <a href="mailto:bullying411@PACER.org">bullying411@PACER.org</a> or 952.838.9000 to request a reasonable disability-related accommodation to participate in this event. Note: A two-week advance notice is required.</p>
			<p><strong>Scholarships</strong>: A limited number of scholarships are available , please contact <a href="mailto:Heather.Hirsch@state.mn.us">Heather.Hirsch@state.mn.us</a> to apply</p>
			<p><strong>Parking: </strong>Two options available (1)&nbsp;Underground heated parking available in  the Anderson Center Ramp,&nbsp;attendees are&nbsp;responsible for parking fees.  (2) Surface lots that are a short walk (outdoors)&nbsp;to the building are  available for no charge.</p>
			<p><strong>Credits:</strong> 7.0 hours of CEUs will be offered for Minnesota teachers, nurses, and social workers. MDE has applied for CEUs for School Administrators</p>
			</p>
			
<%
Else
%>
<h3 style="margin:30px 0px; text-align:center;">Some conference presentations are now available!</h3>
<%
End If
%>
      
      <div id="presenter-bios" style="padding:10px; border-radius:8px; border:1px solid #C9D195;">
	   <h2 class="greenBar" style="padding:10px; background:#C9D195; color:black; text-shadow:none;">Session Info</h2>
       <h3><strong>Opening Keynote </strong></h3>
       <h4>The Challenges, Emerging Issues, and Promising Practices in Improving School Climate</h4>
       <p>David Esquith is the Director of the U.S. Department of Education's Office of Safe and Healthy Students located within the Office of Elementary and Secondary Education. Mr. Esquith is a former Peace Corps volunteer, special education teacher, lobbyist for The ARC, and Congressional aide.</p>
       <p>The session will describe the current state of school safety from a national perspective, address the relationship between school safety and school climate, and identify emerging issues and challenges to both.&nbsp;The session will also be an opportunity for audience members to respond to information provided and share their thoughts on how the U.S. Department of Education can assist them to improve school safety and climate. </p>
       <div class="resources">
       	<p><strong>Resources</strong></p>
        <ul>
        	<li class="pdficonlist"><a href="/bullying/getinvolved/pdf/2016SchoolClimate/DavidEsquith-ImprovingSchoolClimate.pdf" target="_blank">Presentation - The Challenges, Emerging Issues, and Promising Practices in Improving School Climate <span class="fa fa-external-link"></span></a></li>
        </ul>
       </div>
       
       
       
       
       
       <div id="closingPresWrapper">
       <h3><br />
         <strong>Closing Keynote</strong></h3>
       <h4>How to Efficiently Use a Comprehensive Multi-Tiered Approach to Build Conditions for Learning</h4>
       <p><em>David Osher, President of American Institute for Research</em></p>
       <p>Efforts to prevent and address  bullying behavior should be embedded within a comprehensive, multi-tiered  approach to create conditions for learning. A school&rsquo;s climate affects whether  students feel safe, connected, supported and challenged. When these conditions  are not in place, schools can inadvertently reduce engagement, connectedness  and the sense of safety for some and perhaps even all students. Schools with  poor conditions for learning create risks and, despite staff&rsquo;s good intentions,  may decrease attendance, engagement and learning. This session will provide  examples of how schools can work in partnership with students, school staff,  families, communities and social service agencies to implement a multi-tiered  approach that includes prevention, intervention and treatment services that  create positive conditions for learning in educational settings.</p>
       
       <div class="resources">
       	<p><strong>Resources</strong></p>
        <ul>
        	<li class="pdficonlist"><a href="/bullying/getinvolved/pdf/2016SchoolClimate/DavidOsher-ComprehensiveMulti-TieredApproach.pdf" target="_blank">Presentation - How to Efficiently Use a Comprehensive Multi-Tiered Approach to Build Conditions for Learning <span class="fa fa-external-link"></span></a></li>
        </ul>
       </div>
</div>
       
       
       
       
       
       
       
       
       <h3 style="margin-top:40px; margin-bottom:40px;">Morning Workshop Options</h3>
       
       <h4>Gender Identity-Based Bullying &ndash; Room 304</h4>
       <p><em>Cheryl Greene, M.S.Ed., Welcoming Schools</em></p>
       <p>Gender is multifaceted. In order to address gender identity-based bullying, we need to better understand gender. This session will create a framework for the importance of elementary classrooms becoming more gender expansive and inclusive to proactively address gender identity-based bullying. We create a welcoming and safe environment for all students when we allow all students to be who they are.</p>
       <p>Greene is an expert trainer for Welcoming Schools, a nationally certified Olweus Bullying Prevention Trainer and an adjunct professor and program coordinator for the Bullying Prevention Certificate Program at Hamline University. During a career that spans over 22 years in education, Green has been a classroom teacher, an intervention coordinator, a district-wide educational specialist, a dean of students, and a high school basketball coach.</p>
       <div class="resources">
       	<p><strong>Resources</strong></p>
        <ul>
        	<li class="pdficonlist"><a href="/bullying/getinvolved/pdf/2016SchoolClimate/CherylGreene-SSTA-Gender-out-of-the-box-2016SchoolClimate.pdf" target="_blank">Presentation - Gender Identity-Based Bullying <span class="fa fa-external-link"></span></a></li>
        </ul>
       </div>
       
       
       <h4>Working with Children &amp; Adolescents Who Bully &ndash; Room 303 </h4>
       <p><em>Dr. Walter Roberts, Jr., Professor of Counselor Education, Minnesota State University, Mankato</em></p>
       <p>Try as we might, we will never be successful in solving the problem of bullying until we engage with the individuals who cause the problems in the first place. This session proposes paradigm shifts, along with strategies and techniques, to work with children and adolescents who behaviorally bully others. Expect to be challenged about our present ways of thinking about the subject and the kids who present challenging behaviors to us on a daily basis.</p>
       <p>Roberts has spent his entire university career focused on helping K-12 schools and communities design best-fit solutions to address issues of bullying and related school violence. He was co-chair of Governor Mark Dayton&rsquo;s Task Force on the Prevention of School Bullying which resulted in the Safe and Supportive Schools Act of 2014. His third book on bullying prevention is slated for publication by Corwin Press in the summer of 2016. It focuses on today&rsquo;s topic.</p>
       <h4>Facebook Safety Basics &ndash; Room 111</h4>
       <p><em>Karuna Nain, Global Safety Policy Programs Manager, Facebook</em></p>
       <p>Facebook considers safety its most important responsibility. Attend this workshop to learn all about Facebook&rsquo;s approach to online safety and the policies, tools, programs and resources Facebook provides to help people stay safe online and stop bullying.</p>
       <p>Nain is the global safety programs manager at Facebook. She oversees the development and implementation of Facebook&rsquo;s safety policy programs throughout the world. Prior to this role she managed safety policy programs for teens and women in India.</p>
       <h4>Restorative Interventions for Bullying in Schools: Stories and Guidance &ndash; Room 112</h4>
       <p><em>Nancy Riestenberg, Minnesota Department of Education School Safety Technical Assistance Center; Alice Lynch,Black, Indian, Hispanic, Asian Women in Action; Brent Lehman, Community Mediation &amp; Restorative Services Inc.; Taylor Saver, Roseville Area Schools; Micheal Stanefski, Roseville Area Schools.</em></p>
       <p>Restorative practices in schools provide practices to build relationships as well as to repair harm. The repairing harm provides a process that addresses the participants in a bullying situation: the target, the person who does the bullying and the bystanders who witness the bullying. The basic outline of a restorative process will be explained. Restorative practices facilitators will share examples of school bullying and the outcomes of restorative responses, using the Circle or conferencing process. Guidance on using a restorative process for bullying will be discussed.</p>
       <p>Riestenberg has over 30 years of experience in the fields of violence prevention education, child sexual abuse prevention, and restorative measures in schools. She has worked with school districts in Minnesota and 20 other states, from the Cass Lake-Bena School District in Minnesota to Chicago Public Schools. She is the author of &ldquo;Circle in the Square: Building Community and Repairing Harm in Schools.&rdquo; As restorative practices specialist for the Minnesota Department of Education, she provides technical assistance on violence and bullying prevention, school connectedness, school climate, cultural relevance in prevention education, crisis prevention and recovery, and restorative measures. She is a member of the Minnesota Restorative Services Coalition, Restorative Practices International, and the National Association of Community and Restorative Justice, which awarded her the John W. Byrd Pioneer Award for Restorative and Community Justice in 2015.</p>
<h3>Student Panel</h3>
       <h4>Youth Voices: Strategies for Addressing Bullying From Students</h4>
       <p>Student panel, moderated by Nancy Riestenberg, shares their experiences and insights.</p>
       <h3 style="margin-top:40px; margin-bottom:40px;">Afternoon Workshop Options</h3>
       <h4>Practical Strategies to Support Students in Bullying Situations &ndash; Room 303</h4>
       <p><em>Heather Alden, MSW, LICSW, EXPO Elementary School/St. Paul Public Schools; President of Midwest Council of School Social Workers and Board member of Minnesota School Social Workers Association | Lilli Gray, intern</em></p>
       <p>In this session, participants will learn specific strategies to support kids in schools, including ideas of how to work with colleagues and parents. We will discuss the role of the bully, target, and bystander, and learn how to support our children to move along the continuum toward becoming stronger advocates and reducing the impact that bullying has on school and community culture. We will also discuss strategies to support our children in a culture with increased access to social media and technology which has had a tremendous impact on the power of the bully to cause harm to other children.</p>
       <p>Alden is a school social worker in St. Paul Public Schools, having worked in urban education as both a teacher and social worker for the past 20 years. She has provided professional development to educators, other mental health professionals, and parents, and was an adjunct professor at Augsburg College. Alden is an advocate for mental health awareness, increased parent involvement, social emotional learning, culturally competent practice, and bullying prevention work.</p>
       <div class="resources">
       	<p><strong>Resources</strong></p>
        <ul>
        	<li class="pdficonlist"><a href="/bullying/getinvolved/pdf/2016SchoolClimate/HeatherLilli-SupportStudentsinBullyingSituations.pdf" target="_blank">Presentation - Practical Strategies to Support Students in Bullying Situations <span class="fa fa-external-link"></span></a></li>
        </ul>
       </div>
       
       <h4>Using the MSS to Create Youth Profiles of Developmental Skills, Supports, &amp; Challenges &ndash; Room 111</h4>
       <p><em>Michael C. Rodriguez, Professor, Quantitative Methods in Education, Campbell Leadership Chair in Education and Human Development, Educational Psychology; University of Minnesota</em></p>
       <p>The Minnesota Student Survey (MSS) provides a rich source of information on the developmental skills and supports of Minnesota youth. Based on the 2013 revision and the addition of two measures from Search Institute, a new profile of Minnesota youth is available that tells a story of developmental skills and supports across racial and ethnic communities, indicating that diverse youth have the social and emotional capacity to succeed. Revealing a new profile of youth developmental skills and supports will allow us to create a new model to help all youth overcome persistent challenges. In this session, we will explore profiles of developmental skills (commitment to learning, positive identity, social competence), developmental supports (empowerment, teacher/school support, family/community support), and developmental challenges (bullying, mental distress, family violence) &ndash; particularly as they differ among students from different racial (White, Black, Asian, American Indian) and ethnic (Latino, Somali, Hmong) communities, sexual orientation, across grades 5, 8, 9, and 11, and special education and free/reduced lunch status. We will examine these profiles as they relate to other important outcomes, including achievement based on grades, after-school activity participation, post-high school goals, and employment. Finally, we will consider how schools and community organizations can utilize this information to support the positive development of all youth.</p>
       <p>Rodriguez is a professor of quantitative methods in education with a focus on educational measurement and assessment. As the Campbell Leadership Chair, he is also the co-director of the Educational Equity Resource Center, providing leadership at the University in its interdisciplinary work addressing educational equity and achievement gaps. His research team, the Minnesota Youth Development Research Group, has conducted research on the Minnesota Student Survey for over 10 years, resulting in more than 20 national presentations on this work.</p>
       <div class="resources">
       	<p><strong>Resources</strong></p>
        <ul>
        	<li class="pdficonlist"><a href="/bullying/getinvolved/pdf/2016SchoolClimate/MichaelRodriguez-MSSToCreateYouthProfiles.pdf" target="_blank">Presentation - Using the MSS to Create Youth Profiles of Developmental Skills, Supports, &amp; Challenges <span class="fa fa-external-link"></span></a></li>
        </ul>
       </div>
       <h4>The Biases Behind Bullying &ndash; Addressing the WHY &ndash; Room 112</h4>
       <p><em>Nancy Michael, Executive Director, AMAZE</em></p>
       <p>With the national spotlight on bullying in schools, many are searching for a quick fix without focusing on the bias, prejudice, and stereotypes that separate us from one another. Research shows that a cultural shift is needed, focusing on building respectful relationships between staff, students, and families. This shift happens when school staff are given the tools and training needed to provide equitable responsiveness and students feel supported in their personal and social identities.</p>
       <p>Michael brings both a professional and personal lens to this topic. As the executive director of AMAZE &ndash; a non-profit organization focused on preventing bullying and exclusion &ndash; since 1996, she has developed curriculum and training for teachers and parents, and provided workshops and keynote addresses about bullying and bias across the country. As a mother, she learned how hard it can be to advocate for your own child when her oldest was physically, verbally, and emotionally assaulted throughout most of his educational journey.</p>
		
        <div class="resources">
       	<p><strong>Resources</strong></p>
        <ul>
        	<li class="pdficonlist"><a href="/bullying/getinvolved/pdf/2016SchoolClimate/NancyMichael-AMAZEBiasBehindBullying.pdf" target="_blank">Presentation - The Biases Behind Bullying <span class="fa fa-external-link"></span></a></li>
        </ul>
       </div>       

       <h4>Bullying of Students with Disabilities &ndash; Room 304</h4>
       <p><em>Jody Manning, Parent Training and Information Center Director, PACER Center</em></p>
       <p>Studies have found that children with disabilities are two to three times more likely to be bullied than their non-disabled peers. This session has an emphasis on bullying of children with disabilities. Topics include laws and policies designed to protect students with disabilities, helpful facts to know, methods to build self-advocacy, and resources designed by PACER to address bullying of students with disabilities.</p>
       <p>Manning has been with PACER Center for 11 years where she serves as the Parent Training and Information Center Director. She presents workshops to parents and professionals on a variety of topics, speaking nationally on the topic of bullying prevention. She also coordinates a number of projects, and works individually with parents of children with special needs to help them understand how to advocate on behalf of their children. Manning has a background in nursing and psychology.</p>
       
       
       </div>
      
      
	 <!-- end .copy --></div>
		<br class="clearfloat" />
		

		<!-- end .content --></div>
	
	<!--#include virtual="/bullying/footer.html"--> 
	
	<!-- end .container --></div>
</body>
</html>
