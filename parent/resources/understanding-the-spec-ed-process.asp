<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />

<title>Understanding the Special Education Process - PACER Center</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" />
<link href="/js/colorbox/colorbox.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.7.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script src="/js/colorbox/jquery.colorbox-min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".info").colorbox({inline:true, width:"60%", opacity:.5});
	});
</script>
<style type="text/css">
	#pagecontent h2, #pagecontent h3 {
		margin-top:40px;
		text-transform:none;
	}
	#iepChart {
		position:relative;
		overflow:hidden;
		margin:0px auto;
		width:728px;
		border-bottom:1px solid #ccc;
		margin-bottom:20px;
	}
	.chartBox {
		width:280px;
		float:left;
		padding:5px;
		margin:10px;
	}
	.leftChartBox {
		background:#D7F5FF;
	}
	.leftChartBox, .rightChartBox {
		border:2px solid #006A8C;
		border-radius:8px;
		box-shadow: 5px 5px 10px -3px rgba(128,128,128,1);
	}
	.downChartArrow, .leftChartBox{
		clear:left;
	}
	.downChartArrow {
		width:280px;
		float:left;
		height:50px;
		background:url(/parent/images/downarrow-sml.png) no-repeat center;
		border:none;
	}
	.centerChartBox {
		background:url(/parent/images/rightarrow-sml.png) no-repeat center;		
	}
	.centerChartBox {
		width:100px;
		height:50px;
		border:none;
		float:left;
		margin-top:28px;
	}
	#iepChart a.info {
		text-align:right;
		text-decoration:underline;
		padding:5px;
		display:block;
	}
	#iepChart a.info:hover {
		color:#006A8C;
	}
</style>
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
<a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="topbar">
<div id="breadcrumb">

	<a href="/">Home</a> / Special Education / 
	
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
	var currId="resources-speced";
	// any Subtree that I want to Display
	var showTree = "resources-sub";
	
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
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

<h2>Understanding the Special Education Process	</h2>
<p>The chart below offers an overview of the special education process. It is not designed to show all  steps or the specific details. It shows what happens from the time a child is referred for evaluation  and is identified as having a disability, through the development of an individualized education  program (IEP).</p>
<p>  The process begins when someone (school staff, parents, etc.) makes a referral for an initial evaluation.</p>
<div id="iepChart">
	<h2 class="centered">Overview of the Special Education Process</h2>
	<p style="text-align:right"><a href="/parent/php/PHP-c231.pdf" target="_blank"><span class="fa fa-file-pdf-o"></span> View the print version of this chart <span class="fa fa-external-link"></span></a></p>
    <div class="chartBox leftChartBox rowOne">
    	<p>Parents, school district staff or others request an evaluation; parents agree in writing.</p>
    	<a class="info" href="#info1">(Additional Information)</a>
    </div>
    <div class="chartBox downChartArrow"></div>
    
    <div class="chartBox leftChartBox rowTwo">
    	<p>Evaluation completed.<br />
Eligibility decision.</p>
    	<a class="info" href="#info2"><span>(Additional Information)</span></a>

    </div>
    <div class="centerChartBox rowTwo">
    </div>
    <div class="chartBox rightChartBox rowTwo">
    	<p>Not eligible.</p>
    	<a class="info" href="#info3">(Additional Information)</a>
    </div>
    <div class="chartBox downChartArrow"></div>
    
    <div class="chartBox leftChartBox rowThree">
    	<p>Eligible for services.</p>
    	<a class="info" href="#info4">(Additional Information)</a>
    </div>
    <div class="chartBox downChartArrow"></div>

    <div class="chartBox leftChartBox rowFour">
    	<p>a) IEP developed.<br />
			b) Placement determined.<br />
			(Might be two meetings.)
         </p>
    	<a class="info" href="#info5">(Additional Information)</a>
    </div>
    <div class="centerChartBox rowFour"></div>
    <div class="chartBox rightChartBox rowFour">
    	<p>Parents disagree.</p>
    	<a class="info" href="#info6">(Additional Information)</a>
    </div>
    <div class="chartBox downChartArrow"></div>


    <div class="chartBox leftChartBox rowFive">
        <p>Parents agree.</p>
        <a class="info" href="#info7">(Additional Information)</a>
    </div>
    <div class="chartBox downChartArrow"></div>

    <div class="chartBox leftChartBox rowSix">
    	<p>Annual IEP Meeting.</p>
    	<a class="info" href="#info8">(Additional Information)</a>
    </div>
    <div class="centerChartBox rowSix">
    </div>
    <div class="chartBox rightChartBox rowSix">
    	<p>Parents disagree.</p>
    	<a class="info" href="#info9">(Additional Information)</a>
    </div>
    <div class="chartBox downChartArrow"></div>

    <div class="chartBox leftChartBox rowSeven">
    	<p>Parents agree.</p>
    	<a class="info" href="#info10">(Additional Information)</a>
    </div>
