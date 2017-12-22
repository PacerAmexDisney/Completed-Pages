<!--#include virtual="/transition/templates/header.asp"-->


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Exploring Employment Supports - National Parent Center on Transition and Employment</title>

<meta name="description" content="Many people with disabilities benefit from working with professionals and programs who specialize in supporting people with disabilities on the job. These programs vary depending on impact of the disability and funding sources. It is often challenging to know how to access services or what services are offered. Families and youth are encouraged to learn as much as they can about who can help support the employment process.">
<!-- for Facebook -->          
<meta property="og:title" content="Exploring Employment Supports - National Parent Center on Transition and Employment" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/learning-center/employment/employment-supports.asp" />
<meta property="og:description" content="Many people with disabilities benefit from working with professionals and programs who specialize in supporting people with disabilities on the job. These programs vary depending on impact of the disability and funding sources. It is often challenging to know how to access services or what services are offered. Families and youth are encouraged to learn as much as they can about who can help support the employment process." />

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
	var currId="employment-supports";
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
    <h1><strong><br />
    Exploring Employment Supports (Who helps)</strong> </h1>
    <p>Many people with disabilities benefit from working with professionals and programs who specialize in supporting people with disabilities on the job. These programs vary depending on impact of the disability and funding sources. It is often challenging to know how to access services or what services are offered. Families and youth are encouraged to learn as much as they can about who can help support the employment process.</p>
    <h2>American Job Centers</h2>
<p>American Job Centers (also known as Workforce Centers or One Stop Centers) are a key feature of the Workforce Innovation and Opportunity Act of 2014 (WIOA). These centers deliver a wide range of services through a network of centers in each state. They provide job training, education, and employment services at a single neighborhood location. Every individual, including those with disabilities, has the right to access the basic services offered by a Center. Services include help identifying  career interests and skills; information on employment and training opportunities; job search and placement assistance; and up-to-date information on job vacancies.</p>
  <h3>WIOA Youth Programs</h3>
  <p>American Job Centers also have programs that are designed to help youth reach their career and educational goals. Services for youth age 14-21 who are in school include after-school tutoring, study skills training, and instruction to help students graduate from high school. Services and employment supports are also available for youth age 16-24 who are out of school. Other examples of services for youth include:</p>
<ul>
  <li>Postsecondary preparation and transition activities</li>
  <li>Paid and unpaid work experiences &mdash; with an academic and occupational education component </li>
  <li>Occupational skill training, with a focus on recognized postsecondary credentials and in-demand occupations</li>
  <li>Leadership development activities (e.g., community service, peer-centered activities)</li>
  <li>Financial literacy education</li>
  <li>Entrepreneurial skills training</li>
  <li>Adult mentoring</li>
  <li>Comprehensive guidance and counseling, including drug and alcohol abuse counseling</li>
  <li>Follow-up services for at least 12 months after program completion</li>
</ul>
<h3>Youth with Disabilities</h3>
<p>Are youth with disabilities eligible for these services? Very likely. <em>All</em> youth with disabilities ages 16-24 who are not attending school are eligible for out-of-school services. Youth with disabilities up to age of 21 are eligible for in-school services if they are low-income or meet other eligibility criteria. It is very likely that youth with disabilities will meet the low income criteria for in-school youth because income for youth with disabilities is determined based only on the youth&rsquo;s income, not their family&rsquo;s income. Any youth with a disability who is eligible for government cash assistance programs, such as Supplemental Security Income (SSI), is automatically eligible for WIOA youth services. In addition, not all youth participants in a program are required to be low income. Up to 5 percent of participants in local WIOA youth programs do not even have to meet the low income criteria. </p>
  <p>People with disabilities have more choices in the American Job Center system than they had in the past. Individuals who need more than the basic services offered by American Job Centers can also apply for vocational rehabilitation services at the same place.</p>
  <p>Visiting an American Job Center is a great way for youth to explore employment supports available from federal and state-funded programs. A visit makes for a great career exploration activity for a youth on an IEP, or a possible resource for a youth self-advocate looking for adult employment support options. </p>

  
<div class="resources">
  <h3>Workforce Centers and WIOA Links</h3>
