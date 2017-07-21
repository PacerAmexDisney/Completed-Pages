<%
Dim ConStr, rs, conn, sql, msg, thankyou, validated
validated = true
msg = ""
thankyou = false
'#####################################################################################################
'Check to make sure we know the query string and that the workshop ID was found in the database.
'#####################################################################################################

If Len(Request.QueryString("wksp")) <> 38 AND Len(Request.QueryString("wksp")) <> 36 Then
	Response.Redirect("workshop-notfound.asp")
Else
	ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
	Set conn = Server.CreateObject("ADODB.Connection")
	conn.open ConStr
		
	sql = "SELECT * FROM Workshops WHERE workshop_id = '" & Request.QueryString("wksp") & "'"
	set rs = conn.execute(sql)

	If rs.EOF Then
		Response.Redirect("workshop-notfound.asp")
	Else
		Dim workshopdate, todaydate
		workshopdate = rs("workshop_date")
		todaydate = FormatDateTime(now(), 2)
		workshopdate = CDate(workshopdate)
		todaydate = CDate(todaydate)
		If workshopdate < todaydate Then
			Response.Redirect "pastworkshop.asp"
		End If
	End If
End If


'#####################################################################################################
'Functions
'#####################################################################################################

' Function IsEmailValid(strEmail)
' Returned value: on success it returns True, else False.
Function IsEmailValid(strEmail)
    Dim strArray
    Dim strItem
    Dim i
    Dim c
    Dim blnIsItValid
 
    ' assume the email address is correct 
    blnIsItValid = True
   
    ' split the email address in two parts: name@domain.ext
    strArray = Split(strEmail, "@")
 
    ' if there are more or less than two parts 
    If UBound(strArray) <> 1 Then
        blnIsItValid = False
        IsEmailValid = blnIsItValid
        Exit Function
    End If
 
    ' check each part
    For Each strItem In strArray
        ' no part can be void
        If Len(strItem) <= 0 Then
            blnIsItValid = False
            IsEmailValid = blnIsItValid
            Exit Function
        End If
       
        ' check each character of the part
        ' only following "abcdefghijklmnopqrstuvwxyz_-."
        ' characters and the ten digits are allowed
        For i = 1 To Len(strItem)
               c = LCase(Mid(strItem, i, 1))
               ' if there is an illegal character in the part
               If InStr("abcdefghijklmnopqrstuvwxyz_-.", c) <= 0 And Not IsNumeric(c) Then
                   blnIsItValid = False
                   IsEmailValid = blnIsItValid
                   Exit Function
               End If
        Next
  
      ' the first and the last character in the part cannot be . (dot)
        If Left(strItem, 1) = "." Or Right(strItem, 1) = "." Then
           blnIsItValid = False
           IsEmailValid = blnIsItValid
           Exit Function
        End If
    Next
 
    ' the second part (domain.ext) must contain a . (dot)
    If InStr(strArray(1), ".") <= 0 Then
        blnIsItValid = False
        IsEmailValid = blnIsItValid
        Exit Function
    End If
 
    ' check the length oh the extension 
    i = Len(strArray(1)) - InStrRev(strArray(1), ".")
    ' the length of the extension can be only 2, 3, or 4
    ' to cover the new "info" extension
    If i <> 2 And i <> 3 And i <> 4 Then
        blnIsItValid = False
        IsEmailValid = blnIsItValid
        Exit Function
    End If

    ' after . (dot) cannot follow a . (dot)
    If InStr(strEmail, "..") > 0 Then
        blnIsItValid = False
        IsEmailValid = blnIsItValid
        Exit Function
    End If
 
    ' finally it's OK 
    IsEmailValid = blnIsItValid
   
End Function

'#####################################################################################################
'Compose the Email and Send if we have Form values and a valid email.
'#####################################################################################################
If Request.Form("email") <> "" And Not IsEmailValid(Request.Form("email")) Then
	msg = msg & "Invalid Email Address Detected.  Check Your Email Address and Re-Submit the Form"
	validated = "Bad-Email"
ElseIf Request.Form("email-filter") <> "" Then
	msg = msg & "Anti-Spambot Code has stopped this message from being delivered. If you are not a Spambot we appologize.  If you continue to have problems please contact PACER at 952-838-9000" 
	validated = "Anti-Bot"
