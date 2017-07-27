<%
If Session("PCNLogin") = "Valid" Then
	Response.Redirect("/publications/ParentCenterNetwork/")
End If

Dim msg
msg = "&nbsp;"

Function ValidLogin(fUserName, fPwd)
	ValidLogin = False
	
		If fUserName = "ParentCenter" and fPwd = "please" Then
			ValidLogin = True
		End If
	
End Function

If Request.Form("submit") = "Log In" Then
	If ValidLogin(Replace(Request.Form("username"), "'", "''"), Replace(Request.Form("password"), "'", "''")) Then
		Session.Timeout = 240
		Session("pcnLogin") = "Valid"
		If Session("pcnEntranceURL") <> "" Then
			Response.Redirect(Session("pcnEntranceURL"))
		Else
			Response.Redirect("/publications/ParentCenterNetwork/")
		End If
	Else
		msg = "Invalid Password or Username"
	End If
End If

%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Parent Center Network - Parent Center Documents</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavigation.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />

<style type="text/css">
#loginform {
	margin:10px;
	padding:10px;
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
		<div>			<!--#include virtual="/googleSearchBox.htm"-->
				<!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
	<a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
		</div>
		<!--#include virtual="/dynamicheader.htm"-->
	</div>
	
	<div id="rightBar" style="width: 249px;">
		<div class="stayinformed">
			<p style="text-align:center"><a href="#">Go To The Parent Center Network Site</a></p>
		</div>
	</div>
</div>


<div id="topbar">
<div id="breadcrumb"><a href="http://www.pacer.org/index.asp">Home</a> / <a href="http://www.pacer.org/pandr/index.asp">Programs &amp; Resources</a> / <a href="http://www.pacer.org/publications/index.asp">Publications</a> /
	<h1>Parent Center Resources</h1>
</div>
</div>

<div id="leftbar">
<ul>
	<li><a id="overview" href="#" title="Parent Center Log-In">Overview</a></li>
</ul>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="overview";
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

</div>

<div id="maincontent">

<div id="pagecontent"><!--BEGIN CONTENT-->
	<h2>Parent Center Log-In</h2>
		<p>Log-in  to obtain the following information:</p>
		<ul>
			<li>Data Collection Forms</li>
			<li>Management Manual</li>
			<li>Curricula for Parent Centers</li>
			<li>Parent Center Standards for Excellence</li>
			<li>Other important Parent Center documents</li>
		</ul>

	
	<p style="color:red"><%=msg%></p>
	<form id="loginform" action="index-login.asp" method="post">
	<table cellpadding="10"><tr><td>
	<label for="username"><strong>UserName: </strong></label>
	</td><td>
	<input type="text" value="" name="username" id="username" size="30" tabindex="10" />
	</td></tr>
	<tr><td>
	<label for="password"><strong>Password: </strong></label>
	</td><td>
	<input type="password" value="" name="password" id="password" size="30" tabindex="10" />
	</td></tr>
	<tr><td colspan="2" align="right">
	<input type="submit" name="submit" id="submit" value="Log In" tabindex="20" />	
	</td></tr></table>
	</form>



<div id="pageextender" style="clear:both">&nbsp;</div>


</div>

<!--END CONTENT-->

</div>


<!--#include virtual="/footer.htm"-->

</div></div>

</body>
</html>