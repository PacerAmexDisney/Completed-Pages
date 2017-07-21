<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="
" />
<meta name="keywords" content="
" />
<title>TIKES - Trainings on Demand - Simon Technology Center - PACER Center</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" />
</head>

<body>
<div id="skiptocontent"> <a href="#maincontent">Skip to main content</a> </div>
<div id="wrapper">
  <div id="main">
    <div id="header">
      <div><!--#include virtual="/googleSearchBox.htm"--><!-- Contains Contact Pacer | Donate | Google search bar | Social media --> 
        <a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a> </div>
      <!--#include virtual="/dynamicheader.htm"--> 
    </div>
    <div id="topbar">
      <div id="breadcrumb">    <div id="project-social">
           <a href="http://www.simontechnologycenter.blogspot.com/" title="Simon Technology Center Blog" target="_blank"><img style="display:block; border:1px solid #ccc; margin-top:-1px; border-radius:5px;" src="/images/bloggericon_medium.png" alt="Simon Technology Center Blog" /></a> 
           <a href="https://www.pinterest.com/simontechcenter/" title="Simon Technology Center Pintrest" target="_blank"><img src="/images/pinteresticon_medium.png" alt="Simon Technology Center Pintrest" /></a> 
           
            
         <div id="sm-label" style="width:7em;">Join Us - STC :</div>
        </div>
<a href="/index.asp">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> / <a href="/stc/">Simon Technology Center</a> / <a href="/stc/tikes/">TIKES</a> /
<h1>TIKES - Technology  to Improve Kids&rsquo; Educational Success</h1>

      </div>
    </div>
    <div id="leftbar">
      <h2 style="display: none;">STC - Navigation Menu</h2>
      <!--#include virtual="/stc/tikes/leftNav.htm"--> 
    </div>
    
    <!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show --> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="none";
	var currSubId="none";
	// any Subtree that I want to Display
	var showTree = "none";
	
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
	if (document.getElementById(currSubId)){
		document.getElementById(currSubId).className = "page";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "treemenu") {
			//Any additional subTrees that you want to skip should be added here. like this (subTrees[i] != subTree1 || subTrees[i] != subTree2)
			if (subTrees[i].id != showTree) {
				subTrees[i].className = "treemenuhidden";
			}
		}
	}
</script>
    <div id="maincontent">
      <div id="pagecontent"> 
        
        <!--BEGIN CONTENT--> 
        
        <h1>Heading</h1>
        <p>content</p>
		
		
		
        <div id="pageextender" style="clear:both">&nbsp;</div>
      </div>
      
      <!--END CONTENT--> 
      
    </div>
  </div>
  
  <!--#include virtual="/footer2.htm"--> 
  
</div>
</body>
</html>