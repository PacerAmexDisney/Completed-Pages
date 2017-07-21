
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Housing Project - Videos/Trainings</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" />

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


<style type="text/css">
.workshoplist li:nth-child(n+2) {
	padding-top:10px;
	margin-top:10px;
	border-top:1px solid #ccc;
}
p {
	max-width:60em;
}
</style>
</head>

<body>
<div id="skiptocontent">
<a href="#maincontentlink">Skip to main content</a>
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



<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / Housing Project
	
	<h1>Housing Project</h1>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">Housing Navigation Menu</h2>
<!--#include virtual="/housing/leftNav.html" -->
</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="videos";
	var currSubId="none";
	// any Subtree that I want to Display
	var showTree = "getstart-sub";
	
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

<h1 class="nounderline">Housing Videos/Trainings</h1>


<!--BEGIN CONTENT-->

<h2 class="greenBar" id="homeis">Home Is &hellip;</h2>

<p>This five part Housing Video Series called &ldquo;Home Is&hellip;&quot; features the voices of young adults with disabilities describing what &ldquo;Home&rdquo; means to them and what they have learned along the way. This series focuses on the multidimensional aspects of home - Home is not just a getting a &ldquo;place&rdquo; but getting &ldquo;a life.&quot;</p>

<table width="100%" cellspacing="10">


<tr>
<td colspan="2" align="left"><h3>Videos in this Series</h3></td>
<td width="376" rowspan="6" align="center" class="videoImg"><img src="/housing/images/HomeSeries-600px.jpg" width="350" height="185" alt=""/></td>
</tr>

<tr>
<td>
<p><a class="videoPopUp" href="https://www.youtube.com/watch?v=hTB_ZVAC5ho" target="_blank"><span class="fa fa-youtube-play fa-2x"></span> Home Is &hellip;</a></p></td>
<td width="60" class="videoDuration">3:04 min</td>
</tr>
<tr>
<td>
<p><a class="videoPopUp" href="https://www.youtube.com/watch?v=ibY-nawh-w0" target="_blank"><span class="fa fa-youtube-play fa-2x"></span> Home is Independence</a></p>
</td>
<td class="videoDuration">2:37 min</td>
</tr>
<tr>
<td>
<p><a class="videoPopUp" href="https://www.youtube.com/watch?v=BDh22qRN-fk" target="_blank"><span class="fa fa-youtube-play fa-2x"></span> Home is Responsibility</a></p>
</td>
<td class="videoDuration">2:50 min</td>
</tr>
<tr>
<td>
<p><a class="videoPopUp" href="https://www.youtube.com/watch?v=84Tmdc5dm1M" target="_blank"><span class="fa fa-youtube-play fa-2x"></span> Home is Socialization</a></p>
</td>
<td class="videoDuration">2:40 min</td>
</tr>
<tr>
<td>
<p><a class="videoPopUp" href="https://www.youtube.com/watch?v=qhRWQhRcbUE" target="_blank"><span class="fa fa-youtube-play fa-2x"></span> Home and the Community</a></p>
</td>
<td class="videoDuration">3:03 min</td>
</tr>


</table>

<h2 class="greenBar" id="journey">Amy &amp; Jennifer: A Journey to a Home of Their Own</h2>

<p>Brad and Karen W. share their journey to create an Individualized Housing Option for their 29-year-old twin daughters, Jennifer and Amy. Learn from Brad and Karen about the type of challenges parents and young adults face when choosing supports and finding the most appropriate housing and services based on their daughters&rsquo; person-centered needs.</p>

<table width="100%" cellspacing="10">


<tr>
<td colspan="2" align="left"><h3>Videos in this Series</h3></td>
<td width="376" rowspan="6" align="center" class="videoImg"><img src="/housing/images/home-journey-pic.jpg" alt="" width="350" height="197" /></td>
</tr>

<tr>
<td width="441">
<p><a class="videoPopUp" href="https://www.youtube.com/watch?v=Tg0h6JKHpyk" target="_blank"><span class="fa fa-youtube-play fa-2x"></span> What Really Matters: Developing a vision for the future</a></p></td>
<td width="60" class="videoDuration">3:53 min</td>
</tr>
<tr>
<td>
<p><a class="videoPopUp" href="https://www.youtube.com/watch?v=e9p_XKpuy1g" target="_blank"><span class="fa fa-youtube-play fa-2x"></span> House Hunters 101: Finding the right place to call home</a></p>
</td>
<td class="videoDuration">4:16 min</td>
</tr>
<tr>
<td width="469">
<p><a class="videoPopUp" href="https://www.youtube.com/watch?v=zz8RY__2XlQ" target="_blank"><span class="fa fa-youtube-play fa-2x"></span> The Devil is in the Details: The challenges of choosing a provider, developing a plan</a></p>
</td>
<td class="videoDuration">6:17 min</td>
</tr>

</table>


<h2 class="greenBar" id="devin">A Home for Devin</h2>
<table>
<tr><td valign="top">
	<a class="videoPopUp" href="https://www.youtube.com/watch?v=LxbusIEcySQ" target="_blank"><img src="/housing/images/home-for-devin-video.jpg" width="350" height="196" alt=""/></a>

</td>
<td>
	<p>From one parent to another: Sharman shares her thoughts about planning for housing and services for her daughter Devin.</p>
</td></tr></table>


<h2 class="greenBar" id="firststeps">Housing: First Steps to Independent Living</h2>

<table>
<tr><td valign="top">
	<a class="videoPopUp" href="https://www.youtube.com/watch?v=6AFvY79pkfU" target="_blank"><img src="/housing/images/HousingWebinarTitleSlidewPlay.jpg" width="350" height="264" alt=""/></a>
</td>
<td>
    <p>Most parents aren&rsquo;t sure how to begin planning for their son or daughter&rsquo;s transition to independent living in the community, but this webinar will help you get started. Participants will receive an overview of available housing and services options and person-centered planning concepts to help their son or daughter develop a vision for independent living, housing, and services.</p>
    <div class="resources">
    <p><strong>Downloadable materials as PDFs</strong><br /><br />
    <a href="/housing/pdf/HousingWebinar2014.pdf" target="_blank">Slide presentation</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/housing/pdf/BlankOnePageProfile.pdf" target="_blank">Blank One-Page Profile</a>&nbsp;&nbsp;|<br />
    <a href="/housing/pdf/AmandasProfile.pdf" target="_blank">Amanda&rsquo;s Profile</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/housing/pdf/RachelsProfile.pdf" target="_blank">Rachel&rsquo;s Profile</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/housing/pdf/SarasProfile.pdf" target="_blank">Sara&rsquo;s Profile</a></p>
    </div>
    <p class="centered"><strong>After watching the webinar, please complete <a href="https://www.surveymonkey.com/s/SLLNHGK" target="_blank">this survey</a>.</strong></p>
</td></tr></table>





	<!--END CONTENT-->
	
	
	
	
	
	
<div id="pageextender" style="clear:both">&nbsp;</div>


</div>

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>