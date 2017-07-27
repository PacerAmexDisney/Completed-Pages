<%@LANGUAGE="VBSCRIPT" CODEPAGE="28596"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->

<%
  If Session("userlog")<>"valid" Then
	Session("userlog") = "false"
	Response.Redirect("eventRegistrationLogin.asp?st=login")
  End If

  Function Encode(ByVal sVal)
  	sReturn = sVal
	sReturn = Replace(sReturn, "&", "&amp;"  )
	sReturn = Replace(sReturn, "'", "&rsquo;"  )
	sReturn = Replace(sReturn, "–", "&ndash;"  )
	sReturn = Replace(sReturn, "’", "&rsquo;"  )
	sReturn = Replace(sReturn, "“", "&ldquo;"  )
	sReturn = Replace(sReturn, "”", "&rdquo;"  )
	Encode = sReturn
  End Function


  Dim myMail, subject, head, clientbody, pacerbody, info, footer
  
  Function SendMailNotice()
	subject = "NBPC Community Event Update - " & Request.Form("ename")

	head = head & "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/tr/xhtml1/DTD/xhtml1-transitional.dtd"">" & VbCrLf
	head = head & "<html><head>" & VbCrLf
	head = head & "<style type=""text/css"">" & VbCrLf
	head = head & "p {1em;}" & VbCrLf
	head = head & "a {color: #09c; text-decoration: none; font-weight: bold;}" & VbCrLf
	head = head & "a:hover, a:active {text-decoration: underline;}" & VbCrLf
	head = head & "img {border:none;}" & VbCrLf
	head = head & "h2 {color: #390;}" & VbCrLf
	head = head & "</style>" & VbCrLf
	head = head & "<title>National Bullying Prevention Center - Event Information Update</title>" & VbCrLf
	head = head & "</head>" & VbCrLf
	head = head & "<body style=""font-family: arial, sans-serif; background-color: #eee;"">" & VbCrLf
	head = head & "<table id=""main"" cellspacing=""0"" cellpadding=""20"" style=""border: solid 1px #772828; background-color: #ffffff;"">" & VbCrLf
	head = head & "<tr>" & VbCrLf
	head = head & "  <td id=""head1"" colspan=""2"" style=""color: #000000; font-size: 120%; padding: 5px; background-color: #ffffff;"" height=""105""><img border=""0"" src=""http://www.pacer.org/bullying/images/header.jpg"" width=""624"" height=""105"" alt=""National Bullying Prevention Center - The End of Bullying Begins with You"" /></td>" & VbCrLf
	head = head & "</tr>" & VbCrLf
	head = head & "" & VbCrLf
	head = head & "<tr><td colspan=""2"" style=""font-family: arial, sans-serif;"">" & VbCrLf

	info = info & "<table cellspacing=""5"" cellpadding=""5"" width=""90%"" style=""margin:0px auto; padding:5px"">" & VbCrLf
	info = info & "<tr><th colspan=""2"">Event UPDATE</th></tr>" & VbCrLf
	info = info & "<tr>" & VbCrLf
	info = info & "    <td>Event Name:</td>" & VbCrLf
	info = info & "    <td style=""font-weight:bold"">" & Request.Form("ename") & "</td>" & VbCrLf
	info = info & "  </tr>" & VbCrLf
	info = info & "  <tr>" & VbCrLf
	info = info & "    <td><span id=""sprytextfield2"">Event Date</span>:</td>" & VbCrLf
	info = info & "    <td style=""font-weight:bold"">" & Request.Form("edate") & "</td>" & VbCrLf
	info = info & "  </tr>" & VbCrLf
	info = info & "  <tr>" & VbCrLf
	info = info & "    <td><span id=""event-time-textfield"">Event Start Time</span>:</td>" & VbCrLf
	info = info & "    <td style=""font-weight:bold"">" & Request.Form("etime") & "</td>" & VbCrLf
	info = info & "  </tr>" & VbCrLf
	info = info & "  <tr>" & VbCrLf
	info = info & "    <td><span id=""sprytextarea1"">Event Description</span>:</td>" & VbCrLf
	info = info & "    <td style=""font-weight:bold"">" & Request.Form("edesc") & "</td>" & VbCrLf
	info = info & "  </tr>" & VbCrLf
	info = info & "  <tr>" & VbCrLf
	info = info & "    <td><span id=""event-website-textfield"">Event Website</span>:</td>" & VbCrLf
	info = info & "    <td style=""font-weight:bold"">" & Request.Form("eurl") & "</td>" & VbCrLf
	info = info & "  </tr>" & VbCrLf
	info = info & "  <tr>" & VbCrLf
	info = info & "   <td><span id=""spryselect1"">State</span>:</td>" & VbCrLf
	info = info & "    <td style=""font-weight:bold"">" & Request.Form("estate") & "</td>" & VbCrLf
	info = info & "  </tr>" & VbCrLf
	info = info & "  <tr>" & VbCrLf
	info = info & "    <td><span id=""sprytextfield4"">City</span>:</td>" & VbCrLf
	info = info & "    <td style=""font-weight:bold"">" & Request.Form("ecity") & "</td>" & VbCrLf
	info = info & "  </tr>" & VbCrLf
	info = info & "  <tr>" & VbCrLf
	info = info & "    <td><span id=""sprytextfield5"">Address / Location</span>:</td>" & VbCrLf
	info = info & "    <td style=""font-weight:bold"">" & Request.Form("eaddress") & "</td>" & VbCrLf
	info = info & "  </tr>" & VbCrLf
	info = info & "  <tr><th colspan=""2"">Contact Information</th></tr>" & VbCrLf
	info = info & "  <tr>" & VbCrLf
	info = info & "    <td><span id=""sprytextfield6"">Name</span>:</td>" & VbCrLf
	info = info & "    <td style=""font-weight:bold"">" & Request.Form("cname") & "</td>" & VbCrLf
	info = info & "  </tr>" & VbCrLf
	info = info & "  <tr>" & VbCrLf
	info = info & "    <td><span id=""contactPhone"">Phone</span>:</td>" & VbCrLf
	info = info & "    <td style=""font-weight:bold"">" & Request.Form("cphone") & "</td>" & VbCrLf
	info = info & "  </tr>" & VbCrLf
	info = info & "  <tr>" & VbCrLf
	info = info & "    <td><span id=""sprytextfield8"">Email</span>:</td>" & VbCrLf
	info = info & "    <td style=""font-weight:bold"">" & Request.Form("cemail") & "</td>" & VbCrLf
	info = info & "  </tr>" & VbCrLf
	info = info & "</table>" & VbCrLf
	
	footer = footer & "<hr />" & VbCrLf
	footer = footer & "<div id=""footerInfo"" align=""center"">" & VbCrLf
	footer = footer & "  <h3 style=""color: #666"">Event Information Submission<br />" & VbCrLf
	footer = footer & "     <img border=""0"" src=""http://www.pacer.org/images/PACER-Logo-Web.gif"" width=""430"" height=""104"" alt=""PACER Center logo: Champions for Children with Disabilities"" /></h3>" & VbCrLf
	footer = footer & "     <div> 8161 Normandale Blvd., Minneapolis, Minnesota 55437<br />" & VbCrLf
	footer = footer & "          Voice: (952) 838-9000 <font face=""Arial"">&#8226;</font> TTY: (952) 838-0190<br />" & VbCrLf
	footer = footer & "          Toll-free in Greater Minnesota: (800) 537-2237 <font face=""Arial"">&#8226;</font> Fax: (952) 838-0199<br />" & VbCrLf
	footer = footer & "          E-mail: <a href=""mailto:PACER@PACER.org"">PACER@PACER.org</a> <font face=""Arial""> &#8226;</font> Web: <a href=""http://www.PACER.org/"">www.PACER.org</a> " & VbCrLf
	footer = footer & "     </div>" & VbCrLf
	footer = footer & "</div>" & VbCrLf
	footer = footer & "</td></tr></table>" & VbCrLf
	footer = footer & "</body>" & VbCrLf
	footer = footer & "</html>" & VbCrLf

	Set myMail = CreateObject("CDO.Message")
		
	myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
	myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
	myMail.Configuration.Fields.Update
	myMail.From = "noreply-NationalBullyingPreventionCenter@pacer.org"
	myMail.To = "jordan.bohm@pacer.org; bullying411@pacer.org"
	myMail.Subject = subject 
	myMail.HTMLBody = head & info & footer
		
	myMail.Send
	
	Set myMail = nothing
  
  End Function
