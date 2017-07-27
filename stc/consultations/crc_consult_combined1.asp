<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Simon Technology Center Consultation Form</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../../css/style.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../../css/print.css" media="print" />

<script type="text/javascript" src="../../css/menu.js"></script>

<%
Dim myMail, content, i, footer, FormKey, strErr, strErrMsg
strErr = 0
if request.form("engage") = "Submit" then
	For Each FormKey in Request.Form
		session(FormKey) = request.form(FormKey)
	Next
	if len(session("IndName")) = 0 then
		strErr=strErr + 1
		strErrMsg = strErrMsg & "<p style='font-size: 110%; font-weight: bold; color: red'>Name is Required</p>" & VbCrLf
	end if
	
	if len(session("Disability")) = 0 then
		strErr = strErr + 1
		strErrMsg = strErrMsg & "<p style='font-size: 110%; font-weight: bold; color: red'>Disability is Required</p>" & VbCrLf
	end if

	if len(session("Address")) = 0  then
		strErr=strErr + 1
		strErrMsg = strErrMsg & "<p style='font-size: 110%; font-weight: bold; color: red'>Address is Required</p>" & VbCrLf
	end if
	
	if len(session("City")) = 0 then
		strErr=strErr + 1
		strErrMsg = strErrMsg & "<p style='font-size: 110%; font-weight: bold; color: red'>City, State and Zip are Required</p>" & VbCrLf
	end if
	

	if strErr = 0 then
		content = "Consultation Information" & vbCrLf
		content = content & "Individual's Name: " & request.form("IndName") & vbCrLf
		content = content & "Parent/Guardian name(s): " & request.form("ParentName") & vbCrLf
		content = content & "Email: " & request.form("Email") & vbCrLf
		content = content & "Disability: " & request.form("Disability") & vbCrLf
		content = content & "Age: " & request.form("Age") & vbCrLf
		content = content & "Grade in School: " & request.form("Grade") & vbCrLf
		content = content & "Primary Language: " & request.form("PriLanguage") & vbCrLf
		content = content & "Gender: " & request.form("Gender") & vbCrLf
		content = content & "Past Consultation: " & request.form("PastConsult") & vbCrLf
		content = content & "Address: " & request.form("Address") & vbCrLf
		content = content & "City, State and Zip: " & request.form("City") & vbCrLf
		content = content & "Home Phone: " & request.form("HomePhone") & vbCrLf
		content = content & "Cell Phone: " & request.form("CellPhone") & vbCrLf
		content = content & "Relationship: " & request.form("Relationship") & vbCrLf
		content = content & "Best means to contact: " & request.form("ContactMethod") & vbCrLf & vbCrLf
		content = content & "List of Professionals Working With Child" & vbCrLf
		content = content & "Professional A" & vbCrLf
		content = content & "Name: " & request.form("AProfessionalName") & vbCrLf
		content = content & "Title: " & request.form("AProfessionalTitle") & vbCrLf
		content = content & "Address: " & request.form("AProfessionalAddress") & vbCrLf
		content = content & "City, State and Zip: " & request.form("AProfessionalCity") & vbCrLf
		content = content & "Home Phone: " & request.form("AProfessionalHomePhone") & vbCrLf
		content = content & "Work Phone: " & request.form("AProfessionalWorkPhone") & vbCrLf
		content = content & "Email: " & request.form("AProfessionalEmail") & vbCrLf & vbCrLf
		content = content & "Professional B" & vbCrLf
		content = content & "Name: " & request.form("BProfessionalName") & vbCrLf
		content = content & "Title: " & request.form("BProfessionalTitle") & vbCrLf
		content = content & "Address: " & request.form("BProfessionalAddress") & vbCrLf
		content = content & "City, State and Zip: " & request.form("BProfessionalCity") & vbCrLf
		content = content & "Home Phone: " & request.form("BProfessionalHomePhone") & vbCrLf
		content = content & "Work Phone: " & request.form("BProfessionalWorkPhone") & vbCrLf
		content = content & "Email: " & request.form("BProfessionalEmail") & vbCrLf & vbCrLf
		content = content & "Photo Release Permission" & vbCrLf
		content = content & "Allow photo use? " & request.form("PhotoPermission") & vbCrLf
		content = content & "Name: " & request.form("Signature")
		content = content & " Date: " & request.form("SignatureDate") & vbCrLf & vbCrLf
		content = content & "Consultation Information" & vbCrLf
		content = content & "What would you like to accomplish during the consultation with the Simon Technology Center?" & vbCrLf & request.form("Accomplish") & vbCrLf & vbCrLf
		content = content & "Please check all areas that you would like to explore during the consultation:" & vbCrLf & request.form("ExploreAreas") & vbCrLf & vbCrLf
		content = content & "Comments: " & vbCrLf & request.form("ConsultComments") & vbCrLf & vbCrLf
		content = content & "Technology" & vbCrLf
		content = content & "Are any of the following assistive technologies currently being used at home, school or work:"& vbCrLf & request.form("TechAreas") & vbCrLf & vbCrLf
		content = content & "Other: " & request.form("TechAreaOther") & vbCrLf & vbCrLf
		content = content & "If you own a computer, what kind of operating system does it have? " & request.form("ComputerOS") & vbCrLf
		content = content & "Windows OS Version:" & request.form("WindowsOS") & vbCrLf
		content = content & "Mac OS Version:" & request.form("MacOS") & vbCrLf
		content = content & "Is the computer currently used at: " & request.form("ComputerUse") & vbCrLf & vbCrLf
		content = content & "Comments: " & vbCrLf & request.form("ComputerComments") & vbCrLf & vbCrLf
		content = content & "Background Information" & vbCrLf
		content = content & "Reading Writing Math skills: " & vbCrLf & request.form("RWMSkills") & vbCrLf & vbCrLf
		content = content & "Gross motor skills: " & vbCrLf & request.form("GrossMotorSkills") & vbCrLf & vbCrLf
		content = content & "Fine motor skills: " & vbCrLf & request.form("FineMotorSkills") & vbCrLf & vbCrLf
		content = content & "Vision impairment: " & request.form("VisionImpairment") & vbCrLf
		content = content & "Vision impairment description: "& vbCrLf & request.form("VisionImpairmentDescribe") & vbCrLf & vbCrLf
		content = content & "Wear glasses: " & request.form("Glasses") & vbCrLf
		content = content & "Hearing impairment: " & request.form("HearingImpairment") & vbCrLf
		content = content & "Hearing impairment description: " & vbCrLf & request.form("HearingImpairmentDescribe") & vbCrLf & vbCrLf
		content = content & "Hearing aids: " & request.form("HearingAids") & vbCrLf & vbCrLf
		content = content & "Skills presently learning:" & vbCrLf & request.form("SkillsLearning") & vbCrLf & vbCrLf
		content = content & "Interests, dislikes, motivators:" & vbCrLf & request.form("Motivators") & vbCrLf & vbCrLf
		content = content & "Allergies: " & vbCrLf & request.form("Allergies") & vbCrLf & vbCrLf
		content = content & "Sensory tools: "& vbCrLf & request.form("SensoryTools") & vbCrLf & vbCrLf
		content = content & "Other information: " & vbCrLf & request.form("RelevantInformation") & vbCrLf & vbCrLf

		footer = "This form came from http://www.pacer.org/stc/crc_consult_combined1.asp."

		Set myMail = CreateObject("CDO.Message")
		
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
		myMail.Configuration.Fields.Update
		myMail.From = "STCConsultationForm@pacer.org"
		myMail.To = "jamie.smith@pacer.org"
		myMail.To = "stc@pacer.org"
		myMail.Subject = "STC Consultation Form"
