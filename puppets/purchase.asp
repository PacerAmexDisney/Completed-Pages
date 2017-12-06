<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>Puppets - Purchase - PACER Center</title>

<meta property="og:title" content="Puppets - Purchase" />
<meta property="og:url" content="http://www.pacer.org/puppets/purchase.asp" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />

<style>
ul ul {
	margin-top:.5em;
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
	var currId="purchase-general";
	// current subtree that should be displayed
	var showTree = "purchase-sub";
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
<p>
The PACER puppet packages are available for sale to groups that are interested in presenting inclusion, bullying or abuse prevention programs. Organizations throughout the country have purchased 
puppet packages and are reaching national and international audiences with the messages from 
<a href="count.asp">COUNT ME IN</a>, <a href="kidsagainstbullying.asp">KIDS AGAINST BULLYING </a>and <a href="lpa.asp">LET&#8217;S PREVENT ABUSE</a></p>
<p>
<strong>PACER puppets</strong> are unique, handcrafted works of art. These hand and rod puppets are three feet tall and represent 
a diverse group of children. Basic packages include puppets, scripts, a custom-built bright red wheelchair, 
props, and resource books. 
</p> 
<p>
<strong>Training may be arranged</strong> for groups purchasing puppet packages. 
Disability awareness, bullying and/or abuse issues, and puppetry techniques will be 
taught. 
</p>
<p>
<strong>All puppets and scripts</strong> are copyrighted and available only through PACER Center.
</p>
<hr />
<div class="alertBox">Interested in ordering a puppet package? To place an order OR for details on   pricing, contact <a href="mailto:puppets@pacer.org">puppets@pacer.org</a>. </div>

<h3>Packages</h3>
<p>Pricing of packages varies from $3,000-$5,000*</p>
<p>* - Package pricing subject to change without notice</p>
<p><em>(Select the program below for more detailed information about the packages)</em></p>
<h4><a href="purchase-countmein.asp">Count Me In</a></h4>
	<ul>
    	<li>Basic CMI Package - includes 6 puppets, props, &amp; a script package for preschool and kindergarten as well as scripts for grades 1-4 </li>
        <li>Starter CMI Package - includes 3 puppets, props, &amp; a script package for an audience from grades 1 through 4 </li>
        <li>Starter Plus CMI Package - adds an additional script and 1 additional puppet of your choosing.</li>
    </ul>
<h4><a href="purchase-kidsagainstbullying.asp">Kids Against Bullying</a></h4>
	<ul>
    	<li>KAB Package - includes 5 puppets, props, &amp;  script package for grades 1-3 
          <ul>
       	    <li>Physical Bullying</li>
                <li>Verbal Bullying</li>
                <li>Social / Exclusion</li>
          </ul>
    	</li>
        <li>Brad &amp; Shannon only &ndash; for those who already own a set of PACER puppets
        	<ul>
            	<li>includes 2 puppets &amp; KAB script package</li>
            </ul>
        </li>
	</ul>
<h4><a href="purchase-preventabuse.asp">Lets Prevent Abuse</a></h4>
	<ul>
        <li>LPA Package - includes 4 puppets, props, &amp; a script package for an audience from grades 1 through 4 </li>
    </ul>
    
	<hr />
    <h3 id="additional">Additional Puppets</h3>
<p>You must have purchased one of the above packages to be eligible to purchase additional puppets.</p>
<p><strong>The puppets, and the disabilities they represent, are:</strong></p>
<ul>
	<li>Bridget, who has juvenile rheumatoid arthritis.</li>
	<li>Eric, who has diabetes.</li>
	<li>Danny, who has muscular dystrophy (wheel chair sold separately).</li>
	<li>Ben, who has attention deficit hyperactivity disorder.</li>
	<li>Max, who has autism.</li>
	<li>Connor, who has Tourette syndrome</li>
	<li>Gina, who is blind</li>
	<li>Jay, who is deaf/hard of hearing</li>
	<li>Corey, who has Down syndrome</li>
</ul>
<p><strong>Extras or replacement items for your puppet package:</strong></p>
<ul>
	<li>Puppet size wheelchair</li>
	<li>Folding Puppet Stage</li>
	<li>Coordinator's Handbook (for those who already own a puppet package)</li>
	<li>Small bag (holds two puppets).</li>
	<li>Large bag (holds three puppets).</li>
	</ul>
<p>&nbsp;</p>
<!--#include virtual="/puppets/trademark.htm"-->

<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->