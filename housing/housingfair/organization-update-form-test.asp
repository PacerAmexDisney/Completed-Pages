<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim rs, catrs, allcatrs
Dim rs_cmd

'Create Providers Recordset for current information and dropdown list
Set rs_cmd = Server.CreateObject ("ADODB.Command")
rs_cmd.ActiveConnection = MM_PACER_WEB_STRING
rs_cmd.CommandText = "SELECT dbo.Housing_Providers.ID, dbo.Housing_Providers.name, dbo.Housing_Providers.url, dbo.Housing_Providers.contact_person, dbo.Housing_Providers.phone, dbo.Housing_Providers.email, dbo.Housing_Providers.description, dbo.Housing_Providers.hidden_contact_person, dbo.Housing_Providers.hidden_email, dbo.Housing_Providers.last_updated, dbo.Housing_Categories.category FROM dbo.Housing_Providers LEFT JOIN (dbo.Housing_Categories RIGHT JOIN dbo.Housing_ProvidersCategories ON dbo.Housing_Categories.ID = dbo.Housing_ProvidersCategories.category_ID) ON dbo.Housing_Providers.ID = dbo.Housing_ProvidersCategories.provider_ID ORDER BY dbo.Housing_Providers.name, dbo.Housing_Categories.category; " 
rs_cmd.Prepared = true
Set rs = rs_cmd.Execute


'Create Complete Categories Listing for the Categories Pop Up
Dim allCatList
rs_cmd.CommandText = "SELECT category FROM Housing_Categories ORDER BY category;"
Set allcatrs = rs_cmd.Execute
Do Until allcatrs.EOF
	allCatList = allCatList & "<p>" & allcatrs("category") & "</p>" & vbCrLf
	allcatrs.MoveNext
Loop
Set allcatrs = nothing


'Create Category List for the selected organization in case they are in multiple categories.
Dim selectedID, catList, punc
punc = ""
If IsNumeric(Request.QueryString("org_id")) Then 
	selectedID = cInt(Request.QueryString("org_id"))
	rs_cmd.CommandText = "SELECT dbo.Housing_Categories.category FROM dbo.Housing_Categories INNER JOIN dbo.Housing_ProvidersCategories ON dbo.Housing_Categories.ID = dbo.Housing_ProvidersCategories.category_ID WHERE (((dbo.Housing_ProvidersCategories.provider_ID)=" & selectedID & ")) ORDER BY dbo.Housing_Categories.category;"
	Set catrs = rs_cmd.Execute
	
	Do Until catrs.EOF
		catList = catList & punc & catrs("category")
		punc = ", "
		catrs.MoveNext
	Loop
	
	set catrs = nothing
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="robots" content="noindex,nofollow">
<title>Housing Fair Information Update</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/stylenoleftright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.6.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
function fillData(){
	var mySel = document.getElementById("organizationSelect");
	window.location.replace('http://www.pacer.org/housing/housingfair/organization-update-form-test.asp?org_id=' + mySel.options[mySel.selectedIndex].value);
}

function ShowContacts() {
	$("#categoryList").fadeIn('slow');
}

function HideContacts() {
	$("#categoryList").hide();	
}

</script>
<style type="text/css">
#currInfo td{
	vertical-align:top;
}
#updateForm h3 {
	text-align:center;
}
#updateForm td {
	vertical-align:top;
}
#updateForm div {
	clear:left;
}
.adjusted{
	position:relative;
}
#updateForm input, #updateForm textarea, #updateForm label {
	display:block;
	float:left;
	margin-bottom:15px;
}
#updateForm .adjusted input, #updateForm .adjusted textarea {
	width:315px;
	background:#E9E9E9;
}
#updateForm .adjusted label {
	font-weight:bold;
	text-align:right;
	padding-right:5px;
	width:170px;	
}
#updateForm .inputComment{
	clear:left;
	padding-left:175px;
}
#categoryList{
	width:300px;
	position:absolute;
	left:-209px;
	top:-60px;
	background:#69C;
	border:1px solid #0C6;
	z-index:10;
	display:none;
}
#categoryList div {
	border:1px solid #ccc;
	background:#E2E2E2;
	padding:0px 10px 10px 10px;
	margin:5px;
	
}
</style>
</head>

<body>
<div id="skiptocontent">
<a href="#pagecontent">Skip to main content</a>
</div>

<div id="wrapper">

<div id="main">

<div id="header">
	<div>			<!--#include virtual="/googleSearchBox.htm"-->
            <!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>