<div style="clear:left">&nbsp;</div>
</div>

<div style="display:none;">
    <div id="info1">
            <p>Parents, school personnel, students, or others may make
        a request for evaluation. If you request an evaluation to
        determine whether your child has a disability and needs
        special education, the school district must complete a
        full and individual evaluation. If it refuses to conduct the
        evaluation, it must give you appropriate notice and let
        you know your rights.</p>
        <p>You must be asked to give permission in writing for an
        initial (first-time) evaluation and for any tests that are
        completed as part of a reevaluation.</p>
        <div class="resources">
        <h3>Resources</h3>
        <ul>
        <li><p><i class="fa fa-file-video-o" aria-hidden="true"></i> <em><a href="http://www.pacer.org/parent/videos-trainings.asp#preparing-for" target="_blank">Preparing for Your First Evaluation Planning Meeting For Your Child</a></em></p></li>
        <li><p><i class="fa fa-book" aria-hidden="true"></i> <em>Parents Can Be the Key<strong>: <br />
        </strong></em>This book offers an overview of special education in Minnesota. Call to order - $3 or free to Minnesota parents of children and young adults with disabilities.</p></li>
        <li class="pdficonlist"><p><em><a href="http://www.pacer.org/parent/php/PHP-c2.pdf" target="_blank">Evaluation: What does it mean for your child?</a></em></p></li>
        <li class="pdficonlist"><p><em><a href="http://www.pacer.org/parent/php/php-c215a.pdf" target="_blank">What is a Functional Behavioral Assessment and How Is It Used? An Overview for Parents </a></em></p></li>
        </ul>
        </div>
    </div>

	<div id="info2">
    	<p>A team of qualified professionals and you will review the
results of the evaluation, and determine if your child is
eligible for special education services.</p>
	<div class="resources">
    <h3>Resources</h3>
    <ul>
        <li><p><i class="fa fa-file-video-o" aria-hidden="true"></i> <em><a href="http://www.pacer.org/parent/videos-trainings.asp#receiving-results" target="_blank">At the Table: Receiving the Results of Your Child’s Special Education Evaluation</a></em></p></li>
        </ul>
        </div>
	</div>
    
    <div id="info3">
		<p>If your child is not eligible, you will be appropriately notified
and the process stops. However, you have a right
to disagree with the results of the evaluation or the
eligibility decision.</p>
		<p>If you disagree with the results of an evaluation, you
have a right to an Independent Educational Evaluation
(IEE). Someone who does not work for the school district
completes the IEE. The school district must pay for the
IEE or show at an impartial due process hearing (see box
on next page) that its evaluation is appropriate.</p>
	<div class="resources">
    <h3>Resources</h3>
    <ul>
    <li>
      <p><i class="fa fa-external-link" aria-hidden="true"></i> <a href="http://www.pacer.org/parent/504/" target="_blank">Students with Disabilities & Section 504 of the Rehabilitation Act of 1973</a></p></li>
      <li class="pdficonlist">
        <p><a href="http://www.pacer.org/parent/php/PHP-C202.pdf" target="_blank">504 Flow Chart Handout</a></p></li>
        <li class="pdficonlist">
          <p><a href="http://www.pacer.org/parent/php/PHP-c33.pdf" target="_blank">Students with Disabilities & Section 504 of the Rehabilitation Act of 1973</a></p></li>
    </ul>
    </div>
	</div>
    
    <div id="info4">
		<p>If you and the school district agree that your child is eligible
for services, you and the school staff will plan your
child’s Individualized Education Program (IEP), at an
IEP team meeting. You are an equal member of this team.
Some states may have a different name for the IEP team
meeting.</p>
</div>

<div id="info5">
	<p>The IEP lists any special services your child needs, including
