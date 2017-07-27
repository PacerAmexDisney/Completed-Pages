<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>FLEX - Template - PACER Center</title>
<style>
.flex {
        margin: 0;
        padding: 0;
        display: flex;
        flex-flow: row;
		align-items: center;
    }
 
    .flex > .itemThumb {
        margin: 10px;
        padding: 0px;
        border-radius: 8px;
        flex: 1 2 250px;
        order: 1;
		overflow: hidden;
    }
	.flex > .itemThumb img {
		width: 100%;
		height: auto;
		margin: 0px;
		padding: 0px;
	}
	.flex > .itemThumb img.mobileThumb {
		display: none;
	}

    .flex > .itemDescription {
        border-radius: 8px;
		margin: 10px;
        flex: 1 1 auto;
        order: 2;
    }
  
	  /* Mobile */
    @media all and (max-width: 750px) {
        .flex {
            flex-direction: column;
        }
		.flex > .itemThumb img.mobileThumb {
		display: block;
		}
		.flex > .itemThumb img.desktopThumb {
		display: none;
		}
	}
    @media all and (max-width: 525px) {    
    	.flex > .itemThumb {
        	flex: 1 2 150px;
    	}
	}

</style> 
</head>
<body>

<!--#include virtual="/templates/page-header-nav.asp"-->

<div id="topbar">
<div id="breadcrumb">

<a href="/">Home</a> / <a href="/cultural-diversity/">Working with Culturaly Diverse Families</a> /
</div>
	<h1>Flex Box</h1>

</div>

<script type="text/javascript">
	// ID of the current Left Nav item
	var currId="section504";
	// current subtree that should be displayed
	var showTree = "currentPageSubtree";
	var showTree2 = "secondarySubtreeIfNeeded";
</script>

<div id="leftbar">
<!--#include virtual="/templates/leftNav.html" -->
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
<h2>2 Column Table Fix</h2>
   
	<h2>Original (from: http://staging.pacer.org/parent/)</h2>
   <table>
<tr>
  <td><img src="/parent/images/special-ed-thumb.jpg" alt="" height="150" width="150" /></td>
  <td><h3><a href="/parent/resources/improve-communications.asp">Understanding the Special Education Process </a></h3>
    <p>PACER&rsquo;s parent advocates often hear from parents when 
      they encounter certain statements or situations at school 
      meetings that they find uncomfortable or uncertain. These 
      tips are suggestions and techniques from PACER advocates 
      to help parents address some of those concerns, as well as 
      improve communication with school staff. </p></td>
</tr>
<tr>
<td><img src="/parent/images/improve-communications-thumb.jpg" alt="" height="150" width="150" /></td>
<td><h3><a href="/parent/resources/improve-communications.asp">Improve Communications with School Staff</a></h3>
	<p>PACER&rsquo;s parent advocates often hear from parents when 
they encounter certain statements or situations at school 
meetings that they find uncomfortable or uncertain. These 
tips are suggestions and techniques from PACER advocates 
to help parents address some of those concerns, as well as 
improve communication with school staff. </p>
</td>
</tr>
</table>    
    
    <hr>
	<h2>Flex Solution - <span style="color: green">In Progress</span></h2>
	<div class="flex" id="Row1">
	 <aside class="itemThumb">
	 	<img class="desktopThumb" src="/parent/images/special-ed-thumb.jpg" alt="" height="150" width="150" />
	 	<img class="mobileThumb" src="/parent/images/special-ed-mobilethumb.jpg" alt="" height="421" width="750" />
	 </aside>
	 <article class="itemDescription">
	 	<h2><a href="/parent/resources/improve-communications.asp">Seperate Desktop Image and Mobile Image Solution </a></h2>
	 	<p>PACER&rsquo;s parent advocates often hear from parents when 
	 		they encounter certain statements or situations at school 
	 		meetings that they find uncomfortable or uncertain. These 
	 		tips are suggestions and techniques from PACER advocates 
	 		to help parents address some of those concerns, as well as 
	 		improve communication with school staff. </p>
		</article>
	</div>
	<div class="flex" id="Row2">
	 <aside class="itemThumb">
	 	<img src="/parent/images/special-ed-mobilethumb.jpg" alt="" height="150" width="150" />
	 	
	 </aside>
	 <article class="itemDescription">
	 	<h2><a href="/parent/resources/improve-communications.asp">Single Image Thumb For Both </a></h2>
	 	<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It   has roots in a piece of classical Latin literature from 45 BC, making   it over 2000 years old. Richard McClintock, a Latin professor at   Hampden-Sydney College in Virginia, looked up one of the more obscure   Latin words, consectetur, from a Lorem Ipsum passage, and going through   the cites of the word in classical literature, discovered the   undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33   of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by   Cicero, written in 45 BC. This book is a treatise on the theory of   ethics, very popular during the Renaissance. The first line of Lorem   Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section   1.10.32.</p>
	 	<p>The standard chunk of Lorem Ipsum used since the 1500s is   reproduced below for those interested. Sections 1.10.32 and 1.10.33   from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in   their exact original form, accompanied by English versions from the 1914   translation by H. Rackham.</p>
		</article>
	</div>
	
<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->