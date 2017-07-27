<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Making Friends and Making a Difference</title>
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

<p class="rightsidebarpic" style="margin-top: 0;">
<img src="images/underWaterWorld.jpg" width="250" height="180" alt="three girls smiling at underwaterworld" />
</p>
</div>

<div id="topbar">
<div id="breadcrumb"><a href="/">Home</a> / <a href="/help/events.asp">Events</a> / <a href="/funtimes/">Fun Times</a> /
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
	var currId="friends";
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
	<h1>Making Friends and Making a Difference</h1>
<p style="font-weight: bold; font-size: 1.2em;"><img src="images/touchTank.jpg" alt="Brandon is encouraged by Andy and Win to touch a shark in the Touch Tank." style="float: left; padding: 0 .5em .5em 0" width="150" height="225" /> "Do you want to go to a movie this weekend?"</p>
<p>
This is a pretty standard question for most teenagers, but unfortunately many teens with disabilities do not hear these words from friends. Win Bennett was sensitive to this issue because his sister Mara has disabilities. Win has included Mara in social activities with his own friends for years and thought other teens with disabilities would enjoy the same opportunities. That is how Fun Times started. 
</p>
<p>
Teens, ages 15 and up, with and without disabilities participating in Fun Times, have attended Saints Games, Twins games, movies, game nights, theater events and  bowling.</p>
<p><strong> If you would like more information about Fun Times, call (952) 838-9000.&nbsp;
</strong></p>
<p>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</p>

</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>