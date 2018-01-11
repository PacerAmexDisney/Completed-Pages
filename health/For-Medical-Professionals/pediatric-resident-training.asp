<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>F2F HIC - Family-Centered Care</title>

<meta property="og:title" content="F2F HIC - Family-Centered Care" />
<meta property="og:url" content="http://www.pacer.org/health/For-Medical-Professionals/pediatric-resident-training.asp" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />

</head>


<body>
<!--#include virtual="/templates/page-header-nav.asp"-->

<div id="topbar">

<div id="breadcrumb"><a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> / <a href="/health/health-care-providers.asp">Health</a> / <a href="/health/For-Medical-Professionals/index.asp">For Medical Professionals</a> /

  </div>
	<h1> Health Information Center</h1>
</div>

<script type="text/javascript">
	// ID of the current Left Nav item
	var currId="fmpsub-resident";
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

<h2>Pediatric Resident Training Program</h2>
<p>The Pediatric Resident Training Program (PRTP) is a  three-part teaching program on family-centered care for Pediatric residents at  the University of Minnesota Medical School. The purpose is to teach principles  of family-centered care and to provide a family&rsquo;s perspective on health care  for children and youth with special health care needs. The focus is on adolescent youth and how they are addressing issues related to transition.</p>
<ol>
	<li>Pediatric residents meet with a PRTP facilitator for a  session on working with families and youth in a medical home and a general  overview of family-centered care. Transitional aspects of adolescence are reviewed for youth with special health care needs.</li>
	<li>Residents schedule and visit a family in their home. The  family and youth share information about their family, providing perspectives  and insights into what makes for collaborative, coordinated, respectful care, and how they are pursuing transitional goals. </li>
	<li>The residents have a processing session with the  facilitator and family, when possible, to share thoughts about the home visit  and to provide written feedback in an evaluation form. In addition, they tour PACER,  are introduced to such projects as  the Bully Prevention Program and the Simon Technology Center, and they have a discussion with  multicultural advocates.<br />
	</li>
</ol>


<p>Are you looking for a way to increase the number of medical professionals prepared to care for youth and young adults with special health care needs or disabilities in your community?  PACER&rsquo;S Pediatric Resident Training Program (PRTP) Toolkit can help.  The toolkit contains detailed information on how to provide training to health care professionals working with youth and young adults who are transitioning from pediatric health care to adult providers.</p>
<p>PACER&rsquo;s Pediatric Resident Training Program (PRTP) Toolkit is now available for you to train health care professionals in your area. It includes information on developing partnerships, identifying participants, outlining training needs, organizing orientation sessions, matching health care professionals with families, and arranging a debriefing session.  It also includes forms for collecting feedback from health care professionals who participate in the program and the families they visit. Additional details about the program are available in the attached document.</p>
<p>To learn more about the program, or obtain an electronic copy of the toolkit, please contact: <a href="mailto:Linda.Cherwitz@pacer.org">Linda.Cherwitz@pacer.org</a></p>

<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->
