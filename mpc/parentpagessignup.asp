<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Minnesota Parent Center, MN PIRC: Sign Up for Minnesota Parent Center Parent Pages</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/leftnavigation.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

<script type="text/javascript" src="../css/menu.js"></script>
</head>
<body>
<div id="skiptocontent">
<a href="#maincontentlink">Skip to main content</a>
</div>

<div id="wrapper">

<div id="main">

<div id="header">
	<div>			<!--#include virtual="/googleSearchBox.htm"-->
            <!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="/mpc/"><img border="0" src="piweek/PIRClogowebheader.gif" width="473" height="104" alt="Minnesota Parent Center, MN PIRC, MN Parental Information and Resource Center, a project of PACER"></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="rightBar">

<p class="pacerinfo">
<strong>PACER Center<br />
952-838-9000</strong>
</p>
<p class="pacerinfo2">
Champions for Children with Disabilities
</p>
<p class="pacerinfo3">
<a href="http://www.pacer.org/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a>
</p>
<div class="stayinformed">
<h2>Stay Informed</h2>
Receive the latest PACER Center information on issues important to you. 
<a href="../forms/index.asp">Sign up now</a>.
</div>
</div>

<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / 
<a href="../legislation/index.asp">Minnesota Parent Center</a> / Minnesota 
Parent Center's Parent Pages 
	
	<h1 class="nounderline" style="margin-bottom: 0; padding-bottom: 0;"><a name="maincontent">Minnesota Parent Center, MN PIRC</a></h1>
	<p style="margin: 0; padding: 0; text-transform: uppercase; font-size: 150%; font-weight: bold;">A Project of PACER Center</p>
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">MPC Navigation Menu</h2>
<!--#include virtual="/mpc/leftNavBar.html" -->
</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="mpc_parentpages";
	var currSubId="none";
	// any Subtree that I want to Display
	var showTree = "none";
	
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
	if (document.getElementById(currSubId)){
		document.getElementById(currSubId).className = "page";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "treemenu") {
			//Any additional subTrees that you want to skip should be added here. like this (subTrees[i] != subTree1 || subTrees[i] != subTree2)
			if (subTrees[i].id != showTree) {
				subTrees[i].className = "treemenuhidden";
			}
		}
	}
</script>

<div id="maincontent">

<div id="pagecontent">

<h2 class="nounderline"><a name="maincontentlink">Minnesota Parent Center's 
Parent Pages</a></h2>

<!--BEGIN CONTENT-->

<p>
To add your name to our list, please fill in all fields before you submit.
</p>
<p style="color: red;">
<%
Dim myMail, subject, content, importance, bodyformat, number, mailformat, hidden, i, footer, strsubject, strfname, strlname, straddress, strcity, strstate, strzip, strhphone, strEmail, strpersontype, intEmailLength
hidden=Request.Form("hidden")
if hidden="hi" then

strname=Request.Form("fname")
strname=strname & " " & Request.Form("lname")
straddress=Request.Form("address1")
strcity=Request.form("city")
strstate=Request.form("state")
strzip=Request.form("zip")
strphone=Request.form("phone")
strEmail=Request.form("email")
strpersontype=Request.form("persontype")


	if strname <> "" AND inStr(strname, "@") < 1 AND straddress <> "" AND strcity <> "" AND strstate <> "" AND strzip <> "" AND strphone <> "" AND strEmail <> "" AND inStr(strEmail, "@") <> 0 AND inStr(strEmail, ".") <> 0 AND strpersontype <> "" then 

	number="1"
	content = "<p style='font-family: arial, sans-serif; background-color: #ffd; padding: .5em; border: solid 1px black;'>Please update this person's PCIS information to be adeed to the Parent Pages list</span><br /><br />"
	content = content & "Name: " & strname & "<br /><br />"
	content = content & "Organization: " & request.form("Organization") & "<br /><br />"
	content = content & "Address: " & request.form("address1") & "<br /><br />"
	content = content & "Address2: " & request.form("address2") & "<br /><br />"
	content = content & "City: " & strcity & "<br /><br />"
	content = content & "State: " & strstate & "<br /><br />"
	content = content & "Zip: " & strzip & "<br /><br />"
	content = content & "Phone: " & strphone & "<br /><br />"
	content = content & "E-mail Address: " & strEmail & "<br /><br />"
	content = content & "I am a: " & strpersontype & "<br /><br />"
	content = content & "Other type (if applicable): " & request.form("othertype") & "<br /><br />"
	content = content & "<span style='font-weight: bold;'>" & request.form("pacesetter") & "</span></p>"

	footer = "<p>* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *</p>" & "<p>This form came from <a href='http://www.pacer.org/mpc/list/index.asp'>http://www.pacer.org/mpc/parentpagessignup.asp</a>.</p>"

	for i=1 to number
		Set myMail = CreateObject("CDO.Message")
		
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
		myMail.Configuration.Fields.Update
		myMail.From = "MinnestoaParentPagesEmailListForm@pacer.org"
		myMail.To = "mnpirc@pacer.org"
