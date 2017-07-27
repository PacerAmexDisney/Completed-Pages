<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Remove your name from the Parent Pages list</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/leftnavigation.css" media="screen, projection" />
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
<a href="../legislation/index.asp">Public Policy</a> / Minnesota Parent 
Center's Parent Pages - Unsubscribe
	
	<h1>Minnesota Parent Center, MN PIRC<br />A Project of PACER Center</h1>
	
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


<h2 class="nounderline"><a name="maincontent">Minnesota Parent Center's PArent 
Pages - Unsubscribe</a></h2>

<!--BEGIN CONTENT-->

<p>
To be removed from this mailing list, please fill out the form below and click submit.
</p>

<%

Dim myMail, content, footer, confirmation, strname, email, hidden, strEmail, number
hidden=Request.Form("hidden")
if hidden="hi" then

strname=Request.Form("fname")
strname=strname & " " & Request.Form("lname")
strEmail=Request.form("e-mail")

	if strname <> "" AND inStr(strname, "@") < 1 AND strEmail <> "" AND inStr(strEmail, "@") <> 0 AND inStr(strEmail, ".") <> 0 then

		number = "1"
		content="<p style='font-family: arial, sans-serif; background-color: #ffd; padding: .5em; border: solid 1px black;'>Please update this person's PCIS information to be removed from the Parent Pages list</span><br /><br />"
		content = content & strname & "<br /><br />"
		content = content & "E-mail Address: " & strEmail & "</p>"
		footer="<p>* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * Thank you</p>"
	
	
		for i=1 to number
			Set myMail = CreateObject("CDO.Message")
		
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
		myMail.Configuration.Fields.Update
			myMail.From = "mnpirc@pacer.org"
			myMail.To = "mnpirc@pacer.org"
'			myMail.To = "stephanie.rosso@pacer.org"
			myMail.Subject = "Minnesota Parent Center Parent Pages - Removal"
			myMail.HTMLBody = content & footer
			myMail.Send
			Set myMail = Nothing
		next
		
		hidden=""
		Response.Redirect "../../forms/thankyou.asp?topic=removed"

	else

	Response.Write "<strong>To submit your email, please complete all fields or contact us at 952.838.9000.</strong><br />"

	end if

end if

%>

<form action="parentpagesdel.asp" method="post">
<input type="hidden" name="hidden" value="hi" />

<table>
	<tr>
		<td align="right">
		<label for="fname">First Name:</label>
		</td>
		<td>
		<input type="text" name="fname" size="20" id="fname" />
		</td>
	</tr>
	<tr>
		<td align="right">
		<label for="lname">Last Name:</label>
		</td>
		<td>
		<input type="text" name="lname" size="20" id="lname" />
		</td>
	</tr>
	<tr>
		<td align="right">
		<label for="e-mail">E-Mail Address:</label>
		</td>
		<td>
		<input type="text" name="e-mail" size="20" id="e-mail" />
		</td>
	</tr>
	<tr>
		<td colspan="2">
		<p><br /><br />
		<input type="submit" name="remove" value="Remove Me" /> &nbsp; <input type="reset" />
		</p>
		</td>
	</tr>
</table>

</form>

<p>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</p>


</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>