<div id="maincontent">

	<div id="pagetoporange">
	<div class="printemail">
		<p>
		<img src="/css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print();">Print page</a>
		
		</p>
	</div>
	<div id="breadcrumb">
	<a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> / <a href="/housing/">Housing</a> /
	
	<h1 class="nounderline">Housing Fair Website Information Update/Confirmation</h1>
	
</div>
</div>

<div id="pagecontent">

<img src="/housing/housingfair/images/information-symbol.png" width="150" height="150" alt="" align="right" />
<h2>Thank You for taking the time to verify that we have your correct information</h2>
<p>This information will be posted on our website and used for our printed Housing Fair Resources book.</p>
<p style="color:red">Begin by selecting your Organization below or selecting &quot;Create a new Listing&quot; if you don't see your Organization in this list.</p>
<!--
<noscript><h2 style="color:red">Java Script is required to pull this information.  Please enable Java Script and refresh your browser</h2></noscript>
-->
<%
  Dim currentName, oSelected
  oSelected = ""
%>

<select id="organizationSelect" name="organizationSelect" onchange="fillData()" style="width:350px">
<option value="">Select your Organization</option>
<option value="65"><strong>Create a new Listing - We are not in this list</strong></option>
<%
		Do Until rs.EOF
			If currentName <> (rs.Fields.Item("name").Value) And rs.Fields.Item("ID").Value <> 65 Then
				currentName = rs.Fields.Item("name").Value
				If cint(rs.Fields.Item("ID").Value) = selectedID Then 
					oSelected = " selected=""selected"""
				End If
%>				
				<option value="<%=rs.Fields.Item("ID").Value%>"<%=oSelected%>><%=rs.Fields.Item("name").Value%></option>
<%
				oSelected = ""
			End If
			rs.MoveNext
		Loop
%>
</select>

<%
  Dim currID
  rs.MoveFirst
  currID = -1
  If IsNumeric(Request.QueryString("org_id")) And Not rs.EOF And Request.QueryString("org_id") > 0 Then
	currId = 0
	If not rs.EOF Then
		currId = rs.Fields.Item("ID").Value
	End If
	Do Until cInt(rs.Fields.Item("ID").Value) = selectedID
		rs.MoveNext
		If rs.EOF Then Exit Do
		currID = cInt(rs.Fields.Item("ID").Value)
	Loop
	'Incase we fell off the end of the recordset we need to verify that we are on the correct record
Response.Write("<h1>CurrID:" & currID & " -- SelectedID: " & selectedID & "</h1>")	
	If currID <> selectedID Then
%> 
		
		<h2 style="color:red; text-align:center; margin:30px auto;">Organization Information Not Found</h2>
<%
	Else