%>

<%
Dim MM_editAction
MM_editAction = CStr(Request.ServerVariables("SCRIPT_NAME"))
If (Request.QueryString <> "") Then
  MM_editAction = MM_editAction & "?" & Server.HTMLEncode(Request.QueryString)
End If

' boolean to abort record edit
Dim MM_abortEdit
MM_abortEdit = false

' IIf implementation
Function MM_IIf(condition, ifTrue, ifFalse)
  If condition = "" Then
    MM_IIf = ifFalse
  Else
    MM_IIf = ifTrue
  End If
End Function
%>
<%
If (CStr(Request("MM_update")) = "eventregistration") Then

	Dim validateMessage, changePassword
	
	changePassword = false
	If Request.Form("cpassword") = Request.Form("cpasswordconfirm") And Request.Form("cpassword") <> "" Then
		changePassword = true
	End If
	
	validateMessage = ""
	'-------------------------Enter Validation Code Here-----------------------------
	If Request.Form("ename") = "" Then
		validateMessage = validateMessage & "<p>Event Name Required</p>"
	End If
	If Request.Form("edate") = "" Then
		validateMessage = validateMessage & "<p>Event Date Required</p>"
	End If
	If Request.Form("edesc") = "" Then
		validateMessage = validateMessage & "<p>Event Description Required</p>"
	End If
	If Request.Form("estate") = "" Then
		validateMessage = validateMessage & "<p>Event State Required</p>"
	End If
	If Request.Form("ecity") = "" Then
		validateMessage = validateMessage & "<p>Event City Required</p>"
	End If
	If Request.Form("eaddress") = "" Then
		validateMessage = validateMessage & "<p>Event Address Required</p>"
	End If
	If Request.Form("cname") = "" Then
		validateMessage = validateMessage & "<p>Contact Name Required</p>"
	End If
	If Request.Form("cemail") = "" Then
		validateMessage = validateMessage & "<p>Contact Email Required</p>"
	End If
	If Request.Form("cpassword") <> "" And Len(Request.Form("cpassword")) < 6 Then
		validateMessage = validateMessage & "<p>Passwords must be at least 6 characters long.</p>"
	End If
	
	If validateMessage <> "" Then
		MM_abortEdit = true
	End If
	
	
	'---------------------------End Validation Code ---------------------------------

  If (Not MM_abortEdit) Then
    ' execute the update
    Dim MM_editCmd
    
	SendMailNotice
	
	Set MM_editCmd = Server.CreateObject ("ADODB.Command")
    MM_editCmd.ActiveConnection = MM_PACER_WEB_STRING
    If changePassword Then
		MM_editCmd.CommandText = "UPDATE dbo.bullyEvents SET event_name = ?, event_date = ?, event_time = ?, event_state = ?, event_city = ?, event_locationaddress = ?, event_description = ?, event_website = ?, event_contactperson = ?, event_contactphone = ?, event_contactemail = ?, event_contactpassword = ? WHERE event_ID = ?" 
    Else
		MM_editCmd.CommandText = "UPDATE dbo.bullyEvents SET event_name = ?, event_date = ?, event_time = ?, event_state = ?, event_city = ?, event_locationaddress = ?, event_description = ?, event_website = ?, event_contactperson = ?, event_contactphone = ?, event_contactemail = ? WHERE event_ID = ?" 
	End If	
	MM_editCmd.Prepared = true
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param1", 201, 1, 500, Encode(Request.Form("ename"))) ' adLongVarChar
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param2", 135, 1, -1, Request.Form("edate")) ' adDBTimeStamp
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param3", 201, 1, 500, Encode(Request.Form("etime"))) ' adLongVarChar
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param4", 201, 1, 100, Encode(Request.Form("estate"))) ' adLongVarChar
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param5", 201, 1, 500, Encode(Request.Form("ecity"))) ' adLongVarChar
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param6", 201, 1, 500, Encode(Request.Form("eaddress"))) ' adLongVarChar
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param7", 201, 1, -1, Encode(Request.Form("edesc"))) ' adLongVarChar
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param8", 201, 1, 500, Encode(Request.Form("eurl"))) ' adLongVarChar
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param9", 201, 1, 100, Encode(Request.Form("cname"))) ' adLongVarChar
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param10", 201, 1, 100, Encode(Request.Form("cphone"))) ' adLongVarChar
    MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param11", 201, 1, 200, Encode(Request.Form("cemail"))) ' adLongVarChar
    If changePassword Then
		MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param12", 201, 1, 50, Request.Form("cpassword")) ' adLongVarChar
    End If
	MM_editCmd.Parameters.Append MM_editCmd.CreateParameter("param13", 5, 1, -1, MM_IIF(Request.Form("MM_recordId"), Request.Form("MM_recordId"), null)) ' adDouble
    MM_editCmd.Execute
    MM_editCmd.ActiveConnection.Close

    ' append the query string to the redirect URL
    Dim MM_editRedirectUrl
    MM_editRedirectUrl = "/bullying/nbpm/eventRegistrationInfoUpdate.asp?evt=update"
    If (Request.QueryString <> "") Then
      If (InStr(1, MM_editRedirectUrl, "?", vbTextCompare) = 0) Then
        MM_editRedirectUrl = MM_editRedirectUrl & "?" & Request.QueryString
      Else
        MM_editRedirectUrl = MM_editRedirectUrl & "&" & Request.QueryString
      End If
    End If
    Response.Redirect(MM_editRedirectUrl)
  End If
