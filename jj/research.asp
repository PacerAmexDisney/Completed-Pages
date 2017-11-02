<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>Juvenile Justice - Research - PACER Center</title>

<meta property="og:title" content="Juvenile Justice - Research" />
<meta property="og:url" content="http://www.pacer.org/jj/research.asp" />
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
	var currId="research";
	// current subtree that should be displayed
	var showTree = "none";
	var showTree2 = "none";
</script>

<div id="leftbar">
<!--#include virtual="/jj/nav.html" -->
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
<h2 class="nounderline">Research</h2>

<ul>
<li class="pdficonlist">&ldquo;<a href="https://www.ncjrs.gov/pdffiles1/ojjdp/227730.pdf" target="_blank">Youth&rsquo;s Characteristics and  Backgrounds: Findings From the Survey of Youth in Residential Placement</a>,&rdquo;<br />
  The Office of Juvenile Justice and Delinquency Prevention (OJJDP)  Bulletin</li>
<li class="pdficonlist"><a href="/jj/pdf/childmentalhealth.pdf" target="_blank">Child Development,  Children's Mental Health and the Juvenile Justice System: Principles for Effective  Decision-Making</a>. <br />
Arredondo, M.D., David E., Stanford Law &amp; Policy Review</li>
<li class="pdficonlist"><a href="/jj/pdf/cradle-prison-pipeline-minnesota-2009-fact-sheet.pdf" target="_blank">Cradle to Prison Pipeline&reg; Factsheet Minnesota</a><br />
  Children&rsquo;s Defense Fund 
The  Future of Children Vol 18 Number 2 Fall 2008&nbsp;  Juvenile Justice</li>
<li><a href="http://www.childrensdefense.org/newsroom/child-watch-columns/child-watch-documents/promising-models-for-reforming.html" target="_blank">Promising  Models for reforming Juvenile Justice Systems</a><br />
  Children's Defense Fund
</li>
</ul>

<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->