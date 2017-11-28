<!--#include virtual="/transition/templates/header.asp"-->



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Understanding Academic Accommodations - National Parent Center on Transition and Employment</title>

<meta name="description" content="Colleges are not responsible for making sure students with disabilities are successful academically, just that they have access to the same educational opportunities as every other student. College students with disabilities often use academic accommodations so they can do the same course work as their peers. Parents and youth should seek to understand the accommodations process and what accommodations work best for each individual student.">
<!-- for Facebook -->          
<meta property="og:title" content="Understanding Academic Accommodations - National Parent Center on Transition and Employment" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/learning-center/postsecondary/academic-accommodations.asp" />
<meta property="og:description" content="Colleges are not responsible for making sure students with disabilities are successful academically, just that they have access to the same educational opportunities as every other student. College students with disabilities often use academic accommodations so they can do the same course work as their peers. Parents and youth should seek to understand the accommodations process and what accommodations work best for each individual student." />

<script type="text/javascript" src="/transition/learning-center/js/like.js"></script>

<link rel="icon" href="http://www.pacer.org/transition/favicon.ico" />

<script type="text/javascript" src="/js/pacer-expanding-box.js"></script>
<link rel="stylesheet" type="text/css" href="/js/pacer-expanding-box.css"/>
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


<!--#include virtual="/transition/dynamic-head-items.html"-->
<style>
@media (max-width: 750px) {
  .addthis_sharing_toolbox, .sharethis {
	  padding-top: 30px;
  }
}
</style>
</head>

<body class="twocol">

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<!--#include virtual="/transition/templates/page-header-nav.asp"-->

<div class="breadcrumb"> <a href="/transition/">Home</a> / <a href="/transition/learning-center/">Learning Center</a> / <a href="/transition/learning-center/postsecondary/">Postsecondary Education</a></div>

  <div class="sidebar1">
<!--#include virtual="/transition/learning-center/nav.html"-->
    <!-- end .sidebar1 --></div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="postsecondary-accommodations";
	var showTree = "postsecondary-sub";
	var showTree2 = "";
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

  <div class="content">
	<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>
    <div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>
    <h1><strong>Understanding Academic Accommodations</strong> </h1>
    <p>Colleges are not responsible for making sure students with disabilities are successful academically, just that they have access to the same educational opportunities as every other student. College students with disabilities often use academic accommodations so they can do the same course work as their peers. Parents and youth should seek to understand the accommodations process and what accommodations work best for each individual student. </p>

  <h2>Videos</h2>
  
  <p><a class='videoPopUp' href="https://www.youtube.com/watch?v=jYmfrrY4Hfk"><img src="/transition/video/images/at-in-action-sam.jpg" width="145" height="146" alt=""/><br />
<i class="fa fa-play"></i> Assistive Technology in Action: Meet Sam</a></p>
  
  <p><a class='videoPopUp' href="https://www.youtube.com/watch?v=yIlkNuCGw1w"><img src="/transition/video/images/technology-for-college-level-reading.jpg" width="145" height="147" alt=""/><br />
<i class="fa fa-play"></i> No Barriers - Technology for College-Level Reading</a></p>

  <p><a class='videoPopUp' href="https://www.youtube.com/watch?v=qb7jBbp-EXE"><img src="/transition/video/images/transitioning-to-college.jpg" width="145" height="146" alt=""/><br />
<i class="fa fa-play"></i> Transitioning to College with a Disability</a></p>

  <p><a class='videoPopUp' href="https://www.youtube.com/watch?v=DnJF_BrQzBg"><img src="/transition/video/images/disability-resources-student-perspective.jpg" width="145" height="146" alt=""/><br />
<i class="fa fa-play"></i> Disability Resources: A Student Perspective</a></p>

  <p><br />For more videos on this topic,  visit our <a href="/transition/video/index.asp" target="_blank">Videos page</a>.</p>


<div id="helpfulQuestion" class="extraSpace"><span id="likeButton"class="fa fa-thumbs-o-up"></span> <span id="dislikeButton" class="fa fa-thumbs-o-down"></span> Did you find this helpful?</div>
<br class="clearfloat" />


<div class="resources">
<h2>Resources</h2>
<ul>
  		<li class="pdficonlist"><a href="/transition/resource-library/publications/NPC-18.pdf" target="_blank">Help Your Young Adult Learn About Accessing Accommodations After High School</a> </li>
		<li><a href="http://www2.ed.gov/about/offices/list/ocr/docs/auxaids.html" target="_blank">Auxiliary Aids and Services for Postsecondary Students with Disabilities</a> <i class="fa fa-external-link"></i></li>
		<li class="pdficonlist"><a href="http://www.washington.edu/doit/sites/default/files/atoms/files/Academic-Accommodations-Learning-Disabilities.pdf" target="_blank">Academic Accommodations for Students with Learning Disabilities</a> <i class="fa fa-external-link"></i></li>
			<li><a href="https://add.org/college-accommodations/" target="_blank">Recommended Accommodations for Students with ADHD</a> <i class="fa fa-external-link"></i></li>

 </ul>

</div>





<!--#include virtual="/transition/templates/footer.asp"-->
