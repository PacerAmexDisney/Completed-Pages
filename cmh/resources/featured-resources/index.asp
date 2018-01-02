<!--#include virtual="/cmh/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Featured Resources - Children&#039;s Mental Health and Emotional or Behavioral Disorders Project</title>

<meta name="description" content="Families of children with mental health, emotional and behavioral needs often navigate multiple systems to access necessary supports and services. Families may also face additional challenges due to stigma about mental health. PACER’s Inspiring Opportunities Project will bring together parents, youth and professionals to help families receive the resources and support their children need. This project will also promote increased understanding of children's mental health, emotional, and behavioral need in the broader community.
" />

<!-- for Facebook -->
<meta property="og:title" content="Featured Resources - Children&#039;s Mental Health and Emotional or Behavioral Disorders Project" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/cmh/images/ebd-fb.jpg" />
<meta property="og:url" content="http://www.pacer.org/cmh/resources/featured-resources/" />
<meta property="og:description" content="Families of children with mental health, emotional and behavioral needs often navigate multiple systems to access necessary supports and services. Families may also face additional challenges due to stigma about mental health. PACER’s Inspiring Opportunities Project will bring together parents, youth and professionals to help families receive the resources and support their children need. This project will also promote increased understanding of children's mental health, emotional, and behavioral need in the broader community." />
<link rel="stylesheet" type="text/css" href="/js/pacer-expanding-box.css"/>
<script type='text/javascript' src='/js/pacer-expanding-box.js?ver=4.2.2'></script>


<link rel="stylesheet" type="text/css" href="/js/colorbox1.5.9/colorbox.css">
<script src="/js/colorbox1.5.9/jquery.colorbox-min.js"></script>
<script>
	$(document).ready(function(){
		//Change Any Links that contain the v= version into the embed version that colorbox expects
		//Note: You lose all extra query string items in the current version of this function
		$(".videoPopUp").each(function(){
			if (/\?v=/i.test(this.href)) {
				var vars = [], hash;
				var q = this.href.split('?')[1];
				if(q != undefined){
					q = q.split('&');
					for(var i = 0; i < q.length; i++){
						hash = q[i].split('=');
						vars.push(hash[1]);
						vars[hash[0]] = hash[1];
					}
				}
				this.href = 'http://www.youtube.com/embed/' + vars['v'] + '?rel=0&amp;wmode=transparent&amp;autoplay=1';						
			}
		});
		//Initialize Colorbox
		var winWidth = $(window).width();
		var cbOpt = {iframe:true, innerWidth:960, innerHeight:585};
		if (winWidth < 1000) {
		  cbOpt.innerWidth = winWidth - 50;
		  cbOpt.innerHeight = cbOpt.innerWidth * 585 / 960.0;
		}
		$(".videoPopUp").colorbox(cbOpt);
	});
</script>



<style type="text/css">
#layerslider {
	margin-top:3px;
  	border:none;
  	margin: 0px;
  	visibility: visible;
  	width: 100%;
}
.contentrow {
	position:relative;
	padding:10px 10px 30px;
}
#pagecontent .row-orange, .row-orange h1, .row-orange h2, .row-orange h3, .row-orange .morebutton {
	/*background-color:#ea8729;*/
	color:#000;
}
#pagecontent .row-orange h1 {
	text-align:center;
	font-size:30px;
	line-height:40px;
	text-shadow:0px 0px 5px #000;
}
#pagecontent .row-orange p {
	font-size:1.3em;
	line-height:1.8em;
	padding:0 20px;
}
#pagecontent .row-orange .shorten a {
	color: #EA8729;
	font-weight: bold;
}
#pagecontent .row-orange .shorten a:hover {
	color:#C67221;
	font-weight: bold;
}

