<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Sign Up For PACER Center Emails</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/style.css" media="screen, projection" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script type="text/javascript" src="/js/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
<script type="text/javascript" src="/js/jquery-validation-1.14.0/dist/additional-methods.min.js"></script>
<% ' ----------------------------------------------- FORM SECURITY ITEMS -------------------------------------------- %>

<!--#include virtual="/formsecurity/sha256.asp"-->
<!--#include virtual="/formsecurity/validate.asp"-->
<link rel="stylesheet" type="text/css" href="/formsecurity/secure.css"/>
<script type="text/javascript" src="/formsecurity/AddSecurity.js"></script>

<% ' ----------------------------------------------- END FORM SECURITY ITEMS -------------------------------------------- %>




<script>
	$().ready(function() {
		var actionPage = "/newslxetters/ecenxews/subsxcribe-processxing-23jdek.asp";
		AddFormAction(actionPage.replace(/x/gi, ""));
		
//		$.validator.setDefaults({
//			submitHandler: function() {
//				alert("submitted!");
//			}
//		});


		// validate signup form on keyup and submit
		$("#OptInForm").validate({
			rules: {
				fname: {
					required: true,
					maxlength: 50
				},
				lname: {
					required: true,
					maxlength: 50
				},
				persontype: "required",
				fEmail: {
					required: true,
					email: true,
					maxlength:50
				},
				cell_phone: {
				  require_from_group: [1, ".phone-group"],
				  minlength: 10
				},
				home_phone: {
				  require_from_group: [1, ".phone-group"],
				  minlength: 10
				},
				work_phone: {
				  require_from_group: [1, ".phone-group"],
				  minlength: 10
				},
				addresstype: {
					required: "#pacesetter:checked",
				},
				organization: {
					maxlength:50
				},
				address1: {
					required: "#pacesetter:checked",
					maxlength: 50
				},
				address2: {
					maxlength: 50
				},
				city: {
					required: "#pacesetter:checked",
					maxlength: 50
				},
				state: {
					required: "#pacesetter:checked",
					maxlength: 50
				},
				zip: {
					required: "#pacesetter:checked",
					maxlength: 10,
					minlength: 5
				},
				wks: {
					maxlength: 0
				}
			},
			messages: {
				wks: "You have filled out an invisible field that must be left blank. This is to Prevent Spam Bots."


			} //close rules
		}); //close validate
	}); // close document ready
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

<div id="rightBar">

<p class="pacerinfo">
<strong>PACER Center<br />
952-838-9000</strong>
</p>
<p class="pacerinfo2">
Champions for Children with Disabilities</p>
<p class="pacerinfo3"><a href="http://www.pacer.org/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a>
</p>
</div>

<div id="maincontent">

	<div id="pagetoporange">
	  <div id="breadcrumb">
	    <a href="/">Home</a> /
	    
	    <h1>Sign Me Up For PACER's Early Childhood E-News</h1>
		
	</div>
</div>

<!--BEGIN CONTENT-->

<div id="pagecontent">
<p>
Thank you for visiting PACER Center. Please use the form below to sign up to 
receive PACER Center information updates.
Required fields are marked with an asterisk (<span style="color: red;">*</span>).</p>


    <noscript>
        <h2 style="color:red">JavaScript is required to submit this form</h2>
        <p>Please turn on JavaScript and reload this page.</p>
    </noscript>


<form id="OptInForm" action="" method="post" class="secured">

<h1>Email Sign Up Form</h1>
    <input type="hidden" id="secureCode" name="secureCode" value="<%=SetCode(5)%>" />


