<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>F2F HIC - Health Care Professionals</title>

<meta property="og:title" content="F2F HIC - Health Care Professionals" />
<meta property="og:url" content="http://www.pacer.org/health/For-Medical-Professionals/" />
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
	var currId="fmp";
	// current subtree that should be displayed
	var showTree = "health-fmpsub";
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

<div id="pagecontent">

<!--BEGIN CONTENT-->

<h2>For Medical Professionals</h2>
<ul>
	<li>
		<h3><a href="/health/For-Medical-Professionals/transitioning-patients.asp">Transitioning patients from Pediatric to Adult Care</a></h3>
		<p>One way to improve health outcomes for youth with special health care needs is ensuring that they successfully transition from pediatric to adult health care. Find research based resources here to  successfully transition these patients  to adult health care. </p>
	</li>
	<li>
		<h3><a href="/health/For-Medical-Professionals/communicating-effectively.asp">Communicating Effectively with Diverse families</a></h3>
		<p>Building relationships and involving parents of children with special health care needs with diverse cultural backgrounds.</p>
	</li>
	<li>
		<h3><a href="/health/For-Medical-Professionals/medical-home.asp">Medical Home</a></h3>
		<p>A coordinated, family-centered way to provide care for  children with special health care needs and disabilities. Through a medical  home, a doctor and his or her staff coordinate care and information among  health, education, insurance, and social service professionals</p>
	</li>
	<li>
		<h3><a href="/health/For-Medical-Professionals/family-centered-care.asp">Family- Centered Care</a> </h3>
		<p>Patient and  family-centered care is an approach to the delivery of health care that is  based on the idea of partnership among patients, families, and providers. This  philosophy recognizes the importance of the family in the patient&rsquo;s life, and  incorporates the family&rsquo;s perspective into medical decision-making. This type  of care is particularly important to families of children with special</p>
	</li>
	<li>
		<h3><a href="/health/For-Medical-Professionals/financing-options.asp">Directing Patients to Health Care financing options</a></h3>
		<p>Up to date information on public health care options including the Affordable Care Act, Social Security options and Minnesota specific health care programs.</p>
	</li>
	<li>
		<h3><a href="/health/For-Medical-Professionals/community-resources.asp">Community Integration and Support Resources</a></h3>
		<p>Connecting families and youth with special health care needs to organizations and resources in the areas of independent living and community involvement.</p>
	</li>
	<li>
		<h3><a href="/health/For-Medical-Professionals/technology-options.asp">Technology options</a></h3>
		<p>Assistive technology can be a device or service that helps children with disabilities participate more independently within their environment at home or school.</p>
	</li>
	<li>
		<h3><a href="/health/For-Medical-Professionals/pediatric-resident-training.asp">Pediatric Resident Training Program</a></h3>
		<p>Physicians and families working together to improve the system of care for children and youth with special health care needs.</p>
	</li>
</ul>

<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->
