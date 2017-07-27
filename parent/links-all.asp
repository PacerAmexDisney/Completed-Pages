<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim rs_links__MMColParam, cat_name
rs_links__MMColParam = 0
If (Request.QueryString("category") <> "") Then 
  rs_links__MMColParam = cInt(Request.QueryString("category"))
End If


%>

<%
'------------------------------------------------------------------------------------------------
' Get the Categories List for the Categories Table of Contents
'------------------------------------------------------------------------------------------------
Dim rs_cat
Dim rs_cat_cmd
Dim rs_cat_numRows
Dim rs_gen_count
Dim rs_spec_count
rs_gen_count = 0
rs_spec_count = 0

Set rs_cat_cmd = Server.CreateObject ("ADODB.Command")
rs_cat_cmd.ActiveConnection = MM_PACER_WEB_STRING
rs_cat_cmd.CommandText = "SELECT Parent_Categories.ID AS cat_ID, Parent_Categories.specific_disability, Parent_Categories.category_type, Parent_Categories.category_name, Count(Parent_Links.category) AS CountOfcategory" & _
" FROM Parent_Links INNER JOIN Parent_Categories ON Parent_Links.category = Parent_Categories.ID" & _
" GROUP BY Parent_Categories.ID, specific_disability, category_name, category_type" & _
" HAVING (Count(Parent_Links.category))>0 AND category_type = 'Org-Link'" & _
" ORDER BY specific_disability, category_name;" 
rs_cat_cmd.Prepared = true
Set rs_cat = rs_cat_cmd.Execute

Do Until rs_cat.EOF
	If rs_cat("specific_disability") = "no" Then
		rs_gen_count = rs_gen_count + 1
	End If
	If rs_cat("specific_disability") = "yes" Then
		rs_spec_count = rs_spec_count + 1
	End If
	If cInt(rs_cat("cat_ID")) = rs_links__MMColParam Then
		cat_name = rs_cat("category_name")
	End If
	rs_cat.MoveNext
Loop
rs_gen_count = Round(rs_gen_count / 2)
rs_spec_count = Round(rs_spec_count / 2)
rs_cat.MoveFirst
%>

<%
'------------------------------------------------------------------------------------------------
'Get the list of Links For the Current Category as requested in the Url Parameter ?Category=##
'-------------------------------------------------------------------------------------------------
Dim rs_links
Dim rs_links_cmd
Dim rs_links_numRows

Set rs_links_cmd = Server.CreateObject ("ADODB.Command")
rs_links_cmd.ActiveConnection = MM_PACER_WEB_STRING
rs_links_cmd.CommandText = "SELECT *" & _
" FROM Parent_Links WHERE category > 0" & _
" ORDER BY Parent_Links.ID;" 

rs_links_cmd.Prepared = true
'Response.Write(rs_links_cmd.CommandText)
Set rs_links = rs_links_cmd.Execute
%>

<!DOCTYPE html 
     PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Parents Helping Parents: Links</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="/parent/css/links.css" />
<link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />


<script type="text/javascript" src="/css/menu.js"></script>
</head>

<body>
<div id="skiptocontent">
<a href="#maincontent">Skip to main content</a>
</div>

<div id="wrapper">

<div id="main">

<div id="header">
	<div>
            <!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="maincontent">

<div id="pagetoporange">
	
	<div id="breadcrumb">
	<a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> /
	<h1>Parents Helping Parents - Links</h1>
	<p style="font-size:90%;padding:0;margin:0;">PACER is the Minnesota Parent Training and Information Center, funded by the U.S. Department of Education's Office of Special Education Programs.</p>
	
	</div>
</div>

<div id="leftbar">
<h2 style="display: none;">Parents Helping Parents Navigation Menu</h2>
<!--#include virtual="/parent/leftNav.html" -->
</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="parent_links";
	var currSubId="none";
	// any Subtree that I want to Display
	var showTree = "none";
	
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
	if (document.getElementById(currSubId)){
		document.getElementById(currSubId).className = "page";
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

<div id="pagecontentright">
<!--BEGIN CONTENT-->

<table id="categorytable" cellpadding="0" cellspacing="0">
	<tr>
		<th colspan="2"><h3>General Categories</h3></th>
        <th colspan="2"><h3>Specific Disability Categories</h3></th>
    </tr>
    <tr>
    	<td><ul>
<%
	Dim gen_count
	gen_count = 0
	Do Until rs_cat.EOF
		If rs_cat("specific_disability") = "no" Then
			gen_count = gen_count + 1
%>
            <li><a href="/parent/links.asp?category=<%=rs_cat("cat_ID")%>"><%=rs_cat("category_name")%></a></li>
<%
			If gen_count = rs_gen_count Then
			'Start the Second Column for This List
				Response.Write(VbCrLf & "</ul></td>" & VbCrLf & "<td><ul>" & VbCrLf)
			End If
		End If
		rs_cat.MoveNext
	Loop
%>	
        </ul></td>
        <td><ul>
<%
	rs_cat.MoveFirst
	Do Until rs_cat.EOF
		If rs_cat("specific_disability") = "yes" Then
			spec_count = spec_count + 1

%>
            <li><a href="/parent/links.asp?category=<%=rs_cat("cat_ID")%>"><%=rs_cat("category_name")%></a></li>
<%
			If spec_count = rs_spec_count Then
			'Start the Second Column for This List
				Response.Write(VbCrLf & "</ul></td>" & VbCrLf & "<td><ul>" & VbCrLf)
			End If
		End If
		rs_cat.MoveNext
	Loop
%>	
        </ul></td>
	</tr>
</table>




<ul>
<%
	Do Until rs_links.EOF
%>
		
		<li><a href="<%=rs_links("url")%>" target="_blank">ID: <%=rs_links.Fields.Item("ID").Value%> - <%=rs_links.Fields.Item("title").Value%></a></li>
    
<%
		rs_links.MoveNext
		If rs_links.EOF Then Exit Do
  	Loop
%>
	</ul></div>	


<!--END CONTENT-->



<div id="pageextender" style="clear:both">&nbsp;</div>
</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>
</div>
</body>
</html>
<%
rs_links.Close()
Set rs_links = Nothing

rs_cat.Close()
Set rs_cat = Nothing

%>
