<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
' *** Logout the current user.
MM_Logout = CStr(Request.ServerVariables("URL")) & "?MM_Logoutnow=1"
If (CStr(Request("MM_Logoutnow")) = "1") Then
  Session.Contents.Remove("MM_Username")
  Session.Contents.Remove("MM_UserAuthorization")
  MM_logoutRedirectPage = "../index.asp"
  ' redirect with URL parameters (remove the "MM_Logoutnow" query param).
  if (MM_logoutRedirectPage = "") Then MM_logoutRedirectPage = CStr(Request.ServerVariables("URL"))
  If (InStr(1, UC_redirectPage, "?", vbTextCompare) = 0 And Request.QueryString <> "") Then
    MM_newQS = "?"
    For Each Item In Request.QueryString
      If (Item <> "MM_Logoutnow") Then
        If (Len(MM_newQS) > 1) Then MM_newQS = MM_newQS & "&"
        MM_newQS = MM_newQS & Item & "=" & Server.URLencode(Request.QueryString(Item))
      End If
    Next
    if (Len(MM_newQS) > 1) Then MM_logoutRedirectPage = MM_logoutRedirectPage & MM_newQS
  End If
  Response.Redirect(MM_logoutRedirectPage)
End If
%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
' *** Validate request to log in to this site.
MM_LoginAction = Request.ServerVariables("URL")
If Request.QueryString <> "" Then MM_LoginAction = MM_LoginAction + "?" + Server.HTMLEncode(Request.QueryString)
MM_valUsername = CStr(Request.Form("username"))
If MM_valUsername <> "" Then
  Dim MM_fldUserAuthorization
  Dim MM_redirectLoginSuccess
  Dim MM_redirectLoginFailed
  Dim MM_loginSQL
  Dim MM_rsUser
  Dim MM_rsUser_cmd
  
  MM_fldUserAuthorization = ""
  MM_redirectLoginSuccess = "index.asp"
  MM_redirectLoginFailed = "login.asp?login=BadLogin"

  MM_loginSQL = "SELECT username, password"
  If MM_fldUserAuthorization <> "" Then MM_loginSQL = MM_loginSQL & "," & MM_fldUserAuthorization
  MM_loginSQL = MM_loginSQL & " FROM dbo.Housing_User WHERE username = ? AND password = ?"
  Set MM_rsUser_cmd = Server.CreateObject ("ADODB.Command")
  MM_rsUser_cmd.ActiveConnection = MM_PACER_WEB_STRING
  MM_rsUser_cmd.CommandText = MM_loginSQL
  MM_rsUser_cmd.Parameters.Append MM_rsUser_cmd.CreateParameter("param1", 200, 1, 50, MM_valUsername) ' adVarChar
  MM_rsUser_cmd.Parameters.Append MM_rsUser_cmd.CreateParameter("param2", 200, 1, 50, Request.Form("password")) ' adVarChar
  MM_rsUser_cmd.Prepared = true
  Set MM_rsUser = MM_rsUser_cmd.Execute

  If Not MM_rsUser.EOF Or Not MM_rsUser.BOF Then 
    ' username and password match - this is a valid user
    Session("MM_Username") = MM_valUsername
    If (MM_fldUserAuthorization <> "") Then
      Session("MM_UserAuthorization") = CStr(MM_rsUser.Fields.Item(MM_fldUserAuthorization).Value)
    Else
      Session("MM_UserAuthorization") = ""
    End If
    if CStr(Request.QueryString("accessdenied")) <> "" And true Then
      MM_redirectLoginSuccess = Request.QueryString("accessdenied")
    End If
    MM_rsUser.Close
    Response.Redirect(MM_redirectLoginSuccess)
  End If
  MM_rsUser.Close
  Response.Redirect(MM_redirectLoginFailed)
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Housing Login</title>
<script src="../../UniversalSpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<script src="../../UniversalSpryAssets/SpryValidationPassword.js" type="text/javascript"></script>
<link href="admin_style.css" rel="stylesheet" type="text/css" />
<link href="../../UniversalSpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<link href="../../UniversalSpryAssets/SpryValidationPassword.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
#rightBar p a {
	font-size: 1.5em;
	color: #FFF;
	text-decoration: underline;
}
-->
</style></head>

<body class="oneColumn">

<div id="wrapper">

<div id="main">

<div id="header">
	<div>			<!--#include virtual="/googleSearchBox.htm"-->
            <!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="../"><img src="images/mainLogo.gif" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="maincontent">

	<div id="pagetoporange">
	<div id="breadcrumb">
					<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="../index.asp">Housing</a>/	<a href="index.asp">Admin</a>
/
<h1 class="nounderline">Housing Admin Login</h1>
			
</div>

</div>



<div id="pagecontent">

<!-- ####################################### BEGIN CONTENT ########################################## -->

<%
if Request.QueryString("login") = "BadLogin" then 
%>
	<h1 style="color:#F00">Incorrect Login</h1>	
<% Else %>
	<h1>&nbsp;</h1>
<% End If %>


<form id="form1" name="form1" method="POST" action="<%=MM_LoginAction%>">
	<span id="sprytextfield1">
	<label for="username">Username:</label>
	<input type="text" name="username" id="username" tabindex="10" />
	<span class="textfieldRequiredMsg">A value is required.</span></span>
	<span id="sprypassword1">
	<label for="password">Password:</label>
	<input type="password" name="password" id="password" tabindex="20" />
	<span class="passwordRequiredMsg">A value is required.</span></span>
	<label for="submit">submit</label>
	<input type="submit" name="submit" id="submit" value="Submit" />
</form>

<p>&nbsp;</p>



<!-- ####################################### END CONTENT ########################################## -->
<div id="pageextender" style="clear:both">&nbsp;</div>
</div> <!-- close pagecontent -->
</div> <!--close maincontent-->
</div> <!--close main-->
	<!--#include virtual="/Housing/admin/admin_footer.html" -->
</div> <!--close wrapper-->

<script type="text/javascript">
<!--
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
var sprypassword1 = new Spry.Widget.ValidationPassword("sprypassword1");
//-->
</script>
</body>
</html>
