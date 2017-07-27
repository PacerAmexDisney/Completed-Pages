<%@LANGUAGE="VBSCRIPT" CODEPAGE="28596"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-6" />
<title>Newsletter Login</title>
<script type="text/javascript">
function doit() {
	var str = "pxaxsxs-cxhxexcxk.aspx";
	 document.forms["lo"].action = str.replace(/x/gi, "");
	 document.forms["lo"].submit();
}
</script>
</head>

<body>
<h1>Bullying Newsletter Login</h1>

<form method="post" name="lo" action="">


<table cellpadding="20">
<tr><td><label for="ID">User ID</label></td><td><input type="text" name="ID" id="ID" tabindex="1" /></td></tr>

<tr><td><label for="ID">Password</label></td><td><input type="password" name="pwd" id="pwd" tabindex="2" /></td></tr>

<tr><td>&nbsp;</td><td align="right"><input type="button" value="Do It!" onclick="javascript:doit();" tabindex="3" /></td></tr>
</table>
</form>
</body>
</html>