<fieldset>
	<legend>Personal Info</legend>
		
    <div class="formRow errorBelow">
        <label for="fname"><span class="requiredIndicator">*</span>First Name</label>
        <span class="inputWrapper"><input type="text" size="30" id="fname" name="fname" value="" placeholder="Enter First Name" tabindex="10" /></span>
        
        <label for="lname"><span class="requiredIndicator">*</span>Last Name:</label>
        <span class="inputWrapper"><input type="text" size="30" id="lname" name="lname" value="" placeholder="Enter Last Name" tabindex="20" /></span>
    </div>
	
    <div class="formRow errorBelow">
    	<span class="inputWrapper radioButtons">
            <span class="radioGroupLabel"><span class="requiredIndicator">*</span>Which best describes you?</span>
            <input type="radio" id="persontypeparent" value="Parent" name="persontype" tabindex=30"" />
            <label for="persontypeparent">Parent</label>
            <input type="radio" id="persontypeprofessional" value="Professional" name="persontype" tabindex="40" />
            <label for="persontypeprofessional">Professional</label>
            <input type="radio" id="persontypeother" value="Other" name="persontype" tabindex="50" />
            <label for="persontypeother">Other</label> <span class="fa fa-check-circle fa-2x"></span>
        </span>
    </div>
</fieldset>

<fieldset>
	<legend>Contact Info</legend>
    
    <div class="formRow">
		<label for="fEmail"><span class="requiredIndicator">*</span>E-mail</label>
		<input type="text" size="40" id="fEmail" name="fEmail" value="" placeholder="Enter Your Email Address" tabindex="60" />
    </div>
    
    
    <div class="formGroup">
    	<span class="groupReqMsg"><span class="requiredIndicator">*</span> - at least 1 number required</span>
    	<div class="formRow">
        	<label for="cell_phone">Cellphone </label>
			<input class="phone-group" id="cell_phone" name="cell_phone" placeholder="xxx-xxx-xxxx" tabindex="70" />
        </div>
    	<div class="formRow">
			<label for="home_phone">Home phone </label>
			<input class="phone-group" id="home_phone" name="home_phone" placeholder="xxx-xxx-xxxx" tabindex="80" />
        </div>
    	<div class="formRow">
			<label for="work_phone">Work phone </label>
			<input class="phone-group" id="work_phone" name="work_phone" placeholder="xxx-xxx-xxxx" tabindex="90" />
		</div>
   	</div>
</fieldset>