'		myMail.To = "jordan.bohm@pacer.org"
		myMail.Subject = "Minnesota Parent Center Parent Pages Subscription"
		myMail.HTMLBody = content & footer
		myMail.Send
		Set myMail = Nothing
	next

		hidden=""
		Response.Redirect "../../forms/thankyou.asp?topic=mpcparentpages"
	
	else
	
	Response.Write "<strong>To submit your email, please complete all fields or contact us at 952.838.9000.</strong><br />"
	
	end if
end if

%>

</p>

<form action="parentpagessignup.asp" method="post">
<input type="hidden" name="hidden" value="hi" />
<input type="hidden" name="Redirect" value="thankyou.asp" />
<table width="55%" style="font-size: 95%;">
	<tr>
		<td colspan="2">
		I am a:<br />
		<input type="radio" id="parent" value="Parent" name="persontype" /><label for="parent">Parent</label><br />
		<input type="radio" id="professional" value="Professional" name="persontype" /><label for="professional">Professional</label><label for="organization">, Organization:</label>&nbsp;<input type="text" size="20" id="organization" name="organization" /><br />
		<input type="radio" id="other" value="Other" name="persontype" /><label for="other">Other</label><label for="other">:</label>&nbsp;<input type="text" name="othertype" id="othertype" size="30" />
		</td>
	</tr>
	<tr>
		<td width="20%">
		<label for="fname">First&nbsp;Name:</label>
		</td>
		<td>
		<input type="text" size="40" id="fname" name="fname" />
		</td>
	</tr>
	<tr>
		<td>
		<label for="lname">Last&nbsp;Name:</label>
		</td>
		<td>
		<input type="text" size="40" id="lname" name="lname" />
		</td>
	</tr>
	<tr>
		<td><label for="email">E-mail:</label></td>
		<td>
		<input type="text" size="40" id="email" name="email" />
		</td>
	</tr>
	<tr>
		<td>
		<label for="phone">Phone:</label>
		</td>
		<td>
		<input type="text" size="20" id="phone" name="phone" />
		</td>
	</tr>
	<tr>
		<td>
		<label for="address1">Address1:</label>
		</td>
		<td>
		<input type="text" size="40" id="address1" name="address1" />
		</td>
	</tr>
	<tr>
		<td>
		<label for="address2">Address2:</label>
		</td>
		<td>
		<input type="text" size="40" id="address2" name="address2" />
		</td>
	</tr>
	<tr>
		<td>
		<label for="city">City:</label>
		</td>
		<td>
		<input type="text" size="40" id="city" name="city" />
		</td>
	</tr>
	<tr>
		<td>
		<label for="state">State:</label>
		</td>
		<td>
		<select name="state" id="state">
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
				<option selected="selected" value="MN">Minnesota</option>
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
		</td>
	</tr>
	<tr>
		<td>
		<label for="zip">Zip:</label>
		</td>
		<td style="margin-bottom: 1em;">
		<input type="text" size="5" id="zip" name="zip" />
		</td>
	</tr>
	<tr>
		<td colspan="2">
		<input type="submit" value="Submit" />&nbsp;&nbsp;&nbsp; <input type="reset" value="Clear Form" />
		</td>
	</tr>
</table>
</form>

<p><br /><br />
<a href="parentpagesdel.asp">Remove</a> your e-mail from the mailing list.
</p>

</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>