goals your child is expected to achieve in one year,
and objectives or benchmarks to note progress. The team
determines what services are in the IEP, as well as the location
of those services and modifications. At times, the
IEP and placement decisions will take place at one meeting.
At other times, placement may be made at a separate
meeting (usually called a placement meeting.)</p>
<p>Placement for your child must be in the Least Restrictive
Environment (LRE) appropriate to your child’s needs. He
or she will be placed in the regular classroom to receive
services unless the IEP team determines that, even with
special additional aids and services, the child cannot be
successful there. You are part of any group that decides
what services your child will receive and where they will
be provided.</p>
<div class="resources">
<h3>Resources</h3>
<ul>
<li><p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/livestream/?wksp=0132415C-3FA0-4894-8C52-E6579436D3C2" target="_blank">Including Assistive Technology in the IFSP or IEP</a></p></li>
<li>
  <p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/parent/videos-trainings.asp#six-areas" target="_blank">Six Areas that May Affect IEP Services for Your Child</a></p></li>
<li>
  <p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/webinars/?webinar_id=80" target="_blank">A Place to Start: Understanding the Present Level of Academic Achievement and Functional Performance Statement (PLAAFP) in the IEP</a></p></li>
<li>
  <p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/webinars/?webinar_id=69" target="_blank">IDEA: Understanding Measurable Goals on the IEP</a></p></li>
<li>
  <p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/webinars/?webinar_id=44" target="_blank">Transition: Pathway to the Future</a></p></li>
<li>
  <p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/parent/videos-trainings.asp#phc" target="_blank">Parent Homework Sheets (series of three)</a></p></li>
<li><p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/webinars/?webinar_id=15" target="_blank">Planning for educational inclusion</a></p></li>
<li><p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/webinars/?webinar_id=19" target="_blank">The consideration of AT in the IEP</a></p></li>
<li><p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/webinars/?webinar_id=10" target="_blank">The House of IDEA: Blueprint for a Strong Education Program</a></p></li>
<li>
  <p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/parent/videos-trainings.asp#help" target="_blank">Help! I’m going to my first IEP meeting</a></p></li>
<li>
  <p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/parent/videos-trainings.asp#asl" target="_blank">Special Education overview in ASL</a></p></li>
<li>
  <p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/parent/videos-trainings.asp#helping-children" target="_blank">Helping Children with Disabilities Learn What All Children Learn</a></p></li>
<li class="pdficonlist">
  <p><a href="http://www.pacer.org/parent/php/PHP-a12.pdf" target="_blank">A Guide for Minnesota Parents to the IEP</a></p></li>
<li class="pdficonlist">
  <p><a href="http://www.pacer.org/parent/php/PHP-C203.pdf" target="_blank">Who is on my child’s IEP team?</a></p></li>
<li class="pdficonlist">
  <p><a href="http://www.pacer.org/parent/php/PHP-c186.pdf" target="_blank">A Place to Start: Understanding the Present Level of Academic Achievement and Functional Performance Statement</a></p></li>
<li class="pdficonlist">
  <p><a href="http://www.pacer.org/parent/php/PHP-c49b.pdf" target="_blank">Accommodations and Modifications: A Parent and Child Checklist</a></p></li>
<li class="pdficonlist">
  <p><a href="http://www.pacer.org/parent/php/php-c27.pdf" target="_blank">Attending Meetings to Plan Your Child’s Individualized Education Program (IEP)</a></p></li>
<li class="pdficonlist">
  <p><a href="http://www.pacer.org/parent/php/PHP-c180.pdf" target="_blank">Direct and Indirect Services</a></p></li>
<li class="pdficonlist">
  <p><a href="http://www.pacer.org/parent/php/PHP-c195.pdf" target="_blank">Extracurricular Activities and Children with Disabilities</a></p></li>
<li class="pdficonlist">
  <p><a href="http://www.pacer.org/parent/php/PHP-c210.pdf" target="_blank">From Needs to Services: Parent Homework Sheet</a></p></li>
<li class="pdficonlist">
  <p><a href="http://www.pacer.org/parent/php/PHP-c184.pdf" target="_blank">IEP Team Meeting Planner</a></p></li>
<li class="pdficonlist">
  <p><a href="http://www.pacer.org/parent/php/PHP-c7.pdf" target="_blank">Least Restrictive Environment (LRE): An English Translation of Key Legal Requirements</a></p></li>
