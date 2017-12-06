<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>Minnesota School-wide Positive Behavior Interventions and Supports (SW-PBIS) - PACER Center</title>

<meta property="og:title" content="Minnesota School-wide Positive Behavior Interventions and Supports (SW-PBIS)" />
<meta property="og:url" content="http://www.pacer.org/pbis" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />

</head>
<body>

<!--#include virtual="/templates/page-header-nav.asp"-->

<div id="topbar">
<div id="breadcrumb">

<a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a>  /
</div>
	<h1>Minnesota School-wide Positive Behavior Interventions and Supports (SW-PBIS)</h1>

</div>

<script type="text/javascript">
	// ID of the current Left Nav item
	var currId="overview";
	// current subtree that should be displayed
	var showTree = "none";
	var showTree2 = "none";
</script>

<div id="leftbar">
<!--#include virtual="/pbis/nav.html" -->
</div>

<script type="text/javascript">
	// set current page
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
	// collapse all subtrees except the one targeted above that the current page exists in.
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "treemenu") {
			if (subTrees[i].id != showTree && subTrees[i].id != showTree2) {
				subTrees[i].className = "treemenuhidden";
			}
		}
	}
</script>

<div id="maincontent">

<div id="pagecontent">

<!--BEGIN CONTENT-->
<h2>Minnesota School-wide Positive Behavior Interventions and Supports Overview</h2>
<p>
<em>&#8220;A proactive strategy for defining, teaching and supporting student behavior resulting in academic and social gains and a positive school environment&#8221;</em> <br />
- MN Department of Education
</p>




<h3>What is SW-PBIS?</h3>
<p>
The Minnesota Department of Education launched a state initiative for School-wide Positive Behavioral Interventions and Supports in 2005. The goal of this initiative was to help schools successfully educate all students and especially those with challenging behaviors.  
</p>

<h3>Why does PBIS work?</h3>
<p>
Research shows that when a school environment is positive and predictable, students feel safer, have better academic performance, higher test results and make better behavior choices. Schools also show a gain in instructional time, reduction in out of school suspensions and discipline referrals and show a decrease in referrals to Special Education.
</p>

<h3>Is it a curriculum?</h3>
<p>
No.  PBIS is not a curriculum, but a process of planning and problem solving that includes direct teaching of social behaviors like academics. The basic PBIS approach is to use proactive, research-based strategies to teach clearly defined behavioral expectations. Most importantly, it establishes 
ongoing behavior supports that can be used by ALL students, staff, volunteers, parents and community members.
</p>

<h3>Can parents be involved?</h3>
<p>
Yes! Research shows that parent involvement in a child&#8217;s school experience 
greatly increases their chances for academic success, positive behavior, higher 
self-esteem, better attendance and greater motivation. Parents are key sources 
of information about their child, are their child&#8217;s first teachers, and have 
strengths and interests that can contribute to the educational process. When 
schools and families work together to support learning, children tend to succeed 
not just in school, but also throughout life. (National PTA, n.a.; Newman L. 
2005; Henderson and Berla, 1997).
</p>

<h3>How can I get my school information about SW-PBIS?</h3>
<p>In Minnesota, contact the  Minnesota Department of Education at 651-582-8645 or <a href="http://education.state.mn.us/MDE/EdExc/SpecEdClass/BehavAssessInterv/index.html" target="_blank">visit their Website</a>.  Minnesota also has their School-wide Positive Behavioral Interventions  and Supports site at <a href="http://pbismn.org" target="_blank">http://pbismn.org</a>.</p>
<h3>How can I get involved as a parent or professional?</h3>
<p>
The MN Department of Education offers information sessions on SW-PBIS for schools considering implementing SW-PBIS.  Parents can contact PACER Center for information on parent involvement in SW-PBIS, 
parent leadership training, understanding positive behavioral interventions,
developing collaboration skills and many other topics related to behaviors and academic achievement.  For more information contact Renelle Nelson at 952-838-9000 or 
<a href="mailto:rnelson@pacer.org">rnelson@pacer.org</a>. 
</p>

<p style="border-top: solid 1px #ccc; padding-top: .5em; margin-top: 2em; font-style: italic;">
The school-wide PBIS web site was developed from a grant from the Minnesota Department of Education.
</p>

<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->