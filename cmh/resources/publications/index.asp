<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />


<title>Publications - Children&#039;s Mental Health and Emotional or Behavioral Disorders Project</title>

<meta name="description" content="Families of children with mental health, emotional and behavioral needs often navigate multiple systems to access necessary supports and services. Families may also face additional challenges due to stigma about mental health. PACER’s Inspiring Opportunities Project will bring together parents, youth and professionals to help families receive the resources and support their children need. This project will also promote increased understanding of children's mental health, emotional, and behavioral need in the broader community.
" />


<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" />
<link rel="stylesheet" href="/cmh/css/style.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="/js/pacer-expanding-box.css"/>
<link rel="stylesheet" type="text/css" href="/js/colorbox1.5.9/colorbox.css" />

<script type="text/javascript" src="/cmh/js/imageswap.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
  document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script type='text/javascript' src='/js/pacer-expanding-box.js?ver=4.2.2'></script>
<script type='text/javascript' src='/js/colorbox1.5.9/jquery.colorbox-min.js?ver=4.2.2'></script>

<script type="text/javascript">
	jQuery(document).ready(function(){
		//Change Any Links that contain the v= version into the embed version that colorbox expects
		//Note: You lose all extra query string items in the current version of this function
		jQuery(".videoPopUp").each(function(){
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
		jQuery(".videoPopUp").colorbox({iframe:true, innerWidth:640, innerHeight:390});
	});
</script>
<style type="text/css">
#intro {
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
	<!--#include virtual="/cmh/topRightSection.html"-->
	<!--#include virtual="/cmh/topNav.html"-->  
</div>		
	<!--#include virtual="/cmh/resources/leftNav.html"-->  
  <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="pubs";
	var showTree = "none";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "current_page_item";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "submenu") {
			if (subTrees[i].id != showTree) {
				subTrees[i].className = "submenuhidden";
			}
		}
	}
	</script> 
  
  
  
<div id="maincontent">

<div id="pagecontent">
<!--BEGIN CONTENT-->
	<h1>PACER Publications</h1>
		
    <p style="text-align:center; padding-bottom:30px;"><a href="/publications/">View Our Full  Catalog </a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="/forms/request.asp">Reprint Request Form</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<img src="/images/pdficon_small.gif" width="15" height="15" alt="" /><a href="/forms/request.asp">Publications Order Form</a></p>
<div style="float:right">
   <div class="alertBox">
   <p><strong>To Order:</strong></p>
   <p>Call PACER Center: 952-838-9000   </p>
   <p>Items with <img src="http://www.pacer.org/publications/images/square.png" alt="square" /></p>
   <p>One free copy available to Minnesota parents or guardians of children with disabilities and to Minnesota young adults (age 14 and older) with disabilities.</p>
   </div> 
	<img style="clear:right; float:right;" src="/childrensmentalhealth/images/circle_boy2.jpg" width="229" height="225" alt=""/>
</div>

    
<div id="importContent" class="newsblock"><p style="text-align:center; margin:25px;">Loading Content ...</p></div>


<script type="text/javascript">
jQuery.get('/publications/ebd.asp', function (data) {
  data = jQuery(data).find('#pagecontent').html();
  jQuery("#importContent").empty().append(data);
});
</script>
<noscript><p style="text-align:center; color:red; font-size:1.1em;">This content requires javascript active to view.</h2></noscript>
    
</div>
			

</div>
</div>
	<!--#include virtual="/footer.htm"-->
</div>
</div>	

</body>
</html>