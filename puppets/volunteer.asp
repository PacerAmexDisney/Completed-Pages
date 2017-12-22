<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>Puppets - Help Make a Difference - PACER Center</title>

<meta property="og:title" content="Puppets - Help Make a Difference" />
<meta property="og:url" content="http://www.pacer.org/puppets/volunteer.asp" />
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
	var currId="volunteer";
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
<h2>Help Make a Difference</h2>
<h3>Do you live in the Minneapolis/St. Paul Metro area?<br />
Become a Puppeteer with PACER!</h3>

<p><strong>Join the PACER Puppet Team and Help Children Learn about Bullying  Prevention and Disability Awareness. Make a difference!</strong></p>
<ul>
  <li>Kids Against Bullying is an entertaining puppet program that  helps young children learn about bullying prevention.</li>
  <li>COUNT ME IN&reg; teaches disability awareness and promotes inclusion. </li>
</ul>
<p>As a  volunteer, you&rsquo;ll:</p>
<ul>
	<li>Attend a training to learn puppet and presentation  skills;</li>
	<li>work with a fun team;</li>
	<li>present programs at metro schools  two to three times per month;</li>
	<li>help young children understand the  importance of preventing bullying.</li>
</ul>
	<p>All you need is a car, time during the school day, and a  desire to help young children.	</p>
	<p>To register or learn more, call PACER at 952-838-9000  or</p>
	<p><a href="pdf/VolunteerApplication.pdf" target="_blank">Download the PACER Puppet volunteer form</a><img border="0" src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /></p>

<br>
<h2>Here is what PACER volunteer puppeteers are saying:</h2>
<p>
<em>&quot;I have loved doing the shows. It has been fun and helps keep me connected to the energy and thinking of youth.&quot;</em><br /><br />
<em>&quot;Being a puppeteer has been more rewarding than I expected. It's great to be a part of a program that has such an important message.&quot;</em>
</p>

<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->