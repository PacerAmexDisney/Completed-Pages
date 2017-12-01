<!--#include virtual="/transition/templates/header.asp"-->


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Employment Rights and Reasonable Accommodations - National Parent Center on Transition and Employment</title>

<meta name="description" content="There are civil rights laws that protect people with disabilities from discrimination in the employment process. It is helpful for youth and families to understand relevant federal and state laws and who to contact if they feel these laws are not being followed.">
<!-- for Facebook -->          
<meta property="og:title" content="Employment Rights and Reasonable Accommodations - National Parent Center on Transition and Employment" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/learning-center/employment/employment-rights.asp" />
<meta property="og:description" content="There are civil rights laws that protect people with disabilities from discrimination in the employment process. It is helpful for youth and families to understand relevant federal and state laws and who to contact if they feel these laws are not being followed." />

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

<div class="breadcrumb"> <a href="/transition/">Home</a> / <a href="/transition/learning-center/">Learning Center</a> / <a href="/transition/learning-center/employment/">Employment</a></div>

  <div class="sidebar1">
<!--#include virtual="/transition/learning-center/nav.html"-->
    <!-- end .sidebar1 --></div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="employment-rights";
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
	<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>
    <div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>
    <h1><strong>Employment Rights and Reasonable Accommodations</strong></h1>
    <p>There are civil rights laws that protect people with disabilities from discrimination in the employment process. It is helpful for youth and families to understand relevant federal and state laws and who to contact if they feel these laws are not being followed.</p>
    
    <h2>Reasonable Accommodations</h2>
<ul class="spacenobullet">
	<li class="pdficonlist"><a href="http://www.pacer.org/parent/php/php-c126.pdf" target="_blank">Accommodations Categories Chart (2004)</a>&nbsp;<i class="fa fa-external-link"></i></li>
	<li class="pdficonlist"><a href="/transition/resource-library/publications/NPC-18.pdf" target="_blank">Help Your Young Adult Learn About Accessing Accommodations After High School</a>&nbsp;<i class="fa fa-external-link"></i></li>
	<li class="pdficonlist"><a href="http://www.abledata.com/sites/default/files/How%20AT%20Can%20Help%20You%20in%20the%20Workplace_PDF.pdf" target="_blank">How AT Can Help You in the Workplace</a>&nbsp;<i class="fa fa-external-link"></i><br />
	  This article from AbleData describes how technology is commonly used by people with disabilities to help them perform their job tasks and achieve the same results as other employees.</li>
	<li><a href="http://askjan.org/media/accommrequestltr.html" target="_blank">Ideas for Writing an Accommodation Request Letter</a>&nbsp;<i class="fa fa-external-link"></i> (from JAN web site) </li>
	<li><a href="http://askjan.org/" target="_blank">Job Accommodation Network</a>&nbsp;<i class="fa fa-external-link"></i><br />
    Web site features searchable database of accommodations on the job for specific disabilities.</li>
	<li><a href="http://www.eeoc.gov/laws/types/intellectual_disabilities.cfm" target="_blank">Persons with Intellectual Disabilities in the Workplace and the ADA</a>&nbsp;<i class="fa fa-external-link"></i></li>

</ul>

<h2>National ADA Resources</h2>
<ul class="spacenobullet">
	<li><a href="http://askjan.org/links/adalinks.htm" target="_blank">ADA Document Center</a> <i class="fa fa-external-link"></i></li>
	<li><a href="http://adata.org/" target="_blank">ADA Technical Assistance Program</a> <i class="fa fa-external-link"></i></li>
	<li><a href="http://www.ada.gov/" target="_blank">Department of Justice ADA Home Page</a> <i class="fa fa-external-link"></i><br />
    More information on ADA enforcement from the U.S. Department of Justice.</li>
	<li><a href="http://www.eeoc.gov/field/" target="_blank">EEOC Field Offices</a> <i class="fa fa-external-link"></i><br />
    A state-by-state list of EEOC offices where you can file a disability-related complaint.</li>

</ul>

<h2>Videos</h2>
<p><a class='videoPopUp' href="http://www.youtube.com/watch?v=CNm48ru-tKA"><img src="/transition/video/images/ada-anniversary.jpg" width="200" height="200" alt=""/><br />
<i class="fa fa-play"></i>Google Impact Challenge: Disabilities – ADA 25th Anniversary</a></p>
    <p>For more videos on this topic,  visit our <a href="/transition/video/index.asp" target="_blank">Videos page</a>.</p>
    
    <div id="helpfulQuestion" class="extraSpace"><span id="likeButton"class="fa fa-thumbs-o-up"></span> <span id="dislikeButton" class="fa fa-thumbs-o-down"></span> Did you find this helpful?</div>
<br class="clearfloat" />



<!--#include virtual="/transition/templates/footer.asp"-->
