<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>

<% Dim currentPage 

currentPage = "/bullying/newsletter/edition/2017-04-BullyingPreventionE-news.html"

%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center - Bullying Prevention E-News</title>

<!-- for Facebook -->     
<meta property="og:title" content="National Bullying Prevention Center - Newsletter" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/bullying/newsletter/images/newsletter-fb.jpg" />
<meta property="og:url" content="http://www.pacer.org/bullying/newsletter/" />
<meta property="og:description" content="Stay up to date on all the exciting news from PACER’s National Bullying Prevention Center!" />

<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
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
h2{
	font-size:1.7em;
}
</style>

<!--#include virtual="/bullying/dynamic-head-items.html"-->
</head>

<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#content">Skip to main content</a>
 
  <!--#include virtual="/bullying/dynamic-header.html"--> 
  <!--#include virtual="/bullying/topnav.html"--> 
  
  <script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>
  <div class="breadcrumb"> <a href="/bullying/">Home</a> /</div>
  
	<div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>
			<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>  
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/about/nav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="newsletter";
	var showTree = "none";
	var currSubId="none";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "active";
	}
	if (document.getElementById(currSubId)){
		document.getElementById(currSubId).className = "active";
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
  </div>
  <!-- ###################### END Navigation ############################## -->
  
  <div class="content"> 
  <h3>Published April 2017</h3>
  <div class="alertBox" style="text-align:center; width:10em; margin-right:35px; font-size:1.1em;"><a href="/bullying/newsletter/opt-in.asp">Sign Up Here!</a></div>
  
  
<div id="importContent" class="newsblock"><p style="text-align:center; margin:25px;">Loading Content ...</p></div>

<script type="text/javascript">
$('#importContent').load('<%=currentPage%> #contentData');
</script>
<noscript><p style="text-align:center; color:red; font-size:1.1em;">This content requires javascript active to view.</h2></noscript>

<br class="clearfloat" />
    
    <!-- end .content --></div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