<li class="pdficonlist">
  <p><a href="http://www.pacer.org/parent/php/php-c156.pdf" target="_blank">Parents Can Prepare for Special Education Meetings</a></p></li>
<li class="pdficonlist">
  <p><a href="http://www.pacer.org/parent/php/PHP-c183.pdf" target="_blank">Plan Ahead for Academic Success Using the IEP Meeting Checklist</a></p></li>
<li class="pdficonlist">
  <p><a href="http://www.pacer.org/parent/php/PHP-c91.pdf" target="_blank">Questions for Parents to Ask about School Adaptations</a></p></li>
<li class="pdficonlist">
  <p><a href="http://www.pacer.org/parent/php/php-c221.pdf" target="_blank">Six Areas that May Affect Individualized Education Program (IEP) Services</a></p></li>
<li class="pdficonlist">
  <p><a href="http://www.pacer.org/parent/php/PHP-c62.pdf" target="_blank">Transportation for Students with Disabilities in Minnesota</a></p></li>
<li class="pdficonlist">
  <p><a href="http://www.pacer.org/stc/pubs/STC-37.pdf" target="_blank">Accommodations, Modifications, and Assistive Technology</a></p></li>
</ul>
</div>
</div>

<div id="info6">
<p>If you disagree with the IEP and/or the proposed placement,
you should first try to work out an agreement with
your child’s IEP team. If you still disagree, you can use
your due process rights, which include mediation and
resolution meetings.</p>
<div class="resources">
<h3>Resources</h3>
<ul>
<li><p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/webinars/?webinar_id=8" target="_blank">Resolving disagreements through the special education process</a></p></li>
<li><p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/webinars/?webinar_id=78" target="_blank">Prior written notice</a></p></li>
<li>
  <p><i class="fa fa-external-link" aria-hidden="true"></i> <a href="http://www.pacer.org/disputeresolution/" target="_blank">Dispute Resolution Project Overview</a></p></li>
<li class="pdficonlist"><p><a href="http://www.pacer.org/parent/php/php-c232.pdf" target="_blank">Know Your Parental Rights: The meaning and importance of Prior Written Notice and Parent Consent</a></p></li>
<li class="pdficonlist"><p><a href="http://www.pacer.org/parent/php/PHP-c200.pdf" target="_blank">Checklist: Preparing for and attending Mediation</a></p></li>
<li class="pdficonlist"><p><a href="http://www.pacer.org/parent/php/PHP-c90.pdf" target="_blank">Facilitated IEP Meetings</a></p></li>
<li class="pdficonlist"><p><a href="http://www.pacer.org/parent/php/php-a25.pdf" target="_blank">Minnesota Due Process Options</a></p></li>
<li class="pdficonlist"><p><a href="http://www.pacer.org/parent/php/PHP-c93.pdf" target="_blank">Resolving Special Education Issues It Seems Like the School is Not Following My Child’s IEP*—What Can I Do?</a></p></li>
</ul>
</div>
</div>

<div id="info7">
<p>If you agree in writing with the IEP and placement, your
child will receive the services that are written into the IEP.
You will receive reports on your child’s progress at least as
often as parents are given reports on their children who
do not have disabilities. You can request that the IEP team
meet if reports show that changes need to be made in the
IEP.</p>
<div class="resources">
<h3>Resources</h3>
<ul>
<li class="pdficonlist"><p><a href="http://www.pacer.org/parent/php/php-c232.pdf" target="_blank">Know Your Parental Rights: The meaning and importance of Prior Written Notice and Parent Consent</a></p></li>
<li><p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/webinars/?webinar_id=78" target="_blank">Prior written notice</a></p></li>
</ul>
</div>
</div>

<div id="info8">
<p>The IEP team meets at least once per year to discuss progress
and write any new goals or services into the IEP. As
a parent, you can agree or disagree with the proposed
changes. If you disagree, you should do so in writing.</p>
<div class="resources">
<h3>Resources</h3>
<ul>
<li><p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/webinars/?webinar_id=47" target="_blank">How Will I Know my child is Making Progress</a></p></li>
<li class="pdficonlist"><p><a href="http://www.pacer.org/parent/php/PHP-c78.pdf" target="_blank">How Will I Know my child is Making Progress</a></p></li>
</ul>
</div>
</div>

