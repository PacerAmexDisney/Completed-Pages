<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />

<title> - Special Education - PACER Center</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
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
#pagecontent img {
	clear:right;
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

<div id="topbar">
<div id="breadcrumb">

	<a href="/">Home</a> / Special Education / 
	
	<h1>Parent Special Education Information</h1>
<p style="font-size:90%;padding:0;margin:0;">PACER is the Minnesota Parent Training and Information Center, funded by the U.S. Department of Education's Office of Special Education Programs.</p>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">Parents Helping Parents Navigation Menu</h2>
<!--#include virtual="/parent/leftNav.html" -->
</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="publications";
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
<p style="text-align:center; padding-bottom:30px;"><a href="/publications/">View Our Full  Catalog </a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="/forms/request.asp">Reprint Request Form</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<img src="/images/pdficon_small.gif" width="15" height="15" alt="" /><a href="/forms/request.asp">Publications Order Form</a></p>
<div style="float:right">
<img src="/childrensmentalhealth/images/circle_boy2.jpg" width="300" height="295" alt=""/>
</div>



<div id="importContent" class="newsblock"><p style="text-align:center; margin:25px;">Loading Content ...</p></div>


<script type="text/javascript">
$.get('/publications/specedrights.asp', function (data) {
    data = $(data).find('#pagecontent').html();
    $("#importContent").empty().append(data);
});

//$('#importContent').load('/publications/ebd.asp #pagecontent');
</script>
<noscript><p style="text-align:center; color:red; font-size:1.1em;">This content requires javascript active to view.</h2></noscript>


<!--END CONTENT-->
<div id="pageextender" style="clear:both">&nbsp;</div>

</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>