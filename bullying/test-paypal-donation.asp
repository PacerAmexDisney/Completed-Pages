<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"-->
<style>
a#newsletterbutton{
	width:89px;
	height:35px;
	background-image:url(/bullying/images/button-bully-newsletter.png);
	background-position:0px center;
}
a#newsletterbutton:hover{
	background-position:-120px center;
}
a#donatebutton{
	width:89px;
	height:35px;
	background-image:url(/bullying/images/button-bully-donate.png);
	background-position:0px center;
}
a#donatebutton:hover{
	background-position:-110px center;
}

</style>
</head>

<body>

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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> /</div>

  <div class="content">
    <h1 id="maincontent">TAG</h1>

<form method="POST" action="https://www.paypal.com/cgi-bin/webscr">
<input type="hidden" name="cmd" value="_donations">
<input type="hidden" name="business" id="business" value="paypal@pacer.org">
<input type="hidden" name="item_name" id="item_name" value="National Bullying Prevention Center - TAG - Donation">

<label for="amount">Amount: </label><input type="text" name="amount" value="">
<input type="submit" name="submit" value="Donate via PayPal">
</form>

  <!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
