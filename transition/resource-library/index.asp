<!--#include virtual="/transition/templates/header.asp"-->



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Resource Library - National Parent Center on Transition and Employment</title>

<meta name="description" content="PACER’s transition publications provide useful and relevant information that helps youth with disabilities be successful in work, postsecondary education, and in the community.">
<!-- for Facebook -->          
<meta property="og:title" content="Resource Library - National Parent Center on Transition and Employment" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/resource-library/" />
<meta property="og:description" content="PACER’s transition publications provide useful and relevant information that helps youth with disabilities be successful in work, postsecondary education, and in the community." />

<link rel="icon" href="http://www.pacer.org/transition/favicon.ico" />

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>

<!--#include virtual="/transition/dynamic-head-items.html"-->

<style type="text/css">
#pagecontent .textimage {
	min-height:110px;
}
table.handouts td{
	padding:5px;
}
.handouts {
	margin:5px 20px;
}
#intro{
	display:none;
}
.pubcat {
	background:#ccc;
	padding:10px 5px;
	margin:10px;
	border-top:1px solid #373566;
	border-bottom:1px solid #373566;
}
</style>

</head>

<body>

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>


<!--#include virtual="/transition/templates/page-header-nav.asp"-->


<div class="breadcrumb"> <a href="/transition/">Home</a> /</div>

  <div class="content">
  	<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>
    <div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>

    <h1 id="maincontent">Publications</h1>
<p style="text-align:center; padding-bottom:30px;"><a href="/publications/">View Our Full  Catalog </a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="/forms/request.asp">Reprint Request Form</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<img src="/images/pdficon_small.gif" width="15" height="15" alt="" /><a href="/publications/OrderForm.pdf" target="_blank">Publications Order Form</a></p>




<div id="importContent" class="newsblock"><p style="text-align:center; margin:25px;">Loading Content ...</p></div>


<script type="text/javascript">
$.get('/publications/transition.asp', function (data) {
    data = $(data).find('#pagecontent').html();
    $("#importContent").empty().append(data);
});

//$('#importContent').load('/publications/ebd.asp #pagecontent');
</script>
<noscript><p style="text-align:center; color:red; font-size:1.1em;">This content requires javascript active to view.</h2></noscript>



<!--#include virtual="/transition/templates/footer.asp"-->
