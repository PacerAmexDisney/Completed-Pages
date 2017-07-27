<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center - Puppet Show, Kids Against Bullying</title>
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
 <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/resources/">Resources</a> /</div>
 
 <!-- ######################### NAVIGATION ################################# -->
 <div class="sidebar1"> 
  <!--#include virtual="/bullying/resources/nav.html"--> 
  <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="puppetshow";
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
 </div>
 <!-- ###################### END Navigation ############################## -->
 
 <div class="content"> 
  <h1 id="maincontent">Puppet Show, Kids Against Bullying</h1>
  <p>The KIDS AGAINST BULLYING Puppet Program helps children and adults learn about bullying prevention. This exciting new puppet program was developed in response to requests from parents and teachers to supplement <a href="http://www.pacerkidsagainstbullying.org/" target="_blank">PACER&rsquo;s Kids Against Bullying Web site</a> . </p>
  <p>KIDS AGAINST BULLYING features five endearing multicultural, child-size puppets that portray children with and without disabilities. These puppets have proven to be a comfortable medium through which to teach children about bullying prevention. Opportunities exist throughout the presentation for children to learn through dialogue and question/answer.</p>
  <p>The KIDS AGAINST BULLYING Puppet Program is offered in the Minneapolis/St. Paul metro area. Communities outside of Minneapolis have the option of purchasing the puppets and scripts. <a href="http://www.pacer.org/puppets/kidsagainstbullying.asp" target="_blank">Learn more<span class="extralinktext"> about the Kids Against Bullying Puppet Show</span></a></p>
  
  
  <div style="text-align:center" id="puppetyoutubevideo">
 <object width="480" height="385"><param name="movie" value="http://www.youtube.com/v/OfDOngD7px8?fs=1&amp;hl=en_US&amp;rel=0&amp;color1=0x006699&amp;color2=0x54abd6"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/OfDOngD7px8?fs=1&amp;hl=en_US&amp;rel=0&amp;color1=0x006699&amp;color2=0x54abd6" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="480" height="385"></embed></object>

</div>
  
  <br class="clearfloat" />
   
   <!-- end .content -->
 </div>
 <!--#include virtual="/bullying/footer.html"--> 
 <!-- end .container --></div>
</body>
</html>
