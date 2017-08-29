<!--#include virtual="/bullying/templates/header.asp"-->

<% Dim currentPage 

currentPage = "/bullying/newsletter/edition/2017-04-BullyingPreventionE-news.html"

%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="Stay up to date on all the exciting news from PACER’s National Bullying Prevention Center!" />
<title>National Bullying Prevention Center - Bullying Prevention E-News</title>

<meta property="og:title" content="National Bullying Prevention Center - Newsletter" />
<meta property="og:image" content="http://www.pacer.org/bullying/newsletter/images/newsletter-fb.jpg" />
<meta property="og:url" content="http://www.pacer.org/bullying/newsletter/" />
<meta property="og:description" content="Stay up to date on all the exciting news from PACER’s National Bullying Prevention Center!" />
</head>
<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<!--#include virtual="/bullying/templates/page-header-nav.asp"-->

<div class="breadcrumb"> <a href="/bullying/">Home</a> /</div>
	<div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>
			<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>  
<!-- ########################## LEFT NAV ########################################### -->
<div class="sidebar1">
    <!--#include virtual="/bullying/templates/nav.html"--> 
</div>
<script type="text/javascript">
	var currId="newsletter";
	var showTree = "none";
	var showTree2 = "none";
</script>

<script type="text/javascript">
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

<!-- ########################## MAIN CONTENT ########################################### -->


<div class="content">

     
  <h3>Published April 2017</h3>
  <div class="alertBox mobileCentered" style="text-align:center; width:10em; margin-right:35px; font-size:1.1em;"><a href="/bullying/newsletter/opt-in.asp">Sign Up Here!</a></div>
  
  
<div id="importContent" class="newsblock"><p style="text-align:center; margin:25px;">Loading Content ...</p></div>

<script type="text/javascript">
$('#importContent').load('<%=currentPage%> #contentData');
</script>
<noscript><p style="text-align:center; color:red; font-size:1.1em;">This content requires javascript active to view.</h2></noscript>

<br class="clearfloat" />
    
    

<!--#include virtual="/bullying/templates/footer.asp"-->