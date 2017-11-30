<!--#include virtual="/transition/templates/header.asp"-->


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Campus Life - National Parent Center on Transition and Employment</title>

<meta name="description" content="Going off to college is a new experience for every youth. It’s a great opportunity to learn new things, make new friends, further explore interests and practice living independently. Youth with disabilities may need to make additional preparations to be successful on campus. Consider such things as health management, transportation, and social skills when preparing youth for campus life.">
<!-- for Facebook -->          
<meta property="og:title" content="Preparing for Postsecondary Education - National Parent Center on Transition and Employment" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/learning-center/postsecondary/campus-life.asp" />
<meta property="og:description" content="Going off to college is a new experience for every youth. It’s a great opportunity to learn new things, make new friends, further explore interests and practice living independently. Youth with disabilities may need to make additional preparations to be successful on campus. Consider such things as health management, transportation, and social skills when preparing youth for campus life." />

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
	var currId="postsecondary-campus";
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
    <h1><strong>Campus Life</strong> </h1>
    <p>Going off to college is a new experience for every youth. It&rsquo;s a great opportunity to learn new things, make new friends, further explore interests and practice living independently. Youth with disabilities may need to make additional preparations to be successful on campus. Consider such things as health management, transportation, and social skills when preparing youth for campus life. </p>

    <h2>Videos</h2>
    <p><a class='videoPopUp' href="https://www.youtube.com/watch?v=f0werP_U64g"><img src="/transition/video/images/knowing-your-options.jpg" width="145" height="146" alt=""/><br />
<i class="fa fa-play"></i> Knowing Your Options: College, Independence and Beyond</a></p>
    
    <p><a class='videoPopUp' href="https://www.youtube.com/watch?v=L3NPdNnXOjQ"><img src="/transition/video/voices-of-exp/images/rachel-magario-1.jpg" width="145" height="146" alt=""/><br />
<i class="fa fa-play"></i> Rachel Magario on Postsecondary Education</a></p>

    <p><a class='videoPopUp' href="https://www.youtube.com/watch?v=dYlIRKyKRAo"><img src="/transition/video/images/student-feud.jpg" width="145" height="146" alt=""/><br />
<i class="fa fa-play"></i> College and Disability Services: Student Feud</a></p>

    <p><a class='videoPopUp' href="https://www.youtube.com/watch?v=6EJkOYmkxmE"><img src="/transition/video/images/right-way-to-discuss-transition.jpg" width="145" height="146" alt=""/><br />
<i class="fa fa-play"></i> Dr. Right: The Right Way to Discuss Transition</a></p>

    <p><br />For more videos on this topic,  visit our <a href="/transition/video/index.asp" target="_blank">Videos page</a>.</p>
    
    <div id="helpfulQuestion" class="extraSpace"><span id="likeButton"class="fa fa-thumbs-o-up"></span> <span id="dislikeButton" class="fa fa-thumbs-o-down"></span> Did you find this helpful?</div>
<br class="clearfloat" />


	  
<div class="resources">
<h2>Resources</h2>
<ul>
            <li class="pdficonlist"><a href="/transition/resource-library/publications/NPC-38.pdf" target="_blank">Going to College: Tips for Parents of Students with Visual Impairments</a></li>
            <li class="pdficonlist"><a href="/transition/resource-library/publications/NPC-39.pdf" target="_blank">Going to College: Tips for Students with Visual Impairments</a></li>
 			<li><a href="http://www.going-to-college.org/" target="_blank">Going to College</a> <i class="fa fa-external-link"></i><br />
          An online resource from Virginia Commonwealth University for teens with disabilities to learn about college life and what to do to prepare for it. It’s also a resource for parents to help their son or daughter learn about college and prepare for success.</li>
	<li class="pdficonlist"><a href="/transition/resource-library/publications/NPC-47a.pdf" target="_blank">Skills for Independent Living: Parents Help Build Social Skills</a>&nbsp;<i class="fa fa-external-link"></i></li>
	<li class="pdficonlist"><a href="/transition/resource-library/publications/NPC-47b.pdf" target="_blank">Skills for Independent Living: Personal Care Skills</a>&nbsp;<i class="fa fa-external-link"></i></li>
	<li class="pdficonlist"><a href="/transition/resource-library/publications/NPC-47c.pdf" target="_blank">Skills for Independent Living: Is it &quot;Public&quot; or &quot;Private?&quot;</a></li>
	<li><a href="http://www.ctdinstitute.org/library/2017-02-13/tips-and-technology-managing-time-focus-and-sleep-college" target="_blank">Tips and Technology for Managing Time, Focus, and Sleep in College</a></li>
	<li><a href="http://www.ctdinstitute.org/library/2017-02-13/getting-started-managing-time-and-staying-focused-college-help-assistive" target="_blank">Getting Started: Managing Time and Staying Focused in College with the Help of Assistive Technology</a></li>
</ul>
</div>



<!--#include virtual="/transition/templates/footer.asp"-->

