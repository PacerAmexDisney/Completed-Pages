<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>ColorBox YouTube PopUp - Template - PACER Center</title>

<meta property="og:title" content="" />
<meta property="og:url" content="" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />
<link rel="stylesheet" type="text/css" href="/js/colorbox1.6.3/colorbox.css" />
<!--
<link rel="stylesheet" type="text/css" href="/css/key-elements-responsive.min.css" />
-->
<script type="text/javascript" src="/js/colorbox1.6.3/jquery.colorbox-min.js"></script>
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
				this.href = 'http://www.youtube.com/embed/' + vars['v'] + '?rel=0&amp;wmode=transparent';						
			}
		});
		//Initialize Colorbox
		$(".videoPopUp").colorbox({iframe:true, innerWidth:640, innerHeight:390, maxWidth:'95%', maxHeight:'95%'});
	});
	
/* Colorbox resize function */
var resizeTimer;
function resizeColorBox()
{
    if (resizeTimer) clearTimeout(resizeTimer);
    resizeTimer = setTimeout(function() {
            if ($('#cboxOverlay').is(':visible')) {
                    $.colorbox.load(true);
            }
    }, 300)
}

// Resize Colorbox when resizing window or changing mobile device orientation
$(window).resize(resizeColorBox);
window.addEventListener("orientationchange", resizeColorBox, false);
	
	
</script>



</head>
<body class="singleCol">

<!--#include virtual="/templates/page-header-nav.asp"-->

<div id="topbar">
<div id="breadcrumb">

<a href="/">Home</a> / <a href="/cultural-diversity/">Working with Culturaly Diverse Families</a> /
</div>
	<h1>YouTube Popup Example</h1>
</div>

<div id="maincontent">

<div id="pagecontent" class="narrowContent">

<!--BEGIN CONTENT-->

<div style="margin: 40px;">
		<p><a class='videoPopUp' href="http://www.youtube.com/embed/VOJyrQa_WR4?rel=0&amp;wmode=transparent">Original Link to Embed YouTube Video Popup (Iframe/Direct Link To YouTube)</a></p>
	
    
		<p><a class='videoPopUp' href="http://www.youtube.com/?v=VOJyrQa_WR4&rel=0&amp;wmode=transparent">Modified Link to use v= style link to YouTube Video Popup (Iframe/Direct Link To YouTube)</a></p>

</div>

<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->