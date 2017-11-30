<!--#include virtual="/transition/templates/header.asp"-->



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Benefit Programs &amp; Supports - National Parent Center on Transition and Employment</title>

<meta name="description" content="A look at Benefit Programs &amp; Supports for transition-age youth, including Social Security/Ticket to Work and Vocational Rehabilitation.">
<!-- for Facebook -->          
<meta property="og:title" content="Benefit Programs &amp; Supports - National Parent Center on Transition and Employment" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/learning-center/benefits/" />
<meta property="og:description" content="A look at Benefit Programs &amp; Supports for transition-age youth, including Social Security/Ticket to Work and Vocational Rehabilitation." />

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
	var currId="benefits";
	var showTree = "benefits-sub";
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
    <h1 id="maincontent">Benefit Programs &amp; Supports</h1>
	<table width="100%">
		<tr>
			<td valign="top">
				<img src="/transition/learning-center/benefits/images/ss-ttw-thumb.jpg" alt="" width="150" height="150" />
			</td>
			<td valign="top">
				<h3><a href="/transition/learning-center/benefits/social-security.asp">Supplemental Social Security &gt;&gt;&gt;</a></h3>
				<p> Supplemental Security Income (SSI) is a program of the Social Security Administration. SSI provides monthly benefits to individuals with disabilities who have limited income and resources and can be a support for transition-aged students.</p>
			</td>
		</tr>
		<tr>
			<td valign="top">
				<img src="/transition/learning-center/benefits/images/vr-thumb.jpg" alt="" width="150" height="150" />
			</td>
			<td valign="top">
				<h3><a href="/transition/learning-center/benefits/vocational-rehab.asp">Vocational Rehabilitation &gt;&gt;&gt;</a></h3>
				<p>Every state has a federally funded agency that administers vocational rehabilitation (VR), designed specifically to assist individuals with disabilities pursue meaningful employment that corresponds with their strengths and interests.</p>
			</td>
		</tr>
	</table>
	
<!--#include virtual="/transition/templates/footer.asp"-->
