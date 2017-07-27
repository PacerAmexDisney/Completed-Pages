<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center -  Request a Governor's Proclamation</title>
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


<div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/nbpm/">National Bullying Prevention Month</a> / <a href="/bullying/nbpm/spreadtheword/">Spread the Word</a></div>
  <div class="sidebar1">
    <!--#include virtual="/bullying/nbpm/nav.html"--> 
    <!-- end .sidebar1 --></div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="promo-governor";
	var showTree = "promo-sub";
	//var currSubId="promo-overview";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "active";
	}
	if (document.getElementById(currSubId)){
		document.getElementById(currSubId).className = "active";
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

  <div class="content">
    <h1 id="maincontent" style="font-size:1.7em">Request a Governor&rsquo;s Proclamation</h1>
<p>Promote  bullying prevention in your state! Contact your governor&rsquo;s office and ask how  to submit a request for a Governor&rsquo;s Proclamation for National Bullying  Prevention Awareness Week. Schools, students, parents, organizations, and  others can submit requests. Then, all you have to do is fill in the sample text  below with your state information and submit it. Easy as that! You can even  send an image of your state&rsquo;s signed proclamation to <a href="mailto:bullying411@PACER.org">bullying411@PACER.org</a> for posting. <br />
  </p>
<h2 class="hr"><strong>Sample:</strong></h2>
<p><strong>Governor's Proclamation  Proclaiming October, as (Name of State) National Bullying Prevention Month</strong><br />
<br />
WHEREAS, bullying is physical, verbal, sexual, or emotional harm or  intimidation intentionally directed at a person or group of people; and <br />
<br />
WHEREAS, bullying occurs in neighborhoods, playgrounds, schools, and through  technology, such as the Internet and cell phones; and <br />
<br />
WHEREAS, various researchers have concluded that bullying is the most common  form of violence, affecting millions of American children and adolescents  annually; and <br />
<br />
WHEREAS, thousands of (name of state) children and adolescents are affected by  bullying annually; and <br />
<br />
WHEREAS, targets of bullying are more likely to acquire physical, emotional,  and learning problems and students who are repeatedly bullied often fear such  activities as riding the bus, going to school, and attending community  activities; and <br />
<br />
WHEREAS, children who bully are at greater risk of engaging in more serious  violent behaviors; and <br />
<br />
WHEREAS, children who witness bullying often feel less secure, more fearful,  and intimated.<br />
<br />
NOW THEREFORE BE IT RESOLVED, that Governor (name of Governor) proclaims October as (name of state) National  Bullying Prevention Month; and <br />
<br />
BE IT FURTHER RESOLVED, that (name of state) schools, students, parents, recreation  programs, religious institutions, and community organizations be encouraged to  engage in a variety of awareness and prevention activities designed to make our  communities safer for all children and adolescents. </p>

<br class="clearfloat" />

  <!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
