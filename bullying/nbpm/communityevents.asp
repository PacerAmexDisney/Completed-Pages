<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim rs__MMColParam
rs__MMColParam = Date
%>
<%
Dim rs
Dim rs_cmd
Dim rs_numRows

Set rs_cmd = Server.CreateObject ("ADODB.Command")
rs_cmd.ActiveConnection = MM_PACER_WEB_STRING
rs_cmd.CommandText = "SELECT event_name, event_date, event_time, event_state, event_city, event_locationaddress, event_description, event_website FROM bullyEvents WHERE event_date > ? AND event_approved = 'y' ORDER BY event_date, event_name" 
'rs_cmd.CommandText = "SELECT * FROM bullyEvents ORDER BY event_date, event_name" 

rs_cmd.Prepared = true
rs_cmd.Parameters.Append rs_cmd.CreateParameter("param1", 135, 1, -1, rs__MMColParam) ' adDBTimeStamp

Set rs = rs_cmd.Execute
rs_numRows = 0
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="robots" content="index, nofollow" />
<title>National Bullying Prevention Center - Bullying Prevention Month</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--><link href="/bullying/css/eventForm.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>

<% ' ----------------------------------------------- FORM SECURITY ITEMS -------------------------------------------- %>

<!--#include virtual="/formsecurity/sha256.asp"-->
<!--#include virtual="/formsecurity/validate.asp"-->
<script type="text/javascript" src="/formsecurity/AddSecurity.js"></script>

<% ' ----------------------------------------------- END FORM SECURITY ITEMS -------------------------------------------- %>


<script type="text/javascript">
	$().ready(function() {
		var actionPage = "evexntRegistraxtion.asp";
		AddFormAction(actionPage.replace(/x/gi, ""));
	});
</script>

<script src="/SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<script src="/SpryAssets/SpryValidationTextarea.js" type="text/javascript"></script>
<script src="/SpryAssets/SpryValidationSelect.js" type="text/javascript"></script>
<script src="/SpryAssets/SpryValidationPassword.js" type="text/javascript"></script>
<script src="/SpryAssets/SpryValidationConfirm.js" type="text/javascript"></script>

<link href="/SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<link href="/SpryAssets/SpryValidationTextarea.css" rel="stylesheet" type="text/css" />
<link href="/SpryAssets/SpryValidationSelect.css" rel="stylesheet" type="text/css" />
<link href="/SpryAssets/SpryValidationPassword.css" rel="stylesheet" type="text/css" />
<link href="/SpryAssets/SpryValidationConfirm.css" rel="stylesheet" type="text/css" />
<style type="text/css">
#eventContainer{
	height:1225px;
	overflow-y:auto;
}
form.secured .secret {
	display:none;
}
form.secured .offScreen {
	display:block;
	width:1px;
	height:1px;
	position:absolute;
	left:-9999999px;
} 

</style>
</head>

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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/nbpm/">National Bullying Prevention Month</a> /</div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/nbpm/nav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="communityevents";
	var showTree = "none";
	var currSubId="none";
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








  </div>
  <!-- ###################### END Navigation ############################## -->
  
  <div class="content"> 
    
<table class="splitlayout"><tr>
<td><h1 id="maincontent" style="font-size:1.7em">Put on a Community Event!</h1>
    <p>As part of PACER Center&rsquo;s <strong>National Bullying Prevention  Month</strong>, children, teens, adults, schools, and communities across the country  are encouraged to hold a special event to show they care about this important  issue. The event can include music, give-aways, special speakers, petition  signing, and more as people unite to join the movement against bullying. </p>
<p><strong>New Student Event Toolkit</strong><br />
  Need help planning a student-led bullying prevention event? PACER has partnered with Facebook to create a practical <a href="http://www.pacer.org/bullying/resources/toolkits/pdf/Pacer-Unite-Against-Bullying-School-Event-Planning-Guide.pdf" target="_blank">Student Event Toolkit</a> that will make it easier to hold events in your school or community.</p>
<p><a href="/bullying/pdf/Bullying-Community-Event.pdf" target="_blank">Draft Agenda <img src="/images/pdficon_small.gif" width="15" height="15" alt="pdf" /></a>- This  draft agenda can be modified to fit your needs. Design a &ldquo;show&rdquo; that  is supported by concurrent activities.</p>


<h2>Tell Us About Your Event</h2>
<p>Does your school, community organization or  nonprofit have a community event planned for National Bullying Prevention Month  in October? </p>
<p><strong>Complete the form below  to have your information posted on this page.</strong></p>
<p style="color:#666; font-size:.9em">Submissions will be reviewed, approved and posted within approximately five business days.</p>
<p class="updateinfobutton"><a href="eventRegistrationLogin.asp">Update Existing Event Information</a></p>
<p class="extramessage" style="position:relative"><span class="requiredindicator"><sup>*</sup></span> - required</p>
<noscript>
        <h2 style="color:red">JavaScript is required to submit this form</h2>
        <p>Please turn on JavaScript and reload this page.</p>
    </noscript>