<div id="info9">
<p>If you disagree with any changes in the IEP, your child
will continue to receive the services listed in the previous
IEP until you and school staff reach agreement. You
should discuss your concerns with the other members of
the IEP team. If you continue to disagree with the IEP,
you have several options, including asking for additional
testing or an Independent Educational Evaluation (IEE),
or resolving the disagreement using due process.</p>
<div class="resources">
<h3>Resources</h3>
<ul>
<li><p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/webinars/?webinar_id=8" target="_blank">Resolving disagreements through the special education process</a></p></li>
<li><p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/webinars/?webinar_id=78" target="_blank">Prior written notice</a></p></li>
<li>
  <p><i class="fa fa-external-link" aria-hidden="true"></i> <a href="http://www.pacer.org/disputeresolution/" target="_blank">Dispute Resolution Project Overview</a></p></li>
<li class="pdficonlist"><p><a href="http://www.pacer.org/parent/php/php-c232.pdf" target="_blank">Know Your Parental Rights: The meaning and importance of Prior Written Notice and Parent Consent</a></p></li>
<li class="pdficonlist"><p><a href="http://www.pacer.org/parent/php/PHP-c200.pdf" target="_blank">Checklist: Preparing for and attending Mediation</a></p></li>
<li class="pdficonlist"><p><a href="http://www.pacer.org/parent/php/PHP-c90.pdf" target="_blank">Facilitated IEP Meetings</a></p></li>
<li class="pdficonlist"><p><a href="http://www.pacer.org/parent/php/php-a25.pdf" target="_blank">Minnesota Due Process Options</a></p></li>
<li class="pdficonlist"><p><a href="http://www.pacer.org/parent/php/PHP-c93.pdf" target="_blank">Resolving Special Education Issues It Seems Like the School is Not Following My Child’s IEP*—What Can I Do?</a></p></li>
</ul>
</div>
</div>

<div id="info10">
<p>Your child will continue to receive special education services
if the team agrees that the services are needed. A
reevaluation is completed at least once every three years,
unless you and the school district agree that reevaluation
is not needed, to see if your child continues to be eligible
for special education services and to decide what services
he or she needs.</p>
<div class="resources">
<h3>Resources</h3>
<ul>
<li><p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/webinars/?webinar_id=47" target="_blank">How Will I Know my child is Making Progress</a></p></li>
<li class="pdficonlist"><p><a href="http://www.pacer.org/parent/php/PHP-c78.pdf" target="_blank">How Will I Know my child is Making Progress</a></p></li>
</ul>
</div>
</div>
</div>



<div id="earlyintervention">
    <h2>Early Intervention Services in Minnesota</h2>
    <p>Children ages birth to age 3 who are eligible for special education are served under an Individualized Family Service Plan (IFSP). The IFSP plan and process focuses on identifying the needs of the child and family and determining how to best meet the needs. The law recognizes the importance of the family in the lives of young children and emphasizes that the IFSP plan and process be family centered and directed. The IFSP process is to be comprehensive, coordinated, multidisciplinary, and, when appropriate, interagency.</p>
    <div class="resources">
        <h4>Resources</h4>
        <img style="float:right; margin:0px 5px;" src="/publications/images/pubimages/familiesareimportant.jpg" alt="" width="97" height="97" />
        <p><i class="fa fa-book" aria-hidden="true"></i> <strong><em>Families are Important! An Early Childhood Guidebook for Families of Young Children</em></strong></p>
        <p>Helps families of children with disabilities or delayed development   understand Minnesota's early intervention system and how to access   services for their child.    </p>
        <p>Call to order - $7 or free to Minnesota parents of children and young adults with disabilities. </p>
        <hr />
        <img style="float:right; margin:0px 5px;" src="/parent/images/early-transition-backpack-sml.png" width="119" height="145" alt=""/>
        <p><a href="/parent/php/PHP-a40.pdf"><span class="fa fa-file-pdf-o"></span> Early Childhood Transition Guidebook <span class="fa fa-external-link"></span></a> </P>
        <p>Helps parents understand the process that guides their child's   transition from infant and toddler intervention services to other early   childhood services at age three and includes strategies to use for a   successful transition. </P>
        <p>2010 edition - 14 page pdf</P>
        <br style="clear:right" />
    </div>
