<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>Juvenile Justice - PACER Center</title>

<meta property="og:title" content="Juvenile Justice" />
<meta property="og:url" content="http://www.pacer.org/jj/" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />

</head>
<body>

<!--#include virtual="/templates/page-header-nav.asp"-->

<div id="topbar">
<div id="breadcrumb">

<a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> /
</div>
	<h1>Juvenile Justice</h1>

</div>

<script type="text/javascript">
	// ID of the current Left Nav item
	var currId="section504";
	// current subtree that should be displayed
	var showTree = "currentPageSubtree";
	var showTree2 = "secondarySubtreeIfNeeded";
</script>

<div id="leftbar">
<!--#include virtual="/templates/leftNav.html" -->
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
<h2>Section Title</h2>
<img class="crclImg fltrt" src="/puppets/images/Puppets-and-Slide.jpg" width="250" height="333" alt="Count Me In puppets on a slide." /><br />
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur illum cupiditate numquam quos ea autem odit quibusdam illo, nostrum animi, praesentium nesciunt excepturi tempora fugiat nulla sunt suscipit. Explicabo, quo!</p>

<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->