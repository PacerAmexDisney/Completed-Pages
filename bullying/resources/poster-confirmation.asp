<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center - Poster Order Thank You</title>
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
	var currId="none";
	var showTree = "resources-sub";
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
  
  <div class="content" style="padding-top:30px;">
  	<h1 id="maincontent">Thank You for Your Order.</h1>
	<p>Please allow two weeks from date of order for delivery.</p>
	
    
	<%If date < cDate("8-22-2015") Then%>
    	<p><em>(Note: The 1st poster orders will begin shipping after August 26th)</em></p>
	<%End If%>

	<div style="text-align:center; margin-top:40px;">
        <img src="/bullying/resources/images/UnityDayPoster.jpg" width="300" height="450" style="margin-left:15px; border:1px solid black" alt="English Poster Image"/>
        <img src="/bullying/resources/images/UnityDayPoster_sp.jpg" width="300" height="450" style="margin-left:15px; border:1px solid black"  alt="Spanish Poster Image"/>
	</div>
    <hr style="margin:50px 10px;" />
	<h2> Become a Champion </h2>
	<p>Throughout the  community, there are nonprofits, schools, and community groups that  directly collaborate with PACER during National Bullying Prevention Month using  the bullying prevention resources &ndash; such as classroom toolkits, free bookmarks, awareness raising ideas, petition signing - to directly engage, educate and empower students. </p>
	<p>We would like to invite you to add your School or Organization as a <a href="/bullying/getinvolved/partners/champions.asp">Champions Against  Bullying</a> on the National Bullying Prevention Center website!</p>
	<p>Would  you like to make a <a href="https://pacer.ejoinme.org/MyPages/DonateToTheNationalBullyingPreventionCenter/tabid/229451/Default.aspx">donation</a> to PACER&rsquo;s National Bullying Prevention Center?</p>
    <br class="clearfloat" />
    
    <!-- end .content --></div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
