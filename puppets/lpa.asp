<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/puppets/purchase-preventabuse.asp"
%>
<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>Puppets - Let's Prevent Abuse - PACER Center</title>

<meta property="og:title" content="Puppets - Let's Prevent Abuse" />
<meta property="og:url" content="http://www.pacer.org/puppets/lpa.asp" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />

<style type="text/css">
	#pagecontent .alertBox {
	font-size:.9em;
	background: #FF9;
	margin: 10px;
	padding: 8px;
	float: right;
	width: 225px;
	border: 2px solid #F93;
}
</style>

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
	var currId="lpa";
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
<h2>LET&rsquo;S PREVENT ABUSE</h2>
<em>&quot;The puppets are wonderful and very effective in helping children feel 
comfortable with a difficult subject.&quot;</em><br />
- A Minnesota teacher
<br />
<div class="alertBox">The Let's Prevent Abuse puppet show is no longer  available to be performed, but puppets and scripts can be purchased as a <a href="purchase.asp">PACER  Puppet Package</a> for your organization.</div>
<p>
The LET'S PREVENT ABUSE Program helps children and adults gain information about child physical and sexual abuse as well as helps children to develop personal safety skills. This puppet program originated in 1984, in response to a growing awareness of the greater vulnerability of children with disabilities to all types of abuse. More than 83,000 children and adults have viewed the program presentation. 
</p>
<p>
LET'S PREVENT ABUSE features four endearing multicultural, child-size puppets that portray children with and without disabilities. These puppets have proven to be a comfortable medium through which to teach children about abuse prevention. Opportunities exist throughout the program for the children to interact with the puppets through dialogue and role-play. 
</p>
<p>
The performances, designed for children in grades 1-4*, address:
</p>
<ul>
	<li>The definitions of physical and sexual abuse;</li>
	<li>How to get help and whom to tell;</li>
	<li>The need for children to talk about the abuse if they are in such a 
	situation;</li>
	<li>Feelings of guilt, isolation and shame associated with abuse; and</li>
	<li>It's never a child's fault when they have been abused.</li>
</ul>
<p>
  The program includes:  </p>
<ul>
    	<li><strong><a href="cast.asp#sally">Sally</a></strong> has a <em>physical disability</em> and portrays a girl who has experienced <em>physical abuse</em></li>
        <li><strong><a href="cast.asp#derek">Derek</a></strong> portrays a boy who has experienced a threat of <em>sexual abuse</em></li>
        <li><strong><a href="cast.asp#carmen">Carmen</a></strong> portrays a friend, and a girl who avoided abduction</li>
        <li><strong><a href="cast.asp#mitch">Mitch</a></strong> portrays a friend</li>
</ul>
<p><br />
  <br />
  <strong>* This program is not intended for a preschool or kindergarten audience.</strong>
</p>

Want to learn more? Contact <a href="mailto:puppets@pacer.org">puppets@pacer.org</a>

<!--#include virtual="/puppets/trademark.htm"-->

<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->