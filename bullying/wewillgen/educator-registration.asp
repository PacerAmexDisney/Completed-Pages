<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>We Will Generation Educator Registration - NBPC</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link href="/bullying/wewillgen/css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/bullying/css/scrolling.css"/>


<!--#include virtual="/bullying/dynamic-head-items.html"-->

<link href="/bullying/css/eventForm.css" rel="stylesheet" type="text/css" />


<style type="text/css">
#EducatorRegistration{
	width:414px;
	margin:10px auto 220px;
	background:#E0E0E0;
	padding:10px 5px;
	border-radius: 20px;
	margin-bottom:150px;
}
#logout{display:none;}
#topnav li#wewillbanner{padding-left:144px;}
</style>
<link href="/SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<link href="/SpryAssets/SpryValidationCheckbox.css" rel="stylesheet" type="text/css" />
<script src="/SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<script src="/SpryAssets/SpryValidationCheckbox.js" type="text/javascript"></script>
</head>

<body class="onecol subpage">
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
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script type="text/javascript" src="/js/jquery.sticky.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#secondarynav").sticky({ topSpacing:0 });
		$('.dash').attr('aria-hidden','true');
	});
</script>

  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/wewillgen/">We Will Generation</a> /</div>
  
  
	<div class="content">
		<div id="secondarynav" class="whitenav" role="navigation"> <a href="/bullying/"><img id="navlogo" src="/bullying/images/styles/navLogo.png" width="40" height="40" alt="NBPC Homepage" /></a>
			<ul class="justifiedlist">
				<li id="spynav-1"><a href="/bullying/wewillgen/#wewill-1a">We Will Generation</a></li>
				<li class="dash"></li>
				<li id="spynav-2"><a href="/bullying/wewillgen/#reachout-2a">Reach Out</a></li>
				<li class="dash"></li>
				<li id="spynav-3"><a href="/bullying/wewillgen/#speakup-3a">Speak Up</a></li>
				<li class="dash"></li>
				<li id="spynav-4"><a href="/bullying/wewillgen/#curricula-4a">Classroom Curricula</a></li>
				<li class="dash"></li>
				<li id="spynav-5"><a href="/bullying/wewillgen/#stories-5a">Stories</a></li>
				<li class="dash"></li>
				<li id="spynav-6"><a href="/bullying/wewillgen/#faq-6a">FAQs</a></li>					
			</ul>
		</div>
		<div class="contentrow row-orange row-shadow">
		<div class="singlecolumn">
			<h2 id="maincontent">WE WILL Generation Curriculum</h2>
<p>Register to access the free on-line, student engagement curriculum. Registrants are asked to:</p>
<ul>
<li>Determine who will present the curriculum:
<ul>
<li>Educator (or other adult such as a social worker, guidance counselor, or coach)</li>
<li>Student presenters (this requires an adult advisor(s)</li></ul></li>
<li>Present all lessons in the curriculum<br />
Note: Presenters do not need to do all sections within each lesson.</li>
<li>Complete evaluation forms and provide feedback.</li>
</ul>
<p style="color:#fff; font-size:.9em">Once you have verified your email address you will be able to access the curriculum using your email address. <br />
	Already registered? You can <a href="/bullying/wewillgen/educator-login.asp">Log In Here</a>.</p>

<h3 class="centered">Registration Form</h3>
<div class="infobox" id="EducatorRegistration">
<form  action="educator-registration-mail.asp" method="post">
	<input type="hidden" name="servcheck" id="servcheck" value="<%now()%>"  />

<p class="extramessage" style="text-align:right;"><span style="color:red;"><sup>*</sup></span> - All fields are required</p>
	<p class="longinput">
	<span id="sprytextfield1">
	<label for="erFullname">Full Name: </label>
	<input type="text" name="erFullname" id="erFullname" tabindex="10" />
	<span class="textfieldRequiredMsg">A value is required.</span></span>
	</p>
	<p class="longinput">
	<span id="sprytextfield2">
	<label for="erEmail">Your Email: </label>
	<input type="text" name="erEmail" id="erEmail" tabindex="20" />
	<span class="textfieldRequiredMsg">A value is required. </span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span>
	</p>
	<p class="centered"><strong>School Information</strong></p>
	<p class="longinput"><span id="sprytextfield3">
		<label for="erSchoolName">School Name: </label>
		<input type="text" name="erSchoolName" id="erSchoolName" tabindex="30" />
		<span class="textfieldRequiredMsg">A value is required.</span></span></p>
	<p class="longinput"><span id="sprytextfield4">
		<label for="erCity">City / Town: </label>
		<input type="text" name="erCity" id="erCity" tabindex="40" />
		<span class="textfieldRequiredMsg">A value is required.</span></span></p>
	<p class="longinput"><span id="sprytextfield5">
		<label for="erState">State / Province: </label>
		<input type="text" name="erState" id="erState" tabindex="50" />
		<span class="textfieldRequiredMsg">A value is required.</span></span></p>
	<p class="longinput"><span id="sprytextfield6">
		<label for="erCountry">Country: </label>
		<input type="text" name="erCountry" id="erCountry" value="U.S." tabindex="60" />
		<span class="textfieldRequiredMsg">A value is required.</span></span></p>
		
	<p class="specialinput"><span id="sprycheckbox1">
		<input type="checkbox" name="erConfirm" id="erConfirm" tabindex="70" />
		<label for="erConfirm">Check here to confirm that you are an active teacher or adult advisor who would use the WE WILL Generation Curriculum with students. </label>
		<span class="checkboxRequiredMsg">You must confirm that you are an active Teacher or Adult Advisor of students.</span></span></p>
		
		
		
		
		<p style="text-align:right;"><input type="submit" name="Submit" id="Submit" value="Submit Information" tabindex="90" /></p>
</form>
</div>	
</div>
</div>

<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
<script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1", "none", {validateOn:["blur"]});
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2", "email", {validateOn:["blur"]});
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3", "none", {validateOn:["blur"]});
var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4", "none", {validateOn:["blur"]});
var sprytextfield5 = new Spry.Widget.ValidationTextField("sprytextfield5", "none", {validateOn:["blur"]});
var sprytextfield6 = new Spry.Widget.ValidationTextField("sprytextfield6", "none", {validateOn:["blur"]});
var sprycheckbox1 = new Spry.Widget.ValidationCheckbox("sprycheckbox1", {validateOn:["blur"]}, {validateOn:["blur"]});
</script>
</body>
</html>
