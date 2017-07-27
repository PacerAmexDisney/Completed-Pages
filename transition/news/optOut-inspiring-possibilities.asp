<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Opt Out - Inspiring Possibilities Email Updates - National Parent Center on Transition and Employment</title>

<meta name="description" content="An e-newsletter that subscribers receive twice monthly. Each issue focuses on new or recent resources on timely topics of importance to youth and young adults with disabilities and their families. Featured resources provide strategies to help youth achieve their post-school goals with support from their families, advocates, educators, workforce development professionals, the community, and other natural supports. " />
<!-- for Facebook -->          
<meta property="og:title" content="Opt Out - Inspiring Possibilities Email Updates - National Parent Center on Transition and Employment" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/transition/images/npcteLogo-fb.png" />
<meta property="og:url" content="http://www.pacer.org/transition/news/optOut-inspiring-possibilities.asp" />
<meta property="og:description" content="Opt Out for Transition Updates from PACER's National Parent Center on Transition and Employment An e-newsletter that subscribers receive twice monthly. Each issue focuses on new or recent resources on timely topics of importance to youth and young adults with disabilities and their families. Featured resources provide strategies to help youth achieve their post-school goals with support from their families, advocates, educators, workforce development professionals, the community, and other natural supports." />

<meta name="robots" content="noindex,nofollow" />

<link rel="icon" href="http://www.pacer.org/transition/favicon.ico" />
<link href="/transition/css/style.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/transition/dynamic-head-items.html"-->


<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script type="text/javascript" src="/js/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>

<!--
<% ' ----------------------------------------------- FORM SECURITY ITEMS -------------------------------------------- %>
-->
<!--#include virtual="/formsecurity/sha256.asp"-->
<!--#include virtual="/formsecurity/validate.asp"-->
<link rel="stylesheet" type="text/css" href="/formsecurity/secure.css"/>
<script type="text/javascript" src="/formsecurity/AddSecurity.js"></script>
<!--
<% ' ----------------------------------------------- END FORM SECURITY ITEMS -------------------------------------------- %>
-->
<script>
//	$.validator.setDefaults({
//		submitHandler: function() {
//			alert("submitted!");
//		}
//	});

	$().ready(function() {
		var actionPage = "/tranxsition/nexws/optOxut-inspiring-possibxilities-procesxsing-ao3xf55.asxp";
		AddFormAction(actionPage.replace(/x/gi, ""));
		
		// validate signup form on keyup and submit
		$("#OptOutForm").validate({
			rules: {
				fname: "required",
				lname: "required",
				fEmail: {
					required: true,
					email: true
				},
				wks: {
					maxlength: 0
				}
			},
			messages: {
				wks: "You have filled out an invisible field that must be left blank. This is to Prevent Spam Bots."
			
			}
		});

	});
</script>
<style type="text/css">
form.secured h1 {
  color: #5E5E82;
}
form.secured .submitButton {
  background: #5E5E82 linear-gradient(to bottom, #5E5E82, #28274C) repeat scroll 0 0;
  border-radius: 5px;
  box-shadow: 1px 1px 2px #333;
  color: #ffffff;
  font-size: 15px;
  margin: 40px;
  padding: 10px 20px;
  text-decoration: none;
}
</style>

</head>

<body>

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>


<!--#include virtual="/transition/dynamic-header.html"-->
<!--#include virtual="/transition/topnav.html"-->
  <script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>
  <div class="breadcrumb"> <a href="/transition/">Home</a> /  <a href="/transition/news/optIn-inspiring-possibilities.asp">Newsletter Sign Up</a> /</div>


  <div class="content" id="maincontent">

   <h1>Remove me from the Inspiring Possibilities mailing list</h1>

    <p>
Thank you for visiting PACER Center. Please use the form below to Unsubcribe from  
receiving these special updates from PACER Center..</p>
<p>
Required fields are marked with an asterisk (<span style="color: red;">*</span>).</p>
    <noscript>
        <h2 style="color:red">JavaScript is required to submit this form</h2>
        <p>Please turn on JavaScript and reload this page.</p>
    </noscript>

<form id="OptOutForm" action="" method="post" class="secured">
	<h1>Opt Out  Form</h1>
    <input type="hidden" id="secureCode" name="secureCode" value="<%=SetCode(5)%>" />
    
    <fieldset>
    <legend>Email Information</legend>
    <div class="formRow">
        <label for="fname"><span class="requiredIndicator">*</span>First Name</label>
        <span class="inputWrapper"><input type="text" size="30" id="fname" name="fname" value="" placeholder="Enter First Name" tabindex="10" /></span>
    </div>
    <div class="formRow">
        <label for="lname"><span class="requiredIndicator">*</span>Last Name:</label>
        <span class="inputWrapper"><input type="text" size="30" id="lname" name="lname" value="" placeholder="Enter Last Name" tabindex="20" /></span>
    </div>
    <div class="formRow">
		<label for="fEmail"><span class="requiredIndicator">*</span>E-mail</label>
		<input type="text" size="40" id="fEmail" name="fEmail" value="" placeholder="Enter Your Email Address" tabindex="30" />
    </div>
            <!--
            <% ' -----------------------------------------------  SECURITY FIELDS -------------------------------------------- %>
            -->
            <div class="secret"></div>
            <div class="offScreen" id="emailField">
                <label for="wks">Email</label><input type="text" name="wks" id="wks" value="" />
            </div>
            <!--
            <% ' -----------------------------------------------  END SECURITY FIELDS ---------------------------------------- %>
			-->
	<div class="formRow">
		<input type="submit" class="submitButton" value="Submit" tabindex="40" />
	</div>
    </fieldset>
</form>
			

    
  <!-- end .content -->
  <br class="clearfloat" />
</div>
<!--#include virtual="/transition/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
