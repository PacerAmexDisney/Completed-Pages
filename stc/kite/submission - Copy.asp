<%  
  Function IsBot()
  	Dim result
	result = false
	If IsDate(Request.Form("servcheck")) Then 
		If DateAdd("n", 1, Request.Form("servcheck")) < Now() Then
			result = true
		End If
	End If
	BotCheck = result
  End Function
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Project KITE Application: Teacher/Service Provider</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavigation.css" />

<%
Dim myMail, content, personName
If request.Form("submit")="Submit Form" And Not IsBot Then
	content = content & "Kite " & request.Form("currentSession") & " Session Application" & vbCrLf & vbCrLf
	if request.form("personType")="Parent" then
		content = content & "I am a Parent - Submitting a request to participate in Project KITE." & vbCrLf & vbCrLf
		personName = request.Form("pName")
		content = content & "Name: " & request.form("pName") & vbCrLf & vbCrLf
		content = content & "Date: " & Now & vbCrLf & vbCrLf
		content = content & "Address: " & request.form("pAddress") & vbCrLf & vbCrLf
		content = content & "City: " & request.form("pCity") & " "
		content = content & "State: " & request.form("pState") & " "
		content = content & "Zip: " & request.form("pZip") & vbCrLf & vbCrLf
		content = content & "Phone Home: " & request.Form("pPhone") & "(h)" & vbCrLf & vbCrLf
		content = content & "Phone Work/Cell: " & request.Form("pPhone2") & vbCrLf & vbCrLf
		content = content & "Email: " & request.Form("pEmail") & vbCrLf & vbCrLf
		content = content & "Ethnicity: " & request.Form("pEthnic") & " - " & request.Form("pEthnicOther") & vbCrLf & vbCrLf
		content = content & "----------------------------------------------------------------------------------------------------" & vbCrLf & vbCrLf
		content = content & "Childs name: " & request.form("pChildName") & vbCrLf & vbCrLf
		content = content & "Date of birth: " & request.form("pChildsBirthdate") & vbCrLf & vbCrLf
		content = content & "Childs Ethnicity: " & request.Form("pChildsEthnic") & " - " & request.Form("pChildEthnicOther") & vbCrLf & vbCrLf
		content = content & "Childs School: " & request.Form("pChildSchool") & vbCrLf & vbCrLf
		content = content & "Childs Teacher: " & request.form("pChildTeacher") & vbCrLf & vbCrLf
		content = content & "Grade/Year in School: " & request.form("pSchoolGrade") & vbCrLf & vbCrLf
	else
		content = content & "I am a " & request.Form("personType") & " - Submitting a request to participate in Project KITE." & vbCrLf & vbCrLf
		personName = request.Form("tName")
		content = content & "Name: " & request.form("tName") & vbCrLf & vbCrLf
		content = content & "Job Title: " & request.form("tJobTitle") & vbCrLf & vbCrLf
		content = content & "Date: " & Now & vbCrLf & vbCrLf
		content = content & "School: " & request.form("tSchool") & vbCrLf & vbCrLf
		content = content & "Address: " & request.form("tAddress") & vbCrLf & vbCrLf
		content = content & "City: " & request.form("tCity") & " "
		content = content & "State: " & request.form("tState") & " "
		content = content & "Zip: " & request.form("tZip") & vbCrLf & vbCrLf
		content = content & "Phone Home: " & request.Form("tPhone") & "(h)" & vbCrLf & vbCrLf
		content = content & "Phone Work/Cell: " & request.Form("tPhone2") & vbCrLf & vbCrLf
		content = content & "Email: " & request.Form("tEmail") & vbCrLf & vbCrLf
		content = content & "Ethnicity: " & request.Form("tEthnic") & " - " & request.Form("tEthnicOther") & vbCrLf & vbCrLf
		content = content & "----------------------------------------------------------------------------------------------------" & vbCrLf & vbCrLf
		content = content & "Students name: " & request.form("tStudentName") & vbCrLf & vbCrLf
	end if
	content = content & "Please describe your child's disability:" & vbCrLf
	content = content & request.form("childDisability") & vbCrLf & vbCrLf
	content = content & "Please describe your child's strengths:" & vbCrLf
	content = content & request.form("childStrength") & vbCrLf & vbCrLf
	content = content & "Your computer skills. (1-10): " & request.Form("computerSkill") & vbCrLf & vbCrLf
	content = content & "Do you own a computer? - " & request.form("ownComputer") & vbCrLf & vbCrLf
	content = content & "What type of computer? - " & request.form("computerType") & vbCrLf & vbCrLf
	content = content & "Does the child use a computer at school? - " & request.form("childComputerUse") & vbCrLf & vbCrLf
	content = content & "Do you currently us AT with the child? - " & request.form("childATUse") & vbCrLf & vbCrLf
	content = content & "What AT Does the Child Currently Use:" & vbCrLf
	content = content & request.form("whatAT") & vbCrLf & vbCrLf
	content = content & "What AT would you like to learn more about:" & vbCrLf
	content = content & request.form("otherAT") & vbCrLf & vbCrLf
	content = content & "Why do you wish to Participate in KITE:" & vbCrLf
	content = content & request.form("whyParticipate") & vbCrLf & vbCrLf
	content = content & "-------------------- End of Form ----------------------- "




	Set myMail = CreateObject("CDO.Message")
		
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
		myMail.Configuration.Fields.Update
	myMail.From = "KiteOnlineForm@pacer.org"
	myMail.To = "Terri.Rosen@Pacer.org"
	myMail.bcc = "Jordan.Bohm@pacer.org"
	myMail.Subject = "KITE Online Application"
	myMail.TEXTBody = content
	myMail.Send
	Set myMail = Nothing
