<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>2008 Family Leadership Summit: Register</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../../css/stylenoleftright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../../css/print.css" media="print" />

<script type="text/javascript" src="../../css/menu.js"></script>
<style type="text/css">
table.speakers td {
	padding: .5em;
	vertical-align: top;
	font-size: 100%;
}
table.speakers td h3, table.speakers td h5, table.speakers td ol, table.speakers td ul, table.speakers td p {
	margin-top: 0;
	margin-bottom: 0;
}
table.speakers td h4 {
	padding-top: .3em;
	padding-bottom: .3em;
	border-top: solid 1px #0099cc;
	border-bottom: solid 1px #0099cc;
	margin-top: .5em;
	margin-bottom: .5em;
}
.req {
	color: red;
}
</style>

</head>

<body>
<div id="skiptocontent">
<a href="#maincontent">Skip to main content</a>
</div>

<div id="wrapper">

<div id="main">

<div id="header">
	<div>
		<!-- Google CSE Search Box Begins  -->
				<form class="nav" action="http://www.pacer.org/searchresults.asp" id="cse-search-box"><a href="speakers.asp">Contact PACER</a> | <a href="../../help/donate.asp">Donate</a> | <label for="q">Search</label>
			    	<input type="hidden" name="cx" value="008159103446416441332:ztnv2wmj0ug" />
  					<input type="hidden" name="cof" value="FORID:11" />
 					<input type="text" name="q" id="q" size="25" />
 					<input type="submit" name="sa" value="Search" />
				</form>
				<script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=cse-search-box&lang=en"></script>
				<!-- Google CSE Search Box Ends -->
		<a href="../../index.asp">
		<img src="../../images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="maincontent">

<div id="pagetoporange">

	<div class="printemail">
		<p>
		<img src="../../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>
		
		</p>
	</div>
	<div id="breadcrumb">
		<a href="../../index.asp">Home</a> / <a href="../../pandr/index.asp">Programs &amp; Resources</a> / <a href="../index.asp">Family-to-Family Health Information Center</a> / 2008 Family Leadership Summit Registration
	
	<h1 class="nounderline"><a name="maincontent">2008 Family Leadership Summit Registration</a></h1>
	
</div>
</div>


<!--BEGIN CONTENT-->

	<div id="pagecontent">
	
	<p>
		You are registering for <strong>Family Leadership Summit 2008 - 4/12/2008</strong><br /><br />
		</p>
		<p style="font-size: .85em; font-weight: bold">
		Please fill in the form in its entirety to ensure your registration.
		</p>
		
		
		<%
		
Dim myMail, subject, content, number, hidden, i, footer, address, phone, email, committees, leader, dietneeds, otheraccom
hidden=Request.Form("hidden")
if hidden="hi" then

address = request.form("address1")
phone = request.form("HomePhone")
email = request.form("EmailAddress")
committees = request.form("committees")
committeelength = Len(committees)
leader = request.form("howleader")
leaderlength = Len(leader)
dietneeds = request.form("dietneeds")
dietlength = Len(dietneeds)
otheraccom = request.form("otheraccom")
otherlength = Len(otheraccom)

