<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="robots" content="noindex" />

<title>Project KITE Application: Parent/Caregiver</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavigation.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />

<script type="text/javascript" src="/css/menu.js"></script>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationSelect.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationTextarea.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationRadio.js" type="text/javascript"></script>
<script type="text/javascript">
var frmaction = 'suxbmissxionx.asxp';
document.getElementById('kiteForm').action = frmaction.replace(/x/gi, '');


function showSecondElement(targetID) {
	try {
		sprypName.destroy();
		sprypAddress.destroy();
		sprypCity.destroy();
		sprypState.destroy();
		sprypZip.destroy();
		sprypPhone.destroy();
		sprypEmail.destroy();
		spryselectpEthnic.destroy();
		sprypChildSchool.destroy();
		sprypChildTeacher.destroy();
		sprypChildGrade.destroy();
		sprypChildName.destroy()
		sprypChildBirthdate.destroy()
		spryselectpChildEthnic.destroy()
	} catch(err) {
	}
	try {
		sprytName.destroy();
		sprytStudentName.destroy();
		sprytJobTitle.destroy();
		sprytSchool.destroy();
		sprytAddress.destroy();
		sprytCity.destroy();
		sprytState.destroy();
		sprytZip.destroy();
		sprytPhone.destroy();
		sprytEmail.destroy();
		spryselecttEthnic.destroy();
	} catch(err) {
	}

	if (targetID == 'ParentDiv') {
		sprypName = new Spry.Widget.ValidationTextField("sprypName", "none", {validateOn:["blur"]});
		sprypAddress = new Spry.Widget.ValidationTextField("sprypAddress", "none", {validateOn:["blur"]});
		sprypCity = new Spry.Widget.ValidationTextField("sprypCity", "none", {validateOn:["blur"]});
		sprypState = new Spry.Widget.ValidationTextField("sprypState", "none", {validateOn:["blur"]});
		sprypZip = new Spry.Widget.ValidationTextField("sprypZip", "zip_code", {validateOn:["blur"]});
		sprypPhone = new Spry.Widget.ValidationTextField("sprypPhone", "none", {validateOn:["blur"]});
		sprypEmail = new Spry.Widget.ValidationTextField("sprypEmail", "email", {validateOn:["blur"]});
		spryselectpEthnic = new Spry.Widget.ValidationSelect("spryselectpEthnic", {isRequired:false});
		sprypChildSchool = new Spry.Widget.ValidationTextField("sprypChildSchool", "none", {validateOn:["blur"]});
		sprypChildTeacher = new Spry.Widget.ValidationTextField("sprypChildTeacher", "none", {validateOn:["blur"]});
		sprypChildGrade = new Spry.Widget.ValidationTextField("sprypChildGrade", "none", {validateOn:["blur"]});
		sprypChildName = new Spry.Widget.ValidationTextField("sprypChildName", "none", {validateOn:["blur"]});
		sprypChildBirthdate = new Spry.Widget.ValidationTextField("sprypChildBirthdate", "none", {validateOn:["blur"]});
		spryselectpChildEthnic = new Spry.Widget.ValidationSelect("spryselectpChildEthnic", {isRequired:false});

		document.getElementById('ParentDiv').className = "showDiv";	
		document.getElementById('TeacherDiv').className = "hidden";
		document.getElementById('Section2').className = "showDiv";	
	} else {
		sprytName = new Spry.Widget.ValidationTextField("sprytName", "none", {validateOn:["blur"]});
		sprytStudentName = new Spry.Widget.ValidationTextField("sprytStudentName", "none", {validateOn:["blur"]});
		sprytJobTitle = new Spry.Widget.ValidationTextField("sprytJobTitle", "none", {validateOn:["blur"]});
		sprytSchool = new Spry.Widget.ValidationTextField("sprytSchool", "none", {validateOn:["blur"]});
		sprytAddress = new Spry.Widget.ValidationTextField("sprytAddress", "none", {validateOn:["blur"]});
		sprytCity = new Spry.Widget.ValidationTextField("sprytCity", "none", {validateOn:["blur"]});
		sprytState = new Spry.Widget.ValidationTextField("sprytState", "none", {validateOn:["blur"]});
		sprytZip = new Spry.Widget.ValidationTextField("sprytZip", "zip_code", {validateOn:["blur"]});
		sprytPhone = new Spry.Widget.ValidationTextField("sprytPhone", "none", {validateOn:["blur"]});
		sprytEmail = new Spry.Widget.ValidationTextField("sprytEmail", "email", {validateOn:["blur"]});
		spryselecttEthnic = new Spry.Widget.ValidationSelect("spryselecttEthnic", {isRequired:false});

		document.getElementById('ParentDiv').className = "hidden";	
		document.getElementById('TeacherDiv').className = "showDiv";
		document.getElementById('Section2').className = "showDiv";	
	} 
}
function ToggleItem(itemID, displayValue) {
	if (displayValue == 'Show') {
		if (itemID == 'computerTypeP') {
			try {
				spryradioComputerType.destroy();
			} catch(err) {
			}
			spryradioComputerType = new Spry.Widget.ValidationRadio("spryradioComputerType", {validateOn:["blur", "change"]});
		}
		if (itemID == 'whatATP') {
			try {
				sprytextareaWhatAT.destroy();
			} catch(err) {
			}
			sprytextareaWhatAT = new Spry.Widget.ValidationTextarea("sprytextareaWhatAT", {validateOn:["blur"]});
		}
		
		document.getElementById(itemID).className = "showDiv";
	} else {
		if (itemID == 'computerTypeP') {
			try {
				spryradioComputerType.destroy();
			} catch(err) {
			}
		}
		if (itemID == 'whatATP') {
			try {
				sprytextareaWhatAT.destroy();
			} catch(err) {
			}
		}
		document.getElementById(itemID).className = "hidden";
	}
}
</script>
<style type="text/css">
<!--
.hidden {
	display: none;
}
.showDiv {
	display: inherit;
}
#pagecontent form h2 {
	border-bottom: 1px solid #03F;
	margin: 1em;
	font-size:1.2em;
}
#pagecontent form .formOffset {
}
-->
</style>
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<link href="SpryAssets/SpryValidationSelect.css" rel="stylesheet" type="text/css" />
<link href="SpryAssets/SpryValidationTextarea.css" rel="stylesheet" type="text/css" />
<link href="SpryAssets/SpryValidationRadio.css" rel="stylesheet" type="text/css" />
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