<ul>
	<li><a href="http://www.ncwd-youth.info/career-planning-begins-with-assessment" target="_blank">"Career Planning Begins with Assessment"</a> <i class="fa fa-external-link"></i><br />
    An Assessment guide written by the National Collaborative on Workforce and Disability for Youth to help for service providers find good career-related assessments and determine when a youth would benefit from assessment to determine the presence of a disability. </li>
	<li><a href="http://www.ncwd-youth.info/assets/info_briefs/infobrief_issue3.pdf" target="_blank">How Young People Can Benefit from One-Stop Centers, NCWD/Youth Information Brief</a> <i class="fa fa-external-link"></i></li>
	<li><a href="http://www.careeronestop.org/" target="_blank">Career One Stops</a> <i class="fa fa-external-link"></i><br />
    	    Your source for employment information and inspiration; a place to manage your career; tools to help job seekers, students, businesses and career professionals
	  
      <ul style="margin-top:10px;">
	    <li>Sponsored by the U.S. Department of Labor</li>
        <li><a href="http://www.careeronestop.org/LocalHelp/service-locator.aspx" target="_blank">Find an American Job Center Near You</a> <i class="fa fa-external-link"></i></li>
	    </ul>
	</li>
	<li><a href="http://www.clasp.org/issues/postsecondary/pages/wioa-creates-new-opportunities-to-improve-economic-and-career-success-for-low-income-youth-and-adults" target="_blank">Summary of Key Provisions of the 2014 Workforce Innovation and Opportunity Act</a> <i class="fa fa-external-link"></i></li>
    <li class="pdficonlist"><a href="/transition/learning-center/employment/pdf/hoff-wioa-youth-overview.pdf" target="_blank">WIOA Youth Services Overview from a Disability Perspective</a><br />
      This article from the Institute for Community Inclusion, UMass Boston, provides information on how youth with disabilities qualify for WIOA youth programs that serve both in-school and out-of-school youth age 14 to 24.</li>
</ul>
</div>

<h2>Supported Employment</h2>

<p>Supported Employment is for persons:</p>
<ul>
	<li>with the most significant disabilities, </li>
    <li>who need intensive or ongoing job support, </li>
    <li>who have traditionally been excluded from competitive work settings, or </li>
    <li>whose work has been interrupted or intermittent because of their disabilities. </li>
</ul>
<p>Supported employment is based on the principle that individuals with severe disabilities have the right to be employed by community businesses where they can earn comparable wages, work side-by-side with co-workers with or without disabilities, and experience all of the same benefits as other employees of the company. This idea is often referred to as &ldquo;Employment First.&rdquo; Supported employment assists people with severe disabilities by providing individualized supports that enable them to choose the kind of job they want and to become successful members of the workforce.</p>
  <p>Accessing supported employment services may vary by state, but the typical path is either through county Developmental Disabilities programs or through federally-funded Vocational Rehabilitation agencies (possibly referred to as VR, DVR, or DRS in your state). Some states have separate Vocational Rehabilitation agencies for persons who are blind.</p>
  <p>Organizations that deliver supported employment services include Day Training and Habilitation agencies (DT&amp;H), Community Rehabilitation Programs (CRP), and Community Support Programs (CSP). Parents are strongly encouraged to gather as much information as possible about agencies that offer employment support for persons with disabilities to insure a good fit.  </p>

  <div id="helpfulQuestion" class="extraSpace"><span id="likeButton"class="fa fa-thumbs-o-up"></span> <span id="dislikeButton" class="fa fa-thumbs-o-down"></span> Did you find this helpful?</div>
<br class="clearfloat" />


<div class="resources">
<h3>PACER Resources</h3>
<ul>
		        <li class="pdficonlist"><a href="/transition/resource-library/publications/NPC-7.pdf" target="_blank">Transition: Charting a Course for the Future</a></li>
         <li class="pdficonlist"><a href="http://www.pacer.org/transition/resource-library/publications/NPC-45.pdf" target="_blank">Opportunities to Work While Receiving Social Security Benefits: Work Incentives and the Ticket to Work Program</a></p></li>
	<li class="pdficonlist"><a href="/transition/resource-library/publications/NPC-25.pdf" target="_blank">The Supplemental Security Income Application Process</a></li>
  <li class="pdficonlist"><a href="http://www.pacer.org/transition/resource-library/publications/NPC-27.pdf" target="_blank">The Supplemental Security Income (SSI) Appeals Process</a></p></li>
  <li class="pdficonlist"><a href="http://www.dol.gov/odep/ietoolkit/publications/138.pdf" target="_blank">Q &amp; A Customized Employment Fact Sheet</a> <i class="fa fa-external-link"></i><br />
  A 3-page fact sheet on customized employment</li>
  <li class="pdficonlist"><a href="/transition/resource-library/publications/NPC-46a.pdf" target="_blank">Day Training and Supported Employment Programs: Information for Parents of Students with Developmental Disabilities</a></li>
  <li class="pdficonlist"><a href="/transition/resource-library/publications/NPC-46b.pdf" target="_blank">Day Training and Supported Employment Programs: Information for Parents – Questionnarie Worksheet</a></li>
  <li><strong>The Road to Work: An Introduction to Vocational Rehabilitation</strong><br />
    Discusses the issues related to the Rehabilitation Act, including eligibility criteria for vocational rehabilitation services, transition planning for high school students, the Individual Written Rehabilitation Program, appeals procedures, legislation and self-advocacy skills. Fourth Edition. 2009.  <a href="/publications/transition.asp" target="_blank">Order information here</a></li>
