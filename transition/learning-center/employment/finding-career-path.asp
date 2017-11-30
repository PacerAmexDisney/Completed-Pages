<!--#include virtual="/transition/templates/header.asp"-->


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Finding Your Career Path - National Parent Center on Transition and Employment</title>

<meta name="description" content="There are thousands different types of jobs a person can do. The key to successful employment is preparation, and the first step is for youth to explore what careers best fit their strengths and interests.">
<!-- for Facebook -->          
<meta property="og:title" content="Finding Your Career Path - National Parent Center on Transition and Employment" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/learning-center/employment/finding-career-path.asp" />
<meta property="og:description" content="There are thousands different types of jobs a person can do. The key to successful employment is preparation, and the first step is for youth to explore what careers best fit their strengths and interests." />

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
.sidebar2 {
  float:right;
  max-width:20%;
  padding-right:10px;
  min-height: 600px;
}
.sidebar2 img {
  max-width:100%;
}
.video-link {
  float: left;
  margin: 0 20px 20px 0;
}
.clear-left {
  clear: left;
}
</style>
</head>

<body class="twocol">

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<!--#include virtual="/transition/templates/page-header-nav.asp"-->


<div class="breadcrumb"> <a href="/transition/">Home</a> / <a href="/transition/learning-center/">Learning Center</a> / <a href="/transition/learning-center/employment/">Employment</a>  <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>
    <div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>
</div>

  <div class="sidebar1">
<!--#include virtual="/transition/learning-center/nav.html"-->
    <!-- end .sidebar1 --></div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="employment-finding";
	var showTree = "employment-sub";
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
    <h1 id="maincontent">Finding Your Career Path</h1>


<div class="sidebar2 mobileHidden"> <img src="/transition/learning-center/employment/images/SEphoto1.jpg" width="180" height="297" alt="Young man in a lab coat standing in a hospital hallway"/>
<img src="/transition/learning-center/employment/images/SE2photo.jpg" width="180" height="285" alt="Young man with Down Syndrome learning how to lift a stack of boxes with a mechanical lift"/>
<img src="/transition/learning-center/employment/images/SE3photo.jpg" width="180" height="256" alt="Young woman in a wheelchair laughing with a coworker in the office"/>
<!-- end .sidebar2 --></div>

        
<p>There are thousands different types of jobs a person can do. The key to successful employment is preparation, and the first step is for youth to explore what careers best fit their strengths and interests. This includes understanding what education and skills are required for each job, and researching the types of jobs that will be most available in the future.</p>
<!--<div id="helpfulQuestion" class="extraSpace"><span id="likeButton"class="fa fa-thumbs-o-up"></span> <span id="dislikeButton" class="fa fa-thumbs-o-down"></span> Did you find this helpful?</div>
<br class="clearfloat" />-->

    <h2>Videos</h2>

    <div>
    <p><a class='videoPopUp video-link' href="http://www.youtube.com/watch?v=jqIEBBwtMB0"><img src="/transition/video/images/wewo-employers.jpg" width="200" height="200" alt=""/><br />
<i class="fa fa-play"></i> Work Early, Work Often: <br />
Young Adults</a></p>

    <p><a class='videoPopUp video-link' href="http://www.youtube.com/watch?v=_qEmKVNcC60"><img src="/transition/video/images/career-possibilities.jpg" width="200" height="200" alt=""/><br />
<i class="fa fa-play"></i> Career Possibilities: <br />
Discover, Explore, Dream</a></p>

    <br class="clear-left" />
    <p>For more videos on this topic,  visit our <a href="/transition/video/index.asp" target="_blank">Videos page</a>.</p>
    </div>

<div id="helpfulQuestion" class="extraSpace"><span id="likeButton"class="fa fa-thumbs-o-up"></span> <span id="dislikeButton" class="fa fa-thumbs-o-down"></span> Did you find this helpful?</div>
<br class="clearfloat" />

<div class="resources">
<h2>PACER Resources</h2>
<ul class="spacenobullet">
        <li class="pdficonlist"><a href="http://www.pacer.org/parent/php/PHP-c244.pdf" target="_blank">Frequently asked questions about career exploration for youth with disabilities</a>&nbsp;<i class="fa fa-external-link"></i></li>
        <li class="pdficonlist"><a href="/transition/resource-library/publications/NPC-13.pdf" target="_blank">Set an Employment Destination and Map a Course to Get There</a>&nbsp;<i class="fa fa-external-link"></i></li>
		<li class="pdficonlist"><a href="/transition/resource-library/publications/NPC-16.pdf" target="_blank">Talk to Your Child About Employment: A Checklist for Parents</a>&nbsp;<i class="fa fa-external-link"></i></li>
		<li class="pdficonlist"><a href="/transition/resource-library/publications/NPC-17.pdf" target="_blank">Start Now to Chart your Youth's Career Path after Graduation</a>&nbsp;<i class="fa fa-external-link"></i></li>
  <li class="pdficonlist"><a href="http://www.pacer.org/parent/php/PHP-c115.pdf" target="_blank">College or Training Programs: How to Decide</a>&nbsp;<i class="fa fa-external-link"></i></li>
  <li class="pdficonlist"><a href="http://www.pacer.org/transition/resource-library/publications/NPC-15.pdf" target="_blank">Transition to Postsecondary Education or Training:<br />
  What Parents Can Do Now</a>&nbsp;<i class="fa fa-external-link"></i></li>
  <li class="pdficonlist"><a href="/transition/resource-library/publications/NPC-12.pdf" target="_blank">The Transition to Employment: What Parents Can Do Now</a>&nbsp;<i class="fa fa-external-link"></i></li>


</ul>
</div>
  
  


<!--#include virtual="/transition/templates/footer.asp"-->
