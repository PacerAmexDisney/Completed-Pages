<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/parent/"
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Programs &amp; Resources</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/leftnavigation.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

<script type="text/javascript" src="../css/menu.js"></script>
</head>

<body>
<div id="skiptocontent">
<a href="#maincontent">Skip to main content</a>
</div>

<div id="wrapper">

<div id="main">

<div id="header">
	<div>			<!--#include virtual="/googleSearchBox.htm"-->
      <!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="../"><img src="../images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="rightBar">

<p class="pacerinfo">
<strong>PACER Center<br />
952-838-9000</strong>
</p>
<p class="pacerinfo2">
Champions for Children with Disabilities</p>
<p class="pacerinfo3"><a href="/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a>
</p>
<div class="stayinformed">
<h2>Stay Informed</h2>
Receive the latest PACER Center information on issues important to you. 
<a href="../forms/index.asp">Sign up now</a>.
</div>
</div>

<div id="topbar">
<div id="breadcrumb">

	<a href="/">Home</a> /
	
	<h1>Parent Special Education Information</h1>
<p style="font-size:90%;padding:0;margin:0;">PACER is the Minnesota Parent Training and Information Center, funded by the U.S. Department of Education's Office of Special Education Programs.</p>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">Parents Helping Parents Navigation Menu</h2>
<!--#include virtual="/parent/leftNav.html" -->
</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="parent_resources";
	var currSubId="none";
	// any Subtree that I want to Display
	var showTree = "resources-sub";
	
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
	if (document.getElementById(currSubId)){
		document.getElementById(currSubId).className = "page";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "treemenu") {
			//Any additional subTrees that you want to skip should be added here. like this (subTrees[i] != subTree1 || subTrees[i] != subTree2)
			if (subTrees[i].id != showTree) {
				subTrees[i].className = "treemenuhidden";
			}
		}
	}
</script>
<div id="maincontent">

<div id="pagecontent">

<h2 class="nounderline">Resources</h2>
<ul>
<li>

<div style="border-bottom:1px solid #ccc;">
	<h3><img id="top-right-image" src="/school-discipline-information/images/disability-guide.jpg" alt="" width="100%" /><a href="/school-discipline-information/">Step by Step		School Discipline Guide</a></h3>
	<p>Parents of children with disabilities often ask:</p>
	<ul type="disc">
		<li>Can the school send my child home before the end of the school day?</li>
		<li>Can the school district suspend my child?</li>
		<li>Can the school district expel my child?</li>
		<li>What happens to my child&rsquo;s educational services if he or she is sent home, suspended, or expelled?</li>
	</ul>
	<p>This interactive guide will answer these and many other questions. Whether your child is on an <span id="iep">Individualized Education Plan (IEP)</span> or a <span id="504">Section 504 Plan</span>,   or if you suspect that your child has a disability that affects his  or  her behavior at school, this guide will help you understand the   complex disciplinary process for Minnesota public school children with   disabilities.</p>
</div>


</li>

<li>
<h3><a href="/parent/who-is-on-my-childs-iep-team.asp">Who is on my Child&rsquo;s IEP Team?</a></h3>
<p>The Individuals with Disabilities Education Act (IDEA) calls for a team  of individuals, including parents and school personnel, to work  together to develop an Individual Educational Program (IEP) for a child  who qualifies for special education services. <br />
&nbsp;<br />
Because IEP decisions are made by a team rather than by any one  individual, it&rsquo;s important and helpful to understand the role of each  member. While each person brings a different set of experiences,  concerns, and skills to the table, you can expect that they all share a  common goal: enabling the child to succeed in school and in life.</p>

</li>
<li>
	<h3><a href="/parent/top10-parent-concerns.asp" target="_blank">Top Ten Topics: Parents' Concerns and Matching Resources</a></h3>
	<p>The statement that “knowledge is power” is especially true for parents who want to be effective advocates for their children with disabilities. To make sure parents have the information they need most, PACER conducted a survey, and nearly a thousand people responded. Given a list of choices, parents of children from each age group indicated their top three concerns. This PACER ACTion Sheet provides a selection of helpful information to address each topic from a variety of national and statewide organizations. As Albert Einstein said, “Know where to find the information and how to use it — that's the secret of success.”</p> </li>
<li>
 <h3><a href="/parent/php/PHP-c198.pdf">Top 10 Tips: Ideas to Improve Parent-to-Professional Communication</a></h3>
<p>PACER&rsquo;s parent advocates often hear from parents when they encounter certain statements or situations at school meetings that they find uncomfortable or uncertain. These tips are suggestions and techniques from PACER advocates to help parents address some of those concerns, as well as improve communication with school staff. </p>

