<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
'Redirects for Old Categories
Select Case Request.QueryString("page") 
	Case "MN-Disability-Organizations" 
		Response.Redirect("/housing/organizations.asp?page=MN-Organizations")
	Case "MN-Providers" 
		Response.Redirect("/housing/organizations.asp?page=Residential-Services")
	Case "Support-Services" 
		Response.Redirect("/housing/organizations.asp?page=Residential-Services")
	Case "Resource-Referal" 
		Response.Redirect("/housing/organizations.asp?page=Residential-Services")
	Case "Home-Financing" 
		Response.Redirect("/housing/organizations.asp?page=Financing")
End Select

Dim providers__MMColParam
providers__MMColParam = "housingproviders.asp"
If (Request.QueryString("page") <> "") Then 
  providers__MMColParam = Request.QueryString("page")
End If
%>
<%
Dim providers
Dim providers_cmd
Dim providers_numRows

Set providers_cmd = Server.CreateObject ("ADODB.Command")
providers_cmd.ActiveConnection = MM_PACER_WEB_STRING
providers_cmd.CommandText = "SELECT Housing_Providers.*, Housing_Categories.parent_page, Housing_Categories.category FROM Housing_Providers INNER JOIN (Housing_Categories INNER JOIN Housing_ProvidersCategories ON Housing_Categories.ID = Housing_ProvidersCategories.category_ID) ON Housing_Providers.ID = Housing_ProvidersCategories.provider_ID WHERE parent_page = ? ORDER BY Housing_Providers.name" 
providers_cmd.Prepared = true

providers_cmd.Parameters.Append providers_cmd.CreateParameter("param1", 200, 1, 150, providers__MMColParam)




Set providers = providers_cmd.Execute
providers_numRows = 0
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Housing Project: 
<%If Not providers.EOF Then%>
<%=(providers.Fields.Item("category").Value)%>
<%End If%>

</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />
<style type="text/css">
#maincontent #pagecontent h3 {
	border-top:solid 1px #C60;
	text-transform:none;
	padding:5px 0px;
	margin:5px 0px;
}
#maincontent #pagecontent .contactInfo {
	line-height:1.5;
}
</style>
</head>

<body>
<div id="skiptocontent">
<a href="#maincontent">Skip to main content</a>
</div>

<div id="wrapper">

<div id="main">

<div id="header" style="zoom:1">
	<div>			<!--#include virtual="/googleSearchBox.htm"-->
      <!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>
<div id="topbar">
<div id="breadcrumb">

	<a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> / <a href="/housing/">Housing Project</a> / Housing Organizations
	
	<h1 id="pageTop">Housing Project</h1>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">Housing Navigation Menu</h2>
<!--#include virtual="/housing/leftNav.html" -->


</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="org-<%=providers__MMColParam%>";
	// any Subtree that I want to Display
	var showTree = "org-sub";
	
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "treemenu") {
			//Any additional subTrees that you want to skip should be added here. like this (subTrees[i] != subTree1 || subTrees[i] != subTree2)
			if (subTrees[i].id != showTree) {
				subTrees[i].className = "treemenuhidden";
			}
		}
	}
</script>

<div id="maincontent">

<div id="pagecontent">


<!--BEGIN CONTENT-->

<%If  Request.QueryString("page") = "Individualized-Services" Then %>
	<div class="alertBox">
    <p><strong>This Category Includes:</strong></p>
    <ul>
      <li>Home  Care Services</li>
      <li>Personal  Care Assistance (PCA)&nbsp; </li>
      <li>Home  and Community Based Waiver Services (HCBS) </li>
      <li>Consumer  Directed Community Supports (CDCS)</li>
      <li>Fiscal  Entity&nbsp; </li>
      <li>Personal  Support&nbsp;&nbsp; </li>
      <li>In-home  Support Services&nbsp; </li>
      <li>Independent  Living Skills (ILS)&nbsp;&nbsp; </li>
      <li>Semi-Independent  Living Services (SILS)&nbsp;&nbsp; </li>
      <li>Supported  Living Services (SLS)</li>
      <li>Respite&nbsp; </li>
      <li>Adult  Rehabilitative Mental Health (ARHMS)&nbsp; </li>
      <li>Housing Access  Services (HAC)</li>
    </ul>
	</div>
<%End If%>
<%If  Request.QueryString("page") = "Residential-Services" Then %>
	<div class="alertBox">
    <p><strong>This Category Includes:</strong></p>
    <ul>
      <li>Community  Residential Settings
      <ul>
        <li>Adult  Corporate and Family Foster Care</li>
        <li>Group Homes</li>
        </ul>
        </li>
      <li>Host Homes</li>
    </ul>
	</div>
<%End If%>



			
<%If providers.EOF Then%>
	<h1 align="center">Error - No Organizations found for category:<br /><%=providers__MMColParam%></h1>
<%Else%>
  	<h1 style="color:#069"><%=(providers.Fields.Item("category").Value)%>
    <%If providers.Fields.Item("category").Value = "Residential Services" Then%>
		: <br /><span style="color:black; font-size:.8em;font-style:italic; font-weight:normal;">Services provided to the person in which the provider  <span style="color:#006699; font-weight:bold;">does</span> own the housing.</span>
    <%ElseIf providers.Fields.Item("category").Value = "Individualized Services" Then%>
    	: <br /><span style="color:black; font-size:.8em;font-style:italic; font-weight:normal;">Services provided to the person in which the provider  <span style="color:#006699; font-weight:bold;">does not</span> own the housing.</span>
    <%End If%>
    </h1>
<%End If%>


<ul class="nobullet">

<%Do Until providers.EOF%>

		<li>  
		<h3 id="org<%=providers.Fields.Item("ID").Value%>"><%=(providers.Fields.Item("name").Value)%></h3>
  
  <div class="contactInfo">
  
		<%If Not (IsNull(providers.Fields.Item("url").Value) OR providers.Fields.Item("url").Value = "") Then%>
			 Website: <a href="<%=providers.Fields.Item("url").Value%>" target="_blank"><%=Replace(providers.Fields.Item("url").Value, "http://", "")%></a><br />
  <%End If%>
  
  <%If Not (IsNull(providers.Fields.Item("contact_person").Value) OR  providers.Fields.Item("contact_person").Value = "") Then%>
  Contact Person: <%=(providers.Fields.Item("contact_person").Value)%><br />
		<%
		End If
		If Not (IsNull(providers.Fields.Item("phone").Value) OR providers.Fields.Item("phone").Value = "") Then
		%>
  Phone: <%=(providers.Fields.Item("phone").Value)%><br />
		<%
		End If
		If Not (IsNull(providers.Fields.Item("email").Value) OR providers.Fields.Item("email").Value = "") Then
		%>
		Email: <a href="mailto:<%=(providers.Fields.Item("email").Value)%>"><%=(providers.Fields.Item("email").Value)%></a><br />
  <%End If%>
		</div>
  <p style="padding-left:30px; max-width:50em"><%=(providers.Fields.Item("description").Value)%></p>
  </li>
	
	<%
	providers.MoveNext
	Loop
	%>
    
    
    </ul>

<!--END CONTENT-->
<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>
<%
providers.Close()
Set providers = Nothing
%>
