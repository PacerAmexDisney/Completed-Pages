<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>

<% ' ----------------------------------------------- FORM SECURITY ITEMS -------------------------------------------- %>
<!--#include virtual="/formsecurity/sha256.asp"-->
<!--#include virtual="/formsecurity/validate.asp"-->
<% ' ----------------------------------------------- END FORM SECURITY ITEMS -------------------------------------------- %>
<%
  Dim validationResults, rs, conn, ConStr
  ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
  Set conn = Server.CreateObject("ADODB.Connection")
  conn.open ConStr
   
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
   
  
  
  
  Function UpdateDB()
  	Dim sql
	
		
	sql = "INSERT INTO bullyEvents ( event_name, event_date, event_time, event_state, event_city, event_locationaddress, event_description, event_website, event_contactperson, event_contactphone, event_contactemail, event_contactpassword )" & _
			"VALUES ('" & Encode(Request.Form("ename")) & "', '" & Request.Form("edate") & "', '" & Encode(Request.Form("etime")) & "', '" & Request.Form("estate") & "', '" & Encode(Request.Form("ecity")) & "', '" & Encode(Request.Form("eaddress")) & "', '" & Encode(Request.Form("edesc")) & "', '" & Encode(Request.Form("eurl")) & "', '" & Encode(Request.Form("cname")) & "', '" & Encode(Request.Form("cphone")) & "', '" & Encode(Request.Form("cemail")) & "', '" & Encode(Request.Form("cpassword")) & "');"

	conn.execute(sql)
	
	sql = "SELECT Top 1 event_ID FROM bullyEvents Where event_name = '" & Encode(Request.Form("ename")) & "' ORDER BY event_ID DESC;"
	
	Set rs = conn.execute(sql)
  
  End Function
  
  
  Function BotCheck()
	Dim isValidForm
  	isValidForm = formValid
  
  	If isValidForm = "True" Then 'Passes Bot Check
		BotCheck = true
	Else
		BotCheck = false
    End If

  End Function
  
  Function Validate()
  	Dim result
	result = true
	
	If Not BotCheck Then
		result = false
		validationResults = validationResults & "Anti-Bot measures have flagged your submission. Please Go Back and Re-Submit your information.<br />" & VbCrLf
	End If
  	If Not (Len(Request.Form("ename")) > 0 ) Then
		result = false
		validationResults = validationResults & "Event Name is Required<br />" & VbCrLf
	End If
  	If Not (Len(Request.Form("edate")) > 0  And IsDate(Request.Form("edate"))) Then
		result = false
		validationResults = validationResults & "A Vaild Event Date is Required<br />" & VbCrLf
	End If
  	If Not (Len(Request.Form("edesc")) > 0 ) Then
		result = false
		validationResults = validationResults & "Event Description is Required<br />" & VbCrLf
	End If
  	If Not (Len(Request.Form("estate")) > 0 ) Then
		result = false
		validationResults = validationResults & "Event State Information is Required<br />" & VbCrLf
	End If
  	If Not (Len(Request.Form("ecity")) > 0 ) Then
		result = false
		validationResults = validationResults & "Event City Information is Required<br />" & VbCrLf
	End If
  	If Not (Len(Request.Form("eaddress")) > 0 ) Then
		result = false
		validationResults = validationResults & "Event Address / Location Information is Required<br />" & VbCrLf
	End If
  	If Not (Len(Request.Form("cname")) > 0 ) Then
		result = false
		validationResults = validationResults & "Your Contact Name is Required<br />" & VbCrLf
	End If
  	If Not (Len(Request.Form("cemail")) > 0 ) Then
		result = false
		validationResults = validationResults & "Your Email Address is Required<br />" & VbCrLf
	End If
  	If Not (Len(Request.Form("cpassword")) > 0 ) Then
		result = false
		validationResults = validationResults & "A Password is Required<br />" & VbCrLf
	End If
  	If Not (Request.Form("cpassword") = Request.Form("cpasswordconfirm")) Then
		result = false
		validationResults = validationResults & "Your Password Confirmation did not match the original Password that you entered.<br />" & VbCrLf
	End If

	validationResults = validationResults & "<p>If you continue to have problems please contact <a href=""mailto:bullying411@pacer.org"">bullying411@pacer.org</a>.</p>" & VbCrLf
	
	Validate = result
  End Function
  
  Dim myMail, subject, head, clientbody, pacerbody, info, footer
  
  Function SendMail()
	subject = "National Bullying Prevention Center Community Event Submission" 

	head = head & "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/tr/xhtml1/DTD/xhtml1-transitional.dtd"">" & VbCrLf
	head = head & "<html><head>" & VbCrLf
	head = head & "<style type=""text/css"">" & VbCrLf
	head = head & "p {1em;}" & VbCrLf
	head = head & "a {color: #09c; text-decoration: none; font-weight: bold;}" & VbCrLf
	head = head & "a:hover, a:active {text-decoration: underline;}" & VbCrLf
	head = head & "img {border:none;}" & VbCrLf
	head = head & "h2 {color: #390;}" & VbCrLf
	head = head & "</style>" & VbCrLf
	head = head & "<title>National Bullying Prevention Center - Event Information Submission</title>" & VbCrLf
	head = head & "</head>" & VbCrLf
	head = head & "<body style=""font-family: arial, sans-serif; background-color: #eee;"">" & VbCrLf
	head = head & "<table id=""main"" cellspacing=""0"" cellpadding=""20"" style=""border: solid 1px #772828; background-color: #ffffff;"">" & VbCrLf
	head = head & "<tr>" & VbCrLf
	head = head & "  <td id=""head1"" colspan=""2"" style=""color: #000000; font-size: 120%; padding: 5px; background-color: #ffffff;"" height=""105""><img border=""0"" src=""http://www.pacer.org/bullying/images/header.jpg"" width=""624"" height=""105"" alt=""National Bullying Prevention Center - The End of Bullying Begins with You"" /></td>" & VbCrLf
	head = head & "</tr>" & VbCrLf
	head = head & "" & VbCrLf
	head = head & "<tr><td colspan=""2"" style=""font-family: arial, sans-serif;"">" & VbCrLf

	clientbody = clientbody & "<p style=""font-size:1.2em; text-align:center; margin-top:20px;""><strong>Thank you for Submiting Your Event Information<br /></strong></p>" & VbCrLf
	clientbody = clientbody & "<p>Submissions will be reviewed, approved and posted within approximately five business days.</p>" & VbCrLf
	clientbody = clientbody & "<p>You will need this email address and the password you entered to update any information that may change at:</p>" & VbCrLf
	clientbody = clientbody & "<p><a href=""http://www.pacer.org/bullying/nbpm/eventRegistrationLogin.asp"">http://www.pacer.org/bullying/nbpm/eventRegistrationLogin.asp</a> </p>" & VbCrLf
	clientbody = clientbody & "<p>Should you have any questions regarding your submission, please contact us at (952) 838-9000 or e-mail <a href=""mailto:bullying411@pacer.org"">bullying411@pacer.org</a>.</p>" & VbCrLf

	pacerbody = pacerbody & "<h3><a href=""http://www.pacer.org/bullying/nbpm/eventRegistrationapproval.asp?id=" & rs("event_ID") & "&amp;rwr=false&amp;servcheck=j3s9ed4oG4j"">Approve Submission</a>&nbsp;&nbsp;&mdash;&nbsp;&nbsp;<a href=""http://www.pacer.org/bullying/nbpm/eventRegistrationapproval.asp?id=" & rs("event_ID") & "&amp;rwr=true&amp;servcheck=j3s9ed4oG4j"">Approve and mark as RWR event</a></h3>" & VbCrLf

	info = info & "<table cellspacing=""5"" cellpadding=""5"" width=""90%"" style=""margin:0px auto; padding:5px"">" & VbCrLf
	info = info & "<tr><th colspan=""2"" style=""color:#F15C32"">Event Information</th></tr>" & VbCrLf
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
	info = info & "  <tr><th colspan=""2"" style=""color:#F15C32"">Contact Information</th></tr>" & VbCrLf
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
	myMail.To = Request.Form("cemail")
	myMail.Subject = subject 
	myMail.HTMLBody = head & clientbody & info & footer
		
	myMail.Send
	
	myMail.To = "bullying411@pacer.org; jordan.bohm@pacer.org"
	myMail.HTMLBody = head & pacerbody & info & footer
	
	myMail.send
	
	Set myMail = nothing
  	RemoveSessionInfo

  End Function
%>


  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="robots" content="noindex,nofollow" />
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
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/nbpm/">National Bullying Prevention Month</a> / <a href="/bullying/nbpm/communityevents.asp">Community Events</a> /</div>

  <div class="content">
    <h1 id="maincontent">Event Registration Submission</h1>
<%
  If Not Validate() Then
  	Response.Write("<p>")
	Response.Write(validationResults)
	Response.Write("</p>")
  Else
  	UpdateDB()
	If IsNull(rs) Then
		Response.Write("<h3 style=""color:red"">Error - Database has Not Been Updated - No Records Returned</h3>")
		Response.Write("<p>If you continue to have problems please contact <a href=""mailto:bullying411@pacer.org"">bullying411@pacer.org</a>.</p>")
	Else
		SendMail()
		Response.Write("<p><a href=""/bullying/nbpm/communityevents.asp"">Return to the Events Page</a></p>")
		Response.Write(Encode(clientbody) & VbCrLf & info)
	End If
  End If
%>


  <!-- end .content --></div>
<!--#include virtual="/bullying/footer.html"-->
  <!-- end .container --></div>
</body>
</html>
<%
  conn.close
  Set rs = nothing
%>