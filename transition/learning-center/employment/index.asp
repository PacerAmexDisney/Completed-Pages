<!--#include virtual="/transition/templates/header.asp"-->


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Employment - National Parent Center on Transition and Employment</title>

<meta name="description" content="A look at employment for transition-age youth, including workplace accommodations, career development strategies, supported employment, volunteer experiences, and workforce centers.">
<!-- for Facebook -->          
<meta property="og:title" content="Employment - National Parent Center on Transition and Employment" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/learning-center/employment/" />
<meta property="og:description" content="A look at employment for transition-age youth, including workplace accommodations, career development strategies, supported employment, volunteer experiences, and workforce centers." />

<link rel="icon" href="http://www.pacer.org/transition/favicon.ico" />
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

<div class="breadcrumb"> <a href="/transition/">Home</a> / <a href="/transition/learning-center/">Learning Center</a></div>

  <div class="sidebar1">
<!--#include virtual="/transition/learning-center/nav.html"-->
    <!-- end .sidebar1 --></div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="employment";
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
    <h1 id="maincontent">Employment</h1>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
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

    
    <p align="center"><a class='videoPopUp' href="https://www.youtube.com/watch?v=1a9D7ghryUI"><img src="/transition/learning-center/employment/images/intro-video-pic.jpg" width="600" height="338" alt=""/></a></p>
 
 
 <hr />
    
<table width="100%" style="margin-bottom:15px;" class="thumbnailTable">
		<tr>
			<td align="center" valign="top">
				<img src="/transition/learning-center/benefits/images/ada-thumb.jpg" alt="" width="150" height="149" />
			</td>
			<td valign="middle">
				<h3><a href="/transition/learning-center/employment/finding-career-path.asp">Finding Your Career Path</a></h3>
			
		  </td>
		</tr>
	  <tr>
			<td align="center" valign="top">
				<img src="/transition/learning-center/employment/images/supported-employment-thumb.jpg" alt="" width="150" height="149" />
		  </td>
			<td valign="middle">
				<h3><a href="/transition/learning-center/employment/getting-a-job.asp">Getting a Job</a></h3>
				
		</td>
		</tr>
		<tr>
			<td align="center" valign="top">
				<img src="/transition/learning-center/employment/images/volunteer-thumb.jpg" alt="" width="150" height="149" />
			</td>
			<td valign="middle">
				<h3><a href="/transition/learning-center/employment/keeping-a-job.asp">Keeping a Job</a></h3>
				
		  </td>
		</tr>
		<tr>
			<td align="center" valign="top">
				<img src="/transition/learning-center/employment/images/fred-at-metro-thumb.jpg" alt="" width="150" height="150" />
			</td>
			<td valign="middle">
				<h3><a href="/transition/learning-center/employment/employment-supports.asp">Exploring Employment Supports</a></h3>
				
		  </td>
		</tr>
        <tr>
			<td align="center" valign="top">
				<img src="/transition/learning-center/employment/images/brandon-thumb.jpg" alt="" width="150" height="150" />
			</td>
			<td valign="middle">
				<h3><a href="/transition/learning-center/employment/self-advocacy.asp">Self Advocacy and Disability Disclosure</a></h3>
				
			</td>
		</tr>
        <tr>
			<td align="center" valign="top">
				<img src="/transition/learning-center/employment/images/workforce-thumb.jpg" alt="" width="150" height="150" />
			</td>
			<td valign="middle">
				<h3><a href="/transition/learning-center/employment/employment-rights.asp">Employment Rights and Reasonable Accommodations</a></h3>
				
			</td>
		</tr>
	</table>
 
 <hr />
 	<div class="resources">
    <h3>Additional Resources</h3>
    <table>
    <tr>
			<td valign="top" class="mobileHidden">
				<img src="/transition/learning-center/planning/images/prepare-employment.jpg" alt="" width="91" height="91" />
			</td>
		<td valign="top">
		  <h3><a href="/transition/learning-center/planning/preparing-employment.asp">Transition Planning &gt; Preparing for Employment</a></h3>
			<p>To successfully transition to the world of work, youth should use the school years to explore careers and engage in meaningful work experiences. Parents can help by becoming aware of community resources that help support employment, and advocate for social skill and work skill development through targeted activities listed in the IEP.</p>
</td>
		</tr>
        </table>
    </div>
 
 
<!--#include virtual="/transition/templates/footer.asp"-->
