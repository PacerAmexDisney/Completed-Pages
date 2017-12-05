<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>Puppets - Kids Against Bullying - PACER Center</title>

<meta property="og:title" content="Puppets - Kids Against Bullying" />
<meta property="og:url" content="http://www.pacer.org/puppets/kidsagainstbullying.asp" />
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
	var currId="bully";
	// current subtree that should be displayed
	var showTree = "none";
	var showTree2 = "none";
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
<h2>Kids against Bullying</h2>
<em>&quot;The puppets are wonderful and very effective in helping children feel 
comfortable with a difficult subject.&quot;</em><br />
- A Minnesota teacher
<br />
<p>The KIDS AGAINST BULLYING Puppet Program helps children and adults learn about bullying prevention. This exciting new puppet program was developed in response to requests from parents and teachers to supplement <a href="http://www.pacerkidsagainstbullying.org/" target="_blank">PACER&rsquo;s Kids Against Bullying Web site</a> . </p>
<p> KIDS AGAINST BULLYING features five endearing multicultural, child-size puppets that portray children with and without disabilities. These puppets have proven to be a comfortable medium through which to teach children about bullying prevention. Opportunities exist throughout the presentation for children to learn through dialogue and question/answer.<br />
 The program, designed for children in grades 1-3, addresses: </p>
<ul type="disc">
 <li>The definition of bullying; </li>
 <li>Ways children can respond if they&rsquo;re being bullied and how they can help if they see someone who&rsquo;s being bullied;</li>
 <li>The difference between telling and tattling; and </li>
 <li>The important lesson that <u>no one ever</u> deserves to be bullied. </li>
</ul>
<p>The program presents three skits focusing on different types of bullying (physical, verbal and social/exclusion) and lasts approximately 30 - 35 minutes.&nbsp; The presentation is interactive and includes opportunities for the students to share their ideas and ask questions.</p>
<p>The program includes:</p>
<ul>
 			<li><strong><a href="cast.asp#carmen">Carmen</a></strong>, who helps others confront bullying, and then is herself bullied</li>
 			<li><strong><a href="cast.asp#brad">Brad</a>, </strong>who likes to tease and harass other kids, </li>
 			<li><strong><a href="cast.asp#mitch">Mitch</a>, </strong>who doesn&rsquo;t know how to respond to Brad&rsquo;s bullying behavior </li>
 			<li><strong><a href="cast.asp#sally">Sally</a></strong>, who uses a wheelchair and is being bullied by Shannon and some other kids</li>
 			<li><strong><a href="cast.asp#shannon">Shannon</a>, </strong>a popular girl who  bullies others </li>
		</ul>
<!--#include virtual="/puppets/trademark.htm"-->

<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->