<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>Minnesota School-wide Positive Behavior Interventions and Supports (SW-PBIS): Publications - PACER Center</title>

<meta property="og:title" content="Minnesota School-wide Positive Behavior Interventions and Supports (SW-PBIS): Publications" />
<meta property="og:url" content="http://www.pacer.org/pbis/publications.asp" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />

<style type="text/css">
.handouts td {
	vertical-align: top;
	padding: .3em;
}
</style>

</head>
<body>

<!--#include virtual="/templates/page-header-nav.asp"-->

<div id="topbar">
<div id="breadcrumb">

<a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a>  / <a href="index.asp">Minnesota School-wide Positive Behavior Interventions and Supports (SW-PBIS)</a> / Publications
</div>
	<h1>Minnesota School-wide Positive Behavior Interventions and Supports (SW-PBIS)</h1>

</div>

<script type="text/javascript">
	// ID of the current Left Nav item
	var currId="pubs";
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
<h2>Publications</h2>
<h3>Articles</h3>
<p>
<a href="pdf/PBISfeb08.pdf">School-wide Positive Behavior Interventions and Supports (SW-PBIS): What Parents Need to Know</a>
<img border="0" src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" />
</p>

<h3>Handouts</h3>
<table class="handouts">
<tr>
	<td><a href="http://www.pacer.org/parent/php/php-c84.pdf">Accessing County Children's Mental Health Services for Your Child</a></td>
	<td style="width: 15%;">PHP-c84</td>
</tr>
<tr>
  <td><a href="http://www.pacer.org/parent/php/php-c144.pdf">Planning for a meeting about your child's behavior needs</a></td>
  <td>PHP-c144</td>
</tr>
<tr>
	<td><a href="http://www.pacer.org/parent/php/PHP-c85.pdf">Residential Programs for Children with Emotional and Behavioral Disorders: Things for Parents to Consider</a></td>
	<td>PHP-c85</td>
</tr>
<tr>
	<td><a href="http://www.pacer.org/parent/php/PHP-c81.pdf">What Is An Emotional or Behavioral Disorder?</a></td>
	<td>PHP-c81</td>
</tr>
<tr>
	<td><a href="http://www.pacer.org/parent/php/PHP-c106.pdf">Young Children with Challenging Behavior: When Should Parents Be Concerned?</a></td>
	<td>PHP-c106</td>
</tr>
</table>

<h3>Books</h3>
<p><em><strong>Educating Your Child with an Emotional or Behavioral Disorder</strong></em><br />
Explains how children and adolescents with emotional disturbance can get services and supports to succeed in school environments, including the regular classroom, and how parents can utilize positive communication skills in developing partnerships between home and school.
$5 | 10+ copies, $4 each | PHP-a21
</p>

<p><em><strong>Honorable Intentions: A Parent's Guide to Educational Planning for Children with Emotional or Behavioral Disorders</strong></em><br />
A comprehensive guide for parents, advocates and others. Addresses assessment, IEPs, school discipline, mental health services, communication, resolving differences, and more. 2003.
$15 | 10+ copies, $12 each | PHP-a29
</p>

<p style="border-top: solid 1px #ccc; padding-top: .5em; margin-top: 2em; font-style: italic;">
The school-wide PBIS web site was developed from a grant from the Minnesota Department of Education.
</p>

<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->