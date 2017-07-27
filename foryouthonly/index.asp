<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>For Youth Only</title>

<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />
<script type="text/javascript" src="/css/menu.js"></script>
<style type="text/css">
#rightBar img {
	margin: 10px auto;
}
</style>

		<link rel="stylesheet" type="text/css" href="/js/colorbox1.5.9/colorbox.css">
		
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script type="text/javascript">
			if (typeof jQuery == 'undefined')
			{
				document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
			}
		</script>
        <script src="/js/colorbox1.5.9/jquery.colorbox-min.js"></script>
		<script type="text/javascript">
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
				$(".videoPopUp").colorbox({iframe:true, innerWidth:960, innerHeight:585});
			});
		</script>


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
<a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>


<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p><img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a></p>
</div>

 <a href="/ " title="PACER's home page">Home</a> / <a href="/pandr/ " title="PACER's programs and resources">Programs &amp; Resources</a> /
					<h1>For Youth Only</h1>
				</div>
</div>

<div id="leftbar">
<!--#include file="navBar.html" -->
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="fyo_overview";
	var currSubId="none";
	// any Subtree that I want to Display
	var showTree = "none";
	
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
	if (document.getElementById(currSubId)){
		document.getElementById(currSubId).className = "page";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "treemenu") {
			//Any additional subTrees that you want to skip should be added here. like this (subTrees[i] != subTree1 || subTrees[i] != subTree2)
			if (subTrees[i].id != showTree) {
				subTrees[i].className = "treemenuhidden";
			}
		}
	}
</script>

</div>

<div id="maincontent">

<div id="pagecontent">

<!--BEGIN CONTENT-->

<h1>Overview</h1>

<p>FOR YOUTH ONLY is a resource for youth with disabilities.&nbsp; Here you will find information to help you to  develop self-advocacy skills and gain a better understanding of how you &nbsp;can more effectively participate to increase  your success in the classroom, at home, and in the community.&nbsp; By understanding your disability and its  impact on your everyday life, you have a better chance of improving your life and accessing the systems of care that serve you. </p>
<ul>
	<li>Learn how to take  care of yourself!</li>
    <li>Learn how to share  information about what helps you!</li>
    <li>Learn  how to be a leader for other youth who, like you, would benefit from support  and help.</li>
</ul>

<div style="margin:50px auto; padding:5px; border:1px solid #F93; text-align:center">
<p><em>&ldquo;All your dreams can come true if you have the courage to  pursue them.&rdquo;</em>&nbsp; Walt Disney</p>
</div>


<h2 class="greenBar">Video Resources</h2>
<h3>Video Series: Advocating for Your Needs at School</h3>
<table cellspacing="20" class="videoTable">
    <tbody><tr>
        <td><a href="https://www.youtube.com/watch?v=zCXrYvK0wlQ" target="_blank" class="videoPopUp"><img src="/foryouthonly/images/Marissa-Video1.jpg" width="175" height="104" alt="" /></a>
         <p>2016 (1 min)</p></td>
        <td><p>Are you struggling to getting accommodations at school?  In this video Marissa, a high school student with a disability, explains how she used her support system and the IEP process to get the help she needed.</p></td>
    </tr>
    <tr>
        <td><a href="https://www.youtube.com/watch?v=ybid2-pdM70" class="videoPopUp"><img src="/foryouthonly/images/Marissa-Video2.jpg" width="175" height="104" alt="" /></a>
         <p>2016 (1 min)</p></td>
        <td><p>Marissa gives ideas about communicating with other students and teachers about problems or issues at school.</p></td>
    </tr>
    </tbody>
    </table>

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
     
    <h1>PACER Programs for You</h1>
<p><a href="http://www.pacer.org/stc/exite/camp.asp">Excite Camp</a><br />
  EX.I.T.E. Camp is to empower middle school girls in the fields of math, science, and engineering. EX.I.T.E. Camp provides a safe and supported environment for hands-on learning as well as a place to meet new friends and create lasting memories.</p>
  <p><a href="http://www.pacer.org/funtimes/">Fun Times</a><br />
  Fun Times is a volunteer, social program that connects teens and young adults with and without disabilities</p>
  <p><a href="http://www.pacerteensagainstbullying.org/tab/">Teens Against Bullying</a></p>
  <p><a href="http://www.pacer.org/cmh/youth-advisory-board/about.asp">Youth Advisory Board Activities</a> (Mental Health and Emotional or Behavioral Disorders Project)</p>
  <p><a href="http://www.pacer.org/bullying/getinvolved/">National Bullying Prevention Center:  Get Involved</a></p>

<div id="pageextender" style="clear:both">&nbsp;</div>


</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>