ElseIf Request.Form("ErrorMsg") <> "Bad-Email" And (CLng(DateDiff("s", "01/01/1970 00:00:00", Now)) - Request.Form("checkThis") < 10) then
	msg = msg & "Your Message was not sent due to AntiBot measures.  If you are not a Spam Bot we sincerly apologize, please send your message again. If you continue to have problems please contact PACER at 952-838-9000" & VbCrLf
	validated = "Anti-Bot"
End If

If Request.Form("FormSent") = "hasValues" And validated = true Then
		Dim myMail, subject, content, head, foot
		
		subject = "PACER Workshop Registration For: " & rs("workshop_name")
		
head = head & "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/tr/xhtml1/DTD/xhtml1-transitional.dtd"">" & VbCrLf
head = head & "<html><head>" & VbCrLf
head = head & "<style type=""text/css"">" & VbCrLf
head = head & "p {1em;}" & VbCrLf
head = head & "a {color: #09c; text-decoration: none; font-weight: bold;}" & VbCrLf
head = head & "a:hover, a:active {text-decoration: underline;}" & VbCrLf
head = head & "img {border:none;}" & VbCrLf
head = head & "h2 {color: #390;}" & VbCrLf
head = head & "</style>" & VbCrLf
head = head & "<title>PACER Workshop Registration</title>" & VbCrLf
head = head & "</head>" & VbCrLf
head = head & "<body style=""font-family: arial, sans-serif; background-color: #eee;"">" & VbCrLf
head = head & "<table id=""main"" cellspacing=""3"" cellpadding=""10"" style=""border: solid 1px #0099cc; background-color: #ffffff; font-family: arial, sans-serif;"">" & VbCrLf
head = head & "<tr><td id=""head1"" colspan=""2"" style=""color: white; font-size: 120%; padding: 5px; background-color: #0099cc;"" height=""118""><img border=""0"" src=""http://www.pacer.org/images/PACERLogo.gif"" width=""430"" height=""104"" alt=""PACER Center Logo: Champions for Children with Disabilities"" /></td>" & VbCrLf
head = head & "</tr><tr><td width=""34%"" bgcolor=""#339900"" style=""padding: 5px;"">&nbsp;</td><td width=""66%"" bgcolor=""#ff9933"" style=""padding: 5px;"">&nbsp;</td>" & VbCrLf
head = head & "</tr><tr><td colspan=""2"" style=""font-family: arial, sans-serif;"">" & VbCrLf
content = content & "<p style=""font-size:1.2em; text-align:center"">Thank you for registering for:<br /><strong>" & rs("workshop_name") & "</strong></p>" & VbCrLf
content = content & "<p>Should you have any questions regarding your registration, please contact us at (952) 838-9000 or e-mail <a href=""mailto:pacer@pacer.org"">pacer@pacer.org</a>.</p>" & VbCrLf
content = content & "<table cellspacing=""0"" cellpadding=""15"">" & VbCrLf
content = content & "<tr><th style=""border-bottom:solid 2px #888;"" width=""50%"">Your Information</th><th style=""border-bottom:solid 2px #888""> Workshop Information</th></tr>" & VbCrLf
content = content & "<tr><td valign=""top"" style=""border-right:solid 2px #888"">" & VbCrLf
content = content & "	<table cellspacing=""0"" cellpadding=""5"" style=""margin:0px; padding:0px"">" & VbCrLf
content = content & "    <tr><td>Name:</td><td style=""font-weight:bold"">" & Request.Form("name") & "</td></tr>" & VbCrLf
content = content & "   <tr><td>Organization:</td><td style=""font-weight:bold"">" & Request.Form("organization") & "</td></tr>" & VbCrLf
content = content & "    <tr><td>Address:</td><td style=""font-weight:bold"">" & Request.Form("address1") & "</td></tr>" & VbCrLf
content = content & "    <tr><td>Address2:</td><td style=""font-weight:bold"">" & Request.Form("address2") & "</td></tr>" & VbCrLf
content = content & "    <tr><td>City:</td><td style=""font-weight:bold"">" & Request.Form("city") & "</td></tr>" & VbCrLf
content = content & "    <tr><td>State:</td><td style=""font-weight:bold"">" & Request.Form("state") & "</td></tr>" & VbCrLf
content = content & "    <tr><td>Zip:</td><td style=""font-weight:bold"">" & Request.Form("zip") & "</td></tr>" & VbCrLf
content = content & "    <tr><td>Home Phone:</td><td style=""font-weight:bold"">" & Request.Form("homephone") & "</td></tr>" & VbCrLf
content = content & "    <tr><td>Work Phone:</td><td style=""font-weight:bold"">" & Request.Form("workphone") & "</td></tr>" & VbCrLf
content = content & "    <tr><td>Fax:</td><td style=""font-weight:bold"">" & Request.Form("fax") & "</td></tr>" & VbCrLf
content = content & "    <tr><td>E-mail:</td><td style=""font-weight:bold"">" & Request.Form("email") & "</td></tr>" & VbCrLf
content = content & "    <tr><td>Person type:</td><td style=""font-weight:bold"">" & Request.Form("describe") & "</td></tr>" & VbCrLf

