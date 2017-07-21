<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>International Guest Book</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavigation.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

<script type="text/javascript" src="../css/menu.js"></script>
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
<a href="../"><img src="../images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
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
<p class="rightsidebarpic">
<img border="0" src="images/malaysianfamily.jpg" width="250" height="353" alt="Two women standing with a young boy smiling" />
</p>
</div>

<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / 
<a href="index.asp">International Activities</a> / International Guest Book
	
	<h1>International Activities</h1>
	
</div>
</div>

    <div id="leftbar">
      <h2 style="display: none;">International Navigation Menu</h2>
      <!--#include virtual="/international/leftNavBar.html" --> 
    </div>
    <!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show --> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="int_index";
	var showTree = "int_sub";
	var currSubId="none";
	// any Subtree that I want to Display
	
	
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

<h2 class="nounderline"><a name="maincontent">PACER Center International Guest Book</a></h2>
<p style="margin-top: .5em;">
Thank you for visiting www.PACER.org<br /><br />
We are pleased that you have found our information. We would like to learn more about you and your country 
and we would be happy to provide additional information.
</p>
<form method="post" action="intlguestbook.asp">
<input type="hidden" name="hidden" value="hi" />

<%
Dim myMail, hidden, content, footer, name, email
hidden=Request.Form("hidden")

if hidden="hi" then

	name=request.form("fname")
	name=name & " " & request.form("lname")
	address=request.form("address1")
	postalcode=request.form("postalcode")
	postalcodelength=len(postalcode)
	homephone=request.form("hphone")
	homephonelength=len(homephone)
	workphone=request.form("wphone")
	workphonelength=len(workhpone)
	cellphone=request.form("cphone")
	cellphonelength=len(cellphone)
	email=request.form("email")

	if name <> "" AND inStr(name, "@") < 1 AND email <> "" AND inStr(email, "@") <> 0 AND inStr(email, ".") <> 0 AND inStr(address, "@") < 1 AND inStr(postalcode, "@") < 1 AND postalcodelength < 20 AND inStr(homephone, "@") < 1 AND inStr(homephone, "http") < 1 AND homephonelength < 15 AND inStr(workphone, "@") < 1 AND inStr(workphone, "http") < 1 AND workphonelength < 15 AND inStr(cellphone, "@") < 1 AND inStr(cellphone, "http") < 1 AND cellphonelength < 15 then

		content = "<strong>Name:</strong> " & request.form("fname") & " " & request.form("lname") & "<br /><br /><strong>Email:</strong> " & request.form("email") & "<br /><br />"
		content = content & "<strong>Address 1:</strong> " & request.form("address1") & "<br /><strong>Address 2:</strong> " & request.form("address2") & "<br />"
		content = content & "<strong>City:</strong> " & request.form("city") & "<br /><strong>State/Province:</strong> " & request.form("state") & "<br />" 
		content = content & "<strong>Country:</strong> " & request.form("country") & "<br /><strong>Postal Code:</strong> " & request.form("postalcode") & "<br /><br />"
		content = content & "<strong>Home Phone:</strong> " & request.form("hphone") & "<br /><strong>Work Phone:</strong> " & request.form("wphone") & "<br />"
		content = content & "<strong>Cell Phone:</strong> " & request.form("cphone") & "<br /><br /><strong>Web site:</strong> " & request.form("website") & "<br /><br />" 
		content = content & "<strong>I am a:</strong><br />" & request.form("familymem") & "<br />"
		content = content & "<strong>Professional with:</strong> " & request.form("government") & request.form("ngo") & request.form("private") & request.form("school") & request.form("university") & request.form("media") & request.form("disspecorg") & request.form("health") & "<br />"
		content = content & "<br />" & "<strong>" & request.form("disability") & "<br />" & request.form("advocate") & "</strong><br />"
		content = content & "<br /><strong>I found PACER Center through:</strong><br /> " & request.form("internet") & request.form("link") & request.form("publication") & request.form("referral") & request.form("conference") & "<br /><br />"
		content = content & "<strong>I am looking for:</strong><br /> " & request.form("lookingfor") & "<br /><br />" & request.form("enews") & "</strong><br /><br />"
		content = content & "<strong>Can we assist you in some way?</strong><br />" & request.form("assist") & "<br /><br /><strong>In my country we have:</strong><br />"
		content = content & request.form("parentngos") & request.form("disorgs") & request.form("legislation") & request.form("educationleg") & "<br /><br />"
		content = content & "<strong>" & request.form("contactme")  
	
		footer = "<br /><br />* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *<br /><br />This form came from <a href='http://www.pacer.org/international/intlguestbook.asp'>http://www.pacer.org/international/intlguestbook.asp</a>."
	
		Set myMail = CreateObject("CDO.Message")
		
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
		myMail.Configuration.Fields.Update
		myMail.From = "pacer@pacer.org"
		myMail.To = "smcdonald@pacer.org"
	'	myMail.To = "stephanie.rosso@pacer.org"
		myMail.Subject = "PACER International Guest Book"
		myMail.HTMLBody = content
	'	myMail.TEXTBody = content & footer
		myMail.Send
		Set myMail = Nothing
	
		Response.Redirect "../forms/thankyou.asp"
		
	else
			
		Response.Write "<span style='color: red;'><strong>*To submit your email, please click the back button on your browser, complete all fields or check the content of the fields to ensure they are correct and valid. If you continue to have trouble, please contact us at 952.838.9000.*</strong></span><br /><br />"
	
	end if
