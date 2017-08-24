<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include virtual="/bullying/templates/header.asp"-->

<meta name="description" content="Have you ever been bullied? Have you seen bullying? What happened? How did you feel? We want to hear about it! Send us your story, poem, artwork or video on the topic�expressing your ideas on bullying prevention.
" />


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>Elementary Tool Kits - National Bullying Prevention Center</title>

<meta property="og:title" content="" />
<meta property="og:url" content="" />
<meta property="og:image" content="http://www.pacer.org/bullying/nbpm/images/unityDay-fb.jpg" />
</head>
<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<!--#include virtual="/bullying/templates/page-header-nav.asp"-->
<div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/classroom/">Classroom</a> / <a href="/bullying/classroom/elementary/">Elementary School</a> / <a href="/bullying/classroom/elementary/activities/">Activities</a></div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/classroom/nav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="ele-activities-poster";
	var showTree = "ele-sub";
	var showTree2 = "ele-activities-sub";
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
  
  <div class="content"> 
    <h1 id="maincontent">Create A Poster</h1>
    <a href="/bullying/resources/toolkits/activities/pdf/entryForm.pdf" target="_blank" title="Download the Poster Form"><img class="fltrt" src="/bullying/classroom/images/poster-sml1.png" width="300" height="388" alt="Download the Poster Form" /></a>
    
    <p>Have you ever been bullied? Have you seen bullying? What  happened? How did you feel? We want to hear about it! </p>
    <p>Send us your story, poem, artwork or video on the  topic&nbsp;expressing your ideas on bullying prevention. It can be about what  happened to you or someone else, how you feel about bullying, how you think it  affects students and schools, what you have done to prevent bullying, or what  others can do to prevent bullying. We want to hear from everyone&mdash;teens,  parents, teachers, and others with great ideas who want to improve the world. <br />
      </p>
    <p><a href="/bullying/classroom/pdf/entryForm.pdf" target="_blank">Download the Poster Form</a>    </p>
    <p>Send us your entry: </p>
      <p>PACER's National Bullying Prevention&nbsp;Center<br />
        8161 Normandale Blvd.<br />
      Minneapolis, MN 55437 
      
      
      
      
<br class="clearfloat" />
<!-- end .content --></p>
<!-- ########################## END MAIN CONTENT ########################################### -->
<!--#include virtual="/bullying/templates/footer.asp"-->
