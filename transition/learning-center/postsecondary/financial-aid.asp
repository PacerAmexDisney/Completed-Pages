<!--#include virtual="/transition/templates/header.asp"-->


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Postsecondary Financial Aid - National Parent Center on Transition and Employment</title>

<meta name="description" content="It is crucial that youth and families begin planning for how postsecondary education costs will be covered as early as possible. This includes knowing when to submit financial aid paperwork, accessing programs that may help cover certain costs and using other savings strategies.">
<!-- for Facebook -->          
<meta property="og:title" content="Postsecondary Financial Aid - National Parent Center on Transition and Employment" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/learning-center/postsecondary/financial-aid.asp" />
<meta property="og:description" content="It is crucial that youth and families begin planning for how postsecondary education costs will be covered as early as possible. This includes knowing when to submit financial aid paperwork, accessing programs that may help cover certain costs and using other savings strategies." />

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
	var currId="postsecondary-financial";
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
    <h1><strong>Financial Aid</strong> </h1>
    <p>It is crucial that youth and families begin planning for how postsecondary education costs will be covered as early as possible. This includes knowing when to submit financial aid paperwork, accessing programs that may help cover certain costs and using other savings strategies. </p>

  <h2>Videos</h2>
  <p><a class='videoPopUp' href="https://www.youtube.com/watch?v=jwfsPUty2OQ"><img src="/transition/video/images/net-price-calculator.jpg" width="201" height="200" alt=""/><br />
<i class="fa fa-play"></i> College Costs: Net Price Calculator</a></p>

  <p><a class='videoPopUp' href="https://www.youtube.com/watch?v=H_iS7gmQd9o"><img src="/transition/video/images/overview-of-financial-aid.jpg" width="200" height="199" alt=""/><br />
<i class="fa fa-play"></i> Overview of the Financial Aid Process</a></p>

  <p><a class='videoPopUp' href="https://www.youtube.com/watch?v=1c1gNefSw78"><img src="/transition/video/images/after-the-fafsa.jpg" width="200" height="200" alt=""/><br />
<i class="fa fa-play"></i> After the FAFSA: What Happens Next</a></p>

  <p><br/>For more videos on this topic,  visit our <a href="/transition/video/index.asp" target="_blank">Videos page</a>.</p>

	<div id="helpfulQuestion" class="extraSpace"><span id="likeButton"class="fa fa-thumbs-o-up"></span> <span id="dislikeButton" class="fa fa-thumbs-o-down"></span> Did you find this helpful?</div>
<br class="clearfloat" />

<div class="resources">
<h2>Resources</h2>
<ul>
	<li><a href="https://www.goodcall.com/education/fully-accessible-guide-paying-college-students-disabilities/" target="_blank">The Accessible Guide to Paying for College for Students with Disabilities</a> <i class="fa fa-external-link"></i><br />
	  Created by the college and careers experts at GoodCall.com, the purpose of this guide is to provide comprehensive information about how to pay for college as well as scholarships and other information that is specifically helpful for students with disabilities.  The design, formatting and style were developed to be easily interpreted by students with visual, hearing and mobility disabilities and was built to work with a broad range of assistive technologies. It includes a list of disability specific scholarships and rights for college students with disabilities.</li>
    <li><a href="http://collegecost.ed.gov/catc/Default.aspx" target="_blank">College Affordability and  Transparency Center</a> <i class="fa fa-external-link"></i><br />
    This&nbsp;new US Department of Education Web  site&nbsp;helps&nbsp;students and their families determine which colleges have  the highest and lowest tuition, how much career and vocational education  programs cost, and how fast college costs going up.&nbsp;</li>
    <li><a href="http://www.washington.edu/doit/college-funding-and-scholarships" target="_blank">College Funding for Students with Disabilities</a> <i class="fa fa-external-link"></i><br />
    Fact sheet from the University of Washington's DO-IT program </li>
    <li><a href="https://www.disability.gov/resource/disability-govs-guide-student-financial-aid/" target="_blank">Disability.Gov’s Guide to Student Financial Aid</a> <i class="fa fa-external-link"></i><br />
    Provides a list of resources with information on federal, state and local scholarships and loans for students with disabilities.</li>
    <li class="pdficonlist"><a href="https://www.heath.gwu.edu/files/2015_FinAid-FINAL_508.pdf" target="_blank">2015-2016 Planning Ahead: Financial Aid for Students with Disabilities</a> <i class="fa fa-external-link"></i><br />
      This resource guide from the HEATH Resource Center explains financial aid and highlights various scholarship resources for youth with disabilities.<br />
    </li>
    <li><a href="http://mn.db101.org/mn/situations/youthanddisability/education/program2d.htm" target="_blank">Funding Your Education</a> <i class="fa fa-external-link"></i><br />
      Section of Minnesota's Disability 101: web site providing information to Minnesota youth with disabilities and their families looking at a variety of ways to pay for postsecondary education.</li>
    <li><a href="https://www.scholarships.com/" target="_blank">Scholarship.com</a> <i class="fa fa-external-link"></i></li>
    <li><a href="http://www.affordablecollegesonline.org/college-resource-center/affordable-colleges-for-students-with-disabilities/" target="_blank">Scholarships for Students with Disabilities | AffordableCollegesOnline.org</a> <i class="fa fa-external-link"></i><br />
      This page on the Affordable Colleges Online web site features selective scholarship opportunities that students with disabilities may apply for to help pay for school.</li>
<li><a href="http://studentaid.ed.gov/" target="_blank">Student Aid.gov</a> <i class="fa fa-external-link"></i><br />
A U.S. Department of Education web site that can provide students with an early estimate of their eligibility for federal student financial assistance and reduce the amount of time it will take to complete the Free Application for Federal Student Aid (FAFSA), the qualifying form for all federal student financial aid.</li>
 			<li>&quot;<a href="http://www.mappingyourfuture.org" target="_blank">Mapping Your Future</a>&quot; <i class="fa fa-external-link"></i><br />
          A neutral,  non-proprietary, and non-commercial Web site sponsored by student loan guaranty  agencies &ndash; many of which are nonprofit or state agencies &ndash; from around the  country. While not focused on disability issues, it provides resources on  career selection, college planning, and money management tools helpful for all  students and&nbsp;families.</li>
 			<li><a href="https://studentaid.ed.gov/" target="_blank">U.S. Department of Education &mdash; Federal Student Aid</a> <i class="fa fa-external-link"></i><br />
          Web site with information on preparing for and funding education beyond high school. It has information geared to students from elementary school to high school as well as their parents to help families make prepare for and make informed decisions regarding academic preparation, choosing a school and applying for financial aid.</li>
<li><a href="https://fafsa.ed.gov/" target="_blank">FAFSA On the Web</a> <i class="fa fa-external-link"></i></li>
<li><a href="https://bigfuture.collegeboard.org/pay-for-college/financial-aid-101/financial-aid-faqs" target="_blank">Financial Aid FAQs</a> <i class="fa fa-external-link"></i></li>
 </ul>

</div>



<!--#include virtual="/transition/templates/footer.asp"-->