<fieldset>
	<legend>Mailing Info</legend>
    
    <div class="formRow errorBelow">
    	<span class="inputWrapper radioButtons">
        <span class="radioGroupLabel">Address Type</span>
        <input type="radio" id="addresstypehome" value="Home Address" name="addresstype" tabindex="100" />
        <label for="addresstypehome">Home Address</label>
		<input type="radio" id="addresstypework" value="Work Address" name="addresstype" tabindex="110" />
        <label for="addresstypework">Work Address</label> <span class="fa fa-check-circle fa-2x"></span>
        </span>
    </div>
    <div class="formRow">
		<label for="organization">Organization</label>
		<input type="text" size="60" id="organization" name="organization" value="" tabindex="120" />
    </div>
    <div class="formRow">
		<label for="address1">Address1</label>
		<input type="text" size="60" id="address1" name="address1" value="" tabindex="130" />
    </div>
    <div class="formRow">
		<label for="address2">Address2</label>
		<input type="text" size="60" id="address2" name="address2" value="" tabindex="140" />
    </div>
    <div class="formRow errorBelow">
		<label for="city">City</label>
		<span class="inputWrapper"><input type="text" size="24" id="city" name="city" value="" tabindex="150" /></span>
		<label for="state">State</label>
        <span class="inputWrapper">
        <select name="state" id="state" tabindex="160">
            <option value="" selected="selected">Select Your State</option>
            <option value="Non-US">Not in the U.S.</option>
			<option class="select-dash" disabled="disabled">----</option>
            <option value="AL">Alabama</option>
            <option value="AK">Alaska</option>
            <option value="AZ">Arizona</option>
            <option value="AR">Arkansas</option>
            <option value="CA">California</option>
            <option value="CO">Colorado</option>
            <option value="CT">Connecticut</option>
            <option value="DE">Delaware</option>
            <option value="DC">District of Columbia</option>
            <option value="FL">Florida</option>
            <option value="GA">Georgia</option>
            <option value="GU">Guam</option>
            <option value="HI">Hawaii</option>
            <option value="ID">Idaho</option>
            <option value="IL">Illinois</option>
            <option value="IN">Indiana</option>
            <option value="IA">Iowa</option>
            <option value="KS">Kansas</option>
            <option value="KY">Kentucky</option>
            <option value="LA">Louisiana</option>
            <option value="ME">Maine</option>
            <option value="MD">Maryland</option>
            <option value="MA">Massachusetts</option>
            <option value="MI">Michigan</option>
            <option value="MN">Minnesota</option>
            <option value="MS">Mississippi</option>
            <option value="MO">Missouri</option>
            <option value="MT">Montana</option>
            <option value="NE">Nebraska</option>
            <option value="NV">Nevada</option>
            <option value="NH">New Hampshire</option>
            <option value="NJ">New Jersey</option>
            <option value="NM">New Mexico</option>
            <option value="NY">New York</option>
            <option value="NC">North Carolina</option>
            <option value="ND">North Dakota</option>
            <option value="OH">Ohio</option>
            <option value="OK">Oklahoma</option>
            <option value="OR">Oregon</option>
            <option value="PA">Pennsylvania</option>
            <option value="RI">Rhode Island</option>
            <option value="SC">South Carolina</option>
            <option value="SD">South Dakota</option>
            <option value="TN">Tennessee</option>
            <option value="TX">Texas</option>
            <option value="UT">Utah</option>
            <option value="VT">Vermont</option>
            <option value="VA">Virginia</option>
            <option value="WA">Washington</option>
            <option value="WV">West Virginia</option>
            <option value="WI">Wisconsin</option>
            <option value="WY">Wyoming</option>
			<option class="select-dash" disabled="disabled">----</option>
            <option value="AS - American Samoa"><hr />American Samoa</option>
            <option value="FM - Federated States of Micronesia">Federated States of Micronesia</option>
            <option value="GU - Guam">Guam</option>
            <option value="MH - Marshall Islands">Marshall Islands</option>
            <option value="MP - Northern Mariana Islands">Northern Mariana Islands</option>
            <option value="PW - Palau">Palau</option>
            <option value="PR - Puerto Rico">Puerto Rico</option>
            <option value="UM - U.S. Minor Outlying Islands">U.S. Minor Outlying Islands</option>
            <option value="VI - Virgin Islands of the U.S.">Virgin Islands of the U.S.</option>
            <option value="AA - Armed Forces Americas">Armed Forces Americas</option>
            <option value="AE - Armed Forces Europe">Armed Forces Europe</option>
            <option value="AP - Armed Forces Pacific">Armed Forces Pacific</option>
        </select>
        </span>
		<label for="zip">Zip</label>
		<span class="inputWrapper"><input type="text" size="9" id="zip" name="zip" value="" tabindex="170" /></span>
	</div>
	<div class="formRow">
    	<input type="checkbox" name="pacesetter" id="pacesetter" value="*I would like to receive the PACESETTER by mail.*" tabindex="180" />
        <label for="pacesetter"><strong>Yes!</strong> I would like to receive the <em>PACESETTER</em> newsletter by mail. <em>PACESETTER</em> is published three times annually. PACER does not sell or share your personal information.</label>
	</div>
</fieldset>
            <% ' -----------------------------------------------  SECURITY FIELDS -------------------------------------------- %>
            <div class="secret"></div>
            <div class="offScreen" id="emailField">
                <label for="wks">Email</label><input type="text" name="wks" id="wks" value="" />
            </div>
            <% ' -----------------------------------------------  END SECURITY FIELDS ---------------------------------------- %>

	
	<div class="formRow centered">
		<input type="submit" class="submitButton" value="Submit" tabindex="190" />
        <input type="reset" class="resetButton" value="Clear Form" tabindex="200" />
    </div>
</form>
			
	<br class="clearfloat" />
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>