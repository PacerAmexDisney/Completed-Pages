<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>Puppets - Count Me In - PACER Center</title>

<meta property="og:title" content="Puppets - Count Me In" />
<meta property="og:url" content="http://www.pacer.org/puppets" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />

</head>
<body>

<!--#include virtual="/templates/page-header-nav.asp"-->

<div id="topbar">
<div id="breadcrumb">

	<a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> / PACER Puppets
</div>
	<h1>PACER Puppets</h1>

</div>

<script type="text/javascript">
	// ID of the current Left Nav item
	var currId="count";
	// current subtree that should be displayed
	var showTree = "none";
	var showTree2 = "none";
</script>

<div id="leftbar">
<!--#include virtual="/puppets/nav.html" -->
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
<h2>COUNT ME IN&reg;</h2>
<em>&quot;The program has the right amount of sensitivity and humor. I really think this showed students that they have things in common with people with disabilities.&quot;</em><br />
- A Minnesota teacher
<br />
<p>
The COUNT ME IN puppet program is designed to help children and adults learn about disabilities and chronic illnesses in an effort to bridge the gap between typical students and those with disabilities.  This program, originated in 1979, has reached over 350,000 children and adults and continues to teach the message that all children want to play and learn to the best of their abilities.
</p>
<p>
COUNT ME IN features six endearing, child-size, multicultural puppets that portray children with disabilities.  These puppets have proven to be effective communicators of the message of understanding and acceptance, helping to dispel fears, myths and misconceptions about persons with disabilities.
</p>

<p>
The preschool/kindergarten program is designed for 4-6 year olds and includes:
</p>
<ul>
	<li><a href="cast.asp#gina">Gina</a>, who is blind and uses a cane</li>
	<li><a href="cast.asp#jay">Jay</a>, who is deaf or hard of hearing</li>
	<li><a href="cast.asp#sally">Sally</a>, who has spina bifida and uses a wheelchair</li>
</ul>
<p>
The elementary core program is geared to 1st - 4th grade and includes:
</p>
<ul>
	<li><a href="cast.asp#gina">Gina</a>, who is blind</li>
	<li><a href="cast.asp#jay">Jay</a>, who is deaf or hard of hearing</li>
	<li><a href="cast.asp#sally">Sally</a>, who has cerebral palsy and uses a wheelchair</li>
	<li><a href="cast.asp#corey">Corey</a>, who has Down syndrome</li>
</ul>
<p>
Additional puppets and scripts which may be available include:
</p>
<ul>
	<li><a href="cast.asp#ben">Ben</a> - ADHD</li>
	<li><a href="cast.asp#bridget">Bridget</a> - juvenile rheumatoid arthritis</li>
	<li><a href="cast.asp#carmen">Carmen</a> - epilepsy</li>
	<li><a href="cast.asp#connor">Connor</a> - Tourette syndrome</li>
	<li><a href="cast.asp#danny">Danny</a> - muscular dystrophy</li>
	<li><a href="cast.asp#eric">Eric</a> - diabetes</li>
	<li><a href="cast.asp#max">Max</a> - autism</li>
	<li><a href="cast.asp#mitch">Mitch</a> - learning disabilities</li>
</ul>
Want to learn more? Contact <a href="mailto:puppets@pacer.org">puppets@pacer.org</a>
<!--#include virtual="/puppets/trademark.htm"-->

<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->