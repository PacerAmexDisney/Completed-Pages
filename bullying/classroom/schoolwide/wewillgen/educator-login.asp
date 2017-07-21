<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->

<%
Dim msg, emailStatus, loginName
loginName = "-"
emailStatus = ""
If Len(Request.QueryString("verId")) > 0 Then
	Dim fEmail
	fEmail = Replace(Request.QueryString("verId"), "'", "''")

	Dim rs, ConStr, conn, SQL
	ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=pacer;Password=dataAccess"
	Set rs = Server.CreateObject("ADODB.Recordset")	
	SQL = "SELECT * FROM bullyWwgCurriculum WHERE EmailAddress = '" & fEmail & "';"

	rs.open SQL, ConStr

	If rs.EOF Then
		emailStatus = "Email Not Found" 
	Else
		If rs("EmailConfirmed") = "yes" then
			emailStatus = "Email Confirmed"
		Else
    		Dim MM_editCmd
			Set MM_editCmd = Server.CreateObject ("ADODB.Command")
    		MM_editCmd.ActiveConnection = MM_PACER_WEB_STRING
			MM_editCmd.CommandText = "UPDATE bullyWwgCurriculum SET EmailConfirmed = 'yes' WHERE EmailAddress='" & fEmail & "';" 
    		MM_editCmd.Execute
    		MM_editCmd.ActiveConnection.Close
			emailStatus = "Email Status Updated"
		End If
	End If

	rs.close
	set rs = nothing
End If
	

Function ValidLogin(fEmail)
	ValidLogin = False
	
	Dim rs, ConStr, conn, SQL
	ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=pacer;Password=dataAccess"
	Set rs = Server.CreateObject("ADODB.Recordset")	
	SQL = "SELECT * FROM bullyWwgCurriculum WHERE EmailAddress = '" & fEmail & "';"

	rs.open SQL, ConStr

	If Not rs.EOF Then
		If rs("EmailConfirmed") = "yes" Then
			loginName = rs("FullName")
			ValidLogin = True
		Else
			emailStatus = "Email Not Confirmed"
		End If
	End If
	
	rs.close
	set rs = nothing
End Function

If Request.Form("submit") = "Log In" Then
	If ValidLogin(Replace(Request.Form("emailaddr"), "'", "''")) Then
		Session.Timeout = 240
		Session("wwgLogin") = "Valid"
		Session("fName") = loginName
		If Session("wwgEntranceURL") <> "" Then
			Response.Redirect(Session("wwgEntranceURL"))
		Else
			Response.Redirect("/bullying/wewillgen/curriculum/index-login.asp")
		End If
	End If
End If

%>



<!DOCTYPE html 
   PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Curriculum - NBPC</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link href="/bullying/wewillgen/css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/bullying/css/scrolling.css"/>

<!--#include virtual="/bullying/dynamic-head-items.html"-->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script type="text/javascript" src="/js/jquery.sticky.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#secondarynav").sticky({ topSpacing:0 });
		$('.dash').attr('aria-hidden','true');
	});
</script>
<style type="text/css">
h2 { margin-bottom: .5em; }
#logout{display:none;}
#topnav li#wewillbanner{
	padding-bottom:5px;
	margin-left:0px;
	width:100%;
	text-align:center;
}
#loginform{
	text-align:center;
	padding:20px;
	
}
</style>

</head>

<body class="onecol subpage">
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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/wewillgen/">We Will Generation</a> /</div>
  
  <div class="content">
		<div id="secondarynav" class="whitenav" role="navigation"> <a href="/bullying/"><img id="navlogo" src="/bullying/images/styles/navLogo.png" width="40" height="40" alt="NBPC Homepage" /></a>
			<ul class="justifiedlist">
				<li id="spynav-1"><a href="/bullying/wewillgen/#wewill-1a">We Will Generation</a></li>
				<li class="dash"></li>
				<li id="spynav-2"><a href="/bullying/wewillgen/#reachout-2a">Reach Out</a></li>
				<li class="dash"></li>
				<li id="spynav-3"><a href="/bullying/wewillgen/#speakup-3a">Speak Up</a></li>
				<li class="dash"></li>
				<li id="spynav-4"><a href="/bullying/wewillgen/#curricula-4a">Classroom Curricula</a></li>
				<li class="dash"></li>
				<li id="spynav-5"><a href="/bullying/wewillgen/#stories-5a">Stories</a></li>
			</ul>
		</div>   
<div class="contentrow row-orange row-shadow">
<div class="singlecolumn">		
    <h2 id="maincontent">Curriculum Log-In</h2>
<%If Request.Form("submit") = "Log In" Then%>
	<%If emailStatus = "Email Not Confirmed" Then%>
		<p><strong>Your email address has not yet been confirmed from the email link we sent you.</strong><br /> If you have lost you Email you can register again to have another copy sent.</p>
	<%Else%>
		<p><strong>Your email address was not found.</strong><br />Please enter the email address that you registered or click the link below to register your email and click the verification email link to complete your registration.</p>
	<%End If%>
<%End If%>
<%If emailStatus = "Email Confirmed" Then%>
	<h3 style="color:#fff">-- Email Verification Complete --.</h3>
<%End If%>
<%If emailStatus = "Email Status Updated" Then%>
	<h3 style="color:#fff">Email Verification Complete. You Can now Log In and access the We Will Generation Curriculum.</h3>
<%End If%>


<%
Dim emailAddress
emailAddress = ""
If emailStatus = "Email Confirmed" Or emailStatus = "Email Status Updated" Then
	emailAddress = Request.QueryString("verId")
End If
%>
	<form id="loginform" action="educator-login.asp" method="post">
	<label for="emailaddr"><strong>Email Address: </strong></label>
	<input type="text" value="<%=emailAddress%>" name="emailaddr" id="emailaddr" size="45" tabindex="10" />
	<input style="margin-left:10px;" type="submit" name="submit" value="Log In" tabindex="20" />	
	</form>
	<p style="margin-top:30px; text-align:center;">If you haven&rsquo;t Registered your email address yet you can do so here: <a href="/bullying/wewillgen/educator-registration.asp">Register my email address</a></p>

</div>
</div>
<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/wewillgen/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
