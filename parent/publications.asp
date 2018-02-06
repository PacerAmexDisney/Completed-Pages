<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>Special Education Rights Publications - PACER Center</title>

<meta property="og:title" content="Special Education Rights Publications" />
<meta property="og:url" content="www.pacer.org/parent/publications.asp" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />

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
@media (max-width: 600px) {
  #pagecontent img {
    max-width: 40%;
    height: auto;
  }
}
</style>
</head>
<body>
<!--#include virtual="/templates/page-header-nav.asp"-->

<div id="topbar">
<div id="breadcrumb">
	<a href="/">Home</a> / Special Education / 	
</div>
    	<h1>Parent Special Education Information</h1>
<p class="mobileHidden" style="font-size:90%;padding:0;margin:0;">PACER is the Minnesota Parent Training and Information Center, funded by the U.S. Department of Education's Office of Special Education Programs.</p>

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
<img class="fltrt" src="/cmh/images/circle_boy2.jpg" width="300" height="295" alt="">

<div id="importContent" class="newsblock"><p style="text-align:center; margin:25px;">Loading Content ...</p></div>


<script type="text/javascript">
$.get('/publications/specedrights.asp', function (data) {
    data = $(data).find('#pagecontent').html();
    $("#importContent").empty().append(data);
});

//$('#importContent').load('/publications/ebd.asp #pagecontent');
</script>
<noscript><p style="text-align:center; color:red; font-size:1.1em;">This content requires javascript active to view.</h2></noscript>


<!--#include virtual="/templates/footer.asp"-->
