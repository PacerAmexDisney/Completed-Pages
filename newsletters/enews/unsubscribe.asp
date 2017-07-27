<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Opt Out of Eblast Mailings - PACER Center</title>
<meta name="robots" content="noindex,nofollow" />

<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/stylenoleftright.css" media="screen, projection" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script type="text/javascript" src="/js/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>


<% ' ----------------------------------------------- FORM SECURITY ITEMS -------------------------------------------- %>

<!--#include virtual="/formsecurity/sha256.asp"-->
<!--#include virtual="/formsecurity/validate.asp"-->
<link rel="stylesheet" type="text/css" href="/formsecurity/secure.css"/>
<script type="text/javascript" src="/formsecurity/AddSecurity.js"></script>

<% ' ----------------------------------------------- END FORM SECURITY ITEMS -------------------------------------------- %>

<script>
//	$.validator.setDefaults({
//		submitHandler: function() {
//			alert("submitted!");
//		}
//	});

	$().ready(function() {
		var actionPage = "/newslxxetters/enexws/unsuxxbscribe-processxing-djex45.asp";
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
</head>

<body>
<div id="skiptocontent">
<a href="#maincontent">Skip to main content</a>
</div>

<div id="wrapper">

<div id="main">

<div id="header">
	<div>			<!--#include virtual="/googleSearchBox.htm"-->
            <!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>
<div id="maincontent">
	
	<div id="pagetoporange">
	
	<div id="breadcrumb">
		<a href="/">Home</a> / E-news Opt Out
		
		<h1 class="nounderline">Remove me from the PACER E-News Mailing list</h1>
		
	</div>
</div>

<!--BEGIN CONTENT-->

<div id="pagecontent">
<p>
Thank you for visiting PACER Center. Please use the form below to Unsubcribe from  
receiving E-news from PACER Center..</p>
<p>
Required fields are marked with an asterisk (<span style="color: red;">*</span>).</p>
    <noscript>
        <h2 style="color:red">JavaScript is required to submit this form</h2>
        <p>Please turn on JavaScript and reload this page.</p>
    </noscript>

<form id="OptOutForm" action="" method="post" class="secured">
	<h1>Opt Out from PACER E-News</h1>
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
                    <% ' -----------------------------------------------  SECURITY FIELDS -------------------------------------------- %>
            <div class="secret"></div>
            <div class="offScreen" id="emailField">
                <label for="wks">Email</label><input type="text" name="wks" id="wks" value="" />
            </div>
            <% ' -----------------------------------------------  END SECURITY FIELDS ---------------------------------------- %>

	<div class="formRow">
		<input type="submit" class="submitButton" value="Submit" tabindex="40" />
	</div>
    </fieldset>
</form>
			
			
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>