#pagecontent .row-orange a:hover {
	color:rgba(255,255,255,0.5);
}
#pagecontent .row-orange .externallink {
	background:url(/bullying/images/styles/externalLinkWhite.png) no-repeat right;
}
#pagecontent .row-orange .externallink:hover {
	background:url(/bullying/images/styles/externalLinkWhiteHover.png) no-repeat right;
	color:rgba(255,255,255,0.5);
}
#introContent {
	background:#EA8729;
	border-radius:8px;
}
#quiz_wrapper {
	width:80%;
	margin:10px 200px;
}
#quiz_wrapper img{
	padding-left:50px;
}
#pagecontent h2.header_bar{
	margin-left:-.5em;
	margin-right:-.5em;
	color:#fff;
	text-align:center;
	padding:15px 0px;
	margin-bottom:20px;
}
.green_gradient{
	margin-right:-.5em;
	padding-right:1em;
	background: #fff url(/cmh/images/green_gradient.jpg) no-repeat right bottom;
}
.green_gradient h2 {
	background-color:#339900;
	color:#fff;
}
.blue_gradient{
	margin-right:-.5em;
	padding-right:1em;
	background: #fff url(/cmh/images/blue_gradient.jpg) no-repeat right bottom;
}
.blue_gradient h2{
	background-color:#09c;
	color:#fff;
}
.orange_gradient{
	margin-right:-.5em;
	padding-right:1em;
	background: #fff url(/cmh/images/orange_gradient.jpg) no-repeat right bottom;
}
.orange_gradient h2 {
	background-color:#EA8729;
	color:#fff;
}
#resources table{
	margin:0 20px;
}
#resources a img:hover {
  box-shadow: 0 0px 19px 13px #bbdfff;
}
#stigma p {
	padding-left:20px;
}
#social_footer {
	text-align:center;
	margin:10px -15px -23px -13px;
	height:100px;
	background-color:#09c;
	padding-bottom:40px;
}
#social_footer p{
	color:#fff;
	font-size:1.3em;
	text-align:center;
	padding-top:10px;
}
#social_footer img{
	display:inline-block;
	padding-top:5px;
}
#maincontent {
  overflow: hidden;
}
.publications-photo {
  clear:right; 
  float:right;
}

@media (max-width: 900px) {
  #hottopics .right_topic {
    margin-left: auto;
    margin-right: auto;
  }
  #hottopics .left_topic {
    margin-left: auto;
    margin-right: auto;
  }
  #hottopics .right_topic img {
    max-width: 25%;
    height: auto;
  }
  #hottopics .left_topic img {
    max-width: 25%;
    height: auto;
  }
  #hottopics ul li {
    max-width: 100%;
  }
  #resources td {
    display: block;
    max-width: 100%;
  }
  #social_footer {
    margin-left: 0px;
    margin-right: 0px;
  }
  .hot_topic_archive li {
    margin-left: 0px;
  }
  .hot_topic_archive h2 {
    margin-left: 0px;
  }
  .publications-photo {
    display: none;
  }
  #pagecontent .alertBox {
    float:none;
    width: 90%;
    margin-left: auto;
    margin-right: auto;
  }
}

@media (max-width: 600px) {
  .videoTable {
    padding: 0;
  }
  .videoTable p {
    padding-left:0px;
  }
  .videoTable td {
    display:block;
    width:90%;
    padding: 0 0 20px 0;
  }
  .videoTable td:first-child {
    width:90%;
    border-top: 1px dotted #aaa;
    padding-top: 20px;
  }
  .videoTable tr {
    display:block;
  }  
}
</style>
</head>
<body class="singleCol">

<!--#include virtual="/cmh/templates/page-header-nav.asp"-->



<div id="topbar">
<div id="breadcrumb">
<a href="/cmh/">Home</a> / <a href="/cmh/resources/featured-resources/">Featured Resources</a>
</div>
</div>

<div id="maincontent">
<div id="pagecontent">





	<h1>Featured Resources</h1>
		
<div id="featuredContent">

<h2 class="greenBar">Videos</h2>

<table cellspacing="20" class="videoTable">
<tbody><tr>
	<td><a class="videoPopUp cboxElement" target="_blank" href="https://www.youtube.com/watch?v=EG8TmP7heH8"><img src="/cmh/resources/featured-resources/images/crisis-planning-webinar-pic.jpg" alt="View -  Crisis Planning and Children's Challenging Behaviors video" width="190"></a>
	 <p>2016 (54 min)</p></td>
	<td><p><strong>Crisis Planning and Children&rsquo;s Challenging Behaviors: Making a Plan That Works</strong></p>
	 <p>This archived webinar is for educators, mental health providers, community  support staff and other professionals who would like more information on  crisis planning. It covers some key features of proactive crisis plans,  what we should know about challenging behaviors before developing a  crisis plan, and questions to ask when considering a child&rsquo;s escalating  challenging behaviors. This webinar covers principles of wellness,  recovery, and self-advocacy when working with children and youth who  have behavioral health needs and require proactive crisis planning. </p></td>
