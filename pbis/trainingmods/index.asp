<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>Minnesota School-wide Positive Behavior Interventions and Supports (SW-PBIS): Training Modules - PACER Center</title>

<meta property="og:title" content="Minnesota School-wide Positive Behavior Interventions and Supports (SW-PBIS): Training Modules" />
<meta property="og:url" content="http://www.pacer.org/pbis/trainingmods" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />

</head>
<body>

<!--#include virtual="/templates/page-header-nav.asp"-->

<div id="topbar">
<div id="breadcrumb">

<a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> / <a href="../">Minnesota School-wide Positive Behavior Interventions and Supports</a> / Training Modules
</div>
	<h1>Minnesota School-wide Positive Behavior Interventions and Supports (SW-PBIS)</h1>

</div>

<script type="text/javascript">
	// ID of the current Left Nav item
	var currId="training";
	// current subtree that should be displayed
	var showTree = "none";
	var showTree2 = "none";
</script>

<div id="leftbar">
<!--#include virtual="/pbis/nav.html" -->
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
<h2>Training Modules</h2>
<h3>Positive Behavior Interventions and Supports:</h3>
<hr />
<ul>

<li class="pdficonlist">
<h4><a href="/pbis/trainingmods/pdf/01-SW-PBIS-Improve-Your-Childs-Life-and-Future.pdf" target="_blank">Use these principles to improve your child's life and future <span class="fa fa-external-link"></span></a> <span class="date">(13 pages)</span></h4>
</li>

<li class="pdficonlist">
<h4><a href="/pbis/trainingmods/pdf/02-SW-PBIS-Using-FBA-to-Understand-Behavior.pdf" target="_blank">Using a Functional Behavioral Assessment to Understand Behavior <span class="fa fa-external-link"></span></a> <span class="date">(11 pages)</span></h4>
	</li>

<li class="pdficonlist">
<h4><a href="/pbis/trainingmods/pdf/03-SW-PBIS-Leads-to-better-education-for-all-students.pdf" target="_blank">Learn how effective behavior support at school leads to better education for all students <span class="fa fa-external-link"></span></a> <span class="date">(16 pages)</span></h4>
</li>

<li class="pdficonlist">
<h4><a href="/pbis/trainingmods/pdf/04-SW-PBIS-Using-PBIS-at-Home-and-in-the-Community.pdf" target="_blank">Supporting your child&rsquo;s positive behavior at home and in the community <span class="fa fa-external-link"></span></a> <span class="date">(17 pages)</span></h4>
</li>

<li class="pdficonlist">
<h4><a href="/pbis/trainingmods/pdf/05-SW-PBIS-Parent-Involvement-and-Leadership.pdf" target="_blank">Parent Involvement and Leadership <span class="fa fa-external-link"></span></a> <span class="date">(13 pages)</span></h4>
</li>



</ul>

<div id="pageextender" style="clear:both">&nbsp;</div>

<p style="border-top: solid 1px #ccc; padding-top: .5em; margin-top: 2em; font-style: italic;">
The school-wide PBIS web site was developed from a grant from the Minnesota Department of Education.
</p>

<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->