</ul>
  <h3>Other Resources</h3>
  <ul>
  <li><a href="http://www.apse.org/" target="_blank">APSE, the Association of Persons Supporting EmploymentFirst</a> <i class="fa fa-external-link"></i><br />
  A membership organization formed to improve and expand integrated employment opportunities, services, and outcomes for persons experiencing disabilities.
  <ul>
  <li><a href="http://www.apse.org/employment-first/" target="_blank">Employment First</a> <i class="fa fa-external-link"></i><br />
  This page provides links to APSE resources on the Employment First philosophy, movement, and progress.</li>
  <li class="pdficonlist"><a href="http://www.apse.org/wp-content/uploads/docs/QualityIndicators.pdf" target="_blank">Supported Employment Quality Indicators</a> <i class="fa fa-external-link"></i><br />
  This document from APSE was written as a guide for job development professionals but can also be used by families and people with disabilities to help them assess the effectiveness of potential community rehabilitation providers they have the option of working with.</li>
  </ul></li>
<li><a href="http://www.griffinhammis.com/customizedemployment.html" target="_blank">Customized Employment Resources from Griffin-Hammis Associates</a> <i class="fa fa-external-link"></i><br />
  This page provides a concise description of customized employment practices with links for further reading from Griffin-Hammis Associates, an international leader in the evolution of customized employment theory, training and practice.</li>
  <li><a href="http://rtc.umn.edu/prb/214/" target="_blank">Employment First Across the Nation: Progress on the Policy Front</a> <i class="fa fa-external-link"></i><br />
  A web publication from the <a href="https://ici.umn.edu/index.php?projects/view/6" target="_blank">Research and Training Center on Community Living (RTC), Institute on Community Integration</a> <i class="fa fa-external-link"></i> presenting state Employment First policies from across the U.S. through an array of online, interactive visual features. Users can investigate the various Employment First policy approaches that states have implemented, read the actual policies, and access additional resources to advance employment of people with disabilities.</li>
  <li><a href="http://www.dol.gov/odep/" target="_blank">Office of Disability Employment (ODEP)</a> <i class="fa fa-external-link"></i>, U.S. Department of Labor<br />
  ODEP's mission is to develop and influence policies and practices that increase the number and quality of employment opportunities for people with disabilities.
  <ul>
  <li><a href="http://www.dol.gov/odep/categories/workforce/CustomizedEmployment/what/index.htm" target="_blank">What Is Customized Employment?</a> <i class="fa fa-external-link"></i><br />
  A concise description of customized employment practices</li>
  <li><a href="http://www.dol.gov/odep/categories/workforce/CustomizedEmployment/practical/indicators.htm" target="_blank">Customized Employment: Principles and Indicators</a> <i class="fa fa-external-link"></i><br />
  Bullet points listing customized employment strategies, principles and indicators</li>
  <li class="pdficonlist"><a href="http://www.dol.gov/odep/ietoolkit/publications/138.pdf" target="_blank">Q &amp; A Customized Employment Fact Sheet</a> <i class="fa fa-external-link"></i><br />
  A 3-page fact sheet on customized employment</li>
  <li><a href="http://www.dol.gov/odep/topics/EmploymentFirst.htm" target="_blank">Employment First</a> <i class="fa fa-external-link"></i><br />
  This page reports on the priority of the U.S. Department of Labor, Office of Disability Employment Policy (ODEP) to invest in systems change efforts that result in increased community-based, integrated employment opportunities for individuals with significant disabilities as represented by the national movement called Employment First.</li>
  </ul></li></ul>
</div>


<div class="resources">
<h2>Related Videos</h2>

<p><a class='videoPopUp' href="http://www.youtube.com/watch?v=vT9pKlcTQMg"><img src="/transition/video/images/simply-said-vrs.jpg" width="200" height="200" alt=""/><br />
<i class="fa fa-play"></i> Simply Said – Introducing Vocational Rehabilitation Services</a></p>

<p><a class='videoPopUp' href="http://www.youtube.com/watch?v=TMRmnlu0RVg"><img src="/transition/video/images/simply-said-ssi.jpg" width="200" height="200" alt=""/><br />
<i class="fa fa-play"></i> Simply Said: How to Make SSI Work for You</a></p>

<p><a class='videoPopUp' href="https://www.youtube.com/watch?v=VOq5hf0MsHg"><img src="/transition/video/images/meet-ben-ticket-to-work.jpg" width="200" height="200" alt=""/><br />
<i class="fa fa-play"></i> Meet Ben! An Introduction to Ticket to Work</a></p>

<br /><p>For more videos on this topic,  visit our <a href="/transition/video/index.asp" target="_blank">Videos page</a>.</p>
</div>


<!--#include virtual="/transition/templates/footer.asp"-->