</div>





<h2 id="specedstructure">Structure of special education in Minnesota</h2>

<p>In Minnesota, special education programs for students with disabilities are provided primarily by school districts (public schools) that sometimes combine with other local school districts to form special education cooperatives.</p>
<p>Sometimes a single school district--usually in highly populated areas-- provides services to all children within its boundaries, including the entire range of programs and services for students with disabilities.</p>
<p>Sometimes a special education cooperative of two or more districts-- usually adjoining or within the same county or region--may join to provide special education services to students with disabilities within their combined boundaries. A cooperative may have a single administrative office with teaching personnel hired by that office.</p>
<p>Charter schools also are required to provide special education services to eligible children. Minnesota also has three intermediate school districts which operate similar to cooperatives.</p>
<p>Regardless how the special education programs of a school district are organized, in most cases, one person called the special education director is in charge of coordinating all special education services.</p>
<div class="resources">
  <h4>Resources</h4>
    <p>Two books that help parents understand both the principles of special education and the procedures for writing the educational program for a child with a disability are available free of charge from PACER Center to Minnesota parents:
    <ul>
    	<li><p><img class="fltrt" src="/publications/images/pubimages/PCBTK.jpg" alt="" /><strong>Parents Can Be the Key</strong><br />
        	As a parent, you know your child in a way no one else can. You are an expert on your child and a vital member of the
			team that plans your child’s education. You, as a parent, can be the key to an appropriate education for your child.
			You have important information to share about your child’s educational planning, and you can take action
			to make changes when they are needed. To be an effective advocate, you must know your rights and those of your child. 
            Exercising these rights and fulfilling your responsibilities are important steps in supporting your child on his or 
            her educational journey. This book offers an overview of special education in Minnesota. (2011 edition - 40 pages)
        	</p>
        </li>
        <li><p><a href="/parent/php/PHP-a12.pdf" target="_blank"> A Guide for Minnesota Parents to the Individualized Education Program (IEP) <span class="fa fa-file-pdf-o"></span> <span class="fa fa-external-link"></span></a><br />
        	Every child is unique and learns in different ways. Your child has been identified as needing special 
			education services to support his or her learning at school. You can play a major role in shaping the 
			services your child receives.
			This guidebook has been written for you—the parent, guardian, or surrogate parent of a child (ages 
			3 to 21 or graduation) with disabilities who receives special education services in Minnesota public 
			schools. It will help you understand the Individualized Education Program (IEP) and the importance 
			of your participation in developing your child’s IEP. You are a required member of your child’s IEP 
			team, and your ideas must always be considered in any decisions the IEP team makes.
			(2014 edition | 42 page pdf)</p>
</li>
    </ul>
    <p><strong>Call to Order</strong></p>
</div>


<h2 id="communication">Communication in the special education process</h2>
<p>IEP meetings and other school meetings are crucial parts of a child's educational program. A  parent's responsibility extends beyond giving consent and accepting explanations. Asking questions, bringing up issues to discuss, gathering information, and clarifying points are all part of the  parent's role.</p>
<p>Effective communication is two-way, generating understanding and support the professionals and the  parents need to make effective decisions about the child's educational program.</p>
<p>The key to effective communication is preparation and willingness to be actively involved in planning the child's educational program. To foster meaningful communication, the  parent can:</p>
<ul type="disc">
	<li>Make sure the focus stays on the child. </li>
	<li>Be prepared by knowing in advance the important points to discuss and questions to ask. Then write down the points and questions and check them off as they are addressed. </li>
	<li>Listen. Listening helps gather information about the child and understanding of other viewpoints. </li>
	<li>State issues clearly. It is important to communicate in a honest and clear manner. </li>
	<li>Ask questions. Asking questions can be an effective way of clarifying a point and keeping the line of communication open. </li>
	<li>Direct comments and questions to the person who can best address or answer them. </li>
	<li>Restate concerns if not heard the first time. </li>
	<li>Be confident. A  parent never has to feel guilty or embarrassed asking questions or assertively pursuing the appropriate services for the child. That is their role and their right. </li>
	<li>Work together. Neither the  parent nor the professionals have all the answers. Working together as a team encourages finding solutions. Everyone at the meeting has the same goal &ndash; to provide an appropriate educational program for the child.</li>
</ul>