<p style="font-size: 85%; text-align: left; padding: .5em; margin: 0; background-color: #390; color: #fff;">
<em>&quot;Thank you Project KITE staff!! The presentations and trainings were well-organized and well-presented with practical information for (the) learning needs of a diversity of students.&quot;<br /><br />
- Speech-Language Pathologist<br /><br />
&quot;Excellent program! This had a great impact on the child's life. All the ideas were very helpful. Especially helpful were the ideas for IEPs, goals, and objectives.&quot;" - Early Childhood Special Education Teacher<br /><br />
- Elementary Special Education Teacher<br /><br />
&quot;It (Project KITE) was excellent. I always looked forward to the sessions to learn more new ideas. Thank you!&quot;<br /><br />
- Occupational Therapist</em>
</p>
<p style="padding: 0; margin: .5em 0 0 0;">
<img src="images/KITE-4.jpg" width="250" height="188" alt="KITE participants looking at communication boards and books at a workshop" />
</p>

</div>

<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<a href="https://www.facebook.com/simontechnologycenter" target="_blank">Join the STC Facebook Page</a> | 
<img src="/css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> / <a href="/stc/">Simon Technology Center</a> / <a href="/stc/kite/">Project KITE</a>
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
<noscript>
	<h1 style="color:#F00"> ALERT: Javascript is required to complete this form! -- Your Browser does not currently have Javascipt Enabled.</h1>
