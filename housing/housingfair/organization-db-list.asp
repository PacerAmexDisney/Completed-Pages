<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim rs, catrs, allcatrs
Dim rs_cmd
Dim selectedID, catList, punc

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


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="robots" content="noindex,nofollow">
<title>Housing DB Listing</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/stylenoleftright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />

<style type="text/css">
tr:even td {
	background:#A3A9C3;
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
	<div id="breadcrumb">
	<a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> / <a href="/housing/">Housing</a> /
	
	<h1 class="nounderline">Housing Website Database Listing</h1>
	
</div>
</div>

<div id="pagecontent">

<h1>Categories</h1>
<%=allCatList%>
<hr />
<h1>Organizations</h1>

<table cellpadding="20" cellspacing="20"><tr>
<th>ID</th><th>Organization Name</th><th>Categories Currently Listed In</th>
</tr>
<%
  Dim currentName, currentID
  oSelected = ""
		Do Until rs.EOF
			If currentName <> (rs.Fields.Item("name").Value) And rs.Fields.Item("ID").Value <> 65 Then
				
				currentName = rs.Fields.Item("name").Value
				
				punc = ""
				catList = ""
				currentID = rs.Fields.Item("ID").Value
				rs_cmd.CommandText = "SELECT dbo.Housing_Categories.category FROM dbo.Housing_Categories INNER JOIN dbo.Housing_ProvidersCategories ON dbo.Housing_Categories.ID = dbo.Housing_ProvidersCategories.category_ID WHERE (((dbo.Housing_ProvidersCategories.provider_ID)=" & currentID & ")) ORDER BY dbo.Housing_Categories.category;"
				Set catrs = rs_cmd.Execute
	
				Do Until catrs.EOF
					catList = catList & punc & catrs("category")
					punc = ", "
					catrs.MoveNext
				Loop
	
				set catrs = nothing
%>
				<tr>
                <td>
				<%=currentID%>
                </td>
                <td>
                 <%=currentName%> 
				 </td>
				 <td>
				 <%=catList%>
                 </td>
                 </tr>
<%
			End If
			rs.MoveNext
		Loop
%>
</table>
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
