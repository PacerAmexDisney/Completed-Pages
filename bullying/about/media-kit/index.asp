<!--#include virtual="/bullying/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>Template - National Bullying Prevention Center</title>

<meta property="og:title" content="" />
<meta property="og:url" content="" />
<meta property="og:image" content="http://www.pacer.org/bullying/nbpm/images/unityDay-fb.jpg" />
<meta property="og:description" content="" />
</head>
<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<!--#include virtual="/bullying/templates/page-header-nav.asp"-->

  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/about/pressroom.asp">Pressroom</a> /</div>

<!-- ########################## START MAIN CONTENT ########################################### -->

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
<!-- ########################## END MAIN CONTENT ########################################### -->
<!--#include virtual="/bullying/templates/footer.asp"-->