</noscript>
<h2 class="nounderline">KITE Team Participation Form</h2>
<p>
Project KITE requires that each of the teams participating in the training program consist of the following:
</p>
<ul>
	<li>a teacher of a class in which children with disabilities are included,</li>
	<li>parents or guardians of children with disabilities included in the class, and</li>
	<li>a service provider or paraprofessional who works with the classroom.</li>
</ul>

<h2>Project KITE Form
<% If Request.QueryString("session") <> "" Then %>
	For the <%=Request.QueryString("session")%> Session
<%End If%>

</h2>
<form method="post" name="form1" id="kiteForm">
<input type="hidden" name="currentSession" value="<%=Request.QueryString("session")%>" />
<input type="hidden" name="servcheck" value="<%=Now()%>" />

<div id="parentteacher">
<p>Are you a: 
<input name="personType" type="radio" value="Parent" onclick="showSecondElement('ParentDiv')" tabindex="10" />Parent <input name="personType" type="radio" value="Teacher" onclick="showSecondElement('TeacherDiv')" tabindex="20" /> Teacher <input name="personType" type="radio" value="ServiceProvider" onclick="showSecondElement('TeacherDiv')" tabindex="30" /> Service Provider</p>
</div>
<div id="ParentDiv" class="hidden">
	<h2>Parent and Child information</h2>
	<span id="sprypName">
	<label for="pName">*Full Name: </label>
	<input name="pName" type="text" id="pName" tabindex="110" size="30" maxlength="100" />
	<span class="textfieldRequiredMsg">A value is required.</span></span>
	<p><span id="sprypAddress">
		<label for="pAddress">*Address: </label>
		<input name="pAddress" type="text" id="pAddress" tabindex="120" size="70" maxlength="300" />
		<span class="textfieldRequiredMsg">A value is required.</span></span></p>
	<p><span id="sprypCity">
		<label for="pCity">*City: </label>
		<input name="pCity" type="text" id="pCity" tabindex="130" size="30" maxlength="100" />
		<span class="textfieldRequiredMsg">A value is required.</span></span> <span id="sprypState">
		<label for="pState">*State: </label>
		<input name="pState" type="text" id="pState" tabindex="140" value="MN" size="5" maxlength="2" />
		<span class="textfieldRequiredMsg">A value is required.</span></span> <span id="sprypZip">
		<label for="pZip">*Zip: </label>
		<input name="pZip" type="text" id="pZip" tabindex="150" size="8" maxlength="5" />
		<span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></p>
	<p><span id="sprypPhone">
	<label for="pPhone">*Phone</label>
	<input name="pPhone" type="text" id="pPhone" tabindex="160" size="25" maxlength="30" />
(h) <span class="textfieldRequiredMsg">A value is required.</span></span><span id="sprypPhone2">
<input name="pPhone2" type="text" id="pPhone2" tabindex="170" size="25" maxlength="30" />
<label for="pPhone2">(work/cell)</label>
<span class="textfieldRequiredMsg">A value is required.</span></span></p>
	<p><span id="sprypEmail">
	<label for="pEmail">*E-Mail: </label>
	<input name="pEmail" type="text" id="pEmail" tabindex="180" size="45" maxlength="100" />
	<span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></p>
	<p><span id="spryselectpEthnic">
		<label for="pEthnic">(optional)Cultural background: </label>
		<select name="pEthnic" id="pEthnic" tabindex="190">
			<option value="Not Answered">-</option>
			<option value="African-American">African-American</option>
			<option value="Hispanic">Hispanic</option>
			<option value="Hmong">Hmong</option>
			<option value="Native-American">Native-American</option>
			<option value="Asian-American">Asian-American</option>
			<option value="Caucasian">Caucasian</option>
			<option value="Other">Other</option>
		</select>
