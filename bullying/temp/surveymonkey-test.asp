<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>- National Bullying Prevention Center</title>
<meta name="Description" content="" />

<!-- for Facebook -->     
<meta property="fb:app_id" content="271376943231875"  />
<meta property="og:title" content="" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/bullying/nbpm/images/unityDay-fb.jpg" />
<meta property="og:url" content="" />
<meta property="og:description" content="" />



<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--></head>

<body class="twocol">

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<!--#include virtual="/bullying/dynamic-header.html"-->
<!--#include virtual="/bullying/topnav.html"-->

<script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>


<div class="breadcrumb"> <a href="/bullying/">Home</a> /</div>
  <div class="sidebar1">
    <!--#include virtual="/bullying/nbpm/nav.html"--> 
    <!-- end .sidebar1 --></div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="none";
	var showTree = "none";

	if (document.getElementById(currId)){
		document.getElementById(currId).className = "active";
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

  <div class="content">
    <h1 id="maincontent">National Bullying Prevention Month</h1>
    
    
<script>(function(t,e,c,n){var s,o,p;t.SMCX=t.SMCX||[],e.getElementById(n)||(s=e.getElementsByTagName(c),o=s[s.length-1],p=e.createElement(c),p.type="text/javascript",p.async=!0,p.id=n,p.src=["https:"===location.protocol?"https://":"http://","widget.surveymonkey.com/collect/website/js/xSCNE_2BHdRmEhsqRbcgWkVpW9gGet_2BvBJGZku8p9v1I9yucWhKnzZSN6P9akOTpKF.js"].join(""),o.parentNode.insertBefore(p,o))})(window,document,"script","smcx-sdk");</script><a style="font: 12px Helvetica, sans-serif; color: #999; text-decoration: none;" href=https://www.surveymonkey.com/mp/customer-satisfaction-surveys/> Create your own user feedback survey </a>


<br class="clearfloat" />
  <!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
