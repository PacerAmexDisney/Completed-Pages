<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Students with Disabilities - National Bullying Prevention Center</title>
<meta name="title" content="Students with Disabilities - National Bullying Prevention Center" />
<meta name="description" content="Children with disabilities are two to three times more likely to be bullied than their nondisabled peers." />
<!-- for Facebook -->
<meta property="og:title" content="Students with Disabilities - National Bullying Prevention Center" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/bullying/images/nbpc-logo.png" />
<meta property="og:url" content="http://www.pacer.org/bullying/resources/index.asp" />
<meta property="og:description" content="Children with disabilities are two to three times more likely to be bullied than their nondisabled peers." />
<link rel="image_src" href="http://www.pacer.org/bullying/images/nbpc-logo.png" />
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/bullying/css/scrolling.css"/>
<link href="/js/colorbox1.5.9/colorbox.css" rel="stylesheet" type="text/css" />

<!--#include virtual="/bullying/dynamic-head-items.html"-->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script type="text/javascript" src="/js/pacer-expanding-box.js"></script>
<link rel="stylesheet" type="text/css" href="/js/pacer-expanding-box.css"/>
<script type="text/javascript" src="/js/jquery-ui-1.11.4.custom/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css" href="/js/jquery-ui-1.11.4.custom/jquery-ui.css"/>
<script type="text/javascript">
//<![CDATA[
	$(document).ready(function() {
		$('.dash').attr('aria-hidden','true');
		var $pageTabs = $('#tabs').tabs();
		//When linking to a tab on the page the browser sometimes jumps you to the bottom of the page.  This will start you at the top of the tab if you link directly to a tab on the page.
		if (window.location.hash) {
				$('html, body').animate({
        			scrollTop: $($pageTabs).offset().top - 115
    			}, 150);
		}

		$(".ui-tabs-panel").each(function(i){
	  		var totalSize = $(".ui-tabs-panel").size() - 1;
	  		if (i != totalSize) {
	      		next = i + 1;
   		  		$(this).append("<a href='#' class='next-tab mover' rel='" + next + "'>Next Tab &#187;</a>");
	  		}
	  
	  		if (i != 0) {
	      		prev = i - 1;
   		  	$(this).append("<a href='#' class='prev-tab mover' rel='" + prev + "'>&#171; Prev Tab</a>");
	  		}
   			$(this).append('<br class="clearfloat" />');
		});
	
		$('.next-tab, .prev-tab').click(function() { 
		   //scroll back to the top
		   $('html, body').animate({
        		scrollTop: $($pageTabs).offset().top - 115
    		}, 150);
		   //delay the changing of the tabs until the scroll is complete so the person sees the heading change
		   setTimeout($.proxy(function() {
			   	//alert('timeout - ' + $(this).attr("rel"));
		   		$('#tabs').tabs('option', 'active', $(this).attr("rel"));
		   		//Re-scroll the window after the content length has changed.
				$('html, body').animate({
        			scrollTop: $($pageTabs).offset().top - 115
    			}, 150);
				
		   }, this), 300);
           return false;
       	});
	 });//----------close ready function----------
//]]>
</script>
<script type="text/javascript" src="/js/colorbox1.5.9/jquery.colorbox-min.js"></script>
<script src="/js/LayerSlider/layerslider/jQuery/jquery-easing-1.3.js" type="text/javascript"></script>
<style type="text/css">
#gallery {
	text-align: center;
}
#gallery img {
	margin: 0px 4px 4px;
	box-shadow: 2px 2px 3px #333;
}
.topRightTabImage {
	float: right;
}
#person_first {
	width: 90%;
	background-color: #c85024;
	background-color: rgba(200, 80, 36, 0.5);
	color: #000;
	margin: 20px auto;
	border-collapse: collapse;
	border-spacing: 0;
}
#person_first th, td {
	border-collapse: collapse;
	vertical-align: middle;
	text-align: center;
	border: 1px solid #fff;
}
#person_first tbody tr:nth-child(odd) {
	background: #c85024;
	color: #fff;
}
#resourceTable td {
	padding: 10px;
}
</style>
<style type="text/css">
.eventtable {
	border-spacing: 10px;
	border-collapse: separate;
}
.eventtable td:nth-child(2) {
	border-top: 1px solid #ccc;
	padding-top: 5px;
}
.eventtable tr:first-child td {
	border: none;
}
.eventtable td {
	vertical-align: top;
}
.eventtable img {
	margin-bottom: 25px;
	margin-top: 5px;
}
.eventtable .captioned {
	font-size: .8em;
	font-style: italic;
}
.eventtable .captioned img {
	margin-bottom: 5px;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
		$(".group1").colorbox({rel:'group1'});
	});

</script>
</head>
<body>
<div class="container"> <a id="skiptocontent" href="#maincontent">Skip to main content</a> 
	
	<!--#include virtual="/bullying/dynamic-header.html"--> 
	<!--#include virtual="/bullying/topnav.html"-->
	
	<div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/resources/">Resources</a> /</div>
	
	<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show --> 
	<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="unityday";
	var showTree = "none";
	var currSubId="none";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "active";
	}
	if (document.getElementById(currSubId)){
		document.getElementById(currSubId).className = "active";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "submenu") {
			if (subTrees[i].id != showTree) {
				subTrees[i].className = "submenuhidden";
			}
		}
	}
