<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>Puppets - Schedule a Show - PACER Center</title>

<meta property="og:title" content="Puppets - Schedule a Show" />
<meta property="og:url" content="http://www.pacer.org/puppets/schedule.asp" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />

<style>
#pagecontent .greenBar {
  background: #246c00 none repeat scroll 0 0;
  color: #fff;
  margin-left: -6px;
  margin-right: -6px;
  margin-top: 40px;
  padding: 20px 5px;
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
	var currId="schedule";
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
<h2>Schedule a Show</h2>
<p>COUNT ME IN&reg; and KIDS AGAINST BULLYING programs are<strong> performed in the metro areas of Minneapolis and St. Paul, Minnesota</strong> by PACER volunteers. If you are interested in scheduling a show at your school, please choose a program and complete a show request form. You may either complete the online request form or download the form to complete and return to PACER Center Puppet Program via mail or fax (952-838-0199).</p>
<h4 class="greenBar">COUNT ME IN&reg; Disability Awareness Puppet Shows</h4>
<p>Pre/K COUNT ME IN&reg;show for ages 4 and 5 (no students younger than 4, please)</p>
<ul>
  <li>30-35 minutes in length</li>
  <li>60 students maximum per show</li>
  <li>Cost $75 per show
  
  	<ul>
  		<li class="pdficonlist"><a href="pdf/CMIPreKForm.pdf" target="_blank">Downloadable form - Preschool/Kindergarten  <span class="fa fa-external-link" aria-hidden="true"></span></a></li>
  		<li><a href="https://www.surveymonkey.com/s/2LDQTPN" target="_blank">Online form - Preschool/Kindergarten  <span class="fa fa-external-link" aria-hidden="true"></span></a></li>
	  </ul>

	</li>
</ul>
<hr />
<p>Elementary COUNT ME IN&reg; show for grades 1-4:</p>
<ul>
  <li>45-60 minutes in length</li>
  <li>80-100 students maximum per show</li>
  <li>Cost $100 per show
  
  <ul>
  <li class="pdficonlist"><a href="pdf/CMIElementaryForm.pdf" target="_blank">Downloadable form - Elementary  <span class="fa fa-external-link" aria-hidden="true"></span></a></li>
  <li> <a href="https://www.surveymonkey.com/s/TFR3LXR" target="_blank">Online form - Elementary  <span class="fa fa-external-link" aria-hidden="true"></span></a></li>
	  </ul>
</li>
</ul>
<h4 class="greenBar">KIDS AGAINST BULLYING Puppet Show</h4>
<p>KIDS AGAINST BULLYING Puppet Show for students in grades 1-3:</p>
<ul>
  <li>35 minutes in length</li>
  <li>50 students or two classrooms maximum per show</li>
  <li>Cost $100 per show
  
  <ul>
  <li class="pdficonlist"><a href="pdf/KABletterandform.pdf" target="_blank">Downloadable form - Kids Against Bullying  <span class="fa fa-external-link" aria-hidden="true"></span></a></li>
  <li><a href="https://www.surveymonkey.com/s/Y56LCS5" target="_blank">Online form - Kids Against Bullying  <span class="fa fa-external-link" aria-hidden="true"></span></a></li>
	  </ul>
</li>
</ul>
<p style="margin-top: 80px;">Please contact Lynn or Adam at 952-838-9000 or <a href="mailto:puppets@pacer.org">puppets@pacer.org</a> if you have any questions. </p>

<p><!--<a href="LPAForm.pdf">LET'S PREVENT ABUSE</a><img border="0" src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" />
--></p>

<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->