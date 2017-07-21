<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">


<head>
<title>Video Resources - Health Information Center</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" />
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



<style>
.quote {
	font-style:italic;
}
.resources {
	margin:20px auto;
	width:80%;
}
.asterix {
	vertical-align:super;
	color:red;
	margin-right:5px;
}
#trainings td {
	vertical-align:top;
}
#trainings td:first-child {
	text-align:center;
	color:#898989;
	
}
#trainings img {
	background: red;
	width:190px;
	height:143
}
.videoSeries td {
	vertical-align:top;
}
.videoSeries.fourColSeries td {
	width:25%;
}
.videoSeries a img {
	width:100%; 
	height:auto; 
	padding:0px; 
	margin:0px;
}
</style>

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

	<a href="/">Home</a> / <a href="/pandr/proglist.asp">Programs</a> / <a href="/health/"> Health Information Center</a> / 
	<h1> Health Information Center</h1>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">Health Navigation Menu</h2>
<!--#include virtual="/health/leftNav.htm" -->
</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="videos";
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

<div id="maincontent">

<div id="pagecontent">

<!--BEGIN CONTENT-->
	

<h1>Video Resources</h1>
<h2 class="greenBar">Preparing For Adulthood: Taking Charge of My Own Health Care</h2>
<p>This 4-part series on transitioning from pediatric to adult health care was developed by PACER&rsquo;s Youth Advisory Board. The series includes:</p>
<ul>
<li>Who Helps You Coordinate Your Health Care?</li>
<li>What Can Medical Providers and Teachers Do To Help You Take Charge of Your Own Health Care?</li>
<li>How Do You Prepare For A Medical Appointment?</li>
<li>What Does Guardianship Mean To You?</li>
</ul>
<p>The series is geared towards youth, parents, medical providers, and teachers to enhance conversations around youth taking charge of their own health care.</p>

<table cellspacing="10" class="videoSeries fourColSeries">
<tr>
	<td><a href="https://www.youtube.com/watch?v=w5fsi0va1yQ" target="_blank" class="videoPopUp"><img src="/health/images/videothumbs/coordinate-health-care.jpg" alt="View - Who Helps You Coordinate Your Health Care?" /></a>
	 <p><strong>Who Helps You Coordinate Your Health Care?</strong><br />
     2016 (4:10)</p></td>

	<td><a href="https://www.youtube.com/watch?v=NC7O_l2n3a4" target="_blank" class="videoPopUp"><img src="/health/images/videothumbs/help-you-take-charge.jpg" alt="View - What Can Medical Providers and Teachers Do To Help You Take Charge of Your Own Health Care?" /></a>
	 <p><strong>What Can Medical Providers and Teachers Do To Help You Take Charge of Your Own Health Care?</strong><br />
     2016 (5:48)</p></td>

	<td><a href="https://www.youtube.com/watch?v=o2Hc2Rd5mRs" target="_blank" class="videoPopUp"><img src="/health/images/videothumbs/prepare-for-appointment.jpg" alt="View - How Do You Prepare For A Medical Appointment?" /></a>
	 <p><strong>How Do You Prepare For A Medical Appointment?</strong><br />
     2016 (3:50)</p></td>
	
 <td><a href="https://www.youtube.com/watch?v=gQAkGQkaFEc" target="_blank" class="videoPopUp"><img src="/health/images/videothumbs/guardianship-mean-to-you.jpg" alt="View - What Does Guardianship Mean To You?" /></a>
  <p><strong>What Does Guardianship Mean To You?</strong><br />
  2016 (3:04)</p></td>
 
</tr>
</table>
<p style="font-style:italic; color:#404040">This video series was made possible in part through a subcontract from the Minnesota Department of Health under Grant Number D70MC27547 from the Health Resources and Services Administration (HRSA), an operating division of the U.S. Department of Health and Human Services.</p>

<h2 class="greenBar">Pediatric Resident Training Program</h2>
<p>This video series looks at &quot;Working with Medical Professionals: What Parents, Residents and Youth Would Like You to Know.&quot;</p>

<table cellspacing="10" class="videoSeries fourColSeries">
<tr>
	<td><a class='videoPopUp' href="http://www.youtube.com/watch?v=PlbEl7HdjUg"><img src="/health/For-Medical-Professionals/images/parent-video1-300px.jpg" alt="View - Parent Perspective Video 1"/></a>
	 <p><strong>Parent Perspective</strong><br />
     2014 (6:10)</p></td>

	<td><a class='videoPopUp' href="http://www.youtube.com/watch?v=LsRvY_MsRZE"><img src="/health/For-Medical-Professionals/images/parent-video2-300px.jpg" alt="View - Parent Perspective Video 2"/></a>
	 <p><strong>Parent Perspective</strong><br />
     2014 (4:49)</p></td>

	<td><a class='videoPopUp' href="http://www.youtube.com/watch?v=puYoICZujCE"><img src="/health/For-Medical-Professionals/images/young-adult-300px.jpg" alt="View - Young Adult Perspective Video 1"/></a>
	 <p><strong>Young Adult Perspective</strong><br />
     2014 (4:57)</p></td>
	
 <td><a class='videoPopUp' href="http://www.youtube.com/watch?v=1o1HNAUcEC0"><img src="/health/For-Medical-Professionals/images/resident-300px.jpg" alt="View - Resident Persective Video 1"/></a>
  <p><strong>Residents' Perspective</strong><br />
  2014 (1:32)</p></td>
 
</tr>
</table>

<h2 class="greenBar">Parents and Residents Together</h2>
<table>
<tr>
<td><a class='videoPopUp' href="https://www.youtube.com/watch?v=P1OyN49xG64"><img src="/health/images/part-video-375px.jpg" width="375" height="159" alt=""/></a></td>
	<td><a class='videoPopUp' href="https://www.youtube.com/watch?v=aRM3Ws1prHc"><img src="/health/images/part-video1-375px.jpg" width="375" height="159" alt=""/></td>
	</tr>
	<tr>
<td colspan="2"><p>Parents and Residents Together &mdash; PART &mdash; is a training program for pediatric residents at the University of Minnesota, conducted in collaboration with PACER and parents of children with special health care needs.  Learn more about the program in these videos.</p> </td>
</tr>
</table>


<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>