</tr>
<tr>
	<td><a class="videoPopUp cboxElement" target="_blank" href="https://www.youtube.com/watch?v=2ySAlQPJobs"><img src="/cmh/images/tips-for-talking-screen.jpg" alt="View -  Tips for Talking to Youth Who Are Under Stress Video" width="190"></a>
	 <p>2015 (13 min)</p></td>
	<td><p><strong>Tips for Talking to Youth Who Are Under Stress</strong></p>
	 <p>This presentation is for first responders, police, youth workers and   others who work with youth with disabilities to help prevent the   escalation of challenging behaviors.</p>
	 <p><a href="/parent/php/PHP-c234.pdf" target="_blank"><i class="fa fa-file-pdf-o" aria-hidden="true"></i> Tips for Talking to Youth Who Are Under Stress</a></p></td>
</tr>

<tr>
<td><a class="videoPopUp cboxElement" target="_blank" href="https://www.youtube.com/watch?v=Zf6zrnxlhaI"><img src="/cmh/resources/featured-resources/images/PBISVideoOpening.jpg" alt="View -  Positive Behavior Interventions and Support video" width="190"></a>
	 <p>2013 (7 min)</p></td>
	<td><p><strong>Positive Behavior Interventions and Supports: <br />
	  Supporting your child's positive behavior at home and in the community</strong></p>
	 <p>Parents are their child&rsquo;s first teacher and are crucial in helping them be successful in school, at home and in the community.  This video explains how Positive Behavior Interventions and Supports (PBIS) can be used to teach and encourage appropriate behaviors at home and in the community. PBIS is a research-based system of positive discipline based on prevention and the belief that appropriate behaviors can be taught.</p>
<p><a href="/parent/php/PHP-c218a.pdf" target="_blank"><i class="fa fa-file-pdf-o" aria-hidden="true"></i> Encourage Your Child’s Positive Behavior and School Success: Creating a Home Plan with School-wide Positive Behavior Interventions and Supports
</a></p>
<p><a href="/parent/php/PHP-c218b.pdf" target="_blank"><i class="fa fa-file-pdf-o" aria-hidden="true"></i> Sample PBIS Home Plan</a></p></td>
     </tr>
     
<tr>
	<td><a class="videoPopUp cboxElement" target="_blank" href="https://www.youtube.com/watch?v=_uMHn_E5cR4"><img width="190" alt="View - Knowledge Network for Systems of Care TV Video" src="/cmh/images/SAMHSA-ksoc-tv-thumb.jpg"></a>
	 <p>2015, (1 hr)</p></td>
	<td><p><strong>Knowledge Network for Systems of Care TV (KSOC-TV)</strong></p>
          <p>SAMHSA (Substance Abuse Mental Health Service Agency) has  been taping a series of multi-media webisodes on children&rsquo;s mental health with  &nbsp;KSOC-TV, a web-based technical assistance program  that features behavioral health experts discussing cutting edge issues in  children's mental health.&nbsp; Season 3 of KSOC-TV will kick off on January 9  from the 2016 NBC-4 Health &amp; Fitness Expo in Washington, DC. This special  webisode will explore how parents and caregivers can actively engage in their  child&rsquo;s behavioral health care, as well as identify available resources that  can help the entire family thrive. Members of the audience will be invited to  ask questions of the panel. Others can also join the conversation via Twitter  using #KSOCTV!</p>
          <p class="centered"><a href="http://www.samhsa.gov/children/multimedia" target="_blank">More information about  this program and other webisodes <span class="fa fa-external-link"></span></a></p>
</tr>
</tbody></table>

