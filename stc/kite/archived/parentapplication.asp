<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Project KITE Application: Parent/Caregiver</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../../css/leftnavigation.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../../css/print.css" media="print" />

<script type="text/javascript" src="../../css/menu.js"></script>
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
<div id="rightBar">


<p style="font-size: 85%; text-align: left; padding: .5em; margin: 0; background-color: #390; color: #fff;">
<em>&quot;Thank you Project KITE staff!! The presentations and trainings were well-organized and well-presented with practical information for (the) learning needs of a diversity of students.&quot;<br /><br />
- Speech-Language Pathologist<br /><br />
&quot;Excellent program! This had a great impact on the child's life. All the ideas were very helpful. Especially helpful were the ideas for IEPs, goals, and objectives.&quot;" - Early Childhood Special Education Teacher<br /><br />
- Elementary Special Education Teacher<br /><br />
&quot;It (Project KITE) was excellent. I always looked forward to the sessions to learn more new ideas. Thank you!&quot;<br /><br />
- Occupational Therapist</em>
</p>
<p style="padding: 0; margin: .5em 0 0 0;">
<img src="images/KITE-4.jpg" width="250" height="188" alt="KITE participants looking at communication boards and books at a workshop" />
</p>

</div>

<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<a href="https://www.facebook.com/simontechnologycenter" target="_blank">Join the STC Facebook Page</a> | 
<img src="../../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="../../index.asp">Home</a> / <a href="../../pandr/index.asp">Programs &amp; Resources</a> / <a href="../index.asp">Simon Technology Center</a> / <a href="index.asp">Project KITE</a> / Parent/Caregiver Participation Form
	
	<h1>Project KITE</h1>
	
	</div>

</div>

<div id="leftbar">
<h2 style="display: none;">STC - Navigation Menu</h2>
<!--#include virtual="/stc/leftNav.htm"-->
</div>

<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="projects";
	var currSubId="subproj-pk";
	// any Subtree that I want to Display
	var showTree = "stc-subproj";
	
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

<!--BEGIN CONTENT-->

<h2 class="nounderline"><a name="maincontent">Parent/Caregiver Participation Form</a></h2>
<p>
Project KITE requires that each of the teams participating in the training program consist of the following:
</p>
<ul>
	<li>a teacher of a class in which children with disabilities are included,</li>
	<li>parents or guardians of children with disabilities included in the class, and</li>
	<li>a service provider or paraprofessional who works with the classroom.</li>
</ul>
<form action="parentSubmit.asp" method="post">
<table>
	<tr>
		<td class="title"><label for="name">Name:</label></td>
		<td><input type="text" name="name" id="name" size="40" /></td>
	</tr>
	<tr>
		<td class="title"><label for="date">Date:</label></td>
		<td><input type="text" name="date" id="date" size="40" /></td>
	</tr>
	<tr>
		<td class="title"><label for="childname">Child's name:</label></td>
		<td><input type="text" name="childname" id="childname" size="40" /></td>
	</tr>
	<tr>
		<td class="title"><label for="dob">Date of birth:</label></td>
		<td><input type="text" name="dob" id="dob" size="40" /></td>
	</tr>
	<tr>
		<td class="title"><label for="childteacher">Child's teacher:</label></td>
		<td><input type="text" name="childteacher" id="childteacher" size="40" /></td>
	</tr>
	<tr>
		<td class="title"><label for="grade">Grade/Year in School:</label></td>
		<td><input type="text" name="grade" id="grade" size="40" /></td>
	</tr>
	<tr>
		<td class="title"><label for="school">School Name and City:</label></td>
		<td><input type="text" name="school" id="school" size="40" /></td>
	</tr>
