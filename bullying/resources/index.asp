<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center - Resources</title>
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
	var currId="overview";
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
  
  <div class="content"> 
    <h1 id="maincontent">Resources</h1>
    <p><a href="/bullying/resources/info-facts.asp">Questions Answered</a><br />
    Responses in a variety of formats, including images, 60 second response, article and more, to commonly asked questions.</p>
      <p><a href="/bullying/resources/stats.asp">Statistics</a><br />
    Important research on the effects, intervention and impact of bullying.</p>
      <p><a href="/bullying/resources/facts.asp">Facts</a><br />
Key points highlighting relevant best practices and issues about bullying.</p>
      <p><a href="/bullying/resources/cyberbullying.asp">Cyberbullying</a><br />
        Just as the use of technology itself has evolved, so has the ability to bully. Bullying, once restricted to the school or neighborhood, has now moved into the online world. Bullying through electronic means is referred to as &ldquo;cyberbullying.&rdquo;</p>
      <p><a href="/bullying/resources/students-with-disabilities/index.asp">Students With Disabilities</a><br />
Advocating for students with disabilities. Visit the comprehensive online module to get informed and learn what you can do to help.</p>
    <p><a href="/bullying/resources/publications/index.asp">Information Handouts</a><br />
        Publications designed to inform and educate on bullying related issues, with a special emphasis on students with disabilities.</p>
      <p><a href="/bullying/resources/book-club.asp">Book Club</a><br />
    Story telling is a powerful way to share messages, encourage discussion and inspire thoughtful action.</p>
      <p><a href="/bullying/resources/bookmarks.asp">Free Bookmarks</a><br />
    Bookmarks featuring information and graphics from the Teens Against Bullying and Kids Against Bullying websites.</p>
      <p><a href="/bullying/resources/posters.asp">Unity Day Posters</a><br />
    Order your free poster to promote Unity Day in your school, home or community.</p>
      <p><a href="/bullying/resources/sites-for-kids-and-teens.asp">Sites for Kids and Teens</a><br />
    Websites for kids and teens to learn about bullying, engage in activities, and be inspired to own an important social cause.</p>   
<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