</li>
 <li class="pdficonlist">
  <div class="alertBox" style="width:150px;"><em><a href="/parent/pdf/Parent-Homework-Sheet.doc" target="_blank"><img src="/images/wordicon_small.gif" width="15" height="15" alt=""/>Alternate Version: Parent Homework Sheet Word Document</a></em></div>
  <h3><a href="/parent/pdf/Parent-Homework-Sheet.pdf" target="_blank">Parent Homework Sheet</a></h3>
  
  <p> Parents can use this form for help in preparing for meetings, prioritizing concerns, and understanding the relationship between the IEP and the Evaluation Report.</p>
  <p>3 part video series about the parent homework sheet</p>
  <ol>
  	<li><a href="https://www.youtube.com/watch?v=XhD-j_GBh9c" target="_blank">Video: Parent Homework Sheet Part 1</a></li>
  	<li><a href="https://www.youtube.com/watch?v=u2BdaWMFEcs" target="_blank">Video: Parent Homework Sheet Part 2</a></li>
  	<li><a href="https://www.youtube.com/watch?v=OhDQA1F9lBs" target="_blank">Video: Parent Homework Sheet Part 3</a></li>
  </ol>
 </li>
</ul>

<h2>External Sites</h2>
<ul>
<li>
 <h3><a href="http://education.state.mn.us/MDE/SchSup/ComplAssist/Forms/index.html" target="_blank">Minnesota's Complaint Procedure</a>		
   <em> - Minnesota Department of Education</em></h3>
 <p>The special education complaint system is designed to ensure that all students with disabilities are provided a free appropriate public education. A complaint can be filed about any entity that provides publicly funded educational services directly to students, that has violated a state or federal special education law or rule. Before filing a complaint, Minnesota Department of Education (MDE) encourages parents or other persons to first contact the school district&rsquo;s Director of Special Education, who may be able to help resolve the issue. </p>
 <p>More information is available from:</p>
 <ul>
 <li>
 <a href="/disputeresolution/"> PACER&rsquo;s Dispute Resolution section </a>
 </li>
 <li>
  <a href="http://education.state.mn.us/MDE/SchSup/ComplAssist/Comp/index.html" target="_blank">Minnesota Department of Education Special Education Complaints section</a>
  </li>
  </ul>
</li>
<li>
 <h3><a href="http://www.hhs.gov/ocr/office/" target="_blank">Office of Civil Rights (OCR)</a>
   <em> - hhs.gov</em></h3>
 <p>The Office of Civil Rights&rsquo; (OCR) core mission as a law enforcement agency is to ensure that recipients of federal funds do not engage in discriminatory conduct.</p>
</li>

 <li>
  <h3><a href="http://education.state.mn.us/MDE/SchSup/ComplAssist/Forms/" target="_blank">Special Education Forms</a><em> - Minnesota Department of Education</em></h3>
  <p> The recommended special education due process forms include information  on parents' and students' rights and due process options as well as  documents a district may choose to use to communicate with the parent,  track a student&rsquo;s progress and create and maintain Individualized  Education Programs (IEP).</p></li>
  <li>
  <h3><a href="https://www.revisor.mn.gov/pubs/" target="_blank">Minnesota Special Education Laws</a><em> - MN.gov</em></h3>
  <p>Special education statutes are under section 125A and the rules are under section 3525.</p>
  </li>
  <li>
   <h3><a href="http://idea.ed.gov/explore/home" target="_blank">Federal Special Education Laws</a><em> - ED.gov</em></h3>
   <p>The Individuals with Disabilities Education Act (IDEA) and IDEA regulations.</p>
  </li>
  
 <!--<li><a href="due_process.asp">Students with Disabilities and the Right to Due Process in School Discipline</a>, Center for Law and Education, 2000<br />
 	In the area of school discipline eligible students with disabilities not only have significant rights under the Individuals with Disabilities Education Amendments of 1997. 20 U.S.C. 1412(a)(1)(A), 1415(j), 1415(k), the right not to be discriminated against under Section 504 of the Rehabilitation Act , 29 U.S.C. 7994, 34 C.F.R. 104.4(b), but, as all other students attending public education programs, they possess basic constitutional protections. Entitlement to public education has long been recognized as a property interest protected by the Due Process clause of the Fourteenth Amendment to the U.S. Constitution. Goss v. Lopez, 419 U.S. 565, 573-75 (1975).</li>-->
 <!--<li><a href="iep.asp">
 <strong>What Makes a Good Individual Education Plan for Your Child?</strong>
 </a></li>
<li><a href="function.asp">What is a 'Functional' Assessment of My Child's Behavior?</a></li> -->
</ul>
<div id="pageextender" style="clear:both">&nbsp;</div>

</div>


<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>