</span>
<span id="sprypOther">
		<br /><label for="pEthnicOther">If Other please specify </label>
		<input name="pEthnicOther" type="text" id="pEthnicOther" tabindex="195" size="25" maxlength="45" />
		<span class="textfieldRequiredMsg">A value is required.</span></span></p>
	<p><span id="sprypChildName">
		<label for="pChildName">*Child's name: </label>
		<input name="pChildName" type="text" id="pChildName" tabindex="200" size="30" maxlength="100" />
		<span class="textfieldRequiredMsg">A value is required.</span></span></p>
	<p><span id="sprypChildBirthdate">
	<label for="pChildsBirthdate">*Child's date of birth</label>
	<input name="pChildsBirthdate" type="text" id="pChildsBirthdate" tabindex="210" size="15" maxlength="10" />
	<span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></p>
	<p><span id="spryselectpChildEthnic">
		<label for="pChildsEthnic">(optional)Child's cultural background</label>
		<select name="pChildsEthnic" id="pChildsEthnic" tabindex="220">
			<option value="Not Answered">-</option>
			<option value="African-American">African-American</option>
			<option value="Hispanic">Hispanic</option>
			<option value="Hmong">Hmong</option>
			<option value="Native-American">Native-American</option>
			<option value="Asian-American">Asian-American</option>
			<option value="Caucasian">Caucasian</option>
			<option value="Other">Other</option>
		</select>
</span> <span id="sprypChildOther">
		<br /><label for="pChildEthnicOther">If Other please specify </label>
		<input name="pChildEthnicOther" type="text" id="pChildEthnicOther" tabindex="225" size="18" maxlength="45" />
		<span class="textfieldRequiredMsg">A value is required.</span></span></p>
	<p><span id="sprypChildSchool">
		<label for="pChildSchool">*Child&rsquo;s School: </label>
		<input name="pChildSchool" type="text" id="pChildSchool" tabindex="230" size="50" maxlength="300" />
		<span class="textfieldRequiredMsg">A value is required.</span></span></p>
	<p><span id="sprypChildTeacher">
		<label for="pChildTeacher">*Child's teacher: </label>
		<input name="pChildTeacher" type="text" id="pChildTeacher" tabindex="240" size="30" maxlength="100" />
		<span class="textfieldRequiredMsg">A value is required.</span></span></p>
	<p><span id="sprypChildGrade">
		<label for="pSchoolGrade">*Child's grade in school: </label>
		<input name="pSchoolGrade" type="text" id="pSchoolGrade" tabindex="250" size="30" maxlength="100" />
		<span class="textfieldRequiredMsg">A value is required.</span></span></p>
