<!--#include virtual="/transition/templates/header.asp"-->


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Independent &amp; Community Living - National Parent Center on Transition and Employment</title>

<meta name="description" content="A look at Independent and Community Living options for transition-age youth.">
<!-- for Facebook -->          
<meta property="og:title" content="Independent &amp; Community Living - National Parent Center on Transition and Employment" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/learning-center/independent-community-living/" />
<meta property="og:description" content="A look at Independent and Community Living options for transition-age youth." />

<link rel="icon" href="http://www.pacer.org/transition/favicon.ico" />
<!--#include virtual="/transition/dynamic-head-items.html"-->
<style>
.side-thumb-img {
  min-width: 75px;
  margin-left:10px;
}
</style>
</head>

<body class="twocol">

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<!--#include virtual="/transition/templates/page-header-nav.asp"-->

<div class="breadcrumb"> <a href="/transition/">Home</a> / <a href="/transition/learning-center/">Learning Center</a>  
</div>

  <div class="sidebar1">
<!--#include virtual="/transition/learning-center/nav.html"-->
    <!-- end .sidebar1 --></div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="independent";
	var showTree = "independent-sub";
	var showTree2 = "";
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

  <div class="content">
  <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>
    <div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>

    <h1 id="maincontent">Independent &amp; Community Living</h1>
	
    <table width="100%" class="thumbnailTable">
		<tr>
			<td valign="top">
				<img class="side-thumb-img" src="/transition/learning-center/planning/images/person-centered-planning-thumb.jpg" alt="" width="150" height="150" />
			</td>
			<td valign="top">
				<h3><a href="/transition/learning-center/independent-community-living/person-centered.asp">Person-Centered Planning</a></h3>
				<p>Person-Centered Planning is a team-based process used to help your youth plan for the future. Focused on your young adult’s personal vision, the team supports and identifies opportunities, relationships, skills and abilities that are required to progress toward achieving the vision.</p></td>
		</tr>

		<tr>
			<td valign="top">
				<img class="side-thumb-img" src="/transition/learning-center/independent-community-living/images/self-determination.jpg" alt="" width="150" height="150" />
			</td>
			<td valign="top">
				<h3><a href="/transition/learning-center/independent-community-living/self-determination.asp">Self Determination</a></h3>
				<p>Self-determination means helping youth identify their own goals and dreams, and being able to take charge of making those dreams happen. Parents play an important role in building self-determination within their youth.</p>
			</td>
		</tr>
        
		<tr>
			<td valign="top">
				<img class="side-thumb-img" src="/transition/learning-center/independent-community-living/images/housing-icon.jpg" alt="" width="150" height="150" />
			</td>
		  <td valign="top">
			<h3><a href="/transition/learning-center/independent-community-living/housing.asp">Housing</a></h3>
			  <p>It is common for youth to look forward to moving out of the family home and into places of their own. Understanding housing options, available supports, and eligibility criteria can help youth with disabilities and their families work toward a youth’s vision for where they want to live.</p>
			</td>
		</tr>
        
	</table>



<!--#include virtual="/transition/templates/footer.asp"-->
