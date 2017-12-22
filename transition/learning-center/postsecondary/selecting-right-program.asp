<!--#include virtual="/transition/templates/header.asp"-->


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Selecting the Right Postsecondary Program - National Parent Center on Transition and Employment</title>

<meta name="description" content="Education or training after high school is a great opportunity for youth to explore programs that meet their interests and that help them build skills for future employment. It is crucial that youth and families inform themselves about the many different types of programs and areas of study that are available, and which ones might be the best fit. ">
<!-- for Facebook -->          
<meta property="og:title" content="Preparing for Postsecondary Education - National Parent Center on Transition and Employment" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/learning-center/postsecondary/selecting-right-program.asp" />
<meta property="og:description" content="Education or training after high school is a great opportunity for youth to explore programs that meet their interests and that help them build skills for future employment. It is crucial that youth and families inform themselves about the many different types of programs and areas of study that are available, and which ones might be the best fit. " />

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
	var currId="postsecondary-selecting";
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
    <h1><strong>Selecting the Right Program</strong> </h1>
    <p>Education or training after high school is a great opportunity for youth to explore programs that meet their interests and that help them build skills for future employment. It is crucial that youth and families inform themselves about the many different types of programs and areas of study that are available, and which ones might be the best fit. </p>

  <h2>Videos</h2>
  <p><a class='videoPopUp' href="https://www.youtube.com/watch?v=NEk36iYbDkM"><img src="/transition/video/images/passport-to-possibilities.jpg" width="200" height="200" alt=""/><br />
<i class="fa fa-play"></i> Passport to Possibilities</a></p>

  <p><a class='videoPopUp' href="https://www.youtube.com/watch?v=P6y1_2JVT3Y"><img src="/transition/video/images/virtual-college-tour.jpg" width="200" height="200" alt=""/><br />
<i class="fa fa-play"></i> Teens Succeeding with Technology - Virtual College Tour</a></p>

  <p><a class='videoPopUp' href="https://www.youtube.com/watch?v=ZRgvCPjCmW0"><img src="/transition/video/images/why-college-matters.jpg" width="200" height="200" alt=""/><br />
<i class="fa fa-play"></i> Why College Matters for People with Disabilities</a></p>

  <p><br/>For more videos on this topic,  visit our <a href="/transition/video/index.asp" target="_blank">Videos page</a>.</p>


<div id="helpfulQuestion" class="extraSpace"><span id="likeButton"class="fa fa-thumbs-o-up"></span> <span id="dislikeButton" class="fa fa-thumbs-o-down"></span> Did you find this helpful?</div>
<br class="clearfloat" />


<div class="resources">
<h2>Resources</h2>
<ul>
						<li class="pdficonlist"><a href="/parent/php/PHP-c233.pdf" target="_blank">Visiting College and University Campuses</a></li>
						<li class="pdficonlist"><a href="/transition/resource-library/publications/NPC-51.pdf" target="_blank">Online College Programs: Questions to Consider for Students with Disabilities</a></li>
			<li class="pdficonlist"><a href="/transition/resource-library/publications/NPC-49.pdf" target="_blank">What are Postsecondary Educational Programs?</a></li>
			<li class="pdficonlist"><a href="/transition/resource-library/publications/NPC-4.pdf" target="_blank">Preparation is key to gaining accommodations on ACT  college entrance test </a></li>
  		<li class="pdficonlist"><a href="/parent/php/PHP-c115.pdf" target="_blank">College or Training Programs: How to Decide</a></li>
                            <li class="transitioniconlist"><a href="/transition/learning-center/singles/internships.asp" target="_blank">Understanding Internships</a></li>            
      <li class="pdficonlist"><a href="http://www.aypf.org/publications/higherlearning.pdf" target="_blank"><em>Higher Learning = Higher Earning; What You Need to Know about College and Careers</em></a> <i class="fa fa-external-link"></i><br />
      A guide for middle and high school students from the American Youth Policy Forum</li>
 			<li class="pdficonlist"><a href="http://www.acteonline.org/uploadedFiles/Assets_and_Documents/Global/files/Publications/Transitions.pdf" target="_blank">Career and Technical Education’s Role in Postsecondary Transitions</a> <i class="fa fa-external-link"></i><br />
          Information from the Heath Resource Center</li>
 			<li class="pdficonlist"><a href="https://heath.gwu.edu/files/downloads/pse_id_final_edition.pdf" target="_blank">Postsecondary education for students with intellectual disabilities </a> <i class="fa fa-external-link"></i><br />
 			  The HEATH Resource Center at George Washington University has a  36-page publication that answers many commonly asked questions about college experiences for students with intellectual disabilities. </li>

 </ul>

</div>



<!--#include virtual="/transition/templates/footer.asp"-->
