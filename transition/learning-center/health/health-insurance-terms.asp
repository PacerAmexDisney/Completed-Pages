<!--#include virtual="/transition/templates/header.asp"-->


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Health Insurance Terms - National Parent Center on Transition and Employment</title>

<meta name="description" content="A look at important health insurance terms." />
<!-- for Facebook -->          
<meta property="og:title" content="Health Insurance Terms - National Parent Center on Transition and Employment" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/learning-center/health/health-insurance-terms.asp" />
<meta property="og:description" content="A look at important health insurance terms." />

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
<style type="text/css">
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

<div class="breadcrumb"> <a href="/transition/">Home</a> / <a href="/transition/learning-center/">Learning Center</a> / <a href="/transition/learning-center/health/">Health</a></div>

  <div class="sidebar1">
<!--#include virtual="/transition/learning-center/nav.html"-->
    <!-- end .sidebar1 --></div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="health-terms";
	var showTree = "health-sub";
	var showTree2 = "none";
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
    <h1>Health Insurance Terms</h1>
        <img src="/transition/learning-center/health/images/sample-insurance-card.jpg" width="350" height="504" alt="" class="fltrt" />
<p><strong>Health insurance</strong> is insurance that covers all or part of a covered individual&rsquo;s medical and surgical expenses. The insurer will pay for an agreed upon amount of provider services, medications, hospital care, and special equipment, depending on the health insurance plan selected. Individuals may still have to pay a co-pay or a percentage of the cost of care, called coinsurance (see below). Health insurance also covers common preventive health services such as immunizations that help people stay healthy. Becoming familiar with several key health insurance terms will help youth and their families make informed decisions when deciding what health care plan best meets their needs. </p>
    <p><strong>Co-insurance</strong> is the insured person&rsquo;s share of the costs of a covered health care service. It is often calculated as a percent (for example, 20%) of the allowed amount for the service. You pay co-insurance plus any deductibles you owe. </p>
    <p><strong>Co-payment or copay</strong> is the amount an individual is required to pay for a covered service (for example, $30). It is usually paid at the time you receive the service. </p>
    <p><strong>Deductible</strong> is the amount you must pay for health care services <em>before</em> your health insurance or plan begins to pay. For example, if your deductible is $1,000, your insurance provider won&rsquo;t pay anything until you&rsquo;ve met your $1,000 deductible (except for preventive care).</p>
    <p><strong>Premium</strong> is the amount an individual must pay to the insurance provider for health insurance coverage. It is not included in the deductible, copayments, or co-insurance. Employers and/or families usually pay it monthly, quarterly, or yearly.</p>
    <p><strong>Network</strong> is the facilities, providers, and suppliers your health insurer has contracted with to provide health care services. Contact your insurance company to find out which providers are part of their network, or &ldquo;in-network.&rdquo; If a provider is &ldquo;out-of-network,&rdquo; it might cost you more to see them.</p>
    <p><strong>Source</strong>: <a href="https://www.dol.gov/odep/pdf/HealthCareCareerTransitionQuickGuide.pdf" target="_blank"><em>Transition Quickguide: Take Charge of Planning and Managing Your Own Health and Career </em>Goals</a>, a document  created through an Alliance with the Youth Transitions Collaborative, Got Transition/Center for Health Care Transition Improvement, and the U.S. Department of Labor&rsquo;s Office of Disability Employment Policy.</p>

    


<!--#include virtual="/transition/templates/footer.asp"-->
