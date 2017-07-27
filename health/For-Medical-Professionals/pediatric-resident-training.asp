<% Dim currentPage 

currentPage = "health-enews-2012-05.html"

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>F2F HIC - Family-Centered Care</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />

		<link rel="stylesheet" type="text/css" href="/js/colorbox1.5.9/colorbox.css">
		
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script type="text/javascript">
			if (typeof jQuery == 'undefined')
			{
				document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
			}
		</script>
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
						this.href = 'http://www.youtube.com/embed/' + vars['v'] + '?rel=0&amp;wmode=transparent';						
					}
				});
				//Initialize Colorbox
				$(".videoPopUp").colorbox({iframe:true, innerWidth:640, innerHeight:390});
			});
		</script>
	

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




<div id="pagetoporange">
<div id="breadcrumb"><a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> / <a href="/health/health-care-providers.asp">Health</a> / <a href="/health/For-Medical-Professionals/index.asp">For Medical Professionals</a> /
<h1> Health Information Center</h1>
  </div>
</div>

<div id="leftbar">
<!--#include virtual="/health/leftNav.htm" -->
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="fmpsub-resident";
	var currSubId="none";
	// any Subtree that I want to Display
	var showTree = "health-fmpsub";
	
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


</div>

<div id="maincontent">

<div id="pagecontentright" style="min-height:500px;">

<!--BEGIN CONTENT-->

<h2>Pediatric Resident Training Program</h2>
<p>The Pediatric Resident Training Program (PRTP) is a  three-part teaching program on family-centered care for Pediatric residents at  the University of Minnesota Medical School. The purpose is to teach principles  of family-centered care and to provide a family&rsquo;s perspective on health care  for children and youth with special health care needs. The focus is on adolescent youth and how they are addressing issues related to transition.</p>
<ol>
	<li>Pediatric residents meet with a PRTP facilitator for a  session on working with families and youth in a medical home and a general  overview of family-centered care. Transitional aspects of adolescence are reviewed for youth with special health care needs.</li>
	<li>Residents schedule and visit a family in their home. The  family and youth share information about their family, providing perspectives  and insights into what makes for collaborative, coordinated, respectful care, and how they are pursuing transitional goals. </li>
	<li>The residents have a processing session with the  facilitator and family, when possible, to share thoughts about the home visit  and to provide written feedback in an evaluation form. In addition, they tour PACER,  are introduced to such projects as  the Bully Prevention Program and the Simon Technology Center, and they have a discussion with  multicultural advocates.<br />
	</li>
</ol>


<p>Are you looking for a way to increase the number of medical professionals prepared to care for youth and young adults with special health care needs or disabilities in your community?  PACER&rsquo;S Pediatric Resident Training Program (PRTP) Toolkit can help.  The toolkit contains detailed information on how to provide training to health care professionals working with youth and young adults who are transitioning from pediatric health care to adult providers.</p>
<p>PACER&rsquo;s Pediatric Resident Training Program (PRTP) Toolkit is now available for you to train health care professionals in your area. It includes information on developing partnerships, identifying participants, outlining training needs, organizing orientation sessions, matching health care professionals with families, and arranging a debriefing session.  It also includes forms for collecting feedback from health care professionals who participate in the program and the families they visit. Additional details about the program are available in the attached document.</p>
<p>To learn more about the program, or obtain an electronic copy of the toolkit, please contact: <a href="mailto:Linda.Cherwitz@pacer.org">Linda.Cherwitz@pacer.org</a></p>


</div></div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>