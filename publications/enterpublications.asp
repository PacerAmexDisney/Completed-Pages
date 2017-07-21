<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Enter Publications</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/style.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

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
	<a href="../index.asp">Home</a> / <a href="index.asp">Publications</a> / Enter Publications

	<h1>Publications</h1>
	
	</div>

</div>

<div id="pagecontent">

<h2>Enter Publications</h2>

<%
Dim ConStr, rs, conn, sql, i, hidden

hidden=request.form("hidden")
if hidden="hi" then

pubname=Request.form("pubname")
pubcode=Request.form("pubcode")
pubdesc=Request.form("pubdesc")
pubimage=Request.form("pubimage")
pubprice=Request.form("pubprice")
pubpricenotes=Request.form("pubpricenotes")
pubtype=Request.form("pubtype")
publink=Request.form("publink")
pubat=Request.form("AT")
pubbp=Request.form("BP")
pubec=Request.form("EC")
pubebd=Request.form("EBD")
pubjj=Request.form("JJ")
pubmpc=Request.form("MPC")
pubop=Request.form("OP")
pub_daap=Request.form("DAAP")
puballiance=Request.form("ALLIANCE")
pubser=Request.form("SER")
pubhealth=Request.form("Health")
pubsurrogate=Request.form("Surrogate")
pubtransition=Request.form("Transition")
pubtransNCSET=Request.form("TransNCSET")
pubspanish=Request.form("Spanish")
pubhmong=Request.form("Hmong")
pubsomali=Request.form("Somali")
pubfreeparents=Request.form("freeparents")
pubfreekids=Request.form("freekids")
	
	if pubname <> "" AND Len(pubname) < 501 AND Len(pubdesc) < 1000 AND pubtype <> "" then
	
		ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
		Set conn = Server.CreateObject("ADODB.Connection")
		sql = "INSERT INTO [Publications] (pub_name, pub_code, pub_description, pub_image, pub_price, pub_pricenotes, pub_AT, pub_bp, pub_ec, pub_ebd, pub_jj, pub_mpc, pub_op, pub_daap, pub_alliance, pub_ser, pub_health, pub_surrogate, pub_transition, pub_transNCSET, pub_spanish, pub_hmong, pub_somali, pub_type, pub_freetoparents, pub_freetokids, pub_link)" &_
			  "VALUES('" & pubname & "', '" & pubcode & "', '" & pubdesc & "', '" & pubimage & "', '" & pubprice & "', '" & pubpricenotes & "', '" & pubat & "', '" & pubbp & "', '" & pubec & "', '" & pubebd & "', '" & pubjj & "', '" & pubmpc & "', '" & pubop & "', '" & pubdaap & "', '" & puballiance & "', '" & pubser & "', '" & pubhealth & "', '" & pubsurrogate & "', '" & pubtransition & "', '" & pubtransNCSET & "', '" & pubspanish & "', '" & pubhmong & "', '" & pubsomali & "', '" & pubtype & "', '" & pubfreeparents & "', '" & pubfreekids & "', '" & publink & "');"
		conn.open(ConStr)
		conn.execute sql
	else
	
	end if
end if
%>

<!--BEGIN CONTENT-->

<form action="enterpublications.asp" method="post">
<table cellpadding="5" cellspacing="5" style="background-color: #eee;">
<tr>
	<td><label for="pubname">* Publication Name: </label></td>
	<td><input type="text" name="pubname" id="pubname" size="80" /></td>
</tr>
<tr>
	<td><label for="pubcode">* Publication Code: </label></td>
	<td><input type="text" name="pubcode" size="10" id="pubcode" /></td>
</tr>
<tr>
	<td><label for="pubdesc">Publication Description: </label></td>
	<td><textarea name="pubdesc" rows="5" cols="45" id="pubdesc"></textarea></td>
</tr>
<tr>
	<td><label for="pubimage">Publication Image: </label></td>
	<td><input type="text" name="pubimage" size="30" id="pubimage" /></td>
</tr>
<tr>
	<td><label for="pubprice">Price: </label></td>
	<td><input type="text" name="pubprice" size="30" id="pubprice" /></td>
</tr>
<tr>
	<td><label for="pubpricenotes">Price Notes: </label></td>
	<td><input type="text" name="pubpricenotes" size="30" id="pubpricenotes" /></td>
</tr>
<tr>
	<td><label for="pubtype">* Publication Type: </label></td>
	<td><input type="text" name="pubtype" size="30" id="pubtype" /></td>
</tr>
<tr>
	<td><label for="publink">Publication Link: </label></td>
	<td><input type="text" name="publink" size="30" id="publink" /></td>
</tr>
<tr>
	<td>Categories:</td>
	<td>
	<input type="checkbox" name="AT" id="AT" value="yes" /><label for="AT">Assistive Technology</label><br />
	<input type="checkbox" name="BP" id="BP" value="yes" /><label for="BP">Bullying Prevention</label><br />
	<input type="checkbox" name="EC" id="EC" value="yes" /><label for="EC">Early Childhood</label><br />
	<input type="checkbox" name="EBD" id="EBD" value="yes" /><label for="EBD">Emotional and Behavioral Disorders</label><br />
	<input type="checkbox" name="JJ" id="JJ" value="yes" /><label for="JJ">Juvenile Justice</label><br />
	<input type="checkbox" name="MPC" id="MPC" value="yes" /><label for="MPC">Minnesota Parent Center</label><br />
	<input type="checkbox" name="OP" id="OP" value="yes" /><label for="OP">Other Products</label><br />
	<input type="checkbox" name="DAAP" id="DAAP" value="yes" /><label for="DAAP">Disability Awareness and Abuse Prevention</label><br />
	<input type="checkbox" name="ALLIANCE" id="ALLIANCE" value="yes" /><label for="ALLIANCE">Parent Center and Parent Trainer Resources (ALLIANCE)</label><br />
	<input type="checkbox" name="SER" id="SER" value="yes" /><label for="SER">Special Education Rights</label><br />
	<input type="checkbox" name="Health" id="Health" value="yes" /><label for="Health">Special Health Needs</label><br />
	<input type="checkbox" name="Surrogate" id="Surrogate" value="yes" /><label for="Surrogate">Surrogate Parents</label><br />
	<input type="checkbox" name="Transition" id="Transition" value="yes" /><label for="Transition">Transition for Youth with Disabilities</label><br />
	<input type="checkbox" name="TransNCSET" id="TransNCSET" value="yes" /><label for="TransNCSET">Transition-NCSET</label><br />
	<input type="checkbox" name="Spanish" id="Spanish" value="yes" /><label for="Spanish">Translated Materials-Spanish</label><br />
	<input type="checkbox" name="Hmong" id="Hmong" value="yes" /><label for="Hmong">Translated Materials-Hmong</label><br />
	<input type="checkbox" name="Somali" id="Somali" value="yes" /><label for="Somali">Translated Materials-Somali</label>
	</td>
</tr>
<tr>
	<td>FREE?</td>
	<td>
	<input type="checkbox" name="freeparents" id="freeparents" value="yes" /><label for="freeparents">For Parents</label><br />
	<input type="checkbox" name="freekids" id="freekids" value="yes" /><label for="freekids">For Kids</label>
	</td>
</tr>
<tr>
	<td style="text-align: right;"><input type="submit" value="Submit" /></td>
	<td><input type="reset" value="Clear" /><input type="hidden" value="hi" name="hidden" /></td>
</tr>
</table>
</form>

</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>