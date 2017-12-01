<!--#include virtual="/transition/templates/header.asp"-->


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Transition to Adult Health Care - National Parent Center on Transition and Employment</title>

<meta name="description" content="Healthcare transition focuses on building independent health care skills – including self-advocacy, preparing for the adult model of care, and transferring to new providers. This section focuses on the transfer to new health care providers." />
<!-- for Facebook -->          
<meta property="og:title" content="Transition to Adult Health Care - National Parent Center on Transition and Employment" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/learning-center/health/transition-to-adult-health-care.asp" />
<meta property="og:description" content="Healthcare transition focuses on building independent health care skills – including self-advocacy, preparing for the adult model of care, and transferring to new providers. This section focuses on the transfer to new health care providers." />

<script type="text/javascript" src="/transition/learning-center/js/like.js"></script>

<link rel="icon" href="http://www.pacer.org/transition/favicon.ico" />

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
		var winWidth = $(window).width();
		var cbOpt = {iframe:true, innerWidth:960, innerHeight:585};
		if (winWidth < 1000) {
		  cbOpt.innerWidth = winWidth - 50;
		  cbOpt.innerHeight = cbOpt.innerWidth * 585 / 960.0;
		}
		$(".videoPopUp").colorbox(cbOpt);
	});
</script>


<!--#include virtual="/transition/dynamic-head-items.html"-->
<style type="text/css">
@media (max-width: 750px) {
  .addthis_sharing_toolbox, .sharethis {
	  padding-top: 30px;
  }
}
</style>
</head>

<body class="twocol">

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<!--#include virtual="/transition/templates/page-header-nav.asp"-->

<div class="breadcrumb"> <a href="/transition/">Home</a> / <a href="/transition/learning-center/">Learning Center</a> / <a href="/transition/learning-center/health/">Health</a></div>

  <div class="sidebar1">
