<%
Select Case LCase(Request.QueryString("to"))
  Case "sample"
    Response.Redirect("/bullying/")
  Case "spookley-toolkit"
    Response.Redirect("/bullying/resources/toolkits/spookley/")
End Select
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="ROBOTS" content="NOINDEX, NOFOLLOW" />
<title>National Bullying Prevention Center - Redirect</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"-->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.6.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<style type="text/css">
#alternative_locations ul li {
	display:block;
	width:90%;
	margin-left:auto;
	padding-left:10px;
	padding-bottom:20px;
	margin-bottom:0px;
	padding-top:10px;
	margin-top:10px;
	border-top:5px solid #eee;
	border-left:none;
	float:left;
	background:#FFCD9B;
	font-weight:bold;
	color:#00C;
	list-style:none;
}
#alternative_locations ul li:nth-child(3n+4){
	clear:none;
}
#alternative_locations ul li:nth-child(4n+5){
	clear:left;
}
#alternative_locations ul ul{
	margin-top:10px;
}
#alternative_locations ul li li{
	width:156px;
	background:#ccc;
	border:none;
}
#alternative_locations #topnav {
  background: none;
  font-size: 16px;
}
#alternative_locations #topnav ul ul {
  background: none;
  font-size: 12px !important;
}

#alternative_locations #topnav a {
  color: #03F;
  text-decoration:underline;
  display: block;
  font-weight: normal;
  height: auto;
  line-height: 1;
  margin-top: 6px;
  padding: 0 5px 0 10px;
  text-decoration: none;
  width: auto;
}
#alternative_locations #topnav li.hassubnav {
  background: none;
}
#alternative_locations #topnav li {
  background: none;
}
#alternative_locations #topnav li li:hover {
  background: none;
}
#alternative_locations #topnav ul {
  border: none;
  box-shadow: none;
  font-weight: normal;
  height: auto;
  left: auto;
  line-height: 1;
  position: relative;
  width: auto;
}
</style>
</head>

<body>

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>


<!--#include virtual="/bullying/dynamic-header.html"-->
<!--#include virtual="/bullying/topnav.html"-->
  <div class="content">
    <h1 id="maincontent">404 Page Not Found</h1>

<p class="centered" style="font-weight:bold;;margin:100px auto; ">Oops! - It seems that the page you are looking for doesn't exist.</p>
<hr />
<p>You could try looking in one of these locations:</p>
<div id="alternative_locations">
<%' DEFAULT LIST IF NO JAVASCRIPT LOADED %>
  <ul>
  <li><a href="/bullying/nbpm/">National Bullying Prevention Month</a></li>
  <li><a href="/bullying/video/">Videos</a></li>
  <li><a href="/bullying/stories/">Stories</a></li>
  <li><a href="/bullying/resources/">Resources</a></li>
  <li><a href="/bullying/getinvolved/ ">Get Involved / Sign The Petition</a></li>
  <li><a href="/bullying/resources/sites-for-kids-and-teens.asp">Sites for Teens And Kids</a></li>
  <li><a href="/bullying/about/news.asp">News</a></li>
  </ul>
</div>

<script type="text/javascript">
$('#alternative_locations').load("/bullying/topnav.html #navWrap");
</script>



  <!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
