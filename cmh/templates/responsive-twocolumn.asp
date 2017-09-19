<!--#include virtual="/cmh/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>Template  - Children&#039;s Mental Health and Emotional or Behavioral Disorders Project</title>

<meta property="og:title" content="" />
<meta property="og:url" content="" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />

</head>
<body>

<!--#include virtual="/cmh/templates/page-header-nav.asp"-->

<div id="topbar">
<div id="breadcrumb">

<a href="/cmh/">Home</a> / <a href="/cmh/">CMH page</a> /
</div>
	<h1>Two Cloumn Page Heading</h1>
</div>

<script type="text/javascript">
	// ID of the current Left Nav item
	var currId="section504";
	// current subtree that should be displayed
	var showTree = "currentPageSubtree";
	var showTree2 = "secondarySubtreeIfNeeded";
</script>

<div id="leftbar">
<!--#include virtual="/cmh/templates/leftNav.html" -->
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
<h2>Content Section Title</h2>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil alias cupiditate, voluptatibus laborum consequuntur aliquam animi quia, dolorem qui unde recusandae ipsam iusto veritatis possimus numquam, ab vitae hic perspiciatis.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus deserunt repudiandae, deleniti nisi aperiam quaerat ab voluptates labore expedita consectetur quas veritatis at officia mollitia qui aliquid iste! Consequuntur, minus!</p>


<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->