<div class="videoSeries" style="margin:30px; border-radius:8px; background:#eee; padding:20px; border:1px solid #6E6E6E">
    <h3>Video Series: Preparing For Adulthood: Taking Charge of My Own Health Care</h3>
    <p>PACER’s Youth Advisory Board on mental health discusses topics related to transitioning from pediatric health care to adult heath care. This 4-part series includes tips for teens and young adults on: coordinating your own health care, how medical providers and teachers can help you taking charge of your own health care, preparing for your own medical appointments, and understanding the benefits of guardianship.</p>
    <table cellspacing="20" class="videoTable">
    <tbody><tr>
        <td><a href="https://www.youtube.com/watch?v=w5fsi0va1yQ" target="_blank" class="videoPopUp"><img src="/health/images/videothumbs/coordinate-health-care.jpg" width="175" height="104" alt="" /></a>
         <p>2016 (4 min)</p></td>
        <td><p><strong>Video 1: Who Helps You Coordinate Your Health Care?</strong></p>
         <p>Teens discuss who helps them coordinate their own health care and the strategies they use to organize themselves. The role of a “care coordinator” is defined.</p></td>
    </tr>
    <tr>
        <td><a href="https://www.youtube.com/watch?v=NC7O_l2n3a4" target="_blank" class="videoPopUp"><img src="/health/images/videothumbs/help-you-take-charge.jpg" width="175" height="104" alt="View - Practical Tips: Working Effectively with Culturally Diverse Families of Children Needing Mental Health Support" /></a>
         <p>2016 (6 min)</p></td>
        <td><p><strong>Video 2: What Can Medical Providers and Teachers Do To Help You Take Charge of Your Own Health Care?</strong></p>
              <p>Teens respond to questions about their preferred method of communication for health care information. They express a preference for easily understood explanations, information formatted in pamphlets or written on flash cards, and health care providers who communicate directly to them. A general concern most often expressed is when to transfer to an adult health care provider.</p></td>
    </tr>
    <tr>
        <td><a href="https://www.youtube.com/watch?v=o2Hc2Rd5mRs" target="_blank" class="videoPopUp"><img src="/health/images/videothumbs/prepare-for-appointment.jpg" width="175" height="104" alt="" /></a>
         <p>2016 (4 min)</p></td>
        <td><p><strong>Video 3: How Do You Prepare For A Medical Appointment?</strong></p>
         <p>Teens describe how they prepare for a doctor’s appointment. Strategies that work for them include: making a list of concerns and questions for the doctor, having your insurance card with you, checking in, scheduling an appointment and arranging for transportation to the appointment.</p></td>
    </tr>
    <tr>
        <td><a href="https://www.youtube.com/watch?v=gQAkGQkaFEc" target="_blank" class="videoPopUp"><img src="/health/images/videothumbs/guardianship-mean-to-you.jpg" width="175" height="104" alt="" /></a>
         <p>2016 (3 min)</p></td>
        <td><p><strong>Video 4: What Does Guardianship Mean To You?</strong></p>
              <p>Discussion about what guardianship means. For these young adults, guardians are seen as coaches, leaders, decision makers, record keepers and as the gateway to health care.</p></td>
    </tr>
    </tbody></table>
    
    <div style="font-style:italic; color:#424242">
    	This video series was made possible in part through a subcontract from the Minnesota Department of Health under Grant Number D70MC27547 from the Health Resources and Services Administration (HRSA), an operating division of the U.S. Department of Health and Human Services.
    </div>
    
</div>

<h2 class="greenBar">Materials &amp; Resources</h2>
<img style="float:right" src="/cmh/images/circle_boy2.jpg" alt="" width="177" height="174" />

<ul>
  


<li class="pdficonlist"><a href="http://www.ftc.gov/bcp/edu/pubs/consumer/products/pro27.pdf" target="_blank">"Considering a Private Residential Treatment Program for a Troubled Teen? Questions for Parents and Guardians to Ask" <span class="fa fa-external-link"></span></a> 
    <p>This is a consumer guide developed by the Federal Trade Commission to assist parents in choosing a safe residential treatment program for their children. It was written after the "Stop Child Abuse in Residential Programs for Teens Act of 2008" (H.R. 6358) was passed to establish minimum standards for prevention of child abuse and neglect at teen residential programs.</p>
  </li>
  <li class="pdficonlist"><a href="http://gucchdtacenter.georgetown.edu/publications/Effective Strategies Checklist FINAL.pdf" target="_blank">Effective Strategies Checklist: Children and Youth with  Developmental Disorders and Challenging Behavior <span class="fa fa-external-link"></span></a>
	<p>Children and youth who have intellectual or developmental  disabilities are at elevated risk for co-occurring psychiatric or behavioral  disorders. This article provides some information on strategies that have  resulted in successful outcomes that have decreased the risk for juvenile  justice or residential placement. produced by: The National Technical Assistance Center for  Children's Mental Health</p>
  </li>

 <li><a href="http://gucchdtacenter.georgetown.edu/index.html" target="_blank">Georgetown University Center for Child and Human Development <span class="fa fa-external-link"></span></a>
    <p>provides information for families who have children and youth with special needs, and particularly those who are at risk or have mental health needs.</p>
 </li>

  <li class="pdficonlist"><a href="http://www.cehd.umn.edu/ceed/publications/earlyreport/earlyreportspring2001.pdf" target="_blank">Preventing and Treating Challenging Behavior in Young Children <span class="fa fa-external-link"></span></a></li>

  <li class="pdficonlist"><a href="http://www.pacer.org/parent/php/PHP-c225.pdf" target="_blank">Crisis Management Plan: Support at Home for Children and Youth with Mental Health Needs</a></li>
  <li class="pdficonlist"><a href="http://www.pacer.org/parent/php/PHP-c234.pdf" target="_blank">Tips for Talking to Youth Who Are Under Stress</a></li>


</ul>

</div>
				



<!--#include virtual="/templates/footer.asp"-->
