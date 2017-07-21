<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--></head>

<body>

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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> /</div>

  <div class="content">
    <h1 id="maincontent">Log-In</h1>

<table align="center" border="1" cellpadding="3" cellspacing="0" width="590">
	<thead>
		<tr>
			<th bgcolor="#004080" style="color: #ffffff">
			Log-In
			</th>
		</tr>
	</thead>
	<tbody style="font-family: Verdana; font-size: 83.3%">
		<tr>
			<td bgcolor="#e1e1e1">
Please enter your username and password
			<p>
<FORM METHOD="POST"  NAME="login"  ACTION="bullysupportpassword.asp"  onSubmit="return checkPass()">
<table summary="layout">
<tr>
<TD valign="top">Username</td><td> <INPUT TYPE="text" NAME="ID" tabindex="1">
</TD>
</TR>
<TR>
<TD valign="top">Password</td><td>
<INPUT TYPE="password"  NAME="pwd" tabindex="2">
</TD>
</TR>
<TR>
<TD valign="top">
<INPUT TYPE="submit"  VALUE="submit" tabindex="3">
</TD><td>&nbsp;</td>
</TR>
</TABLE>
</FORM>
			</td>
		</tr>
	</tbody>
</table>

  <!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