If Request.Form("parentname") <> "" Then
	content = content & "    <tr><td>Parent / Guardian:</td><td style=""font-weight:bold"">" & Request.Form("parentname") & "</td></tr>" & VbCrLf
End If

content = content & "    </table></td>" & VbCrLf
content = content & "<td valign=""top""><p>Workshop: <strong>" & rs("workshop_name") & "</strong></p>" & VbCrLf
content = content & "            <p><a href=""http://www.pacer.org/workshops/flyer/" & rs("workshop_flyer") & """><img src=""http://www.pacer.org/images/pdficon_small.gif"" width=""15"" height=""15"" alt=""pdf document"" /> See The Flyer</a></p>" & VbCrLf
content = content & "            <p>Date: <strong>" & rs("workshop_date") & "</strong> </p>" & VbCrLf
content = content & "            <p>Time: <strong>" & rs("workshop_time") & "</strong> </p>" & VbCrLf
content = content & "            <p>Location: <strong>" & rs("workshop_location") & "</strong> - <a href=""" & rs("workshop_directions") & """>see map</a></p>" & VbCrLf
content = content & "            <p>Comments: <strong>" & Request.Form("comments") & "</strong></p></td>" & VbCrLf
content = content & "</tr></table>" & VbCrLf
foot = foot & "<hr />" & VbCrLf
foot = foot & "<div id=""footerInfo"" align=""center"" style=""font-size:.8em"">" & VbCrLf
foot = foot & "     <div>PACER CENTER <br /> 8161 Normandale Blvd., Minneapolis, Minnesota 55437<br />" & VbCrLf
foot = foot & "          Voice: (952) 838-9000 <font face=""Arial"">&#8226;</font> Fax: (952) 838-0199<br />" & VbCrLf
foot = foot & "          E-mail: <a href=""mailto:PACER@PACER.org"">PACER@PACER.org</a> <font face=""Arial""> &#8226;</font> Web: <a href=""http://www.PACER.org/"">www.PACER.org</a> " & VbCrLf
foot = foot & "     </div>" & VbCrLf
foot = foot & "</div>" & VbCrLf
foot = foot & "</td></tr></table>" & VbCrLf
foot = foot & "</body>" & VbCrLf
foot = foot & "</html>"

		Set myMail = CreateObject("CDO.Message")
		
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
		myMail.Configuration.Fields.Update
		myMail.From = "noreply-PacerWorkshops@pacer.org"
		'myMail.To = Request.Form("email")
		'myMail.Bcc = "pacer@pacer.org"
		myMail.To = "jordan.bohm@pacer.org"
		myMail.Subject = subject 
		myMail.HTMLBody = head & content & foot
		myMail.Send
		Set myMail = Nothing
		thankyou = true
End If
%>
<!DOCTYPE html 
     PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Workshop Registration - <%=rs("workshop_name")%></title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/style.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />

<script src="/SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<script src="/SpryAssets/SpryValidationSelect.js" type="text/javascript"></script>
<script type="text/javascript">
function ShowParentItem() {
	if (document.getElementById("describe").options[3].selected == true) {
		document.getElementById('parentNameField').className = "";
	} else {
		document.getElementById('parentNameField').className = "hiddenElement";
	}
}

function printWindow(){
   bV = parseInt(navigator.appVersion)
   if (bV >= 4) window.print()
}
</script>

<link href="/SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<link href="/SpryAssets/SpryValidationSelect.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.filter-field {
	display:none;
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
<a href="/es/"><img src="/es/images/PACERLogo-es.gif" alt="PACER Center Logo: Campeones para Ni&Ntilde;os con Discapacidades" class="logoImg" /></a>
<!--#include virtual="/es/dynamicheader.htm"-->
</div>

<div id="rightBar">

<!--#include virtual="/es/infobox1.htm"-->
</div>
</div>

<div id="maincontent">

	<div id="pagetoporange">
	  <div id="breadcrumb">
	    <h1 class="nounderline"><a name="maincontent">Workshop Registration</a></h1>
		
	</div>
</div>


<!--BEGIN CONTENT-->

<div id="pagecontent">

<%If thankyou Then%>

<h1>Thank You, Your registration has been recieved.</h1>
<p>A registration receipt has been emailed to you.</p>
<hr />
<%=content%>

<%Else%>

	<p>You are registering for <strong><%=rs("workshop_name")%></strong> on <strong><%=rs("workshop_date")%></strong> at <%=rs("workshop_location")%> from <%=rs("workshop_time")%><br /><br />
	<span style="background: #eee; display: block; padding: .5em;"><strong>Workshop Description:</strong> <%=rs("workshop_description")%></span><br />
	If this is not correct, please go back to the <a href="/es/workshops.asp">workshop page</a> and click on the link for your workshop.
	</p>	
	
<%If rs("workshop_closed") = "yes" Then%>
		<p style="font-size:125%;font-weight:bold;font-color:#900;">We're sorry. The workshop you are requesting registration for is full. </p>
<%Else%>
	<%If msg <> "" Then
		Response.Write("<h1>" & msg & "</h1>")
	End If%>
    
    
    
		<p style="font-size: .85em; font-weight: bold">
		<span style="color:#ff0000">*</span> = required fields
		</p>
		<form action="registration.asp?wksp=<%=request.querystring("wksp")%>" method="post">
			<input type="hidden" name="FormSent" value="hasValues" />
            <input type="hidden" name="ErrorMsg" value="<%=validated%>" />
			<table border="0" align="center">
<tr>
					<td><span class="req">*</span> <label for="name">Name:</label></td>
				  <td><span id="sprytextfield1">
					  <input name="name" type="text" id="name" tabindex="10" value="<%=Request.Form("name")%>" size="24" />
	          <span class="textfieldRequiredMsg">A value is required.</span></span></td>
			  </tr>
				<tr>
					<td>&nbsp; <label for="organization">Organization:</label></td>
					<td><input type="text" name="Organization" id="organization" size="24" value="<%=Request.Form("organization")%>" tabindex="20" /></td>
				</tr>
				<tr>
					<td><span class="req">*</span> <label for="address1">Address:</label></td>
				  <td><span id="sprytextfield2">
					  <input name="address1" type="text" id="address1" value="<%=Request.Form("address1")%>" tabindex="30" size="40" />
				    <span class="textfieldRequiredMsg">A value is required.</span></span></td>
				</tr>
				<tr>
					<td>&nbsp; <label for="address2">Address 2:</label></td>
					<td><input type="text" name="address2" id="address2" value="<%=Request.Form("address2")%>" size="40" tabindex="40" /></td>
				</tr>
				<tr>
					<td><span class="req">*</span> <label for="city">City:</label></td>
				  <td><span id="sprytextfield3">
					  <input name="city" type="text" id="city" value="<%=Request.Form("city")%>" tabindex="50" size="24" />
				    <span class="textfieldRequiredMsg">A value is required.</span></span></td>
				</tr>
				<tr>
					<td><span class="req">*</span> <label for="state">State:</label></td>
				  <td><span id="sprytextfield4">
					  <input name="state" type="text" id="state" value="<%=Request.Form("city")%>" tabindex="60" size="5" maxlength="2" />
				    <span class="textfieldRequiredMsg">A value is required.</span></span></td>
				</tr>
				<tr>
					<td><span class="req">*</span> <label for="zip">Zip:</label></td>
				  <td><span id="sprytextfield5">
					  <input name="zip" type="text" id="zip" value="<%=Request.Form("zip")%>" tabindex="70" size="10" maxlength="10" />
				    <span class="textfieldRequiredMsg">A value is required.</span></span></td>
				</tr>
				<tr>
					<td><span class="req">*</span> <label for="homephone">Phone (h):</label></td>
				  <td><span id="sprytextfield6">
					  <input name="homephone" type="text" id="homephone" value="<%=Request.Form("homephone")%>" tabindex="80" size="20" />
				    <span class="textfieldRequiredMsg">A value is required.</span></span></td>
				</tr>
				<tr>
					<td>&nbsp; <label for="workphone">Phone (w):</label></td>
					<td><input type="text" name="workPhone" size="20" id="workphone" value="<%=Request.Form("workphone")%>" tabindex="90" /></td>
				</tr>

				<tr>
					<td>&nbsp; <label for="fax">Fax:</label></td>
					<td><input type="text" name="Fax" size="20" id="fax" value="<%=Request.Form("fax")%>" tabindex="100" /></td>
				</tr>
				<tr>
					<td><span class="req">*</span> <label for="email">E-mail Address:</label></td>
					<td><span id="sprytextfield7">
                    <input type="text" name="email" id="email" value="<%=Request.Form("email")%>" tabindex="110" />
                    <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></td>
				</tr>
				<tr>
					<td><span class="req">*</span> <label for="describe">Which best describes you?</label></td>
					<td>
					  <span id="spryselect1">
					  <select name="describe" id="describe" tabindex="120" onchange="ShowParentItem()">
							<option value="">Select One</option>
							<option 
							<%If Request.Form("describe") = "Parent" Then%>
								selected="selected" 
                            <%End If%>
							value="Parent">Parent</option>
							<option 
                            <%If Request.Form("describe") = "Professional" Then%>
								selected="selected" 
                            <%End If%>
                            value="Professional">Professional</option>
							<option 
                            <%If Request.Form("describe") = "Student" Then%>
								selected="selected" 
                            <%End If%>
                            value="Student">Student</option>                      
				      </select>
					  <span class="selectRequiredMsg">Please select an item.</span></span></td>
				</tr>
				
				<tr>
					<td colspan="2"><br /><label for="comments">Please leave us any additional information, or feedback:</label><br />
					<textarea name="comments" cols="35" rows="4" id="comments" tabindex="160"> <%=Request.Form("comments")%></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><br /><input type="submit" value="Register" tabindex="170" /></td>
				</tr>
			</table>
            
        
        <%'#################################### Anti Bot Field make sure this remains blank ##########################################%>
        <div class="filter-field" style="text-align:right">
        	<label for="email-filter" class="filter-field">Do not fill out this textbox </label><input type="text" name="email-filter" class="filter-field" tabindex="-1" size="2" />
            				<input type="hidden" name="checkThis" id="checkThis" value="<%=CLng(DateDiff("s", "01/01/1970 00:00:00", Now))%>" />

        </div>    
		<%'###########################################################################################################################%>
        
        </form>
<p>&nbsp;</p>
		<address style="text-align: center;">
		8161 Normandale Blvd., Minneapolis, Minnesota 55437<br />
		Voice: (952) 838-9000<br />
		Toll-free in Greater Minnesota: (800) 537-2237 - Fax: (952) 838-0199<br />
		<a href="mailto:pacer@pacer.org">pacer@pacer.org</a> - <a href="../">www.pacer.org</a>.
		</address>
		<p>&nbsp;</p>


		
<%
End If
End If
set rs = nothing
conn.close

%>


<!--END CONTENT-->
</div>


</div>
<!--#include virtual="/es/footer.htm"-->

</div>
</div>
<script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1", "none", {validateOn:["blur"]});
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2", "none", {validateOn:["blur"]});
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3", "none", {validateOn:["blur"]});
var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4", "none", {validateOn:["blur"]});
var sprytextfield5 = new Spry.Widget.ValidationTextField("sprytextfield5", "none", {validateOn:["blur"]});
var sprytextfield6 = new Spry.Widget.ValidationTextField("sprytextfield6", "none", {validateOn:["blur"]});
var sprytextfield7 = new Spry.Widget.ValidationTextField("sprytextfield7", "email", {validateOn:["blur"]});
var spryselect1 = new Spry.Widget.ValidationSelect("spryselect1", {validateOn:["blur", "change"]});
</script>
</body>
</html>