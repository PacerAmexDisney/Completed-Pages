
<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/ec/"
%>






<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Early Childhood:  News</title>
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

<p class="volunteer" style="text-align: center;">
<a href="../newsletters/ec/index.asp">Early Childhood Connection</a><br />
<a href="../newsletters/ec/index.asp">
<img src="../newsletters/images/ecconnection.jpg" width="77" height="100" style="padding: .5em;" alt="cover of EC Connection" /></a>
</p>
<div class="rightsidebarpic">
<img src="images/EC-Fam.jpg" width="250" height="375" alt="father and two young sons" />
</div>
</div>

<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="../index.asp" title="PACER's home page">Home</a> / <a href="../pandr/index.asp" title="PACER's programs and resources">Programs &amp; Resources</a> /
	
	<h1>Early Childhood Family Information and Resources Project </h1>
	
</div>
</div>

<div id="leftbar">
<!--#include virtual="/ec/leftNav.htm" -->
</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="news";
	var currSubId="none";
	// any Subtree that I want to Display
	var showTree = "none";
	
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

<h2 class="nounderline"><a name="maincontent">News</a></h2>


<!--BEGIN CONTENT-->
<h3 class="nounderline"><a name="sig">Parent Outreach Publications!</a></h3>
<p>
PACER Center has published a series of brochures and accompanying handouts to help school districts tell families of young children about early intervention and early childhood special education services. A grant from the Minnesota Department of Education funded the project. 
</p>
<p>
The materials are in Hmong, Spanish, Somali, and Russian. English versions are directed to American Indian and African American parents.
</p>
<table width="100%">
	<tr>
		<td width="33%" style="vertical-align: top; padding-right: .5em;">
			<p><strong>Brochures:</strong></p>
			<ul>
				<li>
				<a href="SIGmaterials/African American Brochure 2010.pdf" target="_blank">African American</a></li>
				<li>
				<a href="SIGmaterials/English Multicultural Brochure 2010.pdf" target="_blank">English Multicultural</a></li>
				<li><a href="SIGmaterials/Hmong Brochure 2010.pdf" target="_blank">Hmong</a></li>
				<li><a href="SIGmaterials/Native American Brochure 2010.pdf" target="_blank">Native American</a></li>
				<li><a href="SIGmaterials/Somali Brochure 2010.pdf" target="_blank">Somali</a></li>
				<li><a href="SIGmaterials/Spanish Brochure 2010.pdf">Spanish</a></li>
			</ul>
		</td>
		<td width="33%" style="vertical-align: top; padding-left: .5em;">
			<p><strong>Handouts:</strong></p>
			<ul>
				<li><a href="SIGmaterials/Native American Handout.pdf" target="_blank">English</a></li>
				<li><a href="SIGmaterials/Hmong SIG Handout.pdf" target="_blank">Hmong</a></li>
				<li>
				<a href="SIGmaterials/Russian SIG Handout.pdf" target="_blank">Russian</a></li>
				<li>
				<a href="SIGmaterials/Somali SIG Handout.pdf" target="_blank">Somali</a></li>
				<li>
				<a href="SIGmaterials/Spanish SIG Handout.pdf" target="_blank">Spanish</a></li>
			</ul>
		</td>
		<td width="33%" style="vertical-align: top; text-align: right;">
			<img border="0" src="images/SIG-for-web.jpg" width="200" height="121" alt="All seven translated brochures laid out in a fan design" />
		</td>
	</tr>
</table>
<p>
To assist professionals working in diverse communities, English versions accompany each order of translated publication. There is space for school districts to affix a label providing their local contact information on the back page of the brochure. For more information about ordering the materials, please contact Barb Ziemke at 
<a href="mailto:bziemke@pacer.org">bziemke@pacer.org</a> or by phone at (952) 838-9000.
</p>
<p>
PACER has also developed strategies for local early intervention outreach and has published three handouts for professionals:
</p>
<ul>
	<li><a href="../parent/php/PHP-c131.pdf">Getting Off to a Good Start: Positive Interactions with Diverse Families in Early Childhood Intervention and Early Childhood Special Education</a></li>
	<li><a href="../parent/php/PHP-c132.pdf">Strategies for Success in Local Early Childhood Parent Outreach Activities Among Diverse Cultures</a></li>
	<li><a href="../parent/php/PHP-c133.pdf">Potential Community Partners and Locations for Parent Outreach Activities in Diverse Communities</a></li>
</ul>

<h3 class="nounderline"><a name="mnparentsknow">Web Site for Minnesota Parents</a></h3>
<p>
Education Commissioner Alice Seagren, along with members of the Legislature&#8217;s early childhood caucus and leaders in early childhood health, education and social services, announced the launch of MNParentsKnow.info, a Website offering Minnesota parents a convenient source for trusted knowledge on their child&#8217;s health, learning, development and safety. Read the entire 
<a href="http://education.state.mn.us/mdeprod/groups/Communications/documents/Announcement/031436.pdf">news release</a>. Explore the new Website at 
<a href="http://www.parentsknow.state.mn.us/">
http://www.parentsknow.state.mn.us/</a>. It is expected that the toddler and preschool Web pages will be available by September 2007. 
</p>
<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>