<form id="eventregistration" action="" method="post" class="secured">
    <input type="hidden" id="secureCode" name="secureCode" value="<%=SetCode(40)%>" />

<h3>Event Information</h3>

  <p class="longinput"><span id="sprytextfield1">
  <label for="ename"><span class="requiredindicator"><sup>*</sup></span> Event Name:<br />
  </label>
  <input type="text" name="ename" id="ename" tabindex="10" />
  <span class="textfieldRequiredMsg">A value is required.</span></span></p>
  <p class="normalinput"><span id="sprytextfield2">
  <label for="edate"><span class="requiredindicator"><sup>*</sup></span>Event Date: <span class="extramessage" style="font-size:9px;">(mm/dd/yyyy)</span></label>
  <input type="text" name="edate" id="edate" tabindex="20" />
  <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">mm/dd/yyyy</span></span></p>
  <p class="normalinput"><span id="event-time-textfield">
    <label for="etime">Event Start Time: </label>
    <input type="text" name="etime" id="etime" tabindex="25" />
    </span><span class="textfieldRequiredMsg">A value is required.</span></p>
  <p class="longinput"><span id="sprytextarea1">
    <label for="edesc"><span class="requiredindicator"><sup>*</sup></span> Event Description</label><br />
    <textarea name="edesc" id="edesc" cols="45" rows="5" tabindex="30"></textarea>
    <span class="textareaRequiredMsg">A value is required.</span></span></p>
  <p class="longinput"><span id="event-website-textfield">
  <label for="eurl">Event Website: <span class="extramessage">(must include http://)</span><br />
  </label>
  <input type="text" name="eurl" id="eurl" tabindex="40" />
  <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg"> Invalid format </span></span></p>
  <p class="specialinput"><span id="spryselect1">
    <label for="estate"><span class="requiredindicator"><sup>*</sup></span> State: </label>
    <select name="estate" id="estate" tabindex="50">
      <option value="">Select State</option>
      <option value="NotInUSA">Not in the U.S.</option>
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
    </select>
    <span class="selectRequiredMsg">Please select an item.</span></span></p>
  <p class="longinput"><span id="sprytextfield4">
    <label for="ecity"><span class="requiredindicator"><sup>*</sup></span> City: <span class="extramessage">(include the Country if the location is not in the U.S.)</span><br />
    </label>
    <input type="text" name="ecity" id="ecity" tabindex="60" />
    <span class="textfieldRequiredMsg">A value is required.</span></span></p>
  <p class="longinput"><span id="sprytextfield5">
    <label for="eaddress"><span class="requiredindicator"><sup>*</sup></span> Address / Location:<br />
    </label>
    <input type="text" name="eaddress" id="eaddress" tabindex="70" />
    <span class="textfieldRequiredMsg">A value is required.</span></span></p>
  
  
  <h3>Contact Information</h3>
  
  <p class="normalinput"><span id="sprytextfield6">
    <label for="cname"><span class="requiredindicator"><sup>*</sup></span> Name: </label>
    <input type="text" name="cname" id="cname" tabindex="80" />
    <span class="textfieldRequiredMsg">A value is required.</span></span></p>
  <p class="normalinput"><span id="contactPhone">
    <label for="cphone">Phone: </label>
    <input type="text" name="cphone" id="cphone" tabindex="90" />
    <span class="textfieldRequiredMsg">A value is required.</span></span></p>
  <p class="normalinput"><span id="sprytextfield8">
  <label for="cemail"><span class="requiredindicator"><sup>*</sup></span> Email: </label>
  <input type="text" name="cemail" id="cemail" tabindex="100" />
  <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg"> Invalid format </span></span></p>
  <p class="normalinput"><span id="sprypassword1">
  <label for="cpassword"><span class="requiredindicator"><sup>*</sup></span> Password: </label>
  <input type="password" name="cpassword" id="cpassword" tabindex="110" />
  <span class="passwordRequiredMsg">A value is required.</span><span class="passwordMinCharsMsg"> The password must be at least 6 characters.</span></span></p>
  <p class="normalinput"><span id="spryconfirm1">
    <label for="cpasswordconfirm"><span class="requiredindicator"><sup>*</sup></span> Password Confirm: </label>
    <input type="password" name="cpasswordconfirm" id="cpasswordconfirm" tabindex="120" />
    <span class="confirmRequiredMsg">A value is required.</span><span class="confirmInvalidMsg"> The values don't match.</span></span></p>
  
            <% ' -----------------------------------------------  SECURITY FIELDS -------------------------------------------- %>
            <div class="secret"></div>
            <div class="offScreen" id="emailField">
                <label for="email">Email</label><input type="text" name="email" id="email" value="" tabindex="-1" />
            </div>
            <% ' -----------------------------------------------  END SECURITY FIELDS ---------------------------------------- %>
  
  
  <p class="submitinput"><input type="submit" name="submit" value="Submit Event Information" tabindex="130" /></p>
  
</form>



</td>


<td style="border-left:1px solid #ccc">
    <h2 class="centered">Information Flyer</h2>
    <div class="fltrt" style="text-align:center; width:160px;">
      <a href="/bullying/pdf/NBPC-flyer.pdf" target="_blank"><img src="/bullying/images/NBPC-Flyer-sml.jpg" width="150" height="194" alt="National Bullying Prevention Center Informational Flyer" class="fltrt" />
    <br />Download Flyer
      </a></div>
    <p style="font-size:.9em">Download  this free, colorful, and informative 8 ½ x 11 (2-sided) flyer that outlines the  creative resources, outreach activities, and opportunities available from  PACER&rsquo;s National Bullying Prevention Center. Print the flyer and use it for  your local event, activity, or fundraiser. Limited quantities of pre-printed  flyers are also available by emailing <a href="mailto:bullying411@pacer.org">bullying411@pacer.org</a> and providing your name, organization, address, information on the  event/activity/fundraiser where you&rsquo;ll be using them, and the quantity being  requested.</p>

<h2 class="centered">Upcoming Events</h2>
<div id="eventContainer">
  
    <%
	Dim rsState
	
	
	
	Do until rs.eof%>
    <p><strong><%=(rs.Fields.Item("event_name").Value)%></strong></p>
    <%If Len(rs.Fields.Item("event_website").Value) > 0 Then%>
	    <div style="width:150px; text-align:center; float:right"><p><a href="<%=(rs.Fields.Item("event_website").Value)%>" target="_blank">Event Website</a></p></div>
    <%End If%>
    <p><strong>Date:</strong> <%=(rs.Fields.Item("event_date").Value)%>
    <%If Len(rs.Fields.Item("event_time").Value) > 0 Then%>
    	<br /><strong>Time:</strong> <%=(rs.Fields.Item("event_time").Value)%>
    <%End If%>
    </p>
    <%
	  rsState = ", " & rs.Fields.Item("event_state").Value
	  If rs.Fields.Item("event_state").Value = "NotInUSA" Then rsState = ""
	%>
	<p><strong><%=(rs.Fields.Item("event_city").Value)%><%=rsState%></strong><br />
    <%=(rs.Fields.Item("event_locationaddress").Value)%></p>    
    
    <pre><%=(rs.Fields.Item("event_description").Value)%></pre>
    
    <hr />
    
    <%
	rs.MoveNext
	Loop
	%>
    
    
  </div> 
</td>
</tr></table>
<br class="clearfloat" />
  <!-- end .content --></div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
<script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1", "none", {validateOn:["blur", "change"]});
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2", "date", {validateOn:["blur", "change"], format:"mm/dd/yyyy"});
var sprytextarea1 = new Spry.Widget.ValidationTextarea("sprytextarea1", {validateOn:["blur", "change"]});
var sprytextfield3 = new Spry.Widget.ValidationTextField("event-website-textfield", "url", {validateOn:["blur", "change"], isRequired:false});
var spryselect1 = new Spry.Widget.ValidationSelect("spryselect1", {validateOn:["blur", "change"]});
var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4", "none", {validateOn:["blur", "change"]});
var sprytextfield5 = new Spry.Widget.ValidationTextField("sprytextfield5", "none", {validateOn:["blur", "change"]});
var sprytextfield6 = new Spry.Widget.ValidationTextField("sprytextfield6", "none", {validateOn:["blur", "change"]});
var sprytextfield7 = new Spry.Widget.ValidationTextField("contactPhone", "none", {validateOn:["blur", "change"], isRequired:false});
var sprytextfield8 = new Spry.Widget.ValidationTextField("sprytextfield8", "email", {validateOn:["blur", "change"]});
var sprypassword1 = new Spry.Widget.ValidationPassword("sprypassword1", {validateOn:["blur", "change"], minChars:6});
var spryconfirm1 = new Spry.Widget.ValidationConfirm("spryconfirm1", "cpassword", {validateOn:["blur", "change"]});
var sprytextfield9 = new Spry.Widget.ValidationTextField("event-time-textfield", "none", {isRequired:false, validateOn:["blur", "change"]});
</script>
</body>
</html>
<%
rs.Close()
Set rs = Nothing
%>