End If
%>
<%
Dim rs__MMColParam
rs__MMColParam = "1"
If (Request.QueryString("event_ID") <> "") Then 
  rs__MMColParam = Request.QueryString("event_ID")
End If
%>
<%
Dim rs
Dim rs_cmd
Dim rs_numRows

Set rs_cmd = Server.CreateObject ("ADODB.Command")
rs_cmd.ActiveConnection = MM_PACER_WEB_STRING
rs_cmd.CommandText = "SELECT * FROM dbo.bullyEvents  WHERE event_ID = ?" 
rs_cmd.Prepared = true
rs_cmd.Parameters.Append rs_cmd.CreateParameter("param1", 5, 1, -1, rs__MMColParam) ' adDouble

Set rs = rs_cmd.Execute
rs_numRows = 0
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="robots" content="noindex,nofollow" />

<title>National Bullying Prevention Center - Update Event Information Form</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--><link href="/bullying/css/eventForm.css" rel="stylesheet" type="text/css" />
<script src="/SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<script src="/SpryAssets/SpryValidationTextarea.js" type="text/javascript"></script>
<script src="/SpryAssets/SpryValidationSelect.js" type="text/javascript"></script>
<script src="/SpryAssets/SpryValidationPassword.js" type="text/javascript"></script>
<script src="/SpryAssets/SpryValidationConfirm.js" type="text/javascript"></script>