if inStr(address, "@") < 1 AND inStr(address, "http") < 1 AND inStr(phone, "@") < 1 AND inStr(phone, "http") < 1 AND email <> "" AND inStr(email, "@") <> 0 AND inStr(email, ".") <> 0 AND inStr(email, "http") < 1 AND committeelength < 401 AND leaderlength < 501 AND dietlength < 201 AND otherlength < 501 then

	subject = "Family Leadership Summit - Workshop Registration"
	number="1"
	content = content & vbCrLf & "Name: " & request.form("Name") & vbCrLf & vbCrLf & "Organization: " & request.form("Organization") & vbCrLf & vbCrLf
	content = content & "Address: " & address & vbCrLf & vbCrLf & "Address2: " & request.form("address2") & vbCrLf & vbCrLf
	content = content & "City: " & request.form("city") & vbCrLf & vbCrLf & "State: " & request.form("state") & vbCrLf & vbCrLf
	content = content & "Zip: " & request.form("zip") & vbCrLf & vbCrLf & "Home Phone: " & phone & vbCrLf & vbCrLf
	content = content & "Work Phone: " & request.form("WorkPhone") & vbCrLf & vbCrLf & "Fax: " & request.form("Fax") & vbCrLf & vbCrLf
	content = content & "E-mail Address: " & email & vbCrLf & vbCrLf
	content = content & "Miles to travel: " & request.form("MilesTraveling") & vbCrLf & vbCrLf
	content = content & "Please register me for the following workshop:" & vbCrLf
	content = content & "Family Leadership Summit" & vbCrLf & vbCrLf
	content = content & "I am currently serving on an IEIC: " & request.form("committeesyesno") & vbCrLf & vbCrLf
	content = content & "Need hotel room: " & request.form("hotel") & vbCrLf & vbCrLf
	content = content & "Other accommodations? " & otheraccom & vbCrLf & vbCrLf	
	footer=vbCrLf & vbCrLf & vbCrLf & "* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *" & vbCrLf & vbCrLf & "This form came from http://www.pacer.org/health/summit/register.asp."
	for i=1 to number
		Set myMail = CreateObject("CDO.Message")
		
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
		myMail.Configuration.Fields.Update
		myMail.From = "PacerWorkshops@pacer.org"
		myMail.To = "jswett@pacer.org"
'		myMail.To = "stephanie.rosso@pacer.org"
		myMail.Subject = subject 
'		myMail.HTMLBody = content
		myMail.TEXTBody = content & footer
		myMail.Send
		Set myMail = Nothing
	next
	hidden=""
	Response.Redirect "../../forms/thankyou.asp?topic=workshop"
	
	else
		Response.Write("<p style='color: red; font-size: 110%;'><strong>Please click the back button on your browser and check the form for errors or missing information. If you continue to encounter issues, please call 952-838-9000 to register.</strong></p>")
	end if
	
	end if
%>
	
	<form action="register.asp" method="post">
			<input type="hidden" name="hidden" value="hi" />
			<input type="hidden" name="Redirect" value="http://www.pacer.org/forms/thankyou.asp" />
			<p>
			Name: <input type="text" name="Name" size="20" /><br /><br />
			Organization: <input type="text" name="Organization" size="20" /><br /><br />
			Address: <input type="text" name="address1" size="40" /><br /><br />
			Address 2: <input type="text" name="address2" size="40" /><br /><br />
			City: <input type="text" name="city" size="20" /><br /><br />
			State: <input type="text" name="state" size="5" maxlength="2" /><br /><br />
			Zip: <input type="text" name="zip" size="5" maxlength="10" /><br /><br />
			Phone (w): <input type="text" name="WorkPhone" size="20" /><br /><br />
			Phone (h): <input type="text" name="HomePhone" size="20" /><br /><br />
			Fax: <input type="text" name="Fax" size="20" /><br /><br />
			E-mail Address: <input type="text" name="EmailAddress" size="20" /><br /><br />
			Do you currently sit on an IEIC? <select name="committeeyesno"> <option selected="selected">No</option> <option> Yes</option></select><br />
			Do you need a hotel room for Friday, April 24? If yes, PACER will contact you.<input type="radio" id="hotelyes" name="hotel" value="yes" /><label for="hotelyes">Yes</label><input type="radio" id="hotel" name="hotel" value="no" /><label for="hotel">No</label><br /><strong>Rooms must be requested by 
			noon, April 10.</strong><br /><br />
			How many miles will you be traveling? <input type="text" name="MilesTraveling" size="10" /><br /><br />
			Persons with Special dietary needs are asked to contact Judy Swett.  952-838-9000 or <a href="mailto:jswett@pacer.org">jswett@pacer.org</a><br /><br />
			Other accommodations? <input type="text" name="otheraccom" size="100" /><br /><br />
			<input type="submit" value="Register" />
			</p>
		</form>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>