</div>
<div id="TeacherDiv" class="hidden">
	<h2>Teacher/Service Provider and Child information</h2>
	<span id="sprytName">
	<label for="tName">*Full Name: </label>
	<input name="tName" type="text" id="tName" tabindex="400" size="30" maxlength="100" />
	<span class="textfieldRequiredMsg">A value is required.</span></span>
	<p><span id="sprytStudentName">
		<label for="tStudentName">*Student's name: </label>
		<input name="tStudentName" type="text" id="tStudentName" tabindex="410" size="30" maxlength="100" />
		<span class="textfieldRequiredMsg">A value is required.</span></span></p>
	<p><span id="sprytJobTitle">
		<label for="tJobTitle">*Job Title: </label>
		<input name="tJobTitle" type="text" id="tJobTitle" tabindex="420" size="50" maxlength="300" />
		<span class="textfieldRequiredMsg">A value is required.</span></span></p>
	<p><span id="sprytSchool">
		<label for="tSchool">*School/Facility name: </label>
		<input name="tSchool" type="text" id="tSchool" tabindex="430" size="50" maxlength="300" />
		<span class="textfieldRequiredMsg">A value is required.</span></span></p>
	<p><span id="sprytAddress">
		<label for="tAddress">*School address: </label>
		<input name="tAddress" type="text" id="tAddress" tabindex="440" size="60" maxlength="300" />
		<span class="textfieldRequiredMsg">A value is required.</span></span></p>
	<p><span id="sprytCity">
		<label for="tCity">*City: </label>
		<input name="tCity" type="text" id="tCity" tabindex="450" size="30" maxlength="100" />
		<span class="textfieldRequiredMsg">A value is required. </span></span><span id="sprytState">
		<label for="tState">*State: </label>
		<input name="tState" type="text" id="tState" tabindex="460" value="MN" size="5" maxlength="2" />
		<span class="textfieldRequiredMsg">A value is required.</span></span><span id="sprytZip">
		<label for="tZip">*Zip: </label>
		<input name="tZip" type="text" id="tZip" tabindex="470" size="8" maxlength="5" />
		<span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></p>
	<p><span id="sprytPhone">
	<label for="tPhone">*Phone: </label>
	<input name="tPhone" type="text" id="tPhone" tabindex="480" size="25" maxlength="30" />
	<span class="textfieldRequiredMsg">A value is required.</span></span> (h) <span id="sprytPhone2">
	<input name="tPhone2" type="text" id="tPhone2" tabindex="490" size="25" maxlength="30" />
	<label for="tPhone2">(cell/work)</label>
	<span class="textfieldRequiredMsg">A value is required.</span></span></p>
	<p><span id="sprytEmail">
	<label for="tEmail">Email: </label>
	<input type="text" name="tEmail" id="tEmail" tabindex="500" />
	<span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></p>
	<p><span id="spryselecttEthnic">
		<label for="tEthnic">(optional)Cultural background: </label>
		<select name="tEthnic" id="tEthnic" tabindex="510">
			<option value="Not Answered">-</option>
			<option value="African-American">African-American</option>
			<option value="Hispanic">Hispanic</option>
			<option value="Hmong">Hmong</option>
			<option value="Native-American">Native-American</option>
			<option value="Asian-American">Asian-American</option>
			<option value="Caucasian">Caucasian</option>
			<option value="Other">Other</option>
		</select>
		<span class="selectRequiredMsg">Please select an item.</span></span><span id="sprytOther">
		<br /><label for="tEthnicOther">If Other please specify</label>
		<input name="tEthnicOther" type="text" id="tEthnicOther" tabindex="515" size="25" maxlength="50" />
		<span class="textfieldRequiredMsg">A value is required.</span></span></p>
