<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Housing Fair Registration</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/style.css" media="screen, projection, print" />
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
<h2>Stay Informed</h2>
Receive the latest PACER Center information on issues important to you. 
<a href="../forms/index.asp">Sign up now</a>.
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
							content = content & "<strong>Description: </strong><br />" & request.form("description") & "<br /><br />"
						
							footer = vbCrLf & vbCrLf & vbCrLf & "* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *" & vbCrLf & vbCrLf & "This form came from http://www.pacer.org/housing/housingfair.asp."
					
							for i=1 to number
								Set myMail = CreateObject("CDO.Message")
		
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=1
		myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory")="c:\inetpub\mailroot\pickup"
		myMail.Configuration.Fields.Update
								myMail.From = "pacer@pacer.org"
						'		myMail.To = "pacer@pacer.org"
								myMail.To = "stephanie.rosso@pacer.org"
								myMail.CC = "susan.shimota@pacer.org"
								myMail.CC = "slrosso@gmail.com"
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
		<td style="text-align: center; font-size: 110%; background-color: #09c; color: #fff; border-bottom: solid 1px #ccc;" colspan="2">
		<p style="margin-top: 1em; font-weight: bold; font-size: 125%;">You're invited to exhibit at:</p>
		<h2 style="font-size: 170%;">PACER's Housing Resource and Information Fair</h2>
		<p style="font-weight: bold; font-size: 125%;">
		Saturday, October 13<br />
		9:00 a.m. - Noon</p>
		</td>
	</tr>
	<tr>
		<td style="vertical-align: middle; padding: 0; margin: 0;" rowspan="2">
			<img src="../workshops/images/housingfair.jpg" width="450" height="295" alt="teen girl and mother, leaning on each other and smiling" style="border: 1px solid black; margin-top: .2em;" />
		</td>
		<td style="padding: .5em; margin: 0; font-size: 110%; vertical-align: middle;">
			<p>
			Please join us for this exciting opportunity to connect with families who are eager to find out what housing resources your agency/company has to offer.
			</p>
			<h3>Questions?</h3>
			<p>
			Contact Susan Shimota, Housing Project Coordinator at (952) 838-1362 or e-mail at 
			<a href="mailto:susan.shimota@PACER.org">susan.shimota@PACER.org</a>
			</p>
		</td>
	</tr>
	<tr>
		<td style="padding: 0; margin: 0;">
			<p style="text-align: right; padding: 0; margin: 0;">
			<img border="0" src="../workshops/images/PACER-Logo.jpg" width="200" height="48" style="float: right; padding: 0; margin: 0;" alt="PACER Center Logo: Champions for Children with Disabilities" />
			</p>
		</td>
	</tr>
	<tr>
		<td style="margin: 0; padding: .5em; background-color: #eee; border-top: solid 1px #ccc;" colspan="2">
			<p>
			<span style="font-weight: bold; font-size: 115%;">PACER&#8217;s third Housing Resource and Information Fair will partner parents and providers in a unique setting that will include a keynote speaker, exhibitors, and question and answer rooms. </span><br /><br />
			The continuing goal of PACER&#8217;s Housing Program is to develop information and resources to help parents of children and young adults with disabilities understand their options for independent living and housing.
			</p>
			<p style="margin-bottom: 0;">
			<strong>PACER's Housing Program</strong>
			</p>
			<ul style="margin-top: 0;">
				<li>Provides individual assistance by phone or in person </li>
				<li>Presents workshops on housing options, services and supports </li>
				<li>Provides a housing guidebook and Web site including national and state housing resources to individuals with disabilities and their parents</li>
			</ul>
			<p>
			We will only be able to accommodate a <strong>limited number of providers</strong> and support organizations. PACER reserves the right to select providers based on disability type and population served. Availability for those chosen is on a first come first serve basis. <em>Participation in this housing fair does not imply an endorsement by PACER Center.</em> 
			</p>
		</td>
	</tr>
	<tr>
		<td colspan="2" style="padding: .5em;">
		<h3>Registration and Payment Information</h3>
		<p>
		Please arrive by 8:00 a.m. to obtain your table assignment and to set up. Information tables cannot be taken down until after 12:00 p.m.
		</p>
		<p>
		Table size is: 18" x 60". There are limited electrical outlets for laptop presentations.
		</p>
		<p>
		A fee of $50.00 is requested to participate. <strong>Fees will be waived for non-profit parent and advocacy organizations that support families seeking housing assistance.</strong>
		</p>
		<h4 style="text-transform: uppercase;">Registration</h4>
		<p>
		Fill in the form below and fax to PACER at (952) 838-0199, Attn: Susan 
		Shimota, Housing Project Coordinator by Friday, September 28, 2007. <br />
		</p>
		<h4 style="text-transform: uppercase;">Payment</h4>
		<p>Attach your check (payable to PACER) and send with application to:<br /><br />
		<strong>PACER Center</strong><br />
		8161 Normandale Boulevard<br />
		Minneapolis, MN 55437<br />
		Attn: Accounting Dept.
		</p>
		</td>		
	</tr>
	<tr>
		<td style="background-color: #eee;" colspan="2">
			<table width="100%">
				<tr>
					<td style="border: solid 1px black; padding: .2em;">
					Organization Name: 
					</td>
				</tr>
				<tr>
					<td style="border: solid 1px black; padding: .2em;">
					Contact Person: 
					</td>
				</tr>
				<tr>
					<td style="border: solid 1px black; padding: .2em;">
					Phone: 
					</td>
				</tr>
				<tr>
					<td style="border: solid 1px black; padding: .2em;">
					E-mail: 
					</td>
				</tr>
				<tr>
					<td style="border: solid 1px black; padding: .2em;">
					Do you need access to an electrical outlet? (Limited 
					availability): <font face="Arial">&nbsp;&#9633; </font>Yes&nbsp;&nbsp;
					<font face="Arial">&#9633; </font>No</td>
				</tr>
				<tr>
					<td style="border: solid 1px black; padding: .2em .2em 5em .2em;">
					Please provide a brief description of your organization that 
					will be published for our participants including 
					disabilities and area served: 
					</td>
				</tr>
			</table>
		</td>
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