</script>
	<div class="content" style="clear:right">
		<div class="contentrow row-orange row-shadow">
			<div class="addthis_sharing_toolbox"></div>
			<div class="sharethis" style="float:right; width:3em;">Share:</div>
			<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>
			<h1 id="maincontent" style="text-align:left; padding-top:20px;">Bullying and Harassment of Students with Disabilities</h1>
			<p style="font-size:1.2em; font-weight:bold;">Children with disabilities are two to three times more likely to be bullied than their nondisabled peers.</p>
		</div>
		<div class="tabbedPanel">
			<div id="tabs">
				<ul>
					<li><a href="#tab-top10">Top 10 Facts</a></li>
					<li><a href="#tab-rights">Rights and Policies</a></li>
					<li><a href="#tab-selfadvocacy">Self-Advocacy</a></li>
					<li><a href="#tab-peeradvocacy">Peer Advocacy</a></li>
					<li><a href="#tab-activities">Activities</a></li>
					<li><a href="#tab-language">Person First Language</a></li>
					<li><a href="#tab-resources">Resources</a></li>
				</ul>
				<div id="tab-top10">
					<h2>Top 10 facts that parents, educators and students should know</h2>
					<h3>1. The statistics &ndash; Students with disabilities are much more likely to be bullied than their nondisabled peers.</h3>
					<p>Although only 10 U.S. studies have been conducted on the connection between bullying and developmental disabilities, all of these studies found that children <strong>with disabilities were two to three times more likely to be bullied than their nondisabled peers</strong>. (<a href="http://www.amazon.com/Disabilities-Insights-Across-Fields-Around/dp/0313346046" target="_blank"><em>Disabilities: Insights from Across Fields and Around the World<strong>; </strong></em>Marshall, Kendall, Banks &amp; Gover (Eds.), 2009</a> <i class="fa fa-external-link"></i>)</p>
					<p>One study shows that 60 percent of students with disabilities report being bullied regularly compared with 25 percent of all students. (Source: British Journal of Learning Support, 2008)</p>
					<p>For more information, visit &ldquo;<a href="http://www.pacer.org/bullying/about/media-kit/stats.asp">Bullying Statistics</a>.&rdquo;</p>
					<h3>2. The impact - Bullying affects a student&rsquo;s ability to learn.</h3>
					<p>Many students with disabilities are already addressing challenges in the academic environment. When they are bullied, it can directly impact their education.</p>
					<p>Bullying is not a harmless rite of childhood that everyone experiences. Research shows that bullying can negatively impact a child&rsquo;s access to education and lead to:</p>
					<ul>
						<li>school avoidance and higher rates of absenteeism</li>
						<li>decrease in grades</li>
						<li>inability to concentrate</li>
						<li>loss of interest in academic achievement</li>
						<li>increase in dropout rates</li>
					</ul>
					<p>For more information read PACER&rsquo;s <a href="/publications/bullypdf/BP-1.pdf" target="_blank">&ldquo;Common Views About Bullying.&rdquo;</a> </p>
					<h3>3. The definition &ndash; Bullying based on a student&rsquo;s disability may be considered harassment.</h3>
					<p>The Office for Civil Rights (OCR) and the Department of Justice (DOJ) have stated that bullying may also be <strong>considered harassment</strong> when it is based on a student&rsquo;s race, color, national origin, sex, <strong>disability</strong>, or religion.</p>
					<p>Harassing behaviors may include:</p>
					<ul>
						<li>unwelcome conduct such as verbal abuse, name calling, epithets, or slurs </li>
						<li>graphic or written statements </li>
						<li>threats </li>
						<li>physical assault </li>
						<li>other conduct that may be physically threatening, harmful, or humiliating </li>
					</ul>
					<p>Read the online blog article from the U.S. Department of Education titled &ldquo;<a href="http://blog.ed.gov/2013/08/keeping-students-with-disabilities-safe-from-bullying/?utm_medium=email&amp;utm_source=govdelivery">Keeping Students with Disabilities Safe from Bullying.</a>&rdquo; <i class="fa fa-external-link"></i></p>
					<h3>4. The Federal Laws &ndash; There are legal protections and provisions for students with disabilities who are being harassed.</h3>
					<p>The Individuals with Disabilities Education Act (IDEA) is a federal law. It requires that each child who has a disability and qualifies for special education and related services must receive a free appropriate public education (FAPE). The State Department of Education in each state enforces IDEA. Students with an Individualized Education Program (IEP) would qualify for these protections. </p>
					<p>Section 504 of the Rehabilitation Act of 1973 (often referred to as &ldquo;Section 504&rdquo;)&nbsp;and Title II of the Americans with Disabilities Act of 1990 (Title II) are the federal laws that apply if the harassment denies a student with a disability an equal opportunity to education.&nbsp;The Office for Civil Rights (OCR) enforces Section 504 and Title II of the ADA.&nbsp;Students with a 504 plan or an Individualized Education Program (IEP) would qualify for these protections.&nbsp;<strong> </strong></p>
					<p>In October 2014, as part of National Bullying Prevention Month, the U.S. Department of Education's Office for Civil Rights (OCR) issued <strong>guidance to schools</strong> reminding them that bullying is wrong and must not be tolerated &mdash; including against America's 6.5 million students with disabilities. </p>
					<p>The Department issued guidance in the form of a letter to educators detailing public schools' responsibilities under Section 504 of the Rehabilitation Act, Title II of the Americans with Disabilities Act, and Individuals with Disabilities Education Act regarding the bullying of students with disabilities. If a student with a disability is being bullied, these federal laws require schools to take immediate and appropriate action to investigate the issue and, as necessary, take steps to stop the bullying and prevent it from recurring. </p>
					<p>The letter further clarified that the bullying of a student with a disability on any basis, not just their disability, may result in a denial of FAPE that must be remedied by the school. Under Section 504, the IEP or 504 team should convene when bullying of a student with a disability occurs on any basis in order to determine whether the student&rsquo;s needs have changed and whether FAPE is still being provided. </p>
					<p>The letter also clarified that when OCR receives a complaint related to bullying of a student with a disability, it may investigate whether there has been a FAPE violation, a disability-based harassment violation, or both, depending on the unique circumstances of the case.</p>
					<p>View the <a href="http://www2.ed.gov/about/offices/list/ocr/letters/colleague-bullying-201410.pdf" target="_blank">2014 Dear Colleague Letter &gt;&gt;&gt;</a> <i class="fa fa-external-link"></i></p>
					<h3>5. The State Laws &ndash; All states have bullying prevention laws and some include disability-specific information.</h3>
					<p>In addition to the federal laws, all states have laws that address bullying. Some have information specific to students with disabilities. </p>
					<p>Many school districts also have individual policies that address how to respond to bullying situations. Contact your local district to request a written copy of the district policy on bullying.</p>
					<p>For a complete overview of state laws, visit <a href="http://www.stopbullying.gov/laws/index.html" target="_blank">StopBullying.gov</a>. </p>
					<h3><strong>6. Role models - The adult response is important.</strong></h3>
					<p>Parents, educators, and other adults are the most important advocates that a student with disabilities can have. It is important that adults know the best way to talk with someone in a bullying situation. </p>
					<p>Some children are able to talk with an adult about personal matters and may be willing to discuss bullying. Others may be reluctant to speak about the situation. There could be a number of reasons for this: the student bullying them may have told them not to tell, or they might fear that if they do tell someone, the bullying won&rsquo;t stop or may become worse. </p>
					<p>When preparing to talk to children about bullying, adults (parents and educators) should consider how they will handle the child&rsquo;s questions and emotions, and what their own responses will be. Adults should be prepared to listen without judgment, providing the child with a safe place to work out their feelings and determine their next steps. </p>
					<p>It is never the responsibility of the child to fix a bullying situation. If children could do that, they wouldn&rsquo;t be seeking the help of an adult in the first place.</p>
					<p>For more information, read PACER&rsquo;s<strong> &ldquo;</strong><a href="http://www.pacer.org/publications/bullypdf/BP-2.pdf" target="_blank">Help Your Child Recognize the Signs of Bullying.</a>&rdquo; </p>
					<h3><strong>7. The resources &ndash; Students with disabilities have resources that are specifically designed for their situation.</strong></h3>
					<p><strong>Individualized Education Program (IEP)</strong><br />
						Students with disabilities who are eligible for special education under the Individuals with Disabilities Education Act (IDEA) will have an Individualized Education Program (IEP). &nbsp;</p>
					<p>The IEP can be a helpful tool as part of a bullying prevention plan. Remember, every child receiving special education is entitled to a free appropriate public education (FAPE), and bullying can become an obstacle to that education.</p>
					<p>For more information, read PACER&rsquo;s &ldquo;<a href="http://www.pacer.org/publications/bullypdf/BP-4.pdf" target="_blank">Individualized Education Program (IEP) and Bullying.</a>&rdquo;</p>
					<p><strong>Dear Colleague Letters</strong></p>
					<p>A <a href="http://www2.ed.gov/about/offices/list/ocr/letters/colleague-bullying-201410.pdf">2014 Dear Colleague letter</a> from the Office for Civil Rights states that bullying of any kind, not just on the basis of a student&rsquo;s disability, may result in a violation of FAPE, and reiterates schools&rsquo; responsibilities to address behavior that may result in violations of FAPE or disability-based harassment.</p>
					<p>A <a href="http://www.ed.gov/policy/speced/guid/idea/memosdcltrs/bullyingdcl-8-20-13.doc" target="_blank">2013 Dear Colleague letter</a> and <a href="http://www2.ed.gov/policy/speced/guid/idea/memosdcltrs/bullyingdcl-enclosure-8-20-13.pdf" target="_blank">enclosure</a> by the Office of Special Education and Rehabilitative Services (OSERS) clarifies that when the bullying of a student with a disability results in the student not receiving meaningful educational benefit under IDEA, the school must remedy the problem, regardless of whether the bullying was based on the student's disability. </p>
					<p><a href="http://www2.ed.gov/about/offices/list/ocr/letters/colleague-201010.html" target="_blank">In 2010, another Dear Colleague letter</a> from the Office for Civil Rights was issued that reminded school districts of their responsibilities under civil rights laws that&nbsp;prohibit discrimination and harassment on the basis of race, color, national origin, sex, disability, and religion. </p>
					<p><a href="http://www2.ed.gov/about/offices/list/ocr/docs/disabharassltr.html" target="_blank">In 2000, a Dear Colleague letter</a> was sent to school districts nationwide from the U.S. Department of Education&rsquo;s Office for Civil Rights (OCR) and Office of Special Education and Rehabilitative Services (OSERS) that defined the term &ldquo;disability harassment.&rdquo;&nbsp;The letter also explained that bullying based on disability may violate civil rights laws enforced by OCR as well as interfere with a student's receipt of special education under the Individuals with Disabilities Education Act (IDEA). </p>
					<p><strong>Template Letters</strong><br />
						Parents should contact school staff each time their child informs them that he or she has been bullied.&nbsp;Parents may use one of these template letters as a guide for writing a letter to their child&rsquo;s school. These letters contain standard language and &ldquo;fill-in-the-blank&rdquo; spaces so that the letter can be customized for each child&rsquo;s situation.&nbsp; </p>
					<p><a href="http://www.pacer.org/bullying/resources/publications/">PACER Center&rsquo;s sample letter(s)</a> can serve two purposes:&nbsp;</p>
					<ul>
						<li>First, the letter will alert school administration of the bullying and your desire for interventions.&nbsp; </li>
						<li>Second, the letter can serve as your written record when referring to events.&nbsp;The record (letter) should be factual and absent of opinions or emotional statements.&nbsp; </li>
					</ul>
					<p>The two letters &mdash; &ldquo;Student with an IEP, Notifying School About Bullying&rdquo; and &ldquo;Student with a 504, Notifying School About Bullying&rdquo; &mdash; are for parents who have a child with an Individualized Education Plan (IEP) or Section 504. The bullying law of the individual state applies to all students as noted in the law. When bullying is based on the child&rsquo;s disability, federal law can also apply under Section 504, the Individuals with Disabilities Education Act (IDEA), and Title II of the Americans with Disabilities Act. </p>
					<h3><strong>8. The Power of Bystanders &ndash; More than 50 percent of bullying situations stop when a peer intervenes.</strong></h3>
					<p>Most students don&rsquo;t like to see bullying but they may not know what to do when it happens. Peer advocacy &mdash; students speaking out on behalf of others &mdash; is a unique approach that empowers students to protect those targeted by bullying.</p>
					<p>Peer advocacy works for two reasons. First, students are more likely than adults to see what is happening with their peers and peer influence is powerful. Second, a student telling someone to stop bullying has much more impact than an adult giving the same advice.</p>
					<p><em>Note: For detailed information, visit the &ldquo;peer advocacy&rdquo; tab.</em></p>
					<h3><strong>9. Self-advocacy - The importance of involving the student/child in decision making and planning.</strong></h3>
					<p>Self-advocacy means the student with a disability is responsible for telling people what they want and need in a straightforward way. Students need to be involved in the steps taken to address a bullying situation. </p>
					<p>Self-advocacy is knowing how to:</p>
					<ul>
						<li>speak up for yourself</li>
						<li>describe your strengths, disability, needs, and wishes</li>
						<li>take responsibility for yourself</li>
						<li>learn about your rights</li>
						<li>obtain help, or know who to ask if you have a question</li>
					</ul>
					<p>The person who has been bullied should be involved in deciding how to respond to the bullying. This involvement can provide students with a sense of control over their situation, and help them realize that someone is willing to listen, take action, and reassure them that their opinions and ideas are important. </p>
					<p>Teens, learn more about what you can do by reading PACER&rsquo;s&nbsp;&ldquo;<a href="http://www.pacer.org/publications/bullypdf/BP-17.pdf" target="_blank">Drama: Is it Happening To You?</a>&rdquo; </p>
					<p>The <a href="http://www.pacer.org/bullying/resources/publications/">Student Action Plan</a> is a self-advocacy resource. It includes three simple steps to explore specific, tangible actions to address the situation:</p>
					<ul>
						<li>define the situation </li>
						<li>think about how the situation could be different</li>
						<li>write down the steps to take action </li>
					</ul>
					<p><em>Note: For detailed information, visit the &ldquo;self-advocacy&rdquo; tab.</em></p>
					<h3>10. The role of community - Know that you are not alone.</h3>
					<p>When students have been bullied, they often believe they are the only one this is happening to, and that no one else cares. In fact, they are not alone. </p>
					<p>There are individuals, communities, and organizations that do care. <strong>It is not up to one person to end the bullying </strong>and it is never the responsibility of the child to change what is happening to them. <strong>No one deserves to be bullied. </strong>All people should be treated with dignity and respect, no matter what. Everyone has a responsibility &mdash; and a role to play &mdash; as schools, parents, students, and the community work together for positive change.</p>
					<p>Parents, learn more about what you can do to help your child and create more inclusive schools and communities. Visit &ldquo;<a href="http://www.pacer.org/bullying/resources/parents/">What Parents Should Know About Bullying</a>.&rdquo;</p>
					<p>Get your school involved with the free online curriculum titled &ldquo;The We Will Generation,&rdquo; designed to encourage student-to-student conversation to educate, inspire, and support peers to create kinder and safer schools. <a href="http://www.pacer.org/bullying/wewillgen/">Visit &ldquo;The We Will Generation&rdquo; campaign &gt;&gt;&gt; </a></p>
					<p>Show students that they are not alone. Order the online toolkits designed to create communities that are together against bullying &mdash; and united to provide kindness, support and hope for those who have experienced bullying through conversation, education, and inspiration. Visit &ldquo;<a href="http://www.pacer.org/bullying/yourenotalone/">You&rsquo;re Not Alone, We&rsquo;re Here For you campaign &gt;&gt;&gt;</a></p>
					<p class="centered"><a class="btn" href="/publications/bullypdf/BP-18.pdf" target="_blank">Download the PDF Version of &ldquo;Top 10 Facts&rdquo; <span class="fa fa-external-link"></span></a></p>
				</div>
				<%'------------------------------------------------- TAB 2 ------------------------------' %>
				<div id="tab-rights">
					<h2>Rights and Policies</h2>
					<h3><strong>Bullying based on a student&rsquo;s disability may be considered harassment.</strong></h3>
					<p>The Office for Civil Rights (OCR) and the U.S. Department of Justice (DOJ) have stated that bullying may also be considered harassment when it is based on a student&rsquo;s race, color, national origin, sex, or disability. </p>
					<p>Harassing behaviors may include:</p>
					<div style="width:60%; background-color:#c85024; color:#fff; padding:20px 10px; margin:20px auto">
						<ul>
							<li>unwelcome conduct, including verbal abuse such as name-calling, epithets, or slurs</li>
							<li>graphic or written statements</li>
							<li>threats</li>
							<li>physical assault</li>
							<li>other conduct that may be physically threatening, harmful, or humiliating</li>
						</ul>
					</div>
					<p>When does bullying reach the threshold of disability harassment and meet the criteria for federal protection? </p>
					<p>According to the OCR and the DOJ, bullying may also be considered harassment when the conduct is sufficiently serious that it interferes with (or limits) a student&rsquo;s ability to participate in (or benefit from) the services, activities, or opportunities offered by a school, and it is based on a student&rsquo;s disability. </p>
					<h3><strong>There are legal protections and provisions for students with disabilities who are being harassed.</strong></h3>
					<p>The Individuals with Disabilities Education Act (IDEA) is a federal law. It requires that each child who has a disability and qualifies for special education and related services must receive a free and appropriate public education (FAPE). The State Department of Education in each state enforces IDEA. Students with an Individualized Education Program (IEP) would qualify for these protections. </p>
					<p>Section 504 of the Rehabilitation Act of 1973 (often referred to as &ldquo;Section 504&rdquo;)&nbsp;and Title II of the Americans with Disabilities Act of 1990 (Title II) are the federal laws that apply if the harassment denies a student with a disability an equal opportunity to education.&nbsp;The Office for Civil Rights (OCR) enforces Section 504 and Title II of the ADA.&nbsp;Students with a 504 plan or an IEP would qualify for these protections.&nbsp;<strong> </strong></p>
					<div style="width:60%; background-color:#c85024; color:#fff; padding:20px 10px; margin:20px auto">
						<p>In October 2014, as part of National Bullying Prevention Month, the U.S. Department of Education&rsquo;s OCR issued <strong>guidance to schools</strong> reminding them that bullying is wrong and must not be tolerated &mdash; including against America's 6.5 million students with disabilities. </p>
					</div>
					<p>The Department issued guidance in the form of a letter to educators detailing public schools' responsibilities under Section 504 of the Rehabilitation Act, Title II of Americans with Disabilities Act, and Individuals with Disabilities Act regarding the bullying of students with disabilities. If a student with a disability is being bullied, these federal laws require schools to take immediate and appropriate action to investigate the issue and, as necessary, take steps to stop the bullying and prevent it from recurring. </p>
					<p>The letter further clarified that the bullying of a student with a disability on any basis, not just their disability, may result in a denial of FAPE that must be remedied by the school. Under Section 504, the IEP or 504 team should convene when bullying of a student with a disability occurs on any basis in order to determine whether the student&rsquo;s needs have changed and whether FAPE is still being provided. </p>
					<p>The letter also clarified that when OCR receives a complaint related to bullying of a student with a disability, it may investigate whether there has been a FAPE violation, a disability-based harassment violation, or both, depending on the unique circumstances of the case.</p>
					<p>View the <a href="http://www2.ed.gov/about/offices/list/ocr/letters/colleague-bullying-201410.pdf" target="_blank">2014 Dear Colleague Letter&gt;&gt;&gt;</a></p>
					<p><strong>Dear Colleague Letters Addressing Harassment</strong></p>
					<p>A <a href="http://www.ed.gov/policy/speced/guid/idea/memosdcltrs/bullyingdcl-8-20-13.doc" target="_blank">2013 Dear Colleague letter </a>and <a href="http://www2.ed.gov/policy/speced/guid/idea/memosdcltrs/bullyingdcl-enclosure-8-20-13.pdf" target="_blank">enclosure</a> by the Office of Special Education and Rehabilitative Services (OSERS) clarified that when the bullying of a student with a disability results in the student not receiving meaningful educational benefit under IDEA, the school must remedy the problem, regardless of whether the bullying was based on the student's disability. </p>
					<p><a href="http://www2.ed.gov/about/offices/list/ocr/letters/colleague-201010.html" target="_blank">In 2010, another Dear Colleague letter</a> from the OCR was issued that reminded school districts of their responsibilities under civil rights laws that&nbsp;prohibit discrimination and harassment on the basis of race, color, national origin, sex, disability, and religion. </p>
					<p><a href="http://www2.ed.gov/about/offices/list/ocr/docs/disabharassltr.html" target="_blank">In 2000, a Dear Colleague letter</a> was sent to school districts nationwide from the U.S. Department of Education&rsquo;s OCR and OSERS that defined the term &ldquo;disability harassment.&rdquo;&nbsp;The letter also explained that bullying based on disability may violate civil rights laws enforced by OCR as well as interfere with a student's receipt of special education under the Individuals with Disabilities Education Act (IDEA). </p>
					<h2>Resources from Office for Civil Rights</h2>
					<ul>
						<li>A <a href="http://www2.ed.gov/about/offices/list/ocr/docs/dcl-factsheet-bullying-201410.pdf" target="_blank">fact sheet for parents</a> on schools' obligations under federal law to address bullying. The fact sheet is also available in <a href="http://www2.ed.gov/about/offices/list/ocr/docs/dcl-factsheet-bullying-201410-sp.pdf" target="_blank">Spanish</a>. </li>
						<li>Seeking help from the Office for Civil Rights (OCR). The office investigates complaints of disability discrimination at schools. To learn more about federal civil rights laws or how to file a complaint, contact OCR at 800-421-3481 (TDD: 800-877-8339), or <a href="mailto:ocr@ed.gov">ocr@ed.gov</a>. OCR's website is <a href="http://www.ed.gov/ocr" target="_blank">www.ed.gov/ocr</a>. To fill out a complaint form online, go to <a href="http://www2.ed.gov/about/offices/list/ocr/complaintintro.html" target="_blank">http://www.ed.gov/ocr/complaintintro.html</a>. </li>
						<li>To view OCR's guidance detailing public schools' responsibilities regarding the bullying of students with disabilities in Spanish, <a href="http://www2.ed.gov/about/offices/list/ocr/letters/colleague-bullying-201410-sp.pdf" target="_blank">click here</a>. </li>
					</ul>
					<h2>Helpful Resources</h2>
					<h3>Notifying the School About Bullying &mdash; Using a Template Letter <strong> </strong></h3>
					<p>Parents should contact school staff each time their child informs them that he or she has been bullied.&nbsp;PACER Center has created template letters that parents may use as a guide for writing a letter to their child&rsquo;s school. These letters contain standard language and &ldquo;fill in the blank&rdquo; spaces so the letter can be customized for your child&rsquo;s situation. </p>
					<ul>
						<li><em>When the bullying is based on the child's disability, federal laws can also apply under Section 504, Individuals with Disabilities Act (IDEA) and Americans with Disabilities Act Amendments Act of 2008 (ADAAA).</em></li>
						<li>Version for a Student with a 504 Plan (<u><a href="http://www.pacer.org/bullying/pdf/Student-w-504-Plan-Notifying-School-About-Bullying.doc" target="_blank">Word doc</a></u> |<u> <a href="http://www.pacer.org/bullying/pdf/Student-w-504-Plan-Notifying-School-About-Bullying.pdf" target="_blank">PDF</a></u>)</li>
						<li>Version for a Student with an IEP Plan (<u><a href="http://www.pacer.org/bullying/pdf/Student-w-IEP-Notifying-School-About-Bullying.doc" target="_blank">Word doc</a></u> | <u><a href="http://www.pacer.org/bullying/pdf/Student-w-IEP-Notifying-School-About-Bullying.pdf" target="_blank">PDF</a></u>)</li>
					</ul>
					<p>Data is important.&nbsp;Remember, <strong>if it is not in writing, it does not exist</strong>.&nbsp;Please be sure to keep a copy of the letter(s) for your records.&nbsp;These records can help parents keep a concise, accurate timeline of events. These sample letters are general in nature in order to serve all potential users.</p>
					<p><strong><a href="http://www.pacer.org/publications/bullypdf/BP-19.pdf" target="_blank">View the &ldquo;Notifying the School About Bullying&rdquo; handout&gt;&gt;&gt;</a></strong></p>
					<h3>Use Positive Strategies to Protect Your Child with Disabilities from Bullying </h3>
					<p>While any child can be a target of bullying, children with disabilities can be especially vulnerable. Although few studies exist concerning children with disabilities and bullying in the United States, the studies available indicate an increased risk for children with special needs. Parents can help protect their children with disabilities from bullying and its devastating effects if they promote effective strategies such as PACER&rsquo;s Peer Advocacy Program, use the Individualized Education Program (IEP) as a tool, work with the school, and know their child&rsquo;s rights under the law. </p>
					<p><a href="http://www.pacer.org/publications/bullypdf/BP-16.pdf">View the &ldquo;Use Positive Strategies to Protect Your Child with Disabilities from Bullying&rdquo; handout&gt;&gt;&gt;</a></p>
					<h3>IEP/504 Plan and Bullying </h3>
					<p>Students with disabilities who are eligible for special education under the Individuals with Disabilities Education Act (IDEA) will have an Individualized Education Program (IEP). The IEP can be a helpful tool in creating a bullying prevention plan.</p>
					<p>The IEP or 504 team, which includes the parent, can identify evidence-based strategies that may be written into the IEP to help stop the bullying. It may helpful to involve the child, when appropriate, in the decision-making process. Such strategies include:</p>
					<div style="width:60%; background-color:#c85024; color:#fff; padding:20px 10px; margin:20px auto">
						<ul type="disc">
							<li>Identifying an adult in the school who the child can report to or go to for assistance </li>
							<li>Determining how school staff will document and report incidents</li>
							<li>Allowing the child to leave class early to avoid hallway incidents</li>
							<li>Holding separate in-services for school staff&nbsp;and classroom peers to help them understand a child&rsquo;s disability</li>
							<li>Educating peers about school district policies on bullying behavior</li>
							<li>Ensuring regular reassurance&nbsp;from the&nbsp;school staff to the student that&nbsp;he or she&nbsp;has a &ldquo;right to be safe&rdquo; and that the bullying is not his or her fault</li>
							<li>Shadowing of the student who has been bullied. School staff can shadow the student in hallways, classrooms, and playgrounds.</li>
						</ul>
					</div>
					<p><a href="http://www.pacer.org/publications/bullypdf/BP-4.pdf"><strong>View &ldquo;The Individualized Education Program (IEP) and Bullying&rdquo; handout&gt;&gt;&gt;</strong></a></p>
					<h3>Student Action Plan Against Bullying</h3>
					<p>Are you an educator working with a student being bullied, a parent looking for ways to help your child change their behavior, or a student who wants to take action against bullying, but isn&rsquo;t sure what to do? </p>
					<p>As a student, bullying is something that impacts you, your peers, and your school &mdash; whether you&rsquo;re the target of bullying, a witness, or the person who bullies. Bullying can end, but that won&rsquo;t happen unless students, parents, and educators work together and take action.</p>
					<p>The first step is to create a plan that works for you and your situation. This student action plan is an opportunity for you &mdash; either on your own or with your parents and teachers &mdash; to develop a strategy to change what&rsquo;s happening to you or someone else. It&rsquo;s your chance to make a difference.</p>
					<p>To get started, <a href="http://www.pacer.org/bullying/pdf/StudentActionPlan.pdf" target="_blank">download the Student Action Plan</a> and learn more about developing a plan.</p>
					<p>Also available in Spanish: <a href="http://www.pacer.org/publications/bullypdf/BP-25s.pdf" target="_blank">Handout</a> and <a href="http://www.pacer.org/publications/bullypdf/MyPersonalPlan-Spanish.pdf" target="_blank">Personal Plan</a></p>
					<h3>Blog Post</h3>
					<p><a href="https://www.stopbullying.gov/blog/2016/10/17/unity-day" target="_blank">Preventing bullying of students with disabilities: Four things parents and educators should know</a><br />
				    Did you know that a student with a disability is two to three times <a href="http://www.pacer.org/bullying/resources/stats.asp" target="_blank">more likely to be bullied</a>? Bullying can affect a student&rsquo;s physical and emotional health, and it can interfere with a student&rsquo;s right to receive an education. Posted to StopBullying.gov blog on October 17, 2016.</p>
				</div>
				<%'------------------------------------------------- TAB 4 ------------------------------' %>
				<div id="tab-selfadvocacy">
					<h2>Self Advocacy</h2>
					<h3>What does it mean to advocate for yourself?</h3>
					<p>Being your own advocate means that you ask for what you need while respecting the needs of others. For example, if you are at a store and a clerk ignores you, you are able to ask in a polite way to be served. Self-advocacy is asking for what you need in a direct, respectful manner.</p>
					<p>Why is this skill important? Self-advocacy helps you:</p>
					<ul>
						<li>Obtain what you need</li>
						<li>Make your own choices</li>
						<li>Learn to say no without feeling guilty</li>
						<li>Respectfully express disagreement</li>
					</ul>
					<p>Learn more about how to <a href="http://www.pacer.org/parent/php/PHP-c116.pdf">Be Your Own Best Advocate &gt;&gt;&gt;</a></p>
					<h3>Student Action Plan Against Bullying</h3>
					<p>Ready to be a self-advocate to address bullying? </p>
					<p>Maybe you&rsquo;re not sure how to start? As a student, bullying is something that impacts you, your peers, and your school &mdash; whether you&rsquo;re the target of bullying, a witness, or the person who bullies. Bullying can end, but that won&rsquo;t happen unless students, parents, and educators work together and take action.</p>
					<p>Start by creating a plan that works for you and your situation. This student action plan is an opportunity for you &ndash; either on your own or with your parents and teachers &ndash; to develop a strategy to change what&rsquo;s happening to you or someone else. It&rsquo;s your chance to make a difference.</p>
					<p>The plan includes three steps, which you can respond by writing down your thoughts or connecting with an adult and share with them.</p>
					<div style="width:60%; background-color:#c85024; color:#fff; padding:20px 10px; margin:20px auto">
						<ul>
							<li style="padding-top:10px"><strong>Step 1:</strong> Describe the bullying that&rsquo;s happening. Include dates, location, who is involved, and details of the behavior. </li>
							<li style="padding-top:10px"><strong>Step 2:</strong> Describe what you would like done about it. Think about how the situation could be stopped or prevented.</li>
							<li style="padding-top:10px"><strong>Step 3:</strong> What steps can you take to make that happen? Include who could help, what they can do, and what you can do.</li>
						</ul>
					</div>
					<p>Remember, if you are being bullied, it is not your fault and it is never your responsibility to make it stop. However, it is important that you take action&mdash;and learning to advocate for yourself is important! By thinking through a plan you will have a voice in the solution.</p>
					<p>To get started, <a href="http://www.pacer.org/bullying/pdf/StudentActionPlan.pdf" target="_blank">download the Student Action Plan</a> and learn more about developing a plan.<br />
						Also available in Spanish: <a href="http://www.pacer.org/publications/bullypdf/BP-25s.pdf" target="_blank">Handout</a> and <a href="http://www.pacer.org/publications/bullypdf/MyPersonalPlan-Spanish.pdf" target="_blank">Personal Plan</a> </p>
					<h3>Helpful Information for Middle and High School Students</h3>
					<p><a href="applewebdata://35F60D0C-B026-4FED-BBF0-7B1487A98D3E/:%20http:/www.pacerteensagainstbullying.org/tab/you-are-not-alone/know-your-rights/">Know Your Rights</a><br />
						Every student has the right to be safe at school. Students have protections from bullying behavior through federal, state and local law and policies.</p>
					<p><a href="http://www.pacerteensagainstbullying.org/tab/you-are-not-alone/ask-jamie/">Jamie&rsquo;s Advice</a><br />
						Whether you are being bullied, witnessing bullying, afraid of peer pressure, concerned your actions are hurting others, or something else, just ask her! With zero judgments and her best advice, Jamie will be there for you.</p>
					<p><a href="http://www.pacerteensagainstbullying.org/tab/experiencing-bullying/cyber-bullying/">Experiencing Bullying?</a><br />
						Bullying affects everyone. Whether you&rsquo;re the target, the bystander, or even the kid who picks on others, there&rsquo;s something you can do to put an end to bullying.</p>
					<h3>Helpful Information for Elementary School Students</h3>
					<p><a href="http://www.pacerkidsagainstbullying.org/kab/how-can-you-help/if-you-see-bullying/">If You See Bullying</a><br />
						If you see bullying happen, you can help stop it. How? Speak up! When kids are willing to speak up about what they think is wrong, they can make a difference.</p>
					<p><a href="http://www.pacerkidsagainstbullying.org/kab/are-you-a-target/" target="_blank">If You Are Being Bullied</a><br />
						Not sure what bullying is? Or if it&rsquo;s happening to you? Don&rsquo;t worry, lots of kids wonder about that!<br />
					</p>
					<h3><strong>Helpful Handouts for Parents</strong></h3>
					<p><a href="http://www.pacer.org/parent/php/PHP-c226.pdf">Why Your Child Needs You to Become an Advocate</a> <br />
						Advocacy is a parent&rsquo;s right and responsibility. Your child needs you to advocate for him or her in the area of education. Parents have a legal right and responsibility to advocate for their children with disabilities. The federal special education law, IDEA (Individuals with Disabilities Education Act), requires parent participation1. The special education services for a child are developed in a decision-making process involving the child&rsquo;s parents and school district staff. </p>
					<p><u><a href="http://www.pacer.org/parent/php/PHP-c101.pdf" target="_blank">Telling Classmates About Your Child's Disability May Foster Acceptance</a></u> <br />
						One of the best ways to teach children about a disability is to talk to them at school. For many families, presenting at school is an annual event. Sometimes, an IEP team writes it into a child&rsquo;s Individualized Education Program (IEP) document.</p>
					<p><u><a href="http://www.ncwd-youth.info/information-brief-29" target="_blank">Bullying and Disability Harassment in the Workplace: What Youth Should Know</a></u> <br />
						This InfoBrief was developed by PACER Center in partnership with the <u><a href="http://www.ncwd-youth.info/" target="_blank">National Collaborative on Workforce and Disability for Youth</a></u>. The InfoBrief is designed to help youth, including youth with disabilities, recognize signs of bullying in the workplace. It offers examples of bullying situations at work and strategies to help address the issue. Much is understood about the negative consequences of bullying at school, but youth should also be made aware that bullying does not always end at school and is often encountered at work. </p>
				</div>
				<%'------------------------------------------------- TAB 5 ------------------------------' %>
				<div id="tab-peeradvocacy">
					<h2>Peer Advocacy </h2>
					<p>Did you know that students with disabilities are bullied at a rate of two to three times more than their nondisabled peers? It&rsquo;s true. </p>
					<p>Statistics show that bullying happens to almost 75 percent of students with disabilities. Many students with disabilities have few or no friends. This makes it easier for someone to bully them, since they do not have many or any friends looking out for them.</p>
					<h3>A Unique Bullying Prevention Model for Students with Disabilities</h3>
					<p>Peer advocacy is a program centered around inclusion and designed to educate students on speaking out on behalf of students with intellectual, developmental, or other disabilities. It is is a unique approach that empowers students to protect those targeted by bullying and to provide social inclusion opportunities.</p>
					<h3>What is a &ldquo;Peer Advocate?&rdquo; </h3>
					<p>A peer advocate is a student who looks out for other students who are being bullied, are vulnerable to being hurt or harmed, or who are isolated from other students. Peer advocates help out by making sure that they are included and protected from harm. The peer advocate program teaches students about different disabilities and encourages them to befriend their peers with disabilities. Peer Advocates also learn how to use their strengths in order to effectively advocate for those who are targeted by bullying. </p>
					<p>Most students don&rsquo;t like to see bullying, but they may not know what to do when it happens. Peer advocacy &mdash; speaking out on the behalf of others &mdash; is a unique approach that empowers students to protect those targeted by bullying. </p>
					<p>Peer advocacy is effective for two reasons:</p>
					<ol>
						<li>Students often see and know of bullying long before adults are aware of it. The student voice and peer influence is powerful in speaking out on behalf of others.</li>
						<li>A student telling someone to stop bullying often has much more impact than an adult giving the same advice.</li>
					</ol>
					<a style="float:right" href="/bullying/resources/students-with-disabilities/pdf/peer-advocacy-a-look-back.pdf" target="_blank"><img style="border:black solid 1px; margin-left:10px" src="/bullying/resources/images/peer-advocacy-thumb.jpg" width="300" height="389" alt=""/></a>
					<h3><a href="/bullying/resources/students-with-disabilities/pdf/peer-advocacy-a-look-back.pdf" target="_blank">Interview on Peer Advocacy – A Look Back</a> <i class="fa fa-file-pdf-o" aria-hidden="true"></i></h3>
					<p>In this interview, Anna, a college sophomore in the fall of 2016, reflects back on her involvement during middle school in the innovative &ldquo;Peer Advocacy&rdquo; project. The project was designed to connect students with disabilities and their nondisabled peers in meaningful ways to help them navigate bullying situations.</p>
					<p><a href="/bullying/resources/students-with-disabilities/pdf/peer-advocacy-a-look-back.pdf" target="_blank">Download the Interview</a></p>
					<h3>How do I involve my school?</h3>
					<p>Encourage the adults in your school, such as your principal, guidance counselor, or teacher, to consider a &ldquo;Peer Advocacy&rdquo; project at school. </p>
					<p>DETERMINE THE PARTICIPANTS: In exploring a peer advocacy model in your school, consider who the adult leader should be, often it&rsquo;s a teacher who has a relationship with students in the special education setting. Then, define which students with disabilities could benefit from peer intervention and inclusive practices.The next step is invite students &nbsp;to be peer advocates. When recruiting, its encouraged to look across the school environment and be sure to have representation from a diverse group of individuals.</p>
					<p>PROVIDE EDUCATION: The peer advocates should be educated on:</p>
					<ul>
						<li>dynamics of bullying behavior</li>
						<li>characteristics, traits, and circumstances of the students for whom they are advocating</li>
						<li>options of how to intervene</li>
					</ul>
					<p>TALK ABOUT APPROPRIATE ACTIONS TO INTERVENE: Intervention strategies can be tailored for each situation, student, and advocate. Some advocates will feel comfortable with direct interventions, such as telling the person bullying to stop. Others may want to approach indirectly, such as supporting the person after an incident or reporting it to the adult leader. Encourage students to explore their own strengths. Help them with identify the intervention or action steps they would be most comfortable with implementing.</p>
					<p>BENEFITS TO STUDENTS: The benefits of peer advocacy include not only having a strategy to keep students with disabilities safe, but also providing opportunities for social inclusion. Student advocates also benefit from learning skills such as empathy, inclusion, leadership, and acceptance.</p>
					<p>Helpful resources include:</p>
					<ul>
						<li class="pdficonlist"><a href="/bullying/classroom/pdf/PeerAdvocacyGuide.pdf" target="_blank">Peer Advocacy Guide</a><br />
							Download the 32-page step-by-step booklet that looks at how to address bullying of students with disabilities by engaging, educating, and empowering their peers with advocacy skills.</li>
						<li class="pdficonlist"><a href="/bullying/pdf/PeerAdvocacyPilotandResults.pdf" target="_blank">Peer Advocacy Pilot and Results</a></li>
					</ul>
					<h3>Peer Advocates Speak Out</h3>
					<p>In this 4-minute video, program participants from the Watertown-Mayer, Minn., school district share their experiences and viewpoints on their participation in the peer advocacy project.</p>
					<div align="center" style="margin:20px auto; width:960px;">
						<video width="640" height="480" controls poster="/bullying/resources/images/Peer-Advocates.jpg">
							<source src="http://45f9002f10750cd79955-a44d13df6c57c8ceeddd4ebf4c6c51c1.r49.cf2.rackcdn.com/NBPC/PeerAdvocacy.mp4" type="video/mp4" />
							Your browser does not support the video tag. </video>
					</div>
					<h3>What else can students do?</h3>
					<p>Most important<strong>:&nbsp; Be a friend!</strong></p>
					<p>Watch out for those students, with and without disabilities, who might need your help and have their backs.</p>
					<p>Tips to be a friend include:</p>
					<ul>
						<li>sit by them at lunch</li>
						<li>talk with them in the hallway</li>
						<li>include them in group activities</li>
						<li>invite them to spend time with you</li>
						<li>listen to their concerns</li>
						<li>provide advice and support</li>
					</ul>
					<p>If you know that someone is being teased, hurt, or harmed in any manner, you can:</p>
					<ul>
						<li>get them away from the situation</li>
						<li>ask the person bullying to leave them alone (only if it feels safe to say something)</li>
						<li>let them know that everyone deserves to be safe</li>
						<li>let them know that they are important to you</li>
						<li>help them talk with an adult</li>
						<li>report it to an adult</li>
					</ul>
					<p>Students who have been peer advocates said, &ldquo;When I saw bullying happen, I&hellip;&rdquo;</p>
					<ul>
						<li>took action, instead of just doing nothing</li>
						<li>told them to stop being so mean</li>
						<li>told someone that saying &ldquo;that&rsquo;s so retarded&rdquo; hurts people with disabilities and is not acceptable</li>
						<li>stepped in and told them to stop</li>
						<li>privately told the person bullying that what they did wasn&rsquo;t cool</li>
						<li>told our mentor, who helped me know what to do next time</li>
						<li>stood up for myself when it was me who was bullied </li>
					</ul>
					<h3>Students are talking!</h3>
					<p>Student advocates share:</p>
					<p><em>&ldquo;I learned that even though I am only one person I can change society.&rdquo;</em></p>
					<p><em>&ldquo;Being a peer advocate makes me more aware when someone is not being included and it is a lot easier to include them and still have them feel comfortable. I have learned that there is so much more to me than just who I was before.&rdquo; </em></p>
					<p><em>&ldquo;Before I saw people give the kids with disabilities bad looks and didn&rsquo;t stand up for them, now I will stand up for them.&rdquo;</em></p>
					<p><em>&ldquo;Before Peer Advocacy, kids were eating alone, now we are sitting with them and hanging out.&rdquo;</em></p>
					<p><em>&ldquo;Peer advocates should spread around the world.&rdquo;</em></p>
					<p><em>&ldquo;Later in life I&rsquo;ll be able to say I was a peer advocate, I made a difference! Will you?&rdquo;</em></p>
					<p><em>&ldquo;I love being a Peer Advocate, it&rsquo;s so much fun. I love it and am happy I joined. Before it was not as fun being in nothing then I heard about Peer Advocates and then that inspired me and I did it for the kids with disabilities and they rock!&rdquo;</em></p>
					<p><em>&ldquo;I think it&rsquo;s important to be a Peer Advocate to let kids know they&rsquo;re not alone and that others really do have their backs. Even though some treat them differently, they are just like everyone else. They should be treated the same, too. From this experience I learned all that. I think others should consider this too.&rdquo;</em></p>
					<h3>Helpful resources</h3>
					<p><strong>Activist inspired by son with Down syndrome</strong>, <a href="http://edition.cnn.com/2010/OPINION/10/07/hertzog.down.syndrome.son/?hpt=Sbin" target="_blank">CNN.com Blog&mdash;Stop Bullying, Speak Up</a><br />
						By Julie Hertzog, Special to CNN</p>
					<p><a href="http://www.pacer.org/bullying/stories/?id=467" target="_blank">STAND UP for TOURETTE SYNDROME</a><br />
						This three-minute video, and accompanying teacher&rsquo;s guide, provides awareness and education about Tourette Syndrome. </p>
					<p><a href="http://www.kxnet.com/story/24063763/program-designed-to-stop-bullying" target="_blank">PAVE &ndash; Peer Advocates&rsquo; Voices Empower </a><br />
						Grace Burckhard, 13, and her mother, Paula, presented a new peer advocacy project, PAVE, in Minot, North Dakota, to more than 800 Jim Hill Middle School students. </p>
				</div>
				<%'------------------------------------------------- TAB 6 ------------------------------' %>
				<div id="tab-activities">
					<h2>Disability Awareness Activities</h2>
					<h3>Calendar of Activities for Students of All Ages</h3>
					<p>Activities for the school year designed to creatively educate peer advocates on topics including preventing and responding to bullying, disability awareness, and social inclusion. Each month features (1) student education and (2) interaction for:</p>
					<ul>
						<li>Elementary school students</li>
						<li>Middle and high school students</li>
					</ul>
					<p><strong>Monthly activities</strong><br />
						These PDFs contain active links that connect to the suggested activities online. </p>
					<ul>
						<li class="pdficonlist"><a href="/bullying/resources/students-with-disabilities/pdf/September-Activities.pdf" target="_blank">September: Theme is &ldquo;Starting the Conversation&rdquo;</a></li>
						<li class="pdficonlist"><a href="/bullying/resources/students-with-disabilities/pdf/October-Activities.pdf" target="_blank">October: Theme is &ldquo;Uniting for Social Inclusion&rdquo;</a></li>
						<li class="pdficonlist"><a href="/bullying/resources/students-with-disabilities/pdf/November-Activities.pdf" target="_blank">November: Theme is &ldquo;Law and Policy&rdquo;</a></li>
						<li class="pdficonlist"><a href="/bullying/resources/students-with-disabilities/pdf/December-Activities.pdf" target="_blank">December: Theme is &ldquo;Acceptance&rdquo;</a></li>
						<li class="pdficonlist"><a href="/bullying/resources/students-with-disabilities/pdf/January-Activities.pdf" target="_blank">January: Theme is &ldquo;Supportive Behavior&rdquo;</a></li>
						<li class="pdficonlist"><a href="/bullying/resources/students-with-disabilities/pdf/February-Activities.pdf" target="_blank">February: Theme is &ldquo;Words Matter&rdquo;</a></li>
						<li class="pdficonlist"><a href="/bullying/resources/students-with-disabilities/pdf/March-Activities.pdf" target="_blank">March: Theme is &ldquo;Respect is the new R-word&rdquo;</a></li>
						<li class="pdficonlist"><a href="/bullying/resources/students-with-disabilities/pdf/April-Activities.pdf" target="_blank">April: Theme is &ldquo;Advocacy Skills&rdquo;</a></li>
					</ul>
                    <hr />
                  <h3>Inclusion Activity for Young Students</h3>
                    <h4><a href="/bullying/resources/students-with-disabilities/pdf/more-alike-than-different.pdf" target="_blank">More Alike Than Different</a></h4>
                    <p><strong>Overview</strong><br />
                      Two creative activities to help young students understand inclusion and acceptance of individuals with disabilities.</p>
                      <ol>
                    <li>Stand up. Sit Down.</li>
                    <li>Different on the outside. Same on the inside.</li>
                    </ol>
                    
                     <p><strong>Goal</strong><br />
                  Creatively engage youth through interactive, thoughtful activity and reflection that people with disabilities are much more like other students than they are different from them.</p>
					<hr />
                    
				  <h3>Books</h3>
					<p>Book suggestions to read anytime throughout the year.</p>
					<div id="spookleyBook" style="width:80%; background-color:#c85024; color:#fff; padding:20px 10px; margin:20px auto">
						<h4 style="color:#fff"><img src="/bullying/wewillgen/images/spookley.jpg" width="250" height="250" alt="" align="right" hspace="10"/>The Legend of Spookley the Square Pumpkin</h4>
						<p>By Joe Troiano, illustrated by Susan Banta<br />
							Order From: <a style="color:#fff" href="https://www.e2e-store.com/evergreen/evergreen-category.cgi?cat_id=7&amp;cat_desc=Spookley">Holiday Hill Farms</a><br />
							Suggested Audiences: Kindergarten &ndash; 4th grade</p>
						<p>Spookley the Square Pumpkin is a square pumpkin who lives in a round pumpkin patch world. <em>The Legend of Spookley the Square Pumpkin</em>, available as both a book and movie, delivers a message of tolerance and kindness in a fun, accessible format that is easily grasped by young students. By making these advanced concepts easily understood by early learners, teachers can help stop bullying before it begins.</p>
						<p>An online toolkit includes resources educators can use to effectively present <em>The Legend of Spookley the Square Pumpkin</em> as a multi-subject learning opportunity. The core elements of the online toolkit involve a reading of the book supplemented by downloadable lesson plans and other activities that teach bullying prevention and character values.</p>
						<p><a style="color:#fff" href="http://www.pacer.org/bullying/classroom/elementary/spookley/" target="_blank">Access the online toolkit &ldquo;Stop Bullying Before It Starts&rdquo;</a></p>
					</div>
					<div id="wonderBook" style="width:80%; background-color:#c85024; color:#fff; padding:20px 10px; margin:20px auto">
						<h4 style="color:#fff"><img src="/bullying/getinvolved/supporter-resources/wonder/images/WONDER-cover.jpg" width="200" height="295" alt="" align="right" hspace="10"/>Wonder</h4>
						<p>By R.J. Palacio<br />
							Order from: <a style="color:#fff" href="http://www.penguinrandomhouse.com/books/208913/wonder-by-r-j-palacio/9780375869020">Random House</a> <br />
							Suggested   Audiences: 5th &ndash; 7th grade</p>
						<p>August Pullman was born with a   facial deformity that, up until now, has prevented him from going to a   mainstream school. Starting 5th grade at Beecher Prep, he wants nothing more   than to be treated as an ordinary kid &mdash; but his new classmates can't get past   Auggie's extraordinary face. <em>Wonder</em> by R.J.   Palacio begins from Auggie's point of view, but soon switches to include his   classmates, his sister, her boyfriend, and others. These perspectives   converge in a portrait of one community's struggle with empathy, compassion,   and acceptance. In a world where bullying among young people is an epidemic,   this is a refreshing new narrative full of heart and hope. R.J. Palacio has   called her debut novel &quot;a meditation on kindness&quot; &mdash; indeed, every   reader will come away with a greater appreciation for the simple courage of   friendship. Auggie is a hero to root for, a diamond in the rough who proves   that you can&rsquo;t blend in when you were born to stand out.</p>
						<p><a style="color:#fff" href="http://www.randomhouse.com/teachers/wp-content/uploads/2012/05/Wonder_EG_WEB.pdf" target="_blank">View the educator&rsquo;s guide</a></p>
					</div>
				</div>
				<%'------------------------------------------------- TAB 6 ------------------------------' %>
				<div id="tab-language">
					<h2>Person First Language</h2>
					<h3>Recognize the Person First, Then the Disability or Difference</h3>
					<p>When someone seems different from you, it&rsquo;s pretty easy to focus on what sets them apart. Maybe it&rsquo;s how they look or speak.</p>
					<p>But think about it: Do differences define the person?</p>
					<ul>
						<li>Suppose you were the only one who failed a math test.</li>
						<li>Would you want to be called &ldquo;the math failure&rdquo;?</li>
						<li>Wouldn&rsquo;t it be more accurate to say you were &ldquo;the person who failed the math test yesterday&rdquo;?</li>
						<li>Your grade isn&rsquo;t who you are; it&rsquo;s one small thing about you.</li>
					</ul>
					<p>Every person is made up of many characteristics and abilities &mdash; but few people want to be identified only by those things. That&rsquo;s true whether it&rsquo;s their grade on a math test, their ability to play tennis, or their love for fried onions.</p>
					<p>Everyone is a person first. It&rsquo;s like that with disabilities, too.</p>
					<p><strong>Here are some cool ways to &ldquo;put the person first&rdquo; when talking about people with disabilities.</strong></p>
					<ol>
						<li>Speak of the person first, then the disability.</li>
					</ol>
					<table id="person_first">
						<tbody>
							<tr>
								<td width="50%"><p style="font-size:1.2em"><strong>Say this</strong></p></td>
								<td width="50%"><p style="font-size:1.2em"><strong>Instead of this</strong></p></td>
							</tr>
							<tr>
								<td width="50%"><p>person with a disability</p></td>
								<td width="50%"><p>disabled or handicapped person</p></td>
							</tr>
							<tr>
								<td width="52%"><p>people with disabilities</p></td>
								<td width="50%"><p>the disabled</p></td>
							</tr>
							<tr>
								<td width="50%"><p>person with cognitive delays</p></td>
								<td width="50%"><p>mentally retarded person or retard</p></td>
							</tr>
							<tr>
								<td width="50%"><p>person who is deaf or hard of hearing</p></td>
								<td width="50%"><p>deaf person</p></td>
							</tr>
							<tr>
								<td width="50%"><p>person with Down syndrome (not &ldquo;Down&rsquo;s&rdquo;)</p></td>
								<td width="50%"><p>&ldquo;Retard&rdquo;</p></td>
							</tr>
							<tr>
								<td width="50%"><p>person with a physical disability</p></td>
								<td width="50%"><p>crippled person</p></td>
							</tr>
						</tbody>
					</table>
					<br />
					<ol start="2">
						<li>Emphasize abilities, not limitations. Focus on what someone can do, not what they cannot do.</li>
						<li>Don&rsquo;t give excessive praise or attention to a person with a disability. Over-focusing on someone can be patronizing.</li>
						<li>Remember that choice and independence are important. Let the person do or speak for him or herself as much as possible.</li>
						<li>Know the difference between a disability and a handicap. A disability is a functional limitation that interferes with a person&rsquo;s ability to walk, hear, talk, learn, etc. A handicap is a situation or barrier imposed by society, the environment, or oneself.</li>
					</ol>
					<p>The next time you see a person in a wheelchair unable to go up the stairs in a building, what will you see first? The wheelchair? The physical problem? The person? Will you say, &ldquo;There is a handicapped person unable to find a ramp?&rdquo; Or will you say &ldquo;There is a person with a disability who is handicapped by an inaccessible building?&rdquo; </p>
					<p>So, if you do all that and &ldquo;put the person first,&rdquo; do you know what people will say? &ldquo;Now there goes a person who is way cool.&rdquo;</p>
					<p class="centered"><a class="btn" href="http://www.pacerkidsagainstbullying.org/wp-content/uploads/2014/07/person-first.pdf" target="_blank">Download the PDF Version for &ldquo;Person First&rdquo; <span class="fa fa-external-link"></span></a></p>
					<div align="center">
						<hr size="1" width="100%" noshade="noshade" align="center" />
					</div>
					<h3>&ldquo;That&rsquo;s Retarded&rdquo;</h3>
					<p>Have you ever heard something silly, unfamiliar, awkward, or misunderstood described as &ldquo;retarded?&rdquo;</p>
					<p>A lot of people use this word, but many don&rsquo;t really understand what it means. Did you know that &ldquo;retarded&rdquo; is simply derived from an old-fashioned medical term for people with intellectual disabilities? Yeah, it was mental retardation. It was just a word used to describe a medical condition like &ldquo;asthma or pneumonia.&rdquo;</p>
					<p>But now, the word has morphed into something negative and offensive. It&rsquo;s used to insult someone or something considered to be lesser in some way. And while the people who use it might not even know about its history, it&rsquo;s still linked to people with disabilities. That means that when someone uses the word &ldquo;retarded&rdquo; as an insult, it is degrading to people with disabilities.</p>
					<p>The way we speak helps us and the people around us shape their opinions. If you use &ldquo;retarded&rdquo; to refer to things you dislike or make fun of, you&rsquo;re creating an environment that perpetuates negative stigmas about people with disabilities. You&rsquo;d probably never directly call a person with a disability those things, but every time you use &ldquo;retarded&rdquo; as a synonym for something negative, you&rsquo;re putting them down.</p>
					<p>Now that you know more about the history of the word &ldquo;retarded,&rdquo; how will you react next time someone uses it around you?</p>
					<p>It&rsquo;s not easy to be the person who says something isn&rsquo;t right. It takes courage to say something to your friends that may not be what they want to hear. But it&rsquo;s important that people understand the power of words and their impact. You and your friends can lead this change. </p>
					<p>Stop using the &ldquo;r-word&rdquo; today.</p>
				</div>
				<%'------------------------------------------------- TAB 8 ------------------------------' %>
				<div id="tab-resources">
					<h2>Resources</h2>
					<table id="resourceTable">
						<tr>
							<td valign="top"><a href="http://www.pacer.org/"><img src="/images/PACER-Logo-Web.gif" width="250" height="60" alt="PACER Center Logo"/></a></td>
							<td><h3><a href="http://www.pacer.org/" target="_blank">PACER Center <span class="fa fa-external-link"></span></a></h3>
								<p>PACER Center enhances the quality of life and expands opportunities for children, youth, and young adults with all disabilities and their families so each person can reach his or her highest potential. PACER operates on the principles of parents helping parents, supporting families, promoting a safe environment for all children, and working in collaboration with others.</p></td>
						</tr>
						<tr>
							<td valign="top"><a href="http://www.pacerteensagainstbullying.org/tab/" target="_blank"><img src="/bullying/resources/students-with-disabilities/images/tab-logo.jpg" width="250" height="99" alt="Teens Against Bullying Logo"/></a></td>
							<td><h3><a href="http://www.pacerteensagainstbullying.org/tab/" target="_blank">Teens Against Bullying <span class="fa fa-external-link"></span></a></h3>
								<p>Created by and for teens, this website is a place for middle and high school students to find ways to address bullying, to take action, to be heard, and to own an important social cause.</p></td>
						</tr>
						<tr>
							<td valign="top"><a href="http://www.pacerkidsagainstbullying.org/kab/" target="_blank"><img src="/bullying/resources/students-with-disabilities/images/kab-logo-plain.jpg" width="193" height="84" alt="Kids Against Bullying Logo"/></a></td>
							<td><h3><a href="http://www.pacerkidsagainstbullying.org/kab/" target="_blank">Kids Against Bullying <span class="fa fa-external-link"></span></a></h3>
								<p>A creative, innovative and educational website designed for elementary school students to learn about bullying prevention, engage in activities and be inspired to take action.</p></td>
						</tr>
						<tr>
							<td valign="top"><a href="http://specialolympicsminnesota.org/" target="_blank"><img src="/bullying/resources/images/special-olympics.jpg" width="250" height="92" alt="Special Olympics Minnesota Logo"/></a></td>
							<td><h3><a href="http://specialolympicsminnesota.org/" target="_blank">Special Olympics <span class="fa fa-external-link"></span></a></h3>
								<p>Special Olympics is a global movement of people creating a new world of inclusion and community, a world in which every single person is accepted and welcomed regardless of ability or disability. We are helping to make the world a better, healthier and more joyful place&mdash;one athlete, one volunteer, one family member at a time.</p></td>
						</tr>
						<tr>
							<td valign="top"><a href="http://www.r-word.org/" target="_blank"><img src="/bullying/resources/images/spread-the-word.jpg" width="250" height="71" alt="Spread The Word Logo"/></a></td>
							<td><h3><a href="http://www.r-word.org/" target="_blank">Spread the Word <span class="fa fa-external-link"></span></a></h3>
								<p>The R-word is the word 'retard(ed)'. Why does it hurt? The R-word hurts because it is exclusive. It's offensive. It's derogatory. Our campaign asks people to pledge to stop saying the R-word as a starting point toward creating more accepting attitudes and communities for all people.  Language affects attitudes and attitudes affect actions.  Pledge today to use respectful, people-first language.</p></td>
						</tr>
						<tr>
							<td valign="top"><a href="http://specialolympicsminnesota.org/programs/projectunify/" target="_blank"><img src="/bullying/resources/images/special-olympics-unified-schools.jpg" width="250" height="63" alt="Special Olympics Unified Schools Logo"/></a></td>
							<td><h3><a href="http://specialolympicsminnesota.org/programs/projectunify/" target="_blank">Unified Schools <span class="fa fa-external-link"></span></a></h3>
								<p>Special Olympics Unified Schools is an education and sports based strategy powered by an engaged youth community. The program aims to increase athletic and leadership opportunities for students with and without intellectual disabilities, while creating communities of acceptance for all.</p></td>
						</tr>
					</table>
					<div class="resources">
						<h3>Disability Related Stories</h3>
						<p>Sharing stories provides a powerful opportunity to learn, influence and understand. The shared experiences often demonstrates that we are not alone, that there are people who care, and that there are solutions.</p>
						<p class="centered"><a class="btn btn-cta" href="/bullying/stories/disability/">View the Stories</a></p>
						<h3>Puppet Shows for Youth</h3>
						<p>Charming life-size, multicultural puppets  deliver the important messages of (1) bullying prevention, along with (2)  disability awareness and social inclusion for students with disabilities.</p>
						<p class="centered"><a class="btn btn-cta" href="/bullying/resources/puppet-show.asp">Learn More</a></p>
					</div>
					<p>&nbsp;</p>
				</div>
				
				<!-- end tabs --> 
			</div>
			
			<!-- end tabbed pannel --> 
		</div>
		
		<!-- end .content --> 
	</div>
	<!--#include virtual="/bullying/footer.html"--> 
	<!-- end .container --> 
</div>
</body>
</html>
