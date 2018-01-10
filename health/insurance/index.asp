<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>F2F HIC - Health Care Professionals</title>

<meta property="og:title" content="F2F HIC - Health Care Professionals" />
<meta property="og:url" content="http://www.pacer.org/health/insurance/index.asp" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />

</head>

<body>
<!--#include virtual="/templates/page-header-nav.asp"-->


<div id="topbar">
<div id="breadcrumb"><a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> / <a href="/health/">Health</a> /

  </div>
	<h1> Health Information Center</h1>
</div>


<script type="text/javascript">
	// ID of the current Left Nav item
	var currId="insurance";
	// current subtree that should be displayed
	var showTree = "health-insurancesub";
	var showTree2 = "secondarySubtreeIfNeeded";
</script>

<div id="leftbar">
<!--#include virtual="/health/leftNav.htm" -->
</div>

<script type="text/javascript">
	// set current page
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
	// collapse all subtrees except the one targeted above that the current page exists in.
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "treemenu") {
			if (subTrees[i].id != showTree && subTrees[i].id != showTree2) {
				subTrees[i].className = "treemenuhidden";
			}
		}
	}
</script>

<div id="maincontent">

<div id="pagecontent" style="min-height:500px;">

<!--BEGIN CONTENT-->

<h2>Insurance &amp; Services</h2>
<ul>
	<li>
		<h3><a href="/health/insurance/health-insurance-info.asp">Public and Private Health Insurance Information</a></h3>
		<p>An overview of the Medical Assistance programs available to Minnesota residents. </p>
	</li>
	<li>
		<h3><a href="/health/insurance/applied-behavior-analysis.asp">Applied Behavior Analysis</a></h3>
		<p>Applied Behavior Analysis is a behavioral teaching approach that is divided into  easy-to-learn steps.&nbsp; Praise or other rewards are used to motivate the  child so that the desired behavior increases and the problem behavior  decreases. &nbsp;The child&rsquo;s progress is recorded and tracked so that the  teaching program can be adjusted as needed.&nbsp; </p>
	</li>
</ul>

<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->