%>
		<table style="clear:both;" id="orgInfo">
		<tr>
		<td valign="top" width="475" style="padding-right:5px;">
		<h3>Current Information</h3>
		<table id="currInfo" cellpadding="5">
			<tr>
			<td width="170"><strong>Company Name:</strong></td>
			<td width="300" id="c_name"><%=(rs.Fields.Item("name").Value)%></td></tr>
			<tr><td><strong>Category:</strong></td><td id="c_category"><%=catList%></td></tr>
			<tr><td><strong>Website URL:</strong></td><td id="c_url"><%=(rs.Fields.Item("url").Value)%></td></tr>
			<tr><td><strong>Displayed Contact Person:</strong></td><td id="c_contact_person"><%=(rs.Fields.Item("contact_person").Value)%></td></tr>
			<tr><td><strong>Displayed Contact Email:</strong></td><td id="c_email"><%=(rs.Fields.Item("email").Value)%></td></tr>
			<tr><td><strong>Phone:</strong></td><td id="c_phone"><%=(rs.Fields.Item("phone").Value)%></td></tr>
			<tr><td><strong>Company Description:</strong></td><td id="c_description"><%=(rs.Fields.Item("description").Value)%></td></tr>
			<tr><td><strong>* Hidden Contact Person:</strong><br /></td><td id="c_hidden_contact_person">
		<%
			If Len(rs.Fields.Item("hidden_contact_person").Value) > 0 Then
				Response.Write(rs.Fields.Item("hidden_contact_person").Value)
			Else
				Response.Write("&lt;none&gt;")
			End If
		%>
        	</td></tr>
			<tr><td><strong>* Hidden Email:</strong><br /></td><td id="c_hidden_email">
		<%
			If Len(rs.Fields.Item("hidden_email").Value) > 0 Then
				Response.Write(rs.Fields.Item("hidden_email").Value)
			Else
				Response.Write("&lt;none&gt;")
			End If
		%>
            </td></tr>
		</table>
		<p>* - <strong>for internal contact only. This will not be displayed or printed.</strong> This information is only required if you don't list a public email or if you want us to request future information updates from an email other than your organizations public displayed email address.</p>
		<p>Last updated: <em class="date" style="letter-spacing:.15em;"><%=(rs.Fields.Item("last_updated").Value)%></em></p>
		</td>
		<td valign="top" width="575" style="border-left:1px solid #ccc; padding-left:10px;">
		<h3>Update Information Form</h3>
		<p class="inputComment">You only need to fill in the information that you would like to be changed from the current information. If you would like us to remove any current information just specify <strong>REMOVE</strong> in the Update Information Form below.</p>
		<form id="updateForm" action="organization-information-sent.asp?org_id=<%=Request.QueryString("org_id")%>" method="post">
        <input type="hidden" id="formRecord" name="formRecord" value="<%=Now()%>" />
        <input type="hidden" id="formCurrentCategories" name="formCurrentCategories" value="<%=catList%>" />
        
        
        <div class="normalInput" style="padding:10px; border:2px solid #ccc; font-size:1.1em; background-color:#FFC; margin-bottom:10px;">
 		<label for="u_allok"><strong>No Changes Needed </strong></label>
 		<input type="checkbox" name="u_allok" tabindex="100" value="All OK" />
		<p class="inputComment" style="padding-left:165px; padding-top:0px;">Check this if your current information on the left is all current and correct then click submit at the bottom of the page.</p>
		</div>
		<div class="adjusted"><label for="u_name">Organization Name: </label><input type="text" name="u_name" maxlength="500" tabindex="200" /></div>
        <div class="adjusted">
        		<div id="categoryList">
                <div id="innerCategoryList">
                	<p style="text-align:right; margin:0"><a href="javascript:HideContacts();">Close List</a></p>
        			<h3 align="center">Availible Categories</h3>
					<%=allCatList%>
		        </div></div>

        
        <label for="u_category">Categories:<br /><br />
        										 <a href="javascript:ShowContacts();">Show Categories List</a></label>
        <input type="text" name="u_category" maxlength="500" tabindex="250" />
		<p class="inputComment">Your organization can be listed in multiple places if you provide services that cover multiple categories. You can list all categories that would apply to your organization from the list above.</p>
		</div>
		<div class="adjusted"><label for="u_url">Website URL: </label><input type="text" name="u_url" maxlength="500" tabindex="300" /></div>
		<div class="adjusted"><label for="u_contact_person">Displayed Contact Person: </label><input type="text" name="u_contact_person" maxlength="500" tabindex="400" /></div>
		<div class="adjusted"><label for="u_email">Displayed Contact Email: </label><input type="text" name="u_email" maxlength="500" tabindex="500" /></div>
		<div class="adjusted"><label for="u_phone">Phone: </label><input type="text" name="u_phone" maxlength="50" tabindex="600" /></div>
		<div class="adjusted"><label for="u_description">Company Description: </label><textarea name="u_description" rows="10" tabindex="700"></textarea></div>
		<div class="adjusted"><label for="u_hidden_contact_person">* Hidden Contact Person: </label><input type="text" name="u_hidden_contact_person" maxlength="500" tabindex="800" /></div>
		<div class="adjusted">
		<label for="u_hidden_email">* Hidden Contact Email: </label><input type="text" name="u_hidden_email" maxlength="500" tabindex="900" />
		<p class="inputComment">* - <strong>for internal contact only. This will not be displayed or printed.</strong> This information is only required if you don't list a public email or if you want us to request future information updates from an email other than your publicly displayed email adderess.</p>
		</div>
		<div class="adjusted"><label for="u_note">Additional Notes:<br />
		If there is anything else you would like to let us know.</label><textarea name="u_note" rows="10" tabindex="1000"></textarea></div>
		<div><input style="margin:15px auto; float:right" type="submit" value="Submit Updated Information" tabindex="1100" /></div>
		</form>
        </td>
		</tr>
		</table>
		

<%
	End If
  End If
%>


<p>If you are having issues please contact Susan Shimota, Housing Project Coordinator at (952) 838-1362 or e-mail at <a href="mailto:susan.shimota@PACER.org">susan.shimota@PACER.org</a></p>
<div id="pageextender" style="clear:both">&nbsp;</div>
<!--END CONTENT-->
</div>
</div>
</div>


<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>
<%
rs.Close()
Set rs = Nothing
%>
