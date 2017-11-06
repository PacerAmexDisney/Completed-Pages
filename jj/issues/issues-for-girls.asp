<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>Juvenile Justice - Issues For Girls - PACER Center</title>

<meta property="og:title" content="Juvenile Justice - Issues for Girls" />
<meta property="og:url" content="http://www.pacer.org/jj/issues/issues-for-girls.asp" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />

</head>
<body>

<!--#include virtual="/templates/page-header-nav.asp"-->

<div id="topbar">
<div id="breadcrumb">

<a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> /
</div>
	<h1>Juvenile Justice - Issues</h1>

</div>

<script type="text/javascript">
	// ID of the current Left Nav item
	var currId="issues-forgirls";
	// current subtree that should be displayed
	var showTree = "issues-sub";
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
<h2 class="nounderline">Issues for Girls</h2>

<p>While the rate of criminal behavior by boys  has decreased in the last decade, this is not the case for girls. In 2003 approximately 17 percent of  all female arrestees were of juveniles under age 18 (<a href="http://www2.fbi.gov/ucr/cius2009/index.html" target="_blank"><em>Crime in the United States, 2009</em></a>, Uniform Crime Reporting). This  statistic represents an increase of 150 percent since the period between  1980-90. </p>
<p>Girls enter the juvenile justice system by different pathways &nbsp;than boys. Most girls who enter the justice  system do so as a result of crimes such as chronic running away, (59 percent) &nbsp;truancy, prostitution (69 percent) and drug  use. &nbsp;Often they themselves have been victimized  by sexual abuse and trauma. Girls usually experience sexual victimization  before they commit their first offense. More than 75 percent of girls &nbsp;in corrections have mental health issues  (nearly three times as high as boys). Relationships are key to their problems  as well as a key to their survival. </p>
<p>More than half of girls in corrections settings feel no connection to  school, and their data show a growing rate of school dropout.</p>

<hr />
<h3>Additional Resources</h3>
<ul>
  <li><a href="http://www.tandfonline.com/doi/abs/10.1207/s15327035ex1302_5" target="_blank">Exceptionality: Girls With Mental Health Needs in the Juvenile Justice System: Challenges and Inequities Confronting a Vulnerable Population</a><br />
  Mary Magee Quinn, Jeffrey M. Poirier &amp; Lili Garfinkel</li>
</ul>

<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->