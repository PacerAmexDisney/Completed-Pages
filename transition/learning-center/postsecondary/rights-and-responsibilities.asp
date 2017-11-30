<!--#include virtual="/transition/templates/header.asp"-->


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Knowing your Postsecondary Rights and Responsibilities - National Parent Center on Transition and Employment</title>

<meta name="description" content="Students with disabilities in postsecondary education are protected from discrimination based on disability. They also have certain responsibilities to make sure those protections are in place. Youth and families should inform themselves about rights, responsibilities, and what to do if a complaint arises.">
<!-- for Facebook -->          
<meta property="og:title" content="Knowing your Postsecondary Rights and Responsibilities - National Parent Center on Transition and Employment" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/learning-center/postsecondary/rights-and-responsibilities.asp" />
<meta property="og:description" content="Students with disabilities in postsecondary education are protected from discrimination based on disability. They also have certain responsibilities to make sure those protections are in place. Youth and families should inform themselves about rights, responsibilities, and what to do if a complaint arises." />

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
	var currId="postsecondary-rights";
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
    <h1><strong>Knowing Your Rights and Responsibilities</strong></h1>
    <p>Students with disabilities in postsecondary education are protected from discrimination based on disability. They also have certain responsibilities to make sure those protections are in place. Youth and families should inform themselves about rights, responsibilities, and what to do if a complaint arises. </p>

    <h2>Videos</h2>
    <p><a class='videoPopUp' href="https://www.youtube.com/watch?v=nhlDkS8hvMU"><img src="/transition/video/images/ferpa.jpg" width="200" height="200" alt=""/><br />
<i class="fa fa-play"></i> Student Privacy 101</a></p>

    <p><a class='videoPopUp' href="https://www.youtube.com/watch?v=VZeAJjv2dy8"><img src="/transition/video/images/questions-of-discrimination.jpg" width="200" height="200" alt=""/><br />
<i class="fa fa-play"></i> Questions of Discrimination</a></p>

    <p><br/>For more videos on this topic,  visit our <a href="/transition/video/index.asp" target="_blank">Videos page</a>.</p>

<div id="helpfulQuestion" class="extraSpace"><span id="likeButton"class="fa fa-thumbs-o-up"></span> <span id="dislikeButton" class="fa fa-thumbs-o-down"></span> Did you find this helpful?</div>
<br class="clearfloat" />

<div class="resources">
<h2>Resources</h2>
<ul>
			<li class="pdficonlist"><a href="/transition/resource-library/publications/NPC-42.pdf" target="_blank">ADA, Section 504 &amp; Postsecondary Education</a></li>
			<li><a href="http://www2.ed.gov/about/offices/list/ocr/transition.html" target="_blank">Students with Disabilities Preparing for Postsecondary Education: Know Your Rights and Responsibilities</a> <i class="fa fa-external-link"></i></li>
			<li><a href="http://www2.ed.gov/about/offices/list/ocr/index.html" target="_blank">U.S. Department of Education, Office of Civil Rights</a> <i class="fa fa-external-link"></i><br />
        (Complaints about access and accommodations are handled by the OCR)</li>
			<li><a href="http://www.dol.gov/odep/pubs/fact/wwwh.htm" target="_blank">The Why, When,  What, and How of Disclosure in an Academic Setting, After High School</a> <i class="fa fa-external-link"></i><br />
        An  article from the U.S. Department of Labor, Office of Disability Employment  Policy web site. </li>
 			<li class="pdficonlist"><a href="http://www2.ed.gov/about/offices/list/ocr/letters/parent-20070316.pdf" target="_blank">Letter to Parents</a> <i class="fa fa-external-link"></i><br />
          From the U.S. Department of Education Office of Civil Rights</li>
      <li><a href="http://www.ncaa.org/student-athletes/future/education-impacting-disabilities" target="_blank">National Collegiate Athletic Association</a> <i class="fa fa-external-link"></i><br />
      Provides answers to frequently asked questions from student athletes with education-impacting disabilities.</li>

 </ul>

</div>


<!--#include virtual="/transition/templates/footer.asp"-->
