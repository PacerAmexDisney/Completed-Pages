<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Housing Fair Registration</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/style.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />
<script type="text/javascript" src="../css/menu.js"></script>
<style type="text/css">
h3 {
	font-size: 125%;
}
h4 {
	font-size: 115%;
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
<a href="../"><img src="../images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="rightBar">

<p class="pacerinfo">
<strong>PACER Center<br />
952-838-9000</strong>
</p>
<p class="pacerinfo2">
Champions for Children with Disabilities</p>
<p class="pacerinfo3"><a href="http://www.pacer.org/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a>
</p>
<div class="stayinformed">
<a href="index.asp">Visit PACER's Housing Project &gt;&gt;&gt;</a>
</div>
</div>



<div id="maincontent">

	<div id="pagetoporange">
	<div class="printemail">
		<p>
		<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>
		
		</p>
	</div>
	<div id="breadcrumb">
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Housing</a> / Housing Fair Registration
	
	<h1 class="nounderline"><a name="maincontent">Housing Fair Registration</a></h1>
	
</div>
</div>

<div id="pagecontent">

<p style="color: red;">
				
					<%
					Dim myMail, subject, content, importance, bodyformat, number, mailformat, hidden, i, footer, strsubject, strContact, strOrg, strPhone, strEmail
					hidden=Request.Form("hidden")
					if hidden="hi" then
					
						strContact=Request.Form("contactname")
						strOrg=Request.Form("orgname")
						strPhone=Request.form("phone")
						strEmail=Request.form("email")
		
						if strContact <> "" AND inStr(strContact, "@") < 1 AND strOrg <> "" AND strPhone <> "" AND strEmail <> "" AND inStr(strEmail, "@") <> 0 AND inStr(strEmail, ".") <> 0 then 
					
							number="1"
							content = "<strong>Organization Name: </strong>" & strOrg & "<br /><br />"
							content = content & "<strong>Contact Name: </strong>" & strContact & "<br /><br />"
							content = content & "<strong>Phone: </strong>" & strPhone & "<br /><br />"
							content = content & "<strong>E-mail Address: </strong>" & strEmail & "<br /><br />"
							content = content & "<strong>I need access to an electrical outlet: </strong>" & request.form("electric") & "<br /><br />"
						
							footer = vbCrLf & vbCrLf & vbCrLf & "* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *" & vbCrLf & vbCrLf & "This form came from http://www.pacer.org/housing/housingfair.asp."
					
							for i=1 to number
								Set myMail = CreateObject("CDO.Message")
		
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
		myMail.Configuration.Fields.Update
								myMail.From = "pacer@pacer.org"
								myMail.To = "pacer@pacer.org"
						'		myMail.To = "stephanie.rosso@pacer.org"
								myMail.CC = "susan.shimota@pacer.org"
								myMail.Subject = "PACER Housing Fair Participant Registration (Provider)"
								myMail.HTMLBody = content & footer
						'		myMail.TEXTBody = content & footer
								myMail.Send
								Set myMail = Nothing
							next
						
							session("content") = content
						
							'DISPLAY SENT MESSAGE
							
							hidden=""
						'	Response.Write content
							Response.Redirect "housingfairprint.asp"
								
					else
						Response.Write "<strong>To submit your email, please click the back button on your browser and fill in or check the following fields:</strong><br />"
						if strOrg <> "" then
						else 
							Response.Write "<strong>-Please enter your organization's name</strong><br />"
						end if
						if strContact <> "" then
							if inStr(strContact, "@") < 1 then
							else
						 		Response.Write "<strong>-Please enter a valid contact name</strong><br />"
							end if
						else
							Response.Write "<strong>-Please enter a contact name</strong><br />"
						end if
						if strphone <> "" then
						else
							Response.Write "<strong>-Please enter your phone number</strong><br />"
						end if
						if strEmail <> "" then
							if inStr(strEmail, "@") <> 0 then
								if inStr(strEmail, ".") <> 0 then
									if intEmailLength < 35 then
									else
										Response.Write "<strong>-Please check your E-mail address</strong><br />"
								end if
								else
								Response.Write "<strong>-Please check your E-mail address</strong><br />"
								end if
							else	
								Response.Write "<strong>-Please check your E-mail address</strong><br />"
							end if
						else
						Response.Write "<strong>-Please enter your E-mail address</strong><br />"
						end if
						Response.Write "<br /><strong>If you continue to have difficulty, please contact us at 952.838.9000.</strong>"
					end	if
				
				end if
				%>
				
				</p>

<table cellpadding="0" cellspacing="0">
	<tr>
		<td style="background-color: #eee; padding: .5em;" colspan="2">
			<form action="housingfair.asp" method="post">
				<input type="hidden" name="hidden" value="hi" />
				<input type="hidden" name="Redirect" value="../forms/thankyou.asp" />
								
			<table>
					<tr>
						<td>
							<label for="orgname">Organization Name:</label>
						</td>
						<td>
							<input type="text" size="40" id="orgname" name="orgname" />
						</td>
					</tr>
					<tr>
						<td>
							<label for="contactname">Contact Person:</label>
						</td>
						<td>
							<input type="text" size="40" id="contactname" name="contactname" />
						</td>
					</tr>
					<tr>
						<td>
							<label for="phone">Phone:</label>
						</td>
						<td>
							<input type="text" size="15" id="phone" name="phone" />
						</td>
					</tr>
					<tr>
						<td>
							<label for="email">E-mail:</label>
						</td>
						<td>
							<input type="text" size="50" id="email" name="email" />
						</td>
					</tr>
					<tr>
						<td style="padding-top: 1em;">
							Do you need access to an electrical outlet? (Limited availability)
						</td>
						<td style="padding-top: 1em;">
							<input type="radio" id="electricyes" value="Yes" name="electric" /><label for="electricyes">Yes</label> 
							<input type="radio" id="electric" value="No" name="electric" /><label for="electric">No</label>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="Submit" />&nbsp;&nbsp;&nbsp; <input type="reset" value="Clear Form" />
						</td>
					</tr>
			</table>
				<h3>Questions?</h3>
				Contact Susan Shimota, Housing Project Coordinator at (952) 838-1362 or e-mail at <a href="mailto:susan.shimota@PACER.org">susan.shimota@PACER.org</a>

			</form>
		</td>
	</tr>
	<tr style="background-color: white;">
		<td colspan="2"><p style="text-align: right;">
<img border="0" src="../workshops/images/PACER-Logo.jpg" width="200" height="48" style="float: right; padding: 0; margin: 0;" alt="PACER Center Logo: Champions for Children with Disabilities" />
</p></td>
	</tr>
</table>


</div>

<!--END CONTENT-->

</div>
</div>


<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>