end if
%>

	<table class="intlguestbook" cellspacing="0">
		<tr>
			<td colspan="2">
			<label for="fname">First Name: </label><input type="text" name="fname" size="25" maxlength="25" id="fname" />
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<label for="lname">Last Name: </label><input type="text" name="lname" size="25" maxlength="25" id="lname" />
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<label for="email">Email: </label><input type="text" name="email" size="35" maxlength="35" id="email" />
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<label for="address1">Address 1: </label><input type="text" name="address1" size="35" maxlength="40" id="address1" />
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<label for="address2">Address 2: </label><input type="text" name="address2" size="35" maxlength="40" id="address2" />
			</td>
		</tr>
		<tr>
			<td>
			<label for="city">City: </label><input type="text" name="city" size="20" maxlength="25" id="city" />
			</td>
			<td>
			<label for="state">State/Province: </label><input type="text" name="state" size="25" maxlength="35" id="state" />
			</td>
		</tr>
		<tr>
			<td>
			<label for="country">Country: </label><input type="text" name="country" size="20" maxlength="25" id="country" />
			</td>
			<td>
			<label for="postalcode">Postal Code: </label><input type="text" name="postalcode" size="20" maxlength="25" id="postalcode" />
			</td>
		</tr>
		<tr>
			<td>
			<label for="hphone">Phone (home): </label><input type="text" name="hphone" size="20" maxlength="20" id="hphone" />
			</td>
			<td>
			<label for="wphone">Phone (work): </label><input type="text" name="wphone" size="20" maxlength="20" id="wphone" />
			</td>
		</tr>
		<tr>
			<td>
			<label for="cphone">Phone (cell): </label><input type="text" name="cphone" size="20" maxlength="20" id="cphone" />
			</td>
			<td>
			<label for="website">Web site: </label><input type="text" name="website" size="30" maxlength="50" id="website" />
			</td>
		</tr>
		<tr class="gray">
			<td colspan="2">
			<strong>I am a:</strong>
			</td>
		</tr>
		<tr class="gray">
			<td colspan="2">
			<input type="checkbox" id="familymem" name="familymem" value="Parent or Family Member of a child with a disability" /><label for="familymem">Parent or family member of a child with a disability</label>
			</td>
		</tr>
		<tr class="gray">
			<td>
			Professional with
			</td>
			<td>
			<input type="checkbox" id="government" name="government" value="Government, " /><label for="government">Government</label><br />
			<input type="checkbox" id="ngo" name="ngo" value="NGO, " /><label for="ngo">non-governmental 
			organization (NGO)</label><br />
			<input type="checkbox" id="private" name="private" value="Private Industry, " /><label for="private">Private Industry</label><br />
			<input type="checkbox" id="school" name="school" value="School, " /><label for="school">School</label><br />
			<input type="checkbox" id="university" name="university" value="University, " /><label for="university">University</label><br />
			<input type="checkbox" id="media" name="media" value="Media, " /><label for="media">Media</label><br />
			<input type="checkbox" id="disspecorg" name="disspecorg" value="Disability Specific Organiztion, " /><label for="disspecorg">Disability Specific Organization</label><br />
			<input type="checkbox" id="health" name="health" value="Health" /><label for="health">Health</label>
			</td>
		</tr>
		<tr class="gray">
			<td colspan="2">
			<input type="checkbox" name="disability" id="disability" value="Person with a disability" /><label for="disability">Person with a disability</label>
			</td>
		</tr>
		<tr class="gray">
			<td colspan="2">
			<input type="checkbox" id="advocate" name="advocate" value="Advocate" /><label for="advocate">Advocate</label>
			</td>
		</tr>
		<tr>
			<td>
			I found PACER Center through
			</td>
			<td>
			<input type="checkbox" id="internet" name="internet" value="Internet searching, " /><label for="internet">Internet searching</label><br />
			<input type="checkbox" id="link" name="link" value="Link from another web site, " /><label for="link">Link from another web site</label><br />
			<input type="checkbox" id="publication" name="publication" value="Publication, " /><label for="publication">Publication</label><br />
			<input type="checkbox" id="referral" name="referral" value="Referral, " /><label for="referral">Referral</label><br />
			<input type="checkbox" id="conference" name="conference" value="Conference" /><label for="conference">Conference</label>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<label for="lookingfor">I was looking for:</label><br />
			<textarea name="lookingfor" id="lookingfor" rows="5" cols="40"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="checkbox" id="enews" name="enews" value="I would like to receive PACER's E-Newsletter" /><label for="enews">I would like to receive PACER's E-Newsletter</label>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<label for="assist">Can we assist you in some way?</label><br />
			<textarea name="assist" id="assist" rows="5" cols="40"></textarea>
			</td>
		</tr>
		<tr class="gray">
			<td colspan="2">
			In your country do you have &ndash;<br />
			<input type="checkbox" id="parentngos" name="parentngos" value="Parent NGO's, " /><label for="parentngos">Parent 
			non-governmental organizations</label><br />
			<input type="checkbox" id="disorgs" name="disorgs" value="National Disability Organizations, " /><label for="disorgs">National Disability Organizations</label><br />
			<input type="checkbox" id="legislation" name="legislation" value="Disability Rights Legislation, " /><label for="legislation">Disability Rights Legislation</label><br />
			<input type="checkbox" id="educationleg" name="educationleg" value="Disability/Education Legislation" /><label for="educationleg">Disability/Education Legislation</label><br />
			</td>			
		</tr>
		<tr class="gray">
			<td colspan="2" style="padding-top: 1em;">
			<input type="checkbox" id="contactme" name="contactme" value="I would like to share specific resources but wish to be contacted later" /><label for="contactme">I would like to share specific resources but wish to be contacted later</label><br />
			</td>			
		</tr>
		<tr>
			<td colspan="2" style="padding-top: 1em;">
			<input type="submit" value="Submit" name="B1" />&nbsp;<input type="reset" value="Reset" name="B2" />
			</td>
		</tr>
	</table>
</form>

</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>