'		myMail.HTMLBody = content & footer
		myMail.TEXTBody = content & footer
		myMail.Send
		Set myMail = Nothing

		session("content") = content

'	Response.Redirect "../forms/thankyou.asp?topic=STCconsult"
		response.redirect "crc_consult_Print1.asp"
	
	end if
end if

function sel(itemValue,sessionVar)
	sel = ""
	if InStr (session(sessionVar), itemValue) > 0 then 
		sel = " checked"
	end if
end function

%>

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
Champions for Children with Disabilities
</p>
<p class="pacerinfo3">
<a href="http://www.pacer.org/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a>
</p>
<div class="stayinformed">
<h2>Stay Informed</h2>
Receive the latest PACER Center information on issues important to you. 
<a href="../../forms/index.asp">Sign up now</a>.
</div>
</div>

<div id="maincontent">

	<div id="pagetoporange">
	<div class="printemail">
<p>
<a href="https://www.facebook.com/simontechnologycenter" target="_blank">Join the STC Facebook Page</a> | 
<img src="../../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>
		
		</p>
	</div>
	<div id="breadcrumb">
	<a href="../../index.asp">Home</a> / <a href="../../pandr/index.asp">Programs &amp; Resources</a> / <a href="../index.asp">Simon Technology Center</a> /  Consultation Form
	
	<h1>Simon Technology Center</h1>
	
