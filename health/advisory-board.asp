<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>Parent-to-Parent Family-to-Family Health Information Center</title>

<meta property="og:title" content="Parent-to-Parent Family-to-Family Health Information Center" />
<meta property="og:url" content="http://www.pacer.org/health/advisory-board.asp" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />

</head>


<body>
<!--#include virtual="/templates/page-header-nav.asp"-->

<div id="topbar">
<div id="breadcrumb">

	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> /

</div>
  <h1>Health Information Center</h1>
</div>

<script type="text/javascript">
	// ID of the current Left Nav item
	var currId="none";
	// current subtree that should be displayed
	var showTree = "currentPageSubtree";
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

<h2 class="nounderline">PACER Center&rsquo;s Dental and Medical Advisory Board Members</h2>
<ul class="nobullet" style="font-weight:bold; font-size:1.2em">
      <li>Andy Barnes, MD</li>
      <li>Kendra J. Bjoraker, PhD, LP</li>
      <li>Barb Dalbec, RN, PHN</li>
      <li>Karl Eckberg, MD</li>
	  <li>Barry Garfinkel, MD</li>
	  <li>Linda Goldman Cherwitz, MD, PACER Center, Health Advocate</li>
	  <li>Paula Goldberg, PACER Center, Executive Director</li>
	  <li>Mark Greenwood, DDS</li>
      <li>Nathan Herr, MD</li>
      <li>Maggie Kappelman, MD</li>
      <li>Mary Kautto, MA, BSN, RN</li>
      <li>Pat Lang, PACER Center, Program Coordinator Health Information Center </li>
      <li>Barb Lundeen, RN, PHN, MA</li>
      <li>Wendy Ringer, PACER Center, Health Information Center</li>
      <li>Daniel Saltzman, MD</li>
      <li>Barb Sisco, MSEd</li>
      <li>Cheryl Smoot, RN, PHN, MPH</li>
      <li>Read Sulik, MD</li>
      <li>Nicole Williams, MD</li>
      <li>Karen Wills, MD</li>
      <li>Laurel Wills, MD</li>
      <li>Joseph Wooley, MD</li>
      <li>Ericka Yoney, RN, LSN</li>
</ul>


<p>
For more information about the  Health Information Center, please contact <a href="mailto:wendy.ringer@pacer.org">Wendy Ringer</a>: (952)838-9000 Voice; (952)838-0190 TTY.
</p>

<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->