<div class="resources">
<h3>Resources</h3>
<ul>
<li>
  <p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/livestream/?wksp=F8CCB11E-5FC1-4AF5-9CD2-DD0AFDEAD663" target="_blank">Tips and Tools to Help Your Child Succeed in Special Education</a></p></li>
<li><p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/webinars/?webinar_id=85" target="_blank">Advocating for your child with a disability</a></p></li>
<li><p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/webinars/?webinar_id=35" target="_blank">Six skills for effective parent advocacy</a></p></li>
<li><p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/webinars/?webinar_id=77" target="_blank">Special Education Communication: 3 Quick Skills</a></p></li>
<li><p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/webinars/?webinar_id=46" target="_blank">Parents as partners</a></p></li>
<li>
  <p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/parent/videos-trainings.asp#keeping-records" target="_blank">Now where did I put that? Keeping SE records</a></p></li>
<li>
  <p><i class="fa fa-file-video-o" aria-hidden="true"></i> <a href="http://www.pacer.org/livestream/?wksp=85B617E6-4A1F-4ED7-A8E0-C4AF5EB88697" target="_blank">Becoming an Active Partner in Your Child’s IEP</a></p></li>
<li>
  <p><i class="fa fa-book" aria-hidden="true"></i> <strong>High Expectations</strong><br />
This book helps parents who have just learned their child has a disability to maintain high expectations for the child's future while challenging the low expectations of others. Call to order.</p></li>
<li>
  <p><i class="fa fa-book" aria-hidden="true"></i> <strong>Working Together: A Parent's Guide to Parent and Professional Partnership and Communication Within Special Education</strong><br />
This book helps parents effectively communicate with special education professionals as they develop their child's educational program. Call to order.</p></li>
<li class="pdficonlist"><p><a href="http://www.pacer.org/parent/php/PHP-c82.pdf" target="_blank">Communication in the Special Education Process</a></p></li>
<li class="pdficonlist"><p><a href="http://www.pacer.org/parent/php/php-c160.pdf" target="_blank">Introducing Your Child to the School Community Using a “Student Snapshot” Format</a></p></li>
<li class="pdficonlist"><p><a href="http://www.pacer.org/parent/php/php-c155.pdf" target="_blank">Keeping Good Records Helps Special Education Stay on Track</a></p></li>
<li class="pdficonlist"><p><a href="http://www.pacer.org/parent/php/PHP-c198.pdf" target="_blank">Top Ten Tips for Communication</a></p></li>
<li class="pdficonlist"><p><a href="http://www.pacer.org/parent/php/PHP-c136.pdf" target="_blank">Use Questions to Find Answers</a></p></li>
<li class="pdficonlist"><p><a href="http://www.pacer.org/parent/php/PHP-c226.pdf" target="_blank">Why your child needs you to advocate</a></p></li>
<li class="pdficonlist"><p><a href="http://www.pacer.org/parent/php/PHP-c241.pdf" target="_blank">Tips for Talking with Your Child’s School</a></p></li>
</ul>
</div>

<h2 id="resolve">Resolving differences with the school</h2>
<p>Most participants want IEP meetings to result in mutual agreement about an appropriate educational program for the child. However, this doesn't always happen. The  parent can:</p>
<ul type="disc">
	<li>Discuss concerns with the child's IEP case manager </li>
	<li>Request another IEP meeting to discuss specific issues and concerns </li>
	<li>Explore other school programs or placements if necessary </li>
	<li>Consider requesting a conciliation conference, mediation, or an alternate form of dispute resolution </li>
	<li>If the above methods don't work and the situation is appropriate, consider initiating due process procedures </li>
	<li>It if appears that the school is not complying with special education laws, consider filing a complaint with the state's Division of Compliance and Assistance. </li>
</ul>
<p>For information about the dispute resolution methods mentioned above visit our <a href="/disputeresolution/">Dispute Resolution Section</a> or contact PACER Center.</p>
<div class="resources">
    <h4>Tips on resolving conflicts:</h4>
    <ul type="disc">
        <li>Put requests in writing and ask for a written response </li>
        <li>Keep written records of communication with the school </li>
        <li>Clarify issues and priorities related to points of agreement and disagreement </li>
        <li>Define possible solutions </li>
    </ul>
</div>

<div id="pageextender" style="clear:both">&nbsp;</div>
</div>
</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>