end if
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

<p style="padding: 0; margin: 0;">
<img src="images/KITE-4.jpg" width="250" height="188" alt="KITE participants looking at communication boards and books at a workshop" />
</p>

</div>

<div id="topbar">
<div id="breadcrumb">    <div id="project-social">
           <a href="http://www.simontechnologycenter.blogspot.com/" title="Simon Technology Center Blog" target="_blank"><img style="display:block; border:1px solid #ccc; margin-top:-1px; border-radius:5px;" src="/images/bloggericon_medium.png" alt="Simon Technology Center Blog" /></a> 
           <a href="https://www.pinterest.com/simontechcenter/" title="Simon Technology Center Pintrest" target="_blank"><img src="/images/pinteresticon_medium.png" alt="Simon Technology Center Pintrest" /></a> 
           
            
         <div id="sm-label" style="width:7em;">Join Us - STC :</div>
        </div>
<a href="/index.asp">Home</a> / <a href="/pandr/index.asp">Programs &amp; Resources</a> / 
	<a href="../index.asp">Simon Technology Center</a> / <a href="index.asp">Project KITE</a> / Parent/Caregiver Participation Form
	
	<h1>Project KITE</h1>
	
	</div>

</div>

<div id="leftbar">
<h2 style="display: none;">STC - Navigation Menu</h2>
<!--#include virtual="/stc/leftNav.htm"-->
</div>

<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="projects";
	var currSubId="subproj-pk";
	// any Subtree that I want to Display
	var showTree = "stc-subproj";
	
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

<!--BEGIN CONTENT-->

<%If not request.Form("submit")="Submit Form" Or IsBot Then%>
<h3>Error: Submission did not process</h3>
<p>Please go back and try again, if you continue to have issues contact PACER at 952-838-1430</p>
<%Else%>


<p>
Thank you <%=personName%> for submitting your application. We will send you an email response in the next few days, once your application has been reviewed.
</p>
<p>
If you have any immediate questions or concerns please direct them to <a href="mailto:stc@pacer.org">stc@pacer.org</a></p>
<p>&nbsp;</p>

<p>
<a href="./">Return to the KITE Home Page</a>
</p>

<%End If%>

<div id="pageextender" style="clear:both">&nbsp;</div>


</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>