</table><br />
<label for="childdisability">Please describe your child's disability:</label><br />
<textarea name="childdisability" id="childdisability" rows="5" cols="50"></textarea><br /><br />
<label for="childstrengths">Please describe your child's strengths:</label><br />
<textarea name="childstrengths" id="childstrengths" rows="5" cols="50"></textarea><br /><br />
<ol type="1">
	<li>Tell us about your computer skills.
		<ul class="nobullet">
			<li>How familiar are you with computers?
			<ul class="nobullet">
				<li><input type="radio" name="familiarComp" id="compno" value="Not at all" /> <label for="compno">Not at all</label></li>
				<li><input type="radio" name="familiarComp" id="compsome" value="Somewhat" /> <label for="compsome">Somewhat</label></li>
				<li><input type="radio" name="familiarComp" id="compcomfy" value="Comfortable" /> <label for="compcomfy">Comfortable</label></li>
			</ul></li>
			<li><label for="computerused">What type of computer(s) have you used?</label><br /><input type="text" name="computersused" id="computerused" size="40" /></li>
			<li><label for="softwareused">What software programs have you used?</label><br /><input type="text" name="softwareused" id="softwareused" size="40" /></li>
			<li>What type of computer do you have access to:
			<ul class="nobullet">
				<li><label for="compwork">at work?</label> <input type="text" name="computerAtWork" id="compwork" size="40" /></li>
				<li><label for="comphome">at home?</label> <input type="text" name="computerAtHome" id="comphome" size="40" /></li>
			</ul></li>
		</ul></li>
	<li>Are you familiar with assistive technology (AT) devices or software?
		<ul class="nobullet">
			<li><input type="radio" name="familiarAT" id="atno" value="Not at all" /> <label for="atno">Not at all</label></li>
			<li><input type="radio" name="familiarAT" id="atsome" value="Somewhat" /> <label for="atsome">Somewhat</label></li>
			<li><input type="radio" name="familiarAT" id="atcomfy" value="Comfortable" /> <label for="atcomfy">Comfortable</label></li>
		</ul>
		<label for="assistivetech">What assistive technology devices or software have you used with your child?</label><br />
		<textarea name="assistiveTech" id="assistivetech" rows="5" cols="50"></textarea><br /><br />
		<label for="atdevicestolearn">Please describe AT devices or software that you wish to learn more about in Project KITE trainings:</label><br />
		<textarea name="atDevicesToLearn" id="atdevicestolearn" rows="5" cols="50"></textarea></li>
	<li>Please tell us about your background.
	<ul class="nobullet">
		<li>What is your cultural background?
		<ul class="nobullet">
			<li><input type="radio" name="culturalBackground" id="africanamerican" value="African-American" /> <label for="africanamerican">African-American</label></li>
			<li><input type="radio" name="culturalBackground" id="hispanic" value="Hispanic" /> <label for="hispanic">Hispanic</label></li>
			<li><input type="radio" name="culturalBackground" id="hmong" value="Hmong" /> <label for="hmong">Hmong</label></li>
			<li><input type="radio" name="culturalBackground" id="nativeamerican" value="Native American" /> <label for="nativeamerican">Native American</label></li>
			<li><input type="radio" name="culturalBackground" id="asianamerican" value="Asian American" /> <label for="asianamerican">Asian American</label></li>
			<li><input type="radio" name="culturalBackground" id="lao" value="Lao" /> <label for="lao">Lao</label></li>
			<li><input type="radio" name="culturalBackground" id="caucasian" value="Caucasian" /> <label for="caucasian">Caucasian</label></li>
			<li><input type="radio" name="culturalBackground" id="other" value="Other" /> <label for="other">Other, please specify:</label> <input type="text" name="culturalBackgroundOther" size="20" /></li>
		</ul></li>
		<li>What is your income level?
		<ul class="nobullet">
			<li><input type="radio" name="incomeLevel" id="lower" value="lower" /> <label for="lower">lower</label></li>
			<li><input type="radio" name="incomeLevel" id="lowermiddle" value="lower-middle" /> <label for="lowermiddle">lower-middle</label></li>
			<li><input type="radio" name="incomeLevel" id="middle" value="Middle" /> <label for="middle">Middle</label></li>
			<li><input type="radio" name="incomeLevel" id="middlehigh" value="middle-high" /> <label for="middlehigh">middle-high</label></li>
			<li><input type="radio" name="incomeLevel" id="high" value="high" /> <label for="high">high</label></li>
		</ul></li>
		<li>In which geographical area do you live?
		<ul class="nobullet">
			<li><input type="radio" name="geographicalArea" id="innercity" value="Inner-city" /> <label for="innercity">Inner-city</label></li>
			<li><input type="radio" name="geographicalArea" id="suburb" value="Suburb" /> <label for="suburb">Suburb</label></li>
			<li><input type="radio" name="geographicalArea" id="reservation" value="Reservation" /> <label for="reservation">Reservation</label></li>
			<li><input type="radio" name="geographicalArea" id="rural" value="Rural" /> <label for="rural">Rural</label></li>
			<li><input type="radio" name="geographicalArea" id="city" value="City" /> <label for="city">City</label></li>
			<li><input type="radio" name="geographicalArea" id="geoother" value="Other" /> <label for="geoother">Other, please specify:</label> <input type="text" name="geographicalAreaOther" size="20" /></li>
		</ul></li>
	</ul></li>
	<li>Would you be a potential resource person for others?
	<ul class="nobullet">
		<li><input type="checkbox" name="resource" id="professional" value="Professionals" /> <label for="professional">Professionals How many?</label> <input type="text" name="numberProfessionals" size="2" /></li>
		<li><input type="checkbox" name="resource" id="parents" value="Parents" /> <label for="parents">Parents How many?</label> <input type="text" name="numberParents" size="2" /></li>
		<li><input type="checkbox" name="resource" id="anotherkite" value="Another KITE Team" /> <label for="anotherkite">Another KITE Team?</label></li>
	</ul></li>
	<li><label for="wishtoattend">Please write a few lines about why you wish to attend this training and the skills you hope to acquire through Project KITE.</label><br />
		<textarea id="wishtoattend" name="wishToAttend" rows="5" cols="50"></textarea></li>
</ol>
<p>
I am interested in participating in Project KITE and will agree to attend the training sessions and to work with the team for the benefit of my child.
</p>
<p>
<label for="address">Address:</label> <input type="text" id="address" name="address" size="40" /><br />
<label for="hphone">Phone (h):</label> <input type="text" id="hphone" name="hPhone" size="40" /><br />
<label for="wphone">Phone (w):</label> <input type="text" id="wphone" name="wPhone" size="40" /><br />
<label for="hemail">E-mail (h):</label> <input type="text" id="hemail" name="hEmail" size="40" /><br />
<label for="wemail">E-mail (w):</label> <input type="text" id="wemail" name="wEmail" size="40" />
</p>
<p>
<input type="submit" name="submit" value="Submit" />
</p>
</form>
<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>