<!--#include virtual="/transition/learning-center/nav.html"-->
    <!-- end .sidebar1 --></div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="health-transition";
	var showTree = "health-sub";
	var showTree2 = "";
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
    <h1><strong>Transition to Adult Health Care</strong></h1>
    <p>In the medical world the term &ldquo;transition&rdquo; refers to preparing youth for the experience of becoming consumers of adult healthcare. During childhood, parents take responsibility for seeing that their son or daughter&rsquo;s medical needs are met—they call for doctor appointments, fill out forms, and keep track of medications. As youth get older, the ability to manage their own medical needs becomes increasingly important. Healthcare transition focuses on building independent health care skills – including self-advocacy, preparing for the adult model of care, and transferring to new providers. This section focuses on the transfer to new health care providers. </p>
    <p>Transition planning happens in more than one setting and youth with disabilities and chronic conditions or special health care needs may have several transition teams. A youth&rsquo;s health care transition team includes:</p>
    <ul>
      <li>the young person </li>
      <li>his or her parents</li>
      <li>his or her primary doctor</li>
      <li>specialty care providers</li>
      <li>other medical care providers or support staff, if appropriate. </li>
    </ul>
    <p>The purpose of this team is to plan and support the transition from pediatric to adult health care. Although physicians may not have the time to participate in IEP meetings, you can bring their recommendations to the school IEP team to make sure health and medical goals are reflected in your youth&rsquo;s IEP.</p>
    <p>There are three initial questions parents should consider to ensure the transition a new provider goes smoothly. </p>
    <ol>
      <li>Find out the policies regarding the age limits for your child's pediatric/adolescent practice. </li>
      <li>Ask your health care insurer what their policy is regarding the age limit of services under pediatric/adolescent care. </li>
      <li>If you have concerns about your son or daughter&rsquo;s ability to make good decisions about their medical care based on their unique health needs, find out about your state's requirements for limited guardianship. </li>
    </ol>
    <p>This information will provide you with the time frame you need to work within.</p>
    <h3><strong>Working with Your Son or Daughter&rsquo;s Pediatrician</strong></h3>
    <p>Doctors who actively participate in the transition process by suggesting health and medical goals to address in the IEP, coordinating the transition to other providers or clinicians, communicating with appropriate community services (e.g. Medicaid and Social Security), or providing their input on other postsecondary goals significantly improve the transition process for their young adult patients and their families. However, while most providers encourage their adolescent patients with special health care needs to assume responsibility for their own health, far fewer are discussing other important elements of health care transition—including the transfer to an adult provider and insurance continuity and coverage. </p>
    <p>Parents can help physicians play a more effective role in the transition to adult health care. Introduce the idea of health care transition to your son or daughter&rsquo;s pediatric health care provider early in adolescence (age 12 to 14). You can start the discussion by asking the provider: <em>What do you feel your role is in health care transition planning?</em></p>
    <p>If the physician is not familiar with recommended practices, refer him or her to resources of <a href="http://www.gottransition.org">GotTransition.org</a>, or your state&rsquo;s <a href="http://www.fv-ncfpp.org/f2fhic/find-a-f2f-hic/">Family-to-Family Health Information Center</a>. By beginning the conversation you have begun a partnership that you can build upon in future visits. </p>
    <p>Ask about would the possibility of overlapping adult and pediatric care for your son or daughter for a period of time with his or her pediatrican. This approach may be especially helpful if multiple specialists are involved.</p>
    <h3><strong>Finding an Adult Health Care Provider</strong><strong> </strong></h3>
    <p>How do you find a doctor who will meet your son or daughter&rsquo;s medical needs, that will be covered by your health plan, and who will give you the care you are looking for?</p>
    <p>Before you start looking for a new primary doctor, think about what is most important to your youth:</p>
    <ul>
      <li>Is where the office located important? How will he or she get there?</li>
      <li>Does he or she need an office that is fully wheelchair accessible, not just the entrance but the accessible examination rooms, X-ray machines, scale, etc.? </li>
      <li>What hospital do you want to use, and is this doctor on the staff there?</li>
      <li>Is it important that a new primary doctor be knowledgeable about your son or daughter&rsquo;s special health care needs? Or is the doctor affiliated with others who have this kind of experience?</li>
      <li>Will your new doctor or clinic help coordinate a patient&rsquo;s care with needed medical specialists?</li>
    </ul>
    <h4><strong>Gather Recommendations</strong></h4>
    <p>Ask others for their recommendations of doctors that you can consider. Ask your current doctor, family members, and adults who have health needs similar to your son or daughter&rsquo;s who they would recommend. Ask other parents of young adults who have made the transition to adult health care about their experiences. </p>
    <p>Will you also need to find new medical specialists such as a neurologist, orthopedist, or gastroenterologist who will communicate with your new primary doctor? Many young adults with disabilities and their families have developed strong relationships with their pediatric medical specialists. Ask your son or daughter&rsquo;s pediatric specialists to help you transition to adult specialists. You can also ask the same individuals listed above about their recommendations for adult specialists.</p>
    <p>Once you have a list of prospective adult health care providers. Sit down with your son and daughter and make a plan about how to approach the interview. Some youth will want to assume the leadership for how to proceed with the interview process. Even youth who need significant parental guidance, however, should be involved to the extent they are able in the process of selecting their new health care provider.</p>
    <p>Don&rsquo;t forget to refer to your health insurance website to ensure that the individual doctors you are thinking about interviewing are on their list of approved providers. </p>
    <p>Also consider where a potential doctor is located. How far is your son or daughter – or you if you will provide transportation – willing to travel? Does your son or daughter use public transportation? Is the doctor&rsquo;s office on or near a bus line or subway stop? That may help you narrow down the field.</p>
    <h4><strong>Interview Potential Doctors</strong></h4>
    <p>Once you have a gathered a list of potential doctors, sit down with your son or daughter and make a list together of questions that you want to ask each one: </p>
    <ul>
      <li>Does the doctor currently see patients with health conditions similar to yours?</li>
      <li>Is he or she willing to spend time with your son or daughter&rsquo;s pediatrician/adolescent health care provider to gain an understanding of your youth&rsquo;s unique health issues? </li>
      <li>Do office visits include a time for youth to talk about their concerns? (Or you, if you are your son or daughter&rsquo;s guardian and you are overseeing his or her medical care.)</li>
      <li>Can you talk with the doctor directly on the phone? Does the doctor respond to patient e-mail? </li>
      <li>Does the doctor or their staff help coordinate patient-care with medical specialists?</li>
    </ul>
    <p>When you call to actually schedule an interview: </p>
    <ul>
      <li>Double-check with the office to be sure that the doctor works with patients who have your youth&rsquo;s insurance coverage.</li>
      <li>Ask the office is whether or not the doctor is accepting new patients.</li>
      <li>Ask if the office is accessible – the exam rooms, scale and diagnostic equipment such as X-rays as well as the entrance, lobby and parking lot?</li>
      <li>Ask what hospitals the doctor schedules procedures at.</li>
      <li>Ask if the doctor can be reached after hours, or if there is an affiliated urgent care clinic. </li>
      <li>Where do they do tests like lab tests, X-rays or CT scans?</li>
      <li>Do they have social workers or psychologists? </li>
      <li>Are other medical specialists in the same building?</li>
    </ul>
    <h4>After the Interview</h4>
    <p>After you have met with your prospective doctors, discuss the interview with your son or daughter. </p>
    <ul>
      <li>Did the doctor listen to you and your youth&rsquo;s questions? </li>
      <li>Did he or she take enough time to answer your questions? </li>
      <li>Did the doctor explain information in a way that your youth could understand it? </li>
      <li>Did the doctor treat your son or daughter with respect?</li>
      <li>Did the doctor focus his or her attention primarily on the youth rather than on you, the parent?</li>
      <li>Did the doctor discuss topics that are age and developmentally appropriate beyond the youth&rsquo;s special health care needs?</li>
      <li>How comfortable was the transportation time needed to get to the office? </li>
      <li>Was the building accessible in ways that meet your son or daughter needs?</li>
    </ul>
    
