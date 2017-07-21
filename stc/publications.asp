<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Simon Technology Center In-services</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" media="screen, projection" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<style type="text/css">
#pagecontent .textimage {
	min-height:110px;
}
table.handouts td{
	padding:5px;
}
#intro{
	display:none;
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
<a href="../"><img src="../images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>




<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<a href="https://www.facebook.com/simontechnologycenter" target="_blank">Join the STC Facebook Page</a> | 
<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs </a> /
	<h1>Simon Technology Center</h1>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">STC - Navigation Menu</h2><!--#include virtual="/stc/leftNav.htm"-->
</div>

<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="publications";
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

<!--BEGIN CONTENT-->
<p style="text-align:center; padding-bottom:30px;"><a href="/publications/">View Our Full  Catalog </a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="/forms/request.asp">Reprint Request Form</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<img src="/images/pdficon_small.gif" width="15" height="15" alt="" /><a href="/forms/request.asp">Publications Order Form</a></p>
<div style="float:right">
<img src="/childrensmentalhealth/images/circle_boy2.jpg" width="300" height="295" alt=""/>
</div>



<div id="importContent" class="newsblock"><p style="text-align:center; margin:25px;">Loading Content ...</p></div>


<script type="text/javascript">
$.get('/publications/stc.asp', function (data) {
    data = $(data).find('#pagecontent').html();
    $("#importContent").empty().append(data);
});

//$('#importContent').load('/publications/ebd.asp #pagecontent');
</script>
<noscript><p style="text-align:center; color:red; font-size:1.1em;">This content requires javascript active to view.</h2></noscript>


<!--END CONTENT-->
<div id="pageextender" style="clear:both">&nbsp;</div>

</div>


</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>