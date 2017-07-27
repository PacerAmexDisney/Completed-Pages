<% Dim currentPage 

currentPage = "health-enews-2013-01.html"

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>F2F HIC - Health E-news</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.6.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<style type="text/css">
.newsblock{
	width:750px;
	margin:5px auto;
}
</style>
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
<div id="breadcrumb">
    <div class="printemail">
     <p> <img src="/css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>  </p>
    </div>
<a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> / <a href="/health/">Family-to-Family Health Information Center</a> /
    <h1>Family-to-Family Health Information Center</h1>
   </div>
</div>

<div id="leftbar">
<!--#include virtual="/health/leftNav.htm" -->
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="newsletter";
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


</div>

<div id="maincontent">

<div id="pagecontentright" style="min-height:500px;">

<!--BEGIN CONTENT-->
<div class="alertBox" style="font-size:14px; float:left"><a href="/health/newsletter/optIn-health-eblasts.asp">
Subscribe to the Health E-news
</a></div>

<h1 style="padding:0px; margin:0 0 15px 0; text-align:center"><img style="margin:0; padding:0;" src="/health/newsletter/images/newsletter-banner-v2.png" width="750" height="89" alt="Health E-News" /></h1>




<div id="importContent" class="newsblock"><p style="text-align:center; margin:25px;">Loading Content ...</p></div>

<script type="text/javascript">
$('#importContent').load('<%=currentPage%> #maincontent');
</script>



<noscript><h2>This content requires javascript active to view.</h2></noscript>

<div id="funding" class="newsblock" style="width:750px; padding:25px; font-size:85%; color:#333333">This Family-to-Family Health Information Center project is funded in   part through grant H84MC00005-09-00, administered by the U.S. Department   of Health and Human Services, Maternal and Child Health Bureau,   Division of Services for Children with Special Health Needs. This grant   program was established by the Family Opportunity Act of 2005, amended   by the Patient Protection and Affordable Act of 2010.</div>

<!--END CONTENT-->
<div id="pageextender" style="clear:both">&nbsp;</div>


</div>
</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>