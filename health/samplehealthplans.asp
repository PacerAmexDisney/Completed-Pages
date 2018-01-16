<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>F2F HIC - Sample Health Plans</title>

<meta property="og:title" content="F2F HIC - Sample Health Plans" />
<meta property="og:url" content="http://www.pacer.org/health/samplehealthplans.asp" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />

</head>

<body>
<!--#include virtual="/templates/page-header-nav.asp"-->

<div id="topbar">
<div id="breadcrumb">

	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp"> Health Information Center</a> /

</div>
	<h1> Health Information Center</h1>
</div>

<script type="text/javascript">
	// ID of the current Left Nav item
	var currId="samples";
	// current subtree that should be displayed
	var showTree = "currentPageSubtree";
	var showTree2 = "secondarySubtreeIfNeeded";
</script>

<div id="leftbar">

<!--#include virtual="/health/leftNav.htm" -->
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
<h2>Individual Health Care Plans and Emergency Information Forms</h2>
<p>An <strong>Individual Health Care Plan</strong> (IHCP or IHP) can be developed for your child&rsquo;s home or school. The IHCP: </p>
<ul class="space">
 <li>Gives the school necessary medical information about your child</li>
 <li>Identifies your child&rsquo;s health needs, such as giving medication during the school day</li>
 <li>Creates solutions to potential health problems that can occur in a school environment</li>
 <li>Develops plans for emergency medical situations</li>
 <li>Provides a safe environment that helps your child learn</li>
 <li>Makes goals for your child&rsquo;s health care, such as having your child work towards remembering to take medication</li>
</ul>
<p>To create an IHP for your child, work with your child&rsquo;s physician. Most physicians have IHP forms for specific health conditions, and most forms require the physician&rsquo;s signature prior to submitting it to your child&rsquo;s school. Below are both general, blank sample health plans, as well as plans that are specific to a child&rsquo;s condition, that were compiled from a variety of sources.<br />
 <a href="http://www.pacer.org/health/pdfs/ind_health_plan.pdf" target="_blank">General Sample Individual Health Plan</a><img src="../images/pdficon_small.gif" width="15" height="15" alt="pdf document" /> The general sample IHP is a great tool to develop a specific health plan for your child in conjunction with your child&rsquo;s physicians and school.</p>
<ul class="space">
<li class="pdficonlist"><a href="http://www.health.state.mn.us/asthma/documents/09.childaap.pdf" target="_blank">Asthma Individual Health Care Plan</a></li>
 <li class="pdficonlist"><a href="pdfs/DiabetesIHCP.pdf" target="_blank">Diabetes Individual Health Care Plan</a></li>
 <!--<li class="pdficonlist"><a href="http://www.schoolhealthservicesny.com/uploads/Food%20Allergy%20Action%20Plan%20(English).pdf" target="_blank">Food Allergy Individual Health Care Plan</a></li>-->
 <li class="pdficonlist"><a href="pdfs/SeizureIHCP.pdf" target="_blank">Seizure Individual Health Care Plan, Sample 1</a></li>
<!-- <li class="pdficonlist"><a href="http://www.schoolhealthservicesny.com/uploads/Seizure%20Guidelines.pdf" target="_blank">Seizure Individual Health Care Plan, Sample 2</a></li>--></ul>


<p>An <strong>Emergency Information Form</strong> is a form you, as a parent, can use to hand to doctors when you go to the emergency room with your child. Medical emergencies can be complicated for children with special health care needs. By having an Emergency Information Form, you can make it easier for doctors to treat your child during an emergency. The form includes:</p>
<ul class="space">
 <li>a place to record contact information for your child</li>
 <li>a list of your child's physicians and their contact information</li>
 <li>diagnoses</li>
 <li>base-line findings</li>
 <li>allergies</li>
 <li>procedures to be avoided</li>
 <li>medications</li>
 <li>common presenting problems with specific suggested managements for your child </li>
</ul>
<p>Below are general, blank sample emergency information forms, available as a PDF or interactive Word document.</p>
<ul>
<li class="pdficonlist"> <a href="blankform.pdf" target="_blank">Emergency Information Form for Children with Special Needs</a> (pdf version)<br />
</li>
<li class="wordiconlist"> <a href="eif.doc" target="_blank">Emergency Information Form for Children with Special Needs</a></p> (word doc version)
</li>
</ul>
<p>An <strong>Emergency Care Plan</strong> (ECP) is a plan that gives specific steps for school professionals to take when your child has a medical emergency. An ECP is written for a child who is more likely to have a specific medical emergency and can be part of the IHP or written separately.<br />
 &nbsp;</p>
 <ul>
<li class="pdficonlist"> <a href="pdfs/ECP Asthma.pdf" target="_blank">Asthma Emergency Care Plan</a></li>
<li class="pdficonlist">  <a href="pdfs/ECP Allergy Food.pdf" target="_blank">Food Allergy Emergency Care Plan</a></li>
<li class="pdficonlist">  <a href="pdfs/ECP Allergy Latex.pdf" target="_blank">Latex Allergy Emergency Care Plan</a></li>
<li class="pdficonlist">  <a href="pdfs/ECP Allergy Bee Sting.pdf" target="_blank">Insect Sting Emergency Care Plan</a></li>
<li class="pdficonlist">  <a href="pdfs/ECP Hyperglycemia.pdf" target="_blank">Hyperglycemia Emergency Care Plan</a></li>
<li class="pdficonlist">  <a href="pdfs/ECP Hypoglycemia.pdf" target="_blank">Hypoglycemia Emergency Care Plan</a></li>
<li class="pdficonlist">  <a href="pdfs/ECP Seizures.pdf" target="_blank">Seizure Disorder Emergency Care Plan</a></li>
</ul>
<p><strong>To learn more about health or emergency care plans, contact PACER&rsquo;s  Health Information Center at (952) 838-9000 or (800) 53-PACER, toll free in Minnesota.</strong></p>


<hr/>
    <h2 class="greenBar">Additional Information</h2>
<div id="rightBar">

<p class="rightsidebarpic" style="margin-top: 0;">
<img src="images/younggirlcoloring.jpg" width="250" height="188" alt="young girl coloring" />
</p>

<div class="stayinformed">
  <p align="center"><strong>Does your child have asthma?</strong></p>
  <p align="center"><strong><img src="images/inhaler.png" alt="inhaler" width="31" height="66" /></strong></p>
  <p>If  your child has asthma and you are looking for more information on Individual  Health Care Plans for children with asthma, check out the Minnesota Department  of Health&rsquo;s <a href="http://www.health.state.mn.us/divs/hpcd/cdee/asthma/" target="_blank">Asthma Program</a>. This interactive website has  information for parents and families on <a href="http://www.health.state.mn.us/divs/hpcd/cdee/asthma/AAP-nonpro.html" target="_blank">Asthma Action Plans</a> (AAP), including why your  child would need an AAP, what is an AAP, and how to use an AAP.</p>
  <p align="center"><strong>Does your child have  epilepsy?</strong></p>
  <p>If your child has epilepsy, <a href="http://www.gillettechildrens.org/conditions-and-care/epilepsy-life-stages-visits/" target="_blank">Gillette  Hospital</a> has great publications and resources for you and your child,  including answering <a href="http://www.gillettechildrens.org/uploads/general/Brochures_and_Booklets/Life_Stages_for_School_Age.pdf" target="_blank">common  questions</a> about epilepsy and how it affects your child in school.</p>
</div>


<div class="stayinformed">
<a href="../publications/specedrights.asp">Find PACER publications on Special
Education Rights >>></a>
</div>
</div>

<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->
