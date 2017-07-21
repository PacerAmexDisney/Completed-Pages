<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Health and Transition - National Parent Center on Transition and Employment</title>

<meta name="description" content="A young person’s health is critical to his or her overall well-being. Good health provides a solid foundation for success at home, work, school, and in the community. As children become adults, families must determine how a young person’s health care expenses will be covered once they are no longer covered on the family policy or by a children’s health care program.">
<!-- for Facebook -->          
<meta property="og:title" content="Health and Transition - National Parent Center on Transition and Employment" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/learning-center/health/" />
<meta property="og:description" content="A young person’s health is critical to his or her overall well-being. Good health provides a solid foundation for success at home, work, school, and in the community. As children become adults, families must determine how a young person’s health care expenses will be covered once they are no longer covered on the family policy or by a children’s health care program." />

<link rel="icon" href="http://www.pacer.org/transition/favicon.ico" />
<link href="/transition/css/style.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/transition/dynamic-head-items.html"-->
</head>

<body class="twocol">

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<!--#include virtual="/transition/dynamic-header.html"-->
<!--#include virtual="/transition/topnav.html"-->

<div class="breadcrumb"> <a href="/transition/">Home</a> / <a href="/transition/learning-center/">Learning Center</a></div>

  <div class="sidebar1">
<!--#include virtual="/transition/learning-center/nav.html"-->
    <!-- end .sidebar1 --></div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="health";
	var showTree = "health-sub";
	var showTree2 = "none";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "active";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "submenu") {
			if (subTrees[i].id != showTree && subTrees[i].id != showTree2) {
				subTrees[i].className = "submenuhidden";
			}
		}
	}
</script> 





  <div class="content">
	<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>
    <div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>
    <h1 id="maincontent">Health &amp; Transition</h1>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script type="text/javascript" src="/js/pacer-expanding-box.js"></script>
<link rel="stylesheet" type="text/css" href="/js/pacer-expanding-box.css"/>
<link rel="stylesheet" type="text/css" href="/js/colorbox1.5.9/colorbox.css">
		
<script src="/js/colorbox1.5.9/jquery.colorbox-min.js"></script>
<script>
	$(document).ready(function(){
		//Change Any Links that contain the v= version into the embed version that colorbox expects
		//Note: You lose all extra query string items in the current version of this function
		$(".videoPopUp").each(function(){
			if (/\?v=/i.test(this.href)) {
				var vars = [], hash;
				var q = this.href.split('?')[1];
				if(q != undefined){
					q = q.split('&');
					for(var i = 0; i < q.length; i++){
						hash = q[i].split('=');
						vars.push(hash[1]);
						vars[hash[0]] = hash[1];
					}
				}
				this.href = 'http://www.youtube.com/embed/' + vars['v'] + '?rel=0&amp;wmode=transparent&amp;autoplay=1';						
			}
		});
		//Initialize Colorbox
		$(".videoPopUp").colorbox({iframe:true, innerWidth:960, innerHeight:585});
	});
</script>

    
    <p>A young person&rsquo;s health is critical to his or her overall well-being. Good health provides a solid foundation for success at home, work, school, and in the community. As children become adults, families must determine how a young person&rsquo;s health care expenses will be covered once they are no longer covered on the family policy or by a children&rsquo;s health care program. Many families also experience the challenge of transitioning from a long trusted pediatrician to a new adult health care provider.</p>
    <p> In addition to transition planning focused on helping students achieve their career, post-secondary education and independent living goals, it is therefore helpful for many youth with special health care needs and disabilities to have transition plans that focus on developing skills needed to manage their healthcare as adults. Transition goals could involve learning how to manage the student&rsquo;s chronic health condition, developing a healthy lifestyle, having the ability to recognize and address issues related to an acute illness, and connecting with new healthcare specialists as well as a new primary physician. Start the transition process early to allow plenty of time for your youth to develop effective skills.</p>
<hr />
    
<table width="100%" style="margin-bottom:15px;" cellpadding="10" cellspacing="10">
		<tr>
			<td align="center" valign="top">
				<img src="/transition/learning-center/health/images/health-transition-planning.jpg" alt="" width="150" height="146" />
			</td>
			<td valign="middle">
				<h3><a href="/transition/learning-center/health/planning-and-iep.asp">Health Transition Planning &amp; the Individual Educational Program (IEP) &gt;&gt;&gt;</a></h3>
                <p>If your teen receives special education services, consider how the development of healthcare skills and connections to health care providers can be incorporated into his or her transition planning goals and the Individual Educational Program (IEP) process. </p>
</td>
		</tr>
	  <tr>
			<td align="center" valign="top">
				<img src="/transition/learning-center/health/images/transition-to-providers-150px.jpg" alt="" width="150" height="139" />
		  </td>
			<td valign="middle">
				<h3><a href="/transition/learning-center/health/transition-to-adult-health-care.asp">Transitioning to Health Care Providers Who Serve Adults &gt;&gt;&gt;</a></h3>
                <p>If your teen is seen by a pediatrician and pediatric specialists, it is time to talk with your son or daughter and his primary physician about transitioning to health care providers who serve adults.</p>
