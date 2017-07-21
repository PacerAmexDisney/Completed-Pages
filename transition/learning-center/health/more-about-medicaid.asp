<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>About Medicaid - National Parent Center on Transition and Employment</title>

<meta name="description" content="Medicaid is a joint Federal and State program. It is partially funded by the Federal government and administered by States. It is for people with low incomes, with or without a disability." />
<!-- for Facebook -->          
<meta property="og:title" content="More About Medicaid - National Parent Center on Transition and Employment" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/learning-center/health/more-about-medicaid.asp" />
<meta property="og:description" content="Medicaid is a joint Federal and State program. It is partially funded by the Federal government and administered by States. It is for people with low incomes, with or without a disability." />

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script type="text/javascript" src="/transition/learning-center/js/like.js"></script>

<link rel="icon" href="http://www.pacer.org/transition/favicon.ico" />
<link href="/transition/css/style.css" rel="stylesheet" type="text/css" />

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


<!--#include virtual="/transition/dynamic-head-items.html"-->
</head>

<body class="twocol">

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<!--#include virtual="/transition/dynamic-header.html"-->
<!--#include virtual="/transition/topnav.html"-->

<div class="breadcrumb"> <a href="/transition/">Home</a> / <a href="/transition/learning-center/">Learning Center</a> / <a href="/transition/learning-center/health/">Health</a></div>

  <div class="sidebar1">
<!--#include virtual="/transition/learning-center/nav.html"-->
    <!-- end .sidebar1 --></div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="health-medicaid";
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
    <h1> Medicaid</h1>
    <p>Medicaid is a joint Federal and State program. It is partially funded by the Federal government and administered by States. It is for people with low incomes, with or without a disability. </p>
    <p>There are several ways to qualify for Medicaid adult benefits at age 18. After age 18, an individual is seen as a &ldquo;family of one&rdquo; and parental income is no longer considered as part of their income. Many youth who do not qualify for Medicaid because their parent's income was too high become eligible at age 18 when only their own income is counted. (States that expanded Medicaid under Affordable Care Act [ACA] have coverage starting at age 19.  This may make it possible to transition from Medicaid for children or the Children&rsquo;s Health Insurance Program (CHIP) to adult Medicaid, although this is not automatic, so it is necessary to apply.) Visit the <a href="https://www.healthcare.gov/medicaid-chip/getting-medicaid-chip/" target="_blank">HealthCare.Gov webpage</a> to see how to apply for Medicaid. </p>
    <h3>Medicaid and Former Foster Youth<br />
      </h3>
    <p>For young adults formerly in foster care, there are special provisions. Medicaid is available until age 26 for those who:</p>
    <ul>
      <li>exit foster care at age 18 </li>
      <li>were on Medicaid while in foster care </li>
      <li>are not eligible for other Medicaid coverage (e.g., pregnant, parent, disabled) </li>
    </ul>
    <p>No income is counted towards eligibility, and the young adult is eligible even if they have another offer of coverage through an employer. Children who were adopted or placed in guardianship at age 18 are not eligible for Medicaid under the former foster care coverage group.</p>
    <h3>Medicaid and SSI</h3>
    <p>In most states, Supplemental Security Income (SSI) recipients automatically qualify for Medicaid. Young adults who receive SSI benefits must be both significantly disabled and have low income and low assets. The SSI Program is administered by the Social Security Administration (SSA). However, even youth who received SSI benefits as children must reapply for adult SSI benefits at age 18.</p>
    <h3>Social Security Work Incentives </h3>
    <p>Don&rsquo;t let concerns about SSI benefits stop you from encouraging your child to find an employment setting that is right for them. Parents of youth with disabilities are very aware of the importance of healthcare for their children. Many have heard that SSI recipients will lose their Medicaid coverage if they earn any money. As a result, some families discourage their young adults from joining the workforce. This is not true. Be aware that the Social Security Administration has &ldquo;Work Incentive&rdquo; programs that allow young adults with disabilities to continue to receive Medicaid coverage while they explore careers or attend postsecondary education or job training. </p>
    <p>Make an informed choice. If your son or daughter receives SSI, contact a Work Incentives Planning and Assistance (WIPA) Project in your state to see how they can continue to receive health coverage through Medicaid while they work. WIPA projects are community-based organizations that receive grants from SSA to provide all Social Security and Supplemental Security Income (SSI) disability beneficiaries (including transition-age youth) with free work incentives planning and assistance. </p>
    <p>WIPA services are available in every state, the District of Columbia, and the U.S. Territories of American Samoa, Guam, the Northern Mariana Islands, Puerto Rico, and the Virgin Islands. Call 1-866-968-7842 (Voice) or 1-866-833-2967 (TTY) for locations WIPA organizations or see the online <a href="http://www.chooseworkttw.net/findhelp/" target="_blank">SSA service provider directory</a>.<strong></strong></p>
    <p><a href="http://www.pacer.org/transition/learning-center/benefits/social-security.asp" target="_blank">Find more information about applying for SSI benefits.</a></p>
    <h3>Medicaid Buy-In Program </h3>
    <p>Private or employer-based health insurance generally does not cover services and supports such as personal assistance services that some people need to work and live independently. To encourage individuals who need this level of support to continue to work, most states, but not all, have a Medicaid Buy-In program. Medicaid Buy-In programs offer Medicaid coverage to people with disabilities who are working, and earning more than the allowable limits for regular Medicaid. </p>
    <h3>Home and Community Based Waivers</h3>
    <p>Home and Community Based Services (HCBS) Waivers are Medicaid programs that provide services in the home for persons who would otherwise require institutional care in a hospital or nursing facility. Without waiver services being delivered in the community, some young adults might not be able to live at home or receive needed supports in the workplace.</p>


    


  <!-- end .content --></div>
  
<!--#include virtual="/transition/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