<link href="/SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<link href="/SpryAssets/SpryValidationTextarea.css" rel="stylesheet" type="text/css" />
<link href="/SpryAssets/SpryValidationSelect.css" rel="stylesheet" type="text/css" />
<link href="/SpryAssets/SpryValidationPassword.css" rel="stylesheet" type="text/css" />
<link href="/SpryAssets/SpryValidationConfirm.css" rel="stylesheet" type="text/css" />
</head>

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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/nbpm/">National Bullying Prevention Month</a> / <a href="/bullying/nbpm/communityevents.asp">Community Events</a> /</div>

  <div class="content">
    <h1 id="maincontent">Update Information Form</h1>
    <p><a href="eventRegistrationLogout.asp">Log Out</a> | <a href="/bullying/nbpm/eventRegistrationInfoUpdate.asp">Return to Event Listings</a></p>
    
<div style="width:428px; margin:10px auto;"> 
<div style="color:#F00"><%=validateMessage%></div>
<form id="eventregistration" name="eventregistration" action="<%=MM_editAction%>" method="post">

<h3>Event Information</h3>

  <p class="longinput"><span id="sprytextfield1">
  <label for="ename"><span class="requiredindicator"><sup>*</sup></span> Event Name:<br />
  </label>
  <input type="text" name="ename" id="ename" tabindex="10" value="<%=(rs.Fields.Item("event_name").Value)%>" />
  <span class="textfieldRequiredMsg">A value is required.</span></span></p>
  <p class="normalinput"><span id="sprytextfield2">
  <label for="edate"><span class="requiredindicator"><sup>*</sup></span>Event Date: <span class="extramessage" style="font-size:9px;">(mm/dd/yyyy)</span></label>
  <input type="text" name="edate" id="edate" tabindex="20" value="<%=(rs.Fields.Item("event_date").Value)%>" />
  <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">mm/dd/yyyy</span></span></p>
  <p class="normalinput"><span id="event-time-textfield">
    <label for="etime">Event Start Time: </label>
    <input type="text" name="etime" id="etime" tabindex="25" value="<%=(rs.Fields.Item("event_time").Value)%>" />
    </span><span class="textfieldRequiredMsg">A value is required.</span></p>
  <p class="longinput"><span id="sprytextarea1">
    <label for="edesc"><span class="requiredindicator"><sup>*</sup></span> Event Description</label><br />
    <textarea name="edesc" id="edesc" cols="45" rows="5" tabindex="30"><%=(rs.Fields.Item("event_description").Value)%></textarea>
    <span class="textareaRequiredMsg">A value is required.</span></span></p>
  <p class="longinput"><span id="event-website-textfield">
  <label for="eurl">Event Website: <span class="extramessage">(must include http://)</span><br />
  </label>
  <input type="text" name="eurl" id="eurl" tabindex="40" value="<%=(rs.Fields.Item("event_website").Value)%>" />
  <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></p>
  <p class="specialinput"><span id="spryselect1">
    <label for="estate"><span class="requiredindicator"><sup>*</sup></span> State: </label>
    <select name="estate" id="estate" tabindex="50">
      <option value="<%=(rs.Fields.Item("event_state").Value)%>" selected="selected"><%=(rs.Fields.Item("event_state").Value)%></option>
      <option value="NotInUSA">Not in the U.S.</option>
      <option value="AL">Alabama</option>
    
      <option value="AK">Alaska</option>
      <option value="AZ">Arizona</option>
      <option value="AR">Arkansas</option>
      <option value="CA">California</option>
      <option value="CO">Colorado</option>
      <option value="CT">Connecticut</option>
    
      <option value="DE">Delaware</option>
      <option value="FL">Florida</option>
      <option value="GA">Georgia</option>
      <option value="HI">Hawaii</option>
      <option value="ID">Idaho</option>
      <option value="IL">Illinois</option>
    
      <option value="IN">Indiana</option>
      <option value="IA">Iowa</option>
      <option value="KS">Kansas</option>
      <option value="KY">Kentucky</option>
      <option value="LA">Louisiana</option>
      <option value="ME">Maine</option>
    
      <option value="MD">Maryland</option>
      <option value="MA">Massachusetts</option>
      <option value="MI">Michigan</option>
      <option value="MN">Minnesota</option>
      <option value="MS">Mississippi</option>
      <option value="MO">Missouri</option>
    
      <option value="MT">Montana</option>
      <option value="NE">Nebraska</option>
      <option value="NV">Nevada</option>
      <option value="NH">New Hampshire</option>
      <option value="NJ">New Jersey</option>
      <option value="NM">New Mexico</option>
    
      <option value="NY">New York</option>
      <option value="NC">North Carolina</option>
      <option value="ND">North Dakota</option>
      <option value="OH">Ohio</option>
      <option value="OK">Oklahoma</option>
      <option value="OR">Oregon</option>
    
      <option value="PA">Pennsylvania</option>
      <option value="RI">Rhode Island</option>
      <option value="SC">South Carolina</option>
      <option value="SD">South Dakota</option>
      <option value="TN">Tennessee</option>
      <option value="TX">Texas</option>
    
      <option value="UT">Utah</option>
      <option value="VT">Vermont</option>
      <option value="VA">Virginia</option>
      <option value="WA">Washington</option>
      <option value="WV">West Virginia</option>
      <option value="WI">Wisconsin</option>
    
      <option value="WY">Wyoming</option>    
    </select>
    <span class="selectRequiredMsg">Please select an item.</span></span></p>
  <p class="longinput"><span id="sprytextfield4">
    <label for="ecity"><span class="requiredindicator"><sup>*</sup></span> City: <span class="extramessage">(include the Country if the location is not in the U.S.)</span><br />
    </label>
    <input type="text" name="ecity" id="ecity" tabindex="60" value="<%=(rs.Fields.Item("event_city").Value)%>" />
    <span class="textfieldRequiredMsg">A value is required.</span></span></p>
  <p class="longinput"><span id="sprytextfield5">
    <label for="eaddress"><span class="requiredindicator"><sup>*</sup></span> Address / Location:<br />
    </label>
    <input type="text" name="eaddress" id="eaddress" tabindex="70" value="<%=(rs.Fields.Item("event_locationaddress").Value)%>" />
    <span class="textfieldRequiredMsg">A value is required.</span></span></p>
  
  
  <h3>Contact Information</h3>
  
  <p class="normalinput"><span id="sprytextfield6">
    <label for="cname"><span class="requiredindicator"><sup>*</sup></span> Name: </label>
    <input type="text" name="cname" id="cname" tabindex="80" value="<%=(rs.Fields.Item("event_contactperson").Value)%>" />
    <span class="textfieldRequiredMsg">A value is required.</span></span></p>
  <p class="normalinput"><span id="contactPhone">
    <label for="cphone">Phone: </label>
    <input type="text" name="cphone" id="cphone" tabindex="90" value="<%=(rs.Fields.Item("event_contactphone").Value)%>" />
    <span class="textfieldRequiredMsg">A value is required.</span></span></p>
  <p class="normalinput"><span id="sprytextfield8">
  <label for="cemail"><span class="requiredindicator"><sup>*</sup></span> Email: </label>
  <input type="text" name="cemail" id="cemail" tabindex="100" value="<%=(rs.Fields.Item("event_contactemail").Value)%>" />
  <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></p>
  
    <p>You can leave the password fields blank if you do not wish to change your password.</p>

  
  <p class="normalinput"><span id="sprypassword1">
    <label for="cpassword">Password: </label>
    <input type="password" name="cpassword" id="cpassword" tabindex="110" />
</span></p>
  <p class="normalinput"><span id="spryconfirm1">
    <label for="cpasswordconfirm">Password Confirm: </label>
    <input type="password" name="cpasswordconfirm" id="cpasswordconfirm" tabindex="120" />
<span class="confirmInvalidMsg">The values don't match.</span></span></p>
  <%If validateMessage <> "" Then Response.Write("<p style=""color:#F00""><strong>Update Not Sent</strong></p>")%>
  <p class="submitinput"><input type="submit" value="Update record" /></p>
      <input type="hidden" name="MM_update" value="eventregistration" />
      <input type="hidden" name="MM_recordId" value="<%= rs.Fields.Item("event_ID").Value %>" />
</form>
<div style="color:#F00"><%=validateMessage%></div>
   </div> 
    
    
    <p>&nbsp;</p>
  <!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
  
<script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1", "none", {validateOn:["blur", "change"]});
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2", "date", {validateOn:["blur", "change"], format:"mm/dd/yyyy"});
var sprytextarea1 = new Spry.Widget.ValidationTextarea("sprytextarea1", {validateOn:["blur", "change"]});
var sprytextfield3 = new Spry.Widget.ValidationTextField("event-website-textfield", "url", {validateOn:["blur", "change"], isRequired:false});
var spryselect1 = new Spry.Widget.ValidationSelect("spryselect1", {validateOn:["blur", "change"]});
var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4", "none", {validateOn:["blur", "change"]});
var sprytextfield5 = new Spry.Widget.ValidationTextField("sprytextfield5", "none", {validateOn:["blur", "change"]});
var sprytextfield6 = new Spry.Widget.ValidationTextField("sprytextfield6", "none", {validateOn:["blur", "change"]});
var sprytextfield7 = new Spry.Widget.ValidationTextField("contactPhone", "none", {validateOn:["blur", "change"], isRequired:false});
var sprytextfield8 = new Spry.Widget.ValidationTextField("sprytextfield8", "email", {validateOn:["blur", "change"]});
var sprypassword1 = new Spry.Widget.ValidationPassword("sprypassword1", {validateOn:["blur", "change"], isRequired:false});
var spryconfirm1 = new Spry.Widget.ValidationConfirm("spryconfirm1", "cpassword", {validateOn:["blur", "change"], isRequired:false});
var sprytextfield9 = new Spry.Widget.ValidationTextField("event-time-textfield", "none", {isRequired:false, validateOn:["blur", "change"]});
</script> 
</body>
</html>
<%
rs.Close()
Set rs = Nothing
%>

