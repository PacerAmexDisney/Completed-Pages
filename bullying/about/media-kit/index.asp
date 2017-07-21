<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center - About Us</title>
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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/about/pressroom.asp">Pressroom</a> /</div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/about/nav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="media-kit";	
	var showTree = "pressroom-sub";
	var showTree2 = "media-kit-sub";
	if (document.getElementById(currId)){
       document.getElementById(currId).className = "active";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "submenu") {
			if (subTrees[i].id != showTree && subTrees[i].id != showTree2) {
				subTrees[i].className = "submenuhidden";
			}
		}
	}
    </script> 
  </div>
  <!-- ###################### END Navigation ############################## -->
  
  <div class="content watermark"> 
    <h1 id="maincontent">Media Kit</h1>
    <ul>
    <li><a href="/bullying/about/media-kit/nbpc-fact-sheet.asp">National Bullying Prevention Center Fact Sheet</a></li>
    <li><a href="/bullying/about/media-kit/bios.asp">Bios</a></li>
    <li><a href="/bullying/about/media-kit/impact.asp">Impact</a></li>
    <li><a href="/bullying/about/media-kit/facts.asp">Bullying Facts</a></li>
    <li><a href="/bullying/about/media-kit/stats.asp">Statistics</a></li>
    <li><a href="/bullying/about/media-kit/psa-audio-scripts.asp">PSAS &ndash; Audio scripts</a></li>
    <!--<li><a href="/bullying/about/media-kit/psa-videos.asp">PSAs &ndash; Videos</a></li>-->
    </ul>


<br class="clearfloat" />
    <!-- end .content --></div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