</td>
		</tr>
		<tr>
			<td align="center" valign="top">
				<img src="/transition/learning-center/health/images/self-advocacy-skills-150px.jpg" alt="" width="150" height="133" />
			</td>
			<td valign="middle">
				<h3><a href="/transition/learning-center/health/building-self-advocacy.asp">Building Self-Advocacy and Self-Care <strong>Management Skills</strong> &gt;&gt;&gt;</a></h3>
                <p>Help your teen build the self-advocacy and health care self-management skills they need at home.</p>
</td>
		</tr>
		<tr>
			<td align="center" valign="top">
				<img src="/transition/learning-center/health/images/health-care-financing-150px.jpg" alt="" width="150" height="151" />
			</td>
			<td valign="middle">
				<h3><a href="/transition/learning-center/health/financing-health-care.asp">Financing Your Young Adult&rsquo;s Healthcare &gt;&gt;&gt;</a></h3>
                <p>Is your son or daughter&lsquo;s current health care coverage under your family&rsquo;s private health insurance or covered by Medicaid? Do you know how long your son or daughter will be covered under this plan as they grow older? What will he or she do if he or she is no longer covered under the family plan? What are the options? These key questions are important to answer.</p>
</td>
		</tr>
        
	</table>
 
 <hr />
 	<div class="resources">
    <h3>Health Transition Planning Resources</h3>
    <ul>
    <li><a href="http://www.nchpad.org" target="_blank">National Center on Health, Physical Activity and Disability</a> <i class="fa fa-external-link"></i><br />
    A resource center on building healthy inclusive communities.</li>
    <li><a href="http://gottransition.org/" target="_blank">Got Transition</a> <i class="fa fa-external-link"></i><br />
    A National Health Care Transition Center with resources for families, youth and the medical professionals who serve them.</li>
    <li><a href="http://www.ncwd-youth.info/health-care-transition-guide" target="_blank">A Young Person’s Guide to Health Care Transition</a> <i class="fa fa-external-link"></i><br />
      This brief from the National Collaborative on Workforce and Disability for Youth (NCWD/Youth) reviews  topics youth should consider around transitioning to adult health care, living a healthy lifestyle, and paying for health care.</li>
    <li><a href="http://www.fv-ncfpp.org/f2fhic/find-a-f2f-hic/" target="_blank">Find a Family-to-Family Health Information Centers (F2F HIC) in Your State</a> <i class="fa fa-external-link"></i><br />
    F2F HICs are family-staffed organizations that provide families of children and youth with special health care needs (CYSHCN) and disabilities with free support, information, resources, and training on a range of health issues.</li>
    <li><a href="http://www.familyvoices.org">Family Voices</a> <i class="fa fa-external-link"></i><br />
    Family Voices is a grassroots national network serving families of children and youth with special health care needs and/or disabilities. Affiliates in every state provide resources and support on a range of health care issues to help families to make informed decisions, advocate for improved policy, and build active partnerships with professionals. <a href="http://www.familyvoices.org/states" target="_blank"><em>Find Family Voices in your state.</em></a> <i class="fa fa-external-link"></i></li>
    <li class="pdficonlist"><a href="http://www.dol.gov/odep/pdf/HealthCareCareerTransitionQuickGuide.pdf" target="_blank">Transition Quickguide: Take Charge Of Planning and Managing Your Own Health and Career Goals</a> <i class="fa fa-external-link"></i><br />
      Provides information and resources about health insurance coverage, self-care, health care transition, decision-making, and career planning and management.</li>
    <li class="pdficonlist"><a href="http://www.pacer.org/publications/parentbriefs/ParentBrief_May06.pdf" target="_blank">What Does Health Have to Do with Transition? Everything!</a><br />
      This Parent Brief developed by PACER for the National Center on Secondary Education Transition (NCSET) provides information on the benefits of and strategies for including health in the Individualized Education Program (IEP) process.</li>
    <li class="pdficonlist"><a href="http://www.pacer.org/transition/resource-library/publications/NPC-54.pdf" target="_blank">Transition Health Plan for Youth with Disabilities and Their Families</a><br />
      This form is designed to help transition-age youth with disabilities and their families plan for youth to assume greater or full responsibility for their adult health care. </li>
        <li><a href="http://www.takingchargeofmyhealth.org/teens-and-young-adults/" target="_blank">Taking Charge of My Health <i class="fa fa-external-link"></i></a><br />
        The Teen and Young Adult Section of this Westchester Institute for Human Development website presents resources to help young people with intellectual and developmental disabilities take charge of multiple aspects of their own health care. This includes being part of their health transition planning, keeping medical records, and managing their health more independently. A parallel site provides corresponding information for family members on each topic.</li>
          <li><a href="http://www.agingwithdignity.org/voicing-my-choices.php" target="_blank">Voicing My Choices: A Planning Guide for Adolescents &amp; Young Adults</a> <i class="fa fa-external-link"></i><br />
            An advance planning guide specifically designed for adolescents and young adults living with a serious illness. Also available in Spanish.</li>

    </ul>
 	</div>
 
 
  <!-- end .content --></div>
  
<!--#include virtual="/transition/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