<h2>Videos</h2>
<p><a class='videoPopUp' href="https://www.youtube.com/watch?v=NC7O_l2n3a4"><img src="/transition/video/images/help-you-take-charge.jpg" width="200" height="200" alt=""/><br />
<i class="fa fa-play"></i> What Can Medical Providers and Teachers Do To Help You Take Charge of Your Own Health Care?</a></p>

<p><a class='videoPopUp' href="https://www.youtube.com/watch?v=6KpQr4zetp0"><img src="/transition/video/images/transition-to-adult-health-care.jpg" width="200" height="200" alt=""/><br />
<i class="fa fa-play"></i> How Can Parents Help Providers When Their Young Adult Transitions to Adult Health Care?</a></p>

<p><a class='videoPopUp' href="https://www.youtube.com/watch?v=an3qQf8zSig"><img src="/transition/video/images/speak-for-themselves.jpg" width="200" height="200" alt=""/><br />
<i class="fa fa-play"></i> Let Children and Teens Speak for Themselves</a></p>

<p><br/>For more videos on this topic,  visit our <a href="/transition/video/index.asp" target="_blank">Videos page</a>.</p>

	  <div id="helpfulQuestion" class="extraSpace"><span id="likeButton"class="fa fa-thumbs-o-up"></span> <span id="dislikeButton" class="fa fa-thumbs-o-down"></span> Did you find this helpful?</div>
<br class="clearfloat" />


<div class="resources">
<h2>PACER Resources</h2>
<ul>
    <li class="pdficonlist"><a href="/transition/resource-library/publications/NPC-54.pdf" target="_blank">Transition Health Plan for Youth with Disabilities and Their Families</a><br />
      This form is designed to help transition-age youth with disabilities and their families plan for youth to assume greater or full responsibility for their adult health care.</li>
</ul>

<h2>National Resources</h2>
<ul class="spacenobullet">
	<li>Helpful Tools for Youth and Families from <a href="http://www.gottransition.org/">GotTransition.org</a> <i class="fa fa-external-link"></i>
      <ul>
        <li><a href="http://www.gottransition.org/youthfamilies/index.cfm" target="_blank">Got Transition: Youth and Family Resources</a> <i class="fa fa-external-link"></i></li>
        <li><a href="http://www.gottransition.org/providers/index.cfm">Got Transition: Resources for Health Care Providers</a> <i class="fa fa-external-link"></i></li>
        <li><a href="http://www.gottransition.org/resourceGet.cfm?id=241" target="_blank">Plan of Care</a> <i class="fa fa-external-link"></i> | <a href="http://www.gottransition.org/resourceGet.cfm?id=241&amp;es=1" target="_blank">En Español</a> <i class="fa fa-external-link"></i></li>
        <li><a href="http://www.gottransition.org/resourceGet.cfm?id=242">Medical Summary and Emergency Care Plan</a> <i class="fa fa-external-link"></i> | <a href="http://www.gottransition.org/resourceGet.cfm?id=242&amp;es=1" target="_blank">En Español</a> <i class="fa fa-external-link"></i></li>
      </ul></li>
      <li><a href="https://www.nlm.nih.gov/medlineplus/ency/article/001939.htm">Choosing a primary care provider</a> <i class="fa fa-external-link"></i><br />
        Although not specifically for people with disabilities, this is a helpful  article from MedlinePlus, the National Institutes of Health's Web site for patients and their families.
	</li>
        
</ul>
</div>



<!--#include virtual="/transition/templates/footer.asp"-->
