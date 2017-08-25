<!--#include virtual="/bullying/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>National Bullying Prevention Center - Spanish Publications</title>

<meta property="og:title" content="" />
<meta property="og:url" content="" />
<meta property="og:image" content="http://www.pacer.org/bullying/nbpm/images/unityDay-fb.jpg" />
<meta property="og:description" content="" />
</head>
<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<!--#include virtual="/bullying/templates/page-header-nav.asp"-->

  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/resources/">Resources</a> / <a href="/bullying/resources/publications/">Handouts</a></div>
  
<!-- ########################## LEFT NAV ########################################### -->
<div class="sidebar1">
    <!--#include virtual="/bullying/resources/nav.html"--> 
</div>
<script type="text/javascript">
  var currId="publications-sp";
  var showTree = "publications-sub";
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
     
    <h1 id="maincontent">Spanish Handouts</h1>    








<%If rs.EOF Then%>
	<h3 style="color:red">Error: No Database Connection Found</h3>
<%End If%>    
    
    <ul>
<%
  Do Until rs.EOF
%>
	<li><a href="<%=(rs.Fields.Item("pub_link").Value)%>" target="_blank"><%=(rs.Fields.Item("pub_name_translated").Value)%></a> <span style="color:#666">- <%=(rs.Fields.Item("pub_name").Value)%></span></li>
<%
  rs.MoveNext
  Loop
%>
	</ul>  
	
	
	
	
	
    <br class="clearfloat" />
    
    



<!--#include virtual="/bullying/templates/footer.asp"-->