<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Fun Times</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" media="screen, projection" />
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



<div id="topbar">
<div id="breadcrumb"><a href="../index.asp">Home</a> / <a href="/help/events.asp">Events</a> / 
		
		<h1>Fun Times</h1>
		
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">Fun Times Navigation Menu</h2>
<!--#include virtual="/funtimes/leftNav.html" -->
</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="overview";
	// any Subtree that I want to Display
	var showTree = "none";
	
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

<!--BEGIN CONTENT-->

<h2 class="nounderline">Fun Times Project Overview</h2>
<p>
<img border="0" src="images/FT.jpg" width="250" height="188" style="float: right; padding: 0 0 1em 1em;" alt="four teenagers, with and without disabilities, smiling for the camera" />Fun Times is a volunteer, social program that connects 
teens and young adults with and without disabilities. The Fun Times concept was originally created by Win Bennett, the sibling of a teen with a disability, and other high school students. His idea: to create a program where kids can meet and go out on the weekend to hang out like any other teen. With PACER&#8217;s help, the first Fun Times group was started in 2004 with participants from all over the Metro area. With the success of the core group, PACER would like to help other communities start their own group.  
</p>
<p><i class="fa fa-file-pdf-o" aria-hidden="true"></i><a href="/funtimes/pdf/FunTimesInfoSheet.pdf" target="_blank">See the Fun Times Information Sheet</a>.</p>



<h3>Fun Times Project Services:</h3>
<ul style="font-size: 95%;">
	<li>Holds Fun Times events 4-5 times a year</li>
	<li>Presents a workshop on how to start and organize a Fun Times group in your community</li>
	<li>Provides training and information for teen volunteers, parents and school staff to pilot Fun Times sites</li>
	<li>Publishes a Fun Times brochure, video and information to pilot Fun Times sites</li>
</ul>
<p>
If you are a high school student or young adult interested in participating or volunteering with Fun Times, call PACER at 952-838-9000 or email, fax, or mail the form below.
</p>
<ul class="spacenobullet">
	<li class="pdficonlist"><a href="/funtimes/pdf/ParticipantInterestForm.pdf" target="_blank">Participant Interest Form <span class="fa fa-external-link"></span></a></li>
	<li class="pdficonlist"><a href="/funtimes/pdf/ParticipantPermissionForm.pdf" target="_blank">Participant Permission Form and Photo Release <span class="fa fa-external-link"></span></a></li>
</ul>
<p style="margin-top: .5em;">
For more information, please read the article "<a href="makingFriends.asp">Making Friends and Making a Difference</a>" as  published in <em>PACER Partners</em>.</p>

<div style="width:480px; padding:0px; margin:25px auto">
<object width="480" height="385"><param name="movie" value="http://www.youtube.com/v/Uhh6yNL0Npw?fs=1&amp;hl=en_US&amp;color1=0x006699&amp;color2=0x54abd6"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/Uhh6yNL0Npw?fs=1&amp;hl=en_US&amp;color1=0x006699&amp;color2=0x54abd6" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="480" height="385"></embed></object>
</div>

<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer2.htm"-->

</div>

</body>
</html>