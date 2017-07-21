<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/parent/videos-trainings.asp#PHS1"
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<title>Parent Homework Sheet - Special Education - PACER Center</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="PACER parent advocates have developed a tool called the Parent Homework Sheet. We developed it to help parents of children with disabilities understand how the needs of the student as stated in the special education evaluation report connect with the goals and support in the student&rsquo;s IEP (Individualized Education Program). Watching this series of short videos will help parents prepare to discuss their child&rsquo;s special education services with the IEP team." />

<title>PACER Center - Parent to Parent Programs for Parent Advice or Classes</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />
		<link rel="stylesheet" type="text/css" href="/js/colorbox1.5.9/colorbox.css">
		
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script type="text/javascript">
			if (typeof jQuery == 'undefined')
			{
				document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
			}
		</script>
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
						this.href = 'http://www.youtube.com/embed/' + vars['v'] + '?rel=0&amp;wmode=transparent';						
					}
				});
				//Initialize Colorbox
				$(".videoPopUp").colorbox({iframe:true, innerWidth:640, innerHeight:390});
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

	<a href="/">Home</a> /<a href="/parent/"> Special Education</a> /
<h1>Parent Special Education Information</h1>
<p style="font-size:90%;padding:0;margin:0;">PACER is the Minnesota Parent Training and Information Center, funded by the U.S. Department of Education's Office of Special Education Programs.</p>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">Parents Helping Parents Navigation Menu</h2>
<!--#include virtual="/parent/leftNav.html" -->
</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="parent_overview";
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
<h2>Parent homework Sheet</h2>
<div class="alertBox">
	 <h2>Download</h2>
     <ul>
     <li class="pdficonlist"><a href="/parent/php/PHP-c210.pdf" target="_blank">Parent Homework Sheet <span class="fa fa-external-link"></span></a></li>
     </ul>
</div>
<p>PACER parent advocates have developed a tool called the Parent Homework Sheet. We developed it to help parents of children with disabilities understand how the needs of the student as stated in the special education evaluation report connect with the goals and support in the student&rsquo;s IEP (Individualized Education Program). Watching this series of short videos will help parents prepare to discuss their child&rsquo;s special education services with the IEP team.</p>

<h3>Video 1: The PACER Parent Homework Sheet: Why Should Parents Use It?</h3>
<p>  Do you wish you could go to IEP meetings better prepared to understand and discuss your child&rsquo;s special education needs? Do you wish you could understand your child&rsquo;s Evaluation Report better? Do you think your child needs a particular service but don&rsquo;t know how to ask for it effectively at an IEP meeting? This video will explain the PACER Parent Homework Sheet and how it may be helpful to you.</p>
<p align="center"> <a href="/parent/videos-trainings.asp#PHS1"><img src="/parent/images/PHS-Part1.jpg" width="366" height="275" alt="parent-homework-sheet part 1" /></a></p>
<h3>Video 2: Parent Homework Sheet: How to Complete the Form</h3>
<p>  The goal of this video is to help parents of special education students complete the Parent Homework Sheet.</p>
<p align="center"><a href="/parent/videos-trainings.asp#PHS2"><img src="/parent/images/PHS-Part2.jpg" width="366" height="275" alt="parent-homework-sheet part 2" /></a></p>
<h3>Video 3: The PACER Parent Homework Sheet: How to Use the Results</h3>
<p>  You have a new tool to help you effectively participate and plan services to meet your child&rsquo;s needs now and in the future. This video will help you put your hard work on the Parent Homework Sheet (PHS) to use.</p>
<p align="center"><a href="/parent/videos-trainings.asp#PHS3"><img src="/parent/images/PHS-Part3.jpg" width="366" height="275" alt="parent-homework-sheet part 3" /></a></p>


<hr />

<!--<h3><a href="http://pacerparentstalk.blogspot.com/" target="_blank">Parents Talk Blog</a></h3>
<p>Parents of children  with disabilities can learn much from each other. Please join other parents in  discussing this month&rsquo;s topic at <a href="http://pacerparentstalk.blogspot.com/" target="_blank">pacerparentstalk.blogspot.com</a></p> 
 -->




<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>