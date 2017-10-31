<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>Juvenile Justice - PACER Center</title>

<meta property="og:title" content="Juvenile Justice" />
<meta property="og:url" content="http://www.pacer.org/jj/" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />

<style type="text/css">
.headingblock{
	color: #ffbf34; 
	display:block; 
	padding:10px; 
	background:#006a8c;
	border:3px solid #006a8c;
	border-radius: 5px; 
	-moz-border-radius: 5px; 
	-webkit-border-radius: 5px; 
}
</style>

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
	var currId="overview";
	// current subtree that should be displayed
	var showTree = "issues-sub";
	var showTree2 = "";
</script>

<div id="leftbar">
<!--#include virtual="/jj/leftNav.html" -->

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
<h2 class="nounderline">Juvenile Justice Program Overview</h2>

<p>
PACER Center's Juvenile Justice Project serves parents and professionals in Minnesota through individual advocacy, training, and the ongoing development of new resources. PACER assists parents and professionals by:
</p>
<ul>
	<li>Helping parents work with the courts</li>
	<li>Informing parents and professionals on the educational rights of children and youth in short and long term correctional placements</li>
	<li>Training police officers about mental health issues and youth's rights under federal law</li>
</ul>
<p style="border-top: solid 1px #ccc; padding-top: 1em;">
PACER is committed to providing information about:
</p>
<ul>
	<li>The overrepresentation of youth with disabilities in the justice system</li>
	<li>The disproportionate number of persons of color in the justice system</li>
	<li>The increasing number of youth referred to court for behaviors that should be addressed through an IEP</li>
	<li>Matching disability needs with appropriate consequences, including educational and mental health services</li>
	<li>Ensuring that youth receive special education and transition services while incarcerated</li>
	<li>The development of outcome-based standards that promote accountability for both the child and the service providers</li>
</ul>

            <!--
<h3 class="related">title</h3>
<p class="date">Posted: </p>
<p>blurb</p>
-->



<h3 class="headingblock">Juvenile Justice News</h3>

<h3 class="related"><a href="http://www2.ed.gov/policy/gen/guid/correctional-education/index.html" target="_blank">Correctional Education Guidance Package</a></h3>
<p class="date">Posted: June 17, 2015</p>
<p>The U.S. Departments of Education and Justice have published guidance documents on educating students in juvenile justice facilities. The documents identify best practices, summarize related civil rights laws, and clarify requirements related to students with disabilities. <a href="http://www2.ed.gov/policy/gen/guid/correctional-education/index.html" target="_blank">Read more&gt;&gt;&gt;</a></p>
<p style="border-top: solid 1px #ccc; padding-top: 1em;">

  <div class="">
	<h3 class="headingblock"><!-- <img id="top-right-image" src="http://pacer.org/school-discipline-information/images/disability-guide.jpg" alt="" width="50%" /> -->Step by Step </h3> <br /> 
		<h3 class="related"><a href="/school-discipline-information/">School Discipline Guide</a></h3>
	<p>Parents of children with disabilities often ask:</p>
	<ul type="disc">
		<li>Can the school send my child home before the end of the school day?</li>
		<li>Can the school district suspend my child?</li>
		<li>Can the school district expel my child?</li>
		<li>What happens to my child&rsquo;s educational services if he or she is sent home, suspended, or expelled?</li>
	</ul>
	<p>This interactive guide will answer these and  many other questions. Whether your child is on an <span id="iep">Individualized Education Plan  (IEP)</span> or a <span id="504">Section 504 Plan</span>,     or if you suspect that your child has a disability  that affects his   or   her behavior at school, this guide will help you understand  the     complex disciplinary process for Minnesota public school children with      disabilities.</p>
	<h3><a href="/school-discipline-information/">Begin &gt;&gt;&gt;</a></h3>
</div>



<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp" -->