</div>
</div>

<div id="pagecontent">

<h2 class="nounderline"><a name="maincontent">Consultation Application</a></h2>


<!--BEGIN CONTENT-->

		<form action="crc_consult_combined1.asp" method="post">
		<%=strErrMsg%>
		<p style="font-weight: bold; font-style: italic">
		A $50 refundable deposit  is required with your application to schedule an appointment.
		</p>
		<p>
		Items marked with an asterisk (*) are required.
		</p>
			<table width="649" cellpadding="5" bgcolor="#D7D7D7">
            <tbody>
            <tr>
            <td><strong>Individual information</strong>
            </td>
            </tr>
            <tr>
            <td width="164">
            <p>* <label for="IndName">Name:</label></p>
            </td>
            <td width="457"><p><input id="IndName" type="text" name="IndName" size="30" value="<%=session("IndName")%>" /></p>
            </td>
            </tr>
            <tr>
            <td><p><label for="ParentName">Parent/Guardian name(s) <br /><strong>(if applicable)</strong>:</label></p>
            </td>
            <td><p><input id="ParentName" type="text" name="ParentName" size="30" value="<%=session("ParentName")%>" /></p>
            </td>
            </tr>
            <tr>
            <td><p><label for="Relationship">Relationship to individual <br /><strong>(if applicable)</strong>:</label></p>
            </td>
            <td><p><input id="Relationship" type="text" name="Relationship" size="30" value="<%=session("Relationship")%>" /></p>
            </td>
            </tr>
            <tr>
            <td><p>
			* <label for="Disability">Disability:</label></p>
            </td>
            <td><p><input id="Disability" type="text" name="Disability" size="30" value="<%=session("Disability")%>" /></p>
            </td>
            </tr>
            <tr>
            <td><p>
			* <label for="Address">Address:</label></p>
            </td>
            <td><p><input id="Address" type="text" name="Address" size="45" value="<%=session("Address")%>" /></p>
            </td>
            </tr>
            <tr>
            <td><p>* <label for="City">City, State and Zip:</label></p>
            </td>
            <td><p><input id="City" type="text" name="City" size="50" value="<%=session("City")%>" /></p>
            </td>
            </tr>
            <tr>
            <td><p>
              <label for="HomePhone">Phone (Home/Cell):</label>
            </p>
            </td>
            <td><p><input id="HomePhone" type="text" name="HomePhone" size="20" value="<%=session("HomePhone")%>" /> Home
			&nbsp;&nbsp;
			<input id="CellPhone" type="text" name="CellPhone" size="20" value="<%=session("CellPhone")%>" /> Cell</p>
            </td>
            </tr>
            <tr>
            <td><p><label for="email">E-Mail:</label></p>
            </td>
            <td><p><input id="email" type="text" name="email" size="30" value="<%=session("email")%>" /></p>
            </td>
            </tr>
            <tr>
            <td><p><label for="Age">Date of Birth:</label></p>
            </td>
            <td><p><input id="Age" type="text" name="Age" size="15" value="<%=session("Age")%>" /></p>
            </td>
            </tr>
            <tr>
            <td><p><label for="Grade">Grade <strong>(if applicable)</strong>:</label></p>
            </td>
            <td><p><input id="Grade" type="text" name="Grade" size="6" value="<%=session("Grade")%>" /></p>
            </td>
            </tr>
            <tr>
            <td><p>Gender:</p>
            </td>
            <td><p><input type="radio" name="Gender" value="Male" id="genderMale"<%=sel("Male","Gender")%> /> <label for="genderMale">Male</label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" name="Gender" value="Female" id="genderFemale"<%=sel("Female","Gender")%> /> <label for="genderFemale">Female</label></p>
            </td>
            </tr>
            <tr>
            <td><p><label for="PriLanguage">Primary Language:</label></p>
            </td>
            <td><p><input id="PriLanguage" type="text" name="PriLanguage" size="45" value="<%=session("PriLanguage")%>" /></p>
            </td>
            </tr>
            <tr>
            <td><p>Have you attended a<br/> consultation in the past?</p>
            </td>
            <td><p><input type="radio" name="PastConsult" value="Yes" id="consultYes"<%=sel("Yes","PastConsult")%> /> <label for="consultYes">Yes</label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" name="PastConsult" value="No" id="consultNo"<%=sel("No","PastConsult")%> /> <label for="consultNo">No</label></p>
            </td>
            </tr>
            <tr>
            <td><p><label for="ContactMethod">Best means to contact<br/>(phone, email):</label></p>
            </td>
            <td><p><input id="ContactMethod" type="text" name="ContactMethod" size="40" value="<%=session("ContactMethod")%>" /></p>
            </td>
            </tr>
            </tbody>
            </table>
		<p>Please list persons who will also attend the consultation (teacher, PCA, therapist or family members).</p>
		<table width="649" cellpadding="5" bgcolor="#D7D7D7">
        <tbody>
        <tr>
        <td><strong>First Person</strong>
        </td>
        </tr>
        <tr>
        <td width="174"><p><label for="AProfessionalName">Name:</label></p>
        </td>
        <td width="463"><p><input id="AProfessionalName" type="text" name="AProfessionalName" size="30" value="<%=session("AProfessionalName")%>" /></p>
        </td>
        </tr>
        <tr>
        <td><p><label for="AProfessionalTitle">Relationship:</label></p>
        </td>
        <td><p><input id="AProfessionalTitle" type="text" name="AProfessionalTitle" size="20" value="<%=session("AProfessionalTitle")%>" /></p>
        </td>
        </tr>
        <tr>
        <td><p><label for="AProfessionalAddress">Address:</label></p>
        </td>
        <td><p><input id="AProfessionalAddress" type="text" name="AProfessionalAddress" size="45" value="<%=session("AProfessionalAddress")%>" /></p>
        </td>
        </tr>
        <tr>
        <td><p><label for="AProfessionalCity">City, State and Zip:</label></p>
        </td>
        <td><p><input id="AProfessionalCity" type="text" name="AProfessionalCity" size="45" value="<%=session("AProfessionalCity")%>" /></p>
        </td>
        </tr>
        <tr>
        <td><p>
          <label for="AProfessionalHomePhone">Phone (Home/Work): </label></p>
        </td>
        <td><p><input id="AProfessionalHomePhone" type="text" name="AProfessionalHomePhone" size="20" value="<%=session("AProfessionalHomePhone")%>" /> Home
			&nbsp;&nbsp;
			<input id="AProfessionalWorkPhone" type="text" name="AProfessionalWorkPhone" size="20" value="<%=session("AProfessionalWorkPhone")%>" /> Work</p>
        </td>
        </tr>
        <tr>
        <td><p><label for="AProfessionalEmail">E-Mail:</label></p>
        </td>
        <td><p><input id="AProfessionalEmail" type="text" name="AProfessionalEmail" size="20" value="<%=session("AProfessionalEmail")%>" /></p>
        </td>
        </tr>
        <tr>
        <td><strong>Second person</strong>
        </td>
        </tr>
        <tr>
        <td width="174"><p><label for="BProfessionalName">Name:</label></p>
        </td>
        <td width="463"><p><input id="BProfessionalName" type="text" name="BProfessionalName" size="30" value="<%=session("BProfessionalName")%>" /></p>
        </td>
        </tr>
        <tr>
        <td><p><label for="BProfessionalTitle">Relationship:</label></p>
        </td>
        <td><p><input id="BProfessionalTitle" type="text" name="BProfessionalTitle" size="20" value="<%=session("BProfessionalTitle")%>" /></p>
        </td>
        </tr>
        <tr>
        <td><p><label for="BProfessionalAddress">Address:</label></p>
        </td>
        <td><p><input id="BProfessionalAddress" type="text" name="BProfessionalAddress" size="45" value="<%=session("BProfessionalAddress")%>" /></p>
        </td>
        </tr>
        <tr>
        <td><p><label for="BProfessionalCity">City, State and Zip:</label></p>
        </td>
        <td><p><input id="BProfessionalCity" type="text" name="BProfessionalCity" size="45" value="<%=session("BProfessionalCity")%>" /></p>
        </td>
        </tr>
        <tr>
        <td><p>
          <label for="BProfessionalHomePhone">Phone (Home/Work): </label></p>
        </td>
        <td><p><input id="BProfessionalHomePhone" type="text" name="BProfessionalHomePhone" size="20" value="<%=session("BProfessionalHomePhone")%>" /> Home
			&nbsp;&nbsp;
			<input id="BProfessionalWorkPhone" type="text" name="BProfessionalWorkPhone" size="20" value="<%=session("BProfessionalWorkPhone")%>" /> Work</p>
        </td>
        </tr>
        <tr>
        <td height="56"><p><label for="BProfessionalEmail">E-Mail:</label></p>
        </td>
        <td><p><input id="BProfessionalEmail" type="text" name="BProfessionalEmail" size="20" value="<%=session("BProfessionalEmail")%>" /></p>
        </td>
        </tr>
        </tbody>
        </table>
        <br />


			<div style="border: double 3px black; padding: 1em; width: 625px;">
				<h3>Photo Release Permission (Optional)</h3>
				<p>
				I will allow PACER Center to use any picture or videotape taken that might include me.  Pictures are used for general publicity purposes; newsletters, brochures, photos to accompany articles sent to other publications, videotape, or computer presentation.
				</p>
				<p>
				<input type="radio" name="PhotoPermission" value="Yes" id="photoYes"<%=sel("Yes","PhotoPermission")%> /> <label for="photoYes">Yes</label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" name="PhotoPermission" value="No" id="photoNo"<%=sel("No","PhotoPermission")%> /> <label for="photoNo">No</label>
				</p>
				<p>
				<label for="sigName">Name:</label> <input id="sigName" type="text" name="Signature" size="25" value="<%=session("Signature")%>" />
				&nbsp;&nbsp;
				<label for="sigDate">Date:</label> <input id="sigDate" type="text" name="SignatureDate" size="10" value="<%=session("SignatureDate")%>" />
				</p>
			</div>
			<p style="font-weight: bold; font-style: italic">
			So we can provide useful information, please completely answer all of the questions that follow.
			</p>
		<h3>Purpose of Consultation</h3>
		<p>
		<label for="Accomplish">What would you like to accomplish during the consultation with the Simon Technology Center?</label>
		<br />
		<textarea name="Accomplish" rows="2" cols="60" id="Accomplish"><%=session("Accomplish")%></textarea>
		</p>
        <p>
        Please check all areas that you would like to explore during the consultation:</p>
        		<table>
                <tbody>
                <tr>
                <td><input type="checkbox" name="ExploreAreas" value="Reading" id="exploreareasReading"<%=sel("Reading","ExploreAreas")%> /> <label for="exploreareasReading">Reading</label>
                </td>
                <td><input type="checkbox" name="ExploreAreas" value="Science" id="exploreareasScience"<%=sel("Science","ExploreAreas")%> /> <label for="exploreareasScience">Science</label>
                </td>
                <td><input type="checkbox" name="ExploreAreas" value="Recreation" id="exploreareasRecreation"<%=sel("Recreation","ExploreAreas")%> /> <label for="exploreareasRecreation">Recreation</label>
                </td>
                <td><input type="checkbox" name="ExploreAreas" value="Communication" id="exploreareasCommunication"<%=sel("Communication","ExploreAreas")%> /> <label for="exploreareasCommunication">Communication</label>
                </td>
                </tr>
                <tr>
                <td><input type="checkbox" name="ExploreAreas" value="Math" id="exploreareasMath"<%=sel("Math","ExploreAreas")%> /> <label for="exploreareasMath">Math</label>
                </td>
                <td><input type="checkbox" name="ExploreAreas" value="Toys" id="exploreareasToys"<%=sel("Toys","ExploreAreas")%> /> <label for="exploreareasToys">Toys</label>
                </td>
                <td><input type="checkbox" name="ExploreAreas" value="Computer Access" id="exploreareasComputerAccess"<%=sel("Computer Access","ExploreAreas")%> /> <label for="exploreareasComputerAccess">Computer Access</label>
                </td>
                <td><input type="checkbox" name="ExploreAreas" value="Cause and Effect" id="exploreareasCauseandEffect"<%=sel("Cause and Effect","ExploreAreas")%> /> <label for="exploreareasCauseandEffect">Cause and Effect</label>
                </td>
                </tr>
                <tr>
                <td><input type="checkbox" name="ExploreAreas" value="Writing" id="exploreareasWriting"<%=sel("Writing","ExploreAreas")%> /> <label for="exploreareasWriting">Writing</label>
                </td>
                <td><input type="checkbox" name="ExploreAreas" value="Keyboarding" id="exploreareasKeyboarding"<%=sel("Keyboarding","ExploreAreas")%> /> <label for="exploreareasKeyboarding">Keyboarding</label>
                </td>
                <td><input type="checkbox" name="ExploreAreas" value="Environmental Controls" id="exploreareasEnvironmentalControls"<%=sel("Environmental Controls","ExploreAreas")%> /> <label for="exploreareasRecreation">Environmental Controls</label>
                </td>
                <td><input type="checkbox" name="ExploreAreas" value="Living Skills" id="exploreareasLivingSkills"<%=sel("Living Skills","ExploreAreas")%> /> <label for="exploreareasLivingSkills">Living Skills</label>
                </td>
                </tr>
                </tbody>
                </table>
                
                
        <p>
		<label for="ConsultComments">Comments:</label>
		<br />
		<textarea name="ConsultComments" rows="2" cols="60" id="ConsultComments"><%=session("ConsultComments")%></textarea>
        </p>
        <hr align="left" width="610"/>
		<h3>Technology</h3>
        <p>
        Are any of the following assistive technologies currently being used at home, school or work?
		<br />
        <table>
        <tbody>
        <tr>
        <td><input type="checkbox" name="TechAreas" value="Alternative Mouse" id="techareasAlternativeMouse"<%=sel("Alternative Mouse","TechAreas")%> /> <label for="techareasAlternativeMouse">Alternative Mouse</label>
		</td>
		<td><input type="checkbox" name="TechAreas" value="Vision Aids" id="techareasVisionAids"<%=sel("Vision Aids","TechAreas")%> /> <label for="techareasVisionAids">Vision Aids</label>
        </td>
        <td><input type="checkbox" name="TechAreas" value="Environmental Controls" id="techareasEnvironmentalControls"<%=sel("Environmental Controls","TechAreas")%> /> <label for="techareasEnvironmentalControls">Environmental Controls</label>
        </td>
        <td><input type="checkbox" name="TechAreas" value="Switches" id="techareasSwitches"<%=sel("Switches","TechAreas")%> /> <label for="techareasSwitches">Switches</label>
        </td>
        </tr>
        <tr>
        <td><input type="checkbox" name="TechAreas" value="Alternative Keyboard" id="techareasAlternativeKeyboard"<%=sel("Alternative Keyboard","TechAreas")%> /> <label for="techareasAlternativeKeyboard">Alternative Keyboard</label>
        </td>
        <td><input type="checkbox" name="TechAreas" value="Writing Aids" id="techareasWritingAids"<%=sel("Writing Aids","TechAreas")%> /> <label for="techareasWritingAids">Writing Aids</label>
        </td>
        <td><input type="checkbox" name="TechAreas" value="Voice Recognition" id="techareasVoiceRecognition"<%=sel("Voice Recognition","TechAreas")%> /> <label for="techareasVoiceRecognition">Voice Recognition</label>
        </td>
        <td><input type="checkbox" name="TechAreas" value="Adapted Toys" id="techareasAdaptedToys"<%=sel("Adapted Toys","TechAreas")%> /> <label for="techareasAdaptedToys">Adapted Toys</label>
        </td>
        </tr>
        <tr>
        <td><input type="checkbox" name="TechAreas" value="Reading Aids" id="techareasReadingAids"<%=sel("Reading Aids","TechAreas")%> /> <label for="techareasReadingAids">Reading Aids</label>
        </td>
        <td><input type="checkbox" name="TechAreas" value="Communication Device" id="techareasCommunicationDevice"<%=sel("Communication Device","TechAreas")%> /> <label for="techareasCommunicationDevice">Communication Device</label>
        </td>
        </tr>
        </tbody>
        </table>
        <p>
		<label for="TechAreaOther">Other:</label>
		<br />
		<textarea name="TechAreaOther" rows="2" cols="60" id="TechAreaOther"><%=session("TechAreaOther")%></textarea>
        </p>
        <p>
        If you own a computer, what kind of operating system does it have?</p>
		<p><input type="checkbox" name="ComputerOS" value="Windows" id="versionWindows" <%=sel("Windows","ComputerOS")%> /> <label for="computerosWindows">Windows</label> | Windows OS Version: <input id="WindowsOS" type="text" name="WindowsOS" size="15" value="<%=session("WindowsOS")%>" /></p>
				<p><input type="checkbox" name="ComputerOS" value="Mac" id="versionMac"<%=sel("Mac","ComputerOS")%> /> <label for="computerosMac">Mac</label> | Mac OS version: <input id="MacOS" type="text" name="MacOS" size="15" value="<%=session("MacOS")%>" />
        </p>
        <p>
        Is the computer currently used at:
        		<input type="checkbox" name="ComputerUse" value="Home" id="computeruseHome"<%=sel("Home","ComputerUse")%> /> <label for="computeruseHome">Home</label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="checkbox" name="ComputerUse" value="School" id="computeruseSchool"<%=sel("School","ComputerUse")%> /> <label for="computeruseSchool">School</label>
                &nbsp;&nbsp;&nbsp;&nbsp;
        		<input type="checkbox" name="ComputerUse" value="Work" id="computeruseWork"<%=sel("Work","ComputerUse")%> /> <label for="computeruseWork">Work</label>
        </p>
		<p>
		<label for="ComputerComments">Comments:</label>
		<br />
		<textarea name="ComputerComments" rows="2" cols="60" id="ComputerComments"><%=session("ComputerComments")%></textarea>
        </p>
        <hr align="left" width="610"/>
		<h3>Background Information</h3>
		<p>
		<label for="RWMSkills">Describe the individual&rsquo;s current skills in reading, writing and mathematics.</label>
		<br />
		<textarea name="RWMSkills" rows="2" cols="60" id="RWMSkills"><%=session("RWMSkills")%></textarea>
		</p>
		<p>
		<label for="GrossMotorSkills">Please describe gross motor skills (large muscles for sitting, standing).</label>
		<br />
		<textarea name="GrossMotorSkills" rows="2" cols="60" id="GrossMotorSkills"><%=session("GrossMotorSkills")%></textarea>
		</p>
		<p>
		<label for="FineMotorSkills">Please describe fine motor skills (small muscles for eating, writing).</label>
		<br />
		<textarea name="FineMotorSkills" rows="2" cols="60" id="FineMotorSkills"><%=session("FineMotorSkills")%></textarea>
		</p>
		<p>
			Does the individual have a vision impairment?
				<input type="radio" name="VisionImpairment" value="Yes" id="visionYes"<%=sel("Yes","VisionImpairment")%> /> <label for="visionYes">Yes</label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" name="VisionImpairment" value="No" id="visionNo"<%=sel("No","VisionImpairment")%> /> <label for="visionNo">No</label><br /> <label for="VisionImpairmentDescribe">Please describe:</label>
		<br />
		<textarea name="VisionImpairmentDescribe" rows="2" cols="60" id="VisionImpairmentDescribe"><%=session("VisionImpairmentDescribe")%></textarea>
		  </p>
		<p>
			Does the individual wear glasses?
				<input type="radio" name="Glasses" value="Yes" id="glassesYes"<%=sel("Yes","Glasses")%> /> <label for="glassesYes">Yes</label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" name="Glasses" value="No" id="glassesNo"<%=sel("No","Glasses")%> /> <label for="glassesNo">No</label>
		  </p>
          <p>
			Does the individual have a hearing impairment?
			<input type="radio" name="HearingImpairment" value="Yes" id="hearingYes"<%=sel("Yes","HearingImpairment")%> /> <label for="hearingYes">Yes</label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" name="HearingImpairment" value="No" id="hearingNo"<%=sel("No","HearingImpairment")%> /> <label for="hearingNo">No</label><br /> <label for="HearingImpairmentDescribe">Please describe:</label>
		<br />
		<textarea name="HearingImpairmentDescribe" rows="2" cols="60" id="HearingImpairmentDescribe"><%=session("HearingImpairmentDescribe")%></textarea>
		  </p>
                <p>
			Does the individual wear hearing aids?
				<input type="radio" name="HearingAids" value="Yes" id="hearingaidsYes"<%=sel("Yes","HearingAids")%> /> <label for="hearingaidsYes">Yes</label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" name="HearingAids" value="No" id="hearingaidsNo"<%=sel("No","HearingAids")%> /> <label for="hearingaidsNo">No</label>
				</p>
                <p>
		<label for="SkillsLearning">Describe skills the individual is currently learning.</label>
		<br />
		<textarea name="SkillsLearning" rows="2" cols="60" id="SkillsLearning"><%=session("SkillsLearning")%></textarea>
		</p>
		<p>
		<label for="Motivators">Describe  strengths, learning styles, interests, motivators, and dislikes <br />that may help us in planning for the appointment.</label>
		<br />
		<textarea name="Motivators" rows="2" cols="60" id="Motivators"><%=session("Motivators")%></textarea>
		</p>
		<p>
		<label for="Allergies">Should we be aware of any environmental allergies (latex, cleaning products, etc.)<br /> 
		that may be encountered during the appointment?</label>
		<br />
		<textarea name="Allergies" rows="2" cols="60" id="Allergies"><%=session("Allergies")%></textarea>
		</p>
		<p>
		<label for="SensoryTools">Would low-lighting or sensory tools (beanbag chair, sensory balls, breaks, etc.)<br /> be beneficial during the consultation?</label>
		<br />
		<textarea name="SensoryTools" rows="2" cols="60" id="SensoryTools"><%=session("SensoryTools")%></textarea>
		</p>
		<p>
		<label for="RelevantInformation">Please share any additional information that might be relevant as we plan for the consultation.</label>
		<br />
		<textarea name="RelevantInformation" rows="4" cols="60" id="RelevantInformation"><%=session("RelevantInformation")%></textarea>
		</p>
		<div>
			<button type="submit" name="engage" value="Submit" style="width:15em; padding:10px; font-size:1.3em; margin-right:45px;">Submit Request</button>
			<input type="reset" name="reset" value="Reset" style="font-size:1.2em; padding:10px;" />
		</div>
		</form>
		<p>
		You will have the option to print this form after you click submit.
		</p>
		<div style="font-weight: bold; font-style: italic; text-align: center">
			<p>
			Thank you for taking the time to fill out this consultation form.
			<br />
			It will help in making the most of your consultation at PACER.
			</p>
		</div>
		
		</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>