</div>
<div id="Section2" class="hidden">
	<h2>Assistive Technology and Computer Skills Section</h2>
	<span id="sprytextareaChildDisability">
	<label for="childDisability">*Describe child's disability: </label>
	<textarea name="childDisability" id="childDisability" cols="45" rows="5" tabindex="1010"></textarea>
	<span class="textareaRequiredMsg">A value is required.</span></span>
	<p><span id="sprytextareaChildStrength">
		<label for="childStrength">*Describe child's strengths: </label>
		<textarea name="childStrength" id="childStrength" cols="45" rows="5" tabindex="1020"></textarea>
		<span class="textareaRequiredMsg">A value is required.</span></span></p>
	<p><span id="spryComputerSkill">
	<label for="computerSkill">*Estimate your computer skill level (1- no experience to 10- expert</label>
	<input name="computerSkill" type="text" id="computerSkill" tabindex="1030" size="5" maxlength="2" />
	<span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></p>
	<p>*Do you own a computer? <span id="spryradioOwnComputer">
		<label>
			<input type="radio" name="ownComputer" value="Yes" id="ownComputer_0" onclick="ToggleItem('computerTypeP', 'Show')" tabindex="1032" />
			Yes</label>
		 
		<label>
			<input type="radio" name="ownComputer" value="No" id="ownComputer_1" onclick="ToggleItem('computerTypeP', 'Hide')" tabindex="1034"  />
			No</label>
		<br />
		<span class="radioRequiredMsg">Please make a selection.</span></span></p>
	<p id="computerTypeP" class="hidden" style="margin-left:50px">*Primary Computer type: <span id="spryradioComputerType">
		<label>
			<input type="radio" name="computerType" value="PC" id="computerType_0" tabindex="1036" />
			PC</label>
		 
		<label>
			<input type="radio" name="computerType" value="MAC" id="computerType_1" tabindex="1038" />
			MAC</label>
		<br />
		<span class="radioRequiredMsg">Please make a selection.</span></span></p>
	<p>*Does the child use a computer at school? <span id="spryradioComputerSchool">
		<label>
			<input type="radio" name="childComputerUse" value="Yes" id="childComputerUse_0" tabindex="1040" />
			Yes</label>
		 
		<label>
			<input type="radio" name="childComputerUse" value="No" id="childComputerUse_1" tabindex="1042" />
			No</label>
		<br />
		<span class="radioRequiredMsg">Please make a selection.</span></span></p>
	<p>*Do you currently use assistive technology (AT) with the child? <span id="spryradioUseAT">
		<label>
			<input type="radio" name="childAtUse" value="Yes" id="childAtUse_0" tabindex="1044" onclick="ToggleItem('whatATP', 'Show')" />
			Yes</label>
		 
		<label>
			<input type="radio" name="childAtUse" value="No" id="childAtUse_1" tabindex="1046" onclick="ToggleItem('whatATP', 'Hide')" />
			No</label>
		<br />
		<span class="radioRequiredMsg">Please make a selection.</span></span></p>
	<p id="whatATP" class="hidden"><span id="sprytextareaWhatAT">
		<label for="whatAT">What AT does the child currently use and do you find it helpful?</label>
		<textarea name="whatAT" id="whatAT" cols="45" rows="5" tabindex="1080"></textarea>
		<span class="textareaRequiredMsg">A value is required.</span></span></p>
	<p><span id="sprytextareaMoreInfo">
		<label for="otherAT">What AT would you like to learn more about?</label>
		<textarea name="otherAT" id="otherAT" cols="45" rows="5" tabindex="1090"></textarea>
</span></p>
	<p><span id="sprytextareaWhyParticipate">
		<label for="whyParticipate">Why do you wish to participate in Project KITE? </label>
		<textarea name="whyParticipate" id="whyParticipate" cols="45" rows="5" tabindex="1100"></textarea>
</span></p>
	<p style="margin-top:30px;">By Submitting this application you acknowledge that if accepted into Project KITE you will attend the training sessions and work with the team for the benefit of the child.</p>

		<input type="submit" name="submit" id="submit" value="Submit Form" tabindex="1110" />
<p>&nbsp;</p>
</div>
</form>





<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>
<script type="text/javascript">
<!--
var sprypName = new Spry.Widget.ValidationTextField("sprypName", "none", {validateOn:["blur"]});
var sprypAddress = new Spry.Widget.ValidationTextField("sprypAddress", "none", {validateOn:["blur"]});
var sprypCity = new Spry.Widget.ValidationTextField("sprypCity", "none", {validateOn:["blur"]});
var sprypState = new Spry.Widget.ValidationTextField("sprypState", "none", {validateOn:["blur"]});
var sprypZip = new Spry.Widget.ValidationTextField("sprypZip", "zip_code", {validateOn:["blur"]});
var sprypPhone = new Spry.Widget.ValidationTextField("sprypPhone", "none", {validateOn:["blur"]});
var sprypEmail = new Spry.Widget.ValidationTextField("sprypEmail", "email", {validateOn:["blur"]});
var spryselectpEthnic = new Spry.Widget.ValidationSelect("spryselectpEthnic", {isRequired:false});
var sprypChildSchool = new Spry.Widget.ValidationTextField("sprypChildSchool", "none", {validateOn:["blur"]});
var sprypChildTeacher = new Spry.Widget.ValidationTextField("sprypChildTeacher", "none", {validateOn:["blur"]});
var sprypChildGrade = new Spry.Widget.ValidationTextField("sprypChildGrade", "none", {validateOn:["blur"]});
var sprypChildName = new Spry.Widget.ValidationTextField("sprypChildName", "none", {validateOn:["blur"]});
var sprypChildBirthdate = new Spry.Widget.ValidationTextField("sprypChildBirthdate", "none", {validateOn:["blur"]});
var spryselectpChildEthnic = new Spry.Widget.ValidationSelect("spryselectpChildEthnic", {isRequired:false});
var sprytName; //= new Spry.Widget.ValidationTextField("sprytName", "none", {validateOn:["blur"]});
var sprytStudentName; //= new Spry.Widget.ValidationTextField("sprytStudentName", "none", {validateOn:["blur"]});
var sprytJobTitle; //= new Spry.Widget.ValidationTextField("sprytJobTitle", "none", {validateOn:["blur"]});
var sprytSchool; //= new Spry.Widget.ValidationTextField("sprytSchool", "none", {validateOn:["blur"]});
var sprytAddress; //= new Spry.Widget.ValidationTextField("sprytAddress", "none", {validateOn:["blur"]});
var sprytCity; //= new Spry.Widget.ValidationTextField("sprytCity", "none", {validateOn:["blur"]});
var sprytState; //= new Spry.Widget.ValidationTextField("sprytState", "none", {validateOn:["blur"]});
var sprytZip; //= new Spry.Widget.ValidationTextField("sprytZip", "zip_code", {validateOn:["blur"]});
var sprytPhone; //= new Spry.Widget.ValidationTextField("sprytPhone", "none", {validateOn:["blur"]});
var sprytEmail; // = new Spry.Widget.ValidationTextField("sprytEmail", "email", {validateOn:["blur"]});
var spryselecttEthnic; //= new Spry.Widget.ValidationSelect("spryselecttEthnic", {isRequired:false});
var sprytextareaChildDisability = new Spry.Widget.ValidationTextarea("sprytextareaChildDisability", {validateOn:["blur"]});
var sprytextareaChildStrength = new Spry.Widget.ValidationTextarea("sprytextareaChildStrength", {validateOn:["blur"]});
var spryComputerSkill = new Spry.Widget.ValidationTextField("spryComputerSkill", "integer", {validateOn:["blur"]});
var spryradioOwnComputer = new Spry.Widget.ValidationRadio("spryradioOwnComputer", {validateOn:["blur", "change"]});
var spryradioComputerType; // = new Spry.Widget.ValidationRadio("spryradioComputerType", {validateOn:["blur", "change"]});
var spryradioComputerSchool = new Spry.Widget.ValidationRadio("spryradioComputerSchool", {validateOn:["blur", "change"]});
var spryradioUseAT = new Spry.Widget.ValidationRadio("spryradioUseAT", {validateOn:["blur", "change"]});
var sprytextareaMoreInfo = new Spry.Widget.ValidationTextarea("sprytextareaMoreInfo", {isRequired:false});
var sprytextareaWhyParticipate = new Spry.Widget.ValidationTextarea("sprytextareaWhyParticipate", {isRequired:false});
//var sprypOther = new Spry.Widget.ValidationTextField("sprypOther", "none", {validateOn:["blur"]});
//var sprypChildOther = new Spry.Widget.ValidationTextField("sprypChildOther", "none", {validateOn:["blur"]});
//var sprytOther = new Spry.Widget.ValidationTextField("sprytOther", "none", {validateOn:["blur"]});
var sprytextareaWhatAT; // = new Spry.Widget.ValidationTextarea("sprytextareaWhatAT", {validateOn:["blur"]});
//-->
</script>
</body>
</html>