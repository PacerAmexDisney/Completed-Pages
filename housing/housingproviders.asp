<%@LANGUAGE="VBSCRIPT"%>

<%
Response.Redirect("/housing/resources.asp")
%>






















<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim providers
Dim providers_cmd
Dim providers_numRows

Set providers_cmd = Server.CreateObject ("ADODB.Command")
providers_cmd.ActiveConnection = MM_PACER_WEB_STRING
providers_cmd.CommandText = "SELECT Housing_Providers.*, Housing_Categories.parent_page, Housing_Categories.category, Housing_Categories.ID AS Cat_ID FROM Housing_Providers INNER JOIN (Housing_Categories INNER JOIN Housing_ProvidersCategories ON Housing_Categories.ID = Housing_ProvidersCategories.category_ID) ON Housing_Providers.ID = Housing_ProvidersCategories.provider_ID WHERE (((Housing_Categories.parent_page)='housingproviders.asp')) ORDER BY Housing_Categories.ID, Housing_Providers.name;" 
providers_cmd.Prepared = true

Set providers = providers_cmd.Execute
providers_numRows = 0

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Housing Project: Minnesota Housing Providers</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/leftnavigation.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />
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
#maincontent #pagecontent .returnToTop {
	color:#333;
	padding-top:5px;
	width:20em;
	float:right;
	text-align:right;
	line-height: 1.5;
}
#maincontent #pagecontent .returnToTop a {
	color:#999;
}
</style>
<script type="text/javascript" src="../css/menu.js"></script>
<script type="text/javascript">
<!--
function dropdown(mySel)
{
var myWin, myVal;
myVal = mySel.options[mySel.selectedIndex].value;
if(myVal)
   {
    window.location = window.location.pathname + myVal;
   }
return false;
}
//-->
</script>

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
Champions for Children with Disabilities
</p>
<p class="pacerinfo3">
<a href="http://www.pacer.org/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a>
</p>
<div class="stayinformed">
<h2 class="enhanced">Find a Roommate</h2>
<p><a href="http://www.findmyroommate.org/" target="_blank">FindMyRoommate</a> is a free online matching service for people with disabilities that can help consumers find others with disabilities to meet housing solutions. FindMyRoommate  is a safe method that consumers may use entirely by themselves, or can ask someone to assist them such as a family member, friend, social worker or direct care worker.</p>
</div>


<p class="rightsidebarpic">
<img border="0" src="images/Teenage-boy-making-sandwich.jpg" width="250" height="375" alt="teenage boy making a sandwich at a kitchen table" />
</p>
<p class="rightsidebarpic">
<img border="0" src="../publications/images/transition1.jpg" width="250" height="375" alt="teen boy in wheelchair" />
</p>
</div>

<div id="topbar">
<div id="breadcrumb" style="zoom:1">
<div class="printemail">
<p>
<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Housing Project</a> / Housing Providers
	
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
	var currId="providers";
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

<div id="maincontent">

<div id="pagecontent">

<!--BEGIN CONTENT-->
<noscript><div style="text-align:center">The Below Dropdown Menus requires Javascript To Function</div></noscript>
&nbsp;
<% 
	Dim currentCategory, currentCategoryId
	Dim currentContact_Id
	Dim firstPass
	firstPass = true
	currentCategory = "FirstCategory"
	currentContact_Id = ""

	providers.MoveFirst
%>
	<div class="alertBox">
    <h3 style="text-align:center">Categories</h3>
    <ul class="nobullet space">
<%
	do until providers.EOF
	If currentCategory <> (providers.Fields.Item("category").Value) Then%>
		<li><a href="<%="#" & Replace(providers.Fields.Item("category").Value," ","")%>"><%=providers.Fields.Item("category").Value%></a></li>
        <%
		currentCategory = providers.Fields.Item("category").Value
	end if
	providers.MoveNext
	loop
	currentCategory = "FirstCategory"
	%>
    </ul>
</div>
	<%
	providers.MoveFirst	
	
	Do Until providers.EOF 
		If currentCategory <> "FirstCategory" And currentCategory <> providers.Fields.Item("category").Value Then
			Response.Write("</ul>")
		End If
		If currentCategory <> (providers.Fields.Item("category").Value) Then
			currentCategory = (providers.Fields.Item("category").Value)
			currentCategoryId = Replace(providers.Fields.Item("category").Value," ","")
			currentCategoryId = Trim(currentCategoryId)
			%>
            
            <%If firstPass = true Then
				firstPass = false
			  else
			  	
                Response.Write("<div class=""pageextender"" style=""clear:both"">&nbsp;</div>")
           
			End If
			%>
<div style="float:left; width:250px; margin:5px 0px; text-align:center">

<select id="<%=currentCategoryId%>" name="<%=currentCategoryId%>" onchange="dropdown(this)" style="width:250px">
<option value="">Select a Provider</option>
	<%
		providers.MoveFirst
		do until providers.EOF
			If currentCategory = (providers.Fields.Item("category").Value) Then%>
				<option value="<%="#ProviderID-" & providers.Fields.Item("ID").Value & providers.Fields.Item("Cat_ID").Value%>"><%=providers.Fields.Item("name").Value%></option>
        <%
			end if
			providers.MoveNext
		loop
		providers.MoveFirst
		do until providers.EOF Or currentCategory = (providers.Fields.Item("category").Value)
			providers.MoveNext
		loop
		%>

</select>
<p style="font-size:.9em; color:red">From the <%=currentCategory%> Category</p>
</div>
<p>&nbsp;</p>
			
			  	
            <h2 class="nounderline"><%=(providers.Fields.Item("category").Value)%></h2>
			<ul class="nobullet">
			<%
		End If
		%>
		<li>
        <%currentContact_Id = "ProviderID-" & providers.Fields.Item("ID").Value & providers.Fields.Item("Cat_ID").Value%>
        
		<h3 id="<%=currentContact_Id%>"><%=(providers.Fields.Item("name").Value)%></h3>
        
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
        <p><%=(providers.Fields.Item("description").Value)%></p>
        <div class="returnToTop" ><a href="#<%=currentCategoryId%>">Return to Top of Section</a>
        </div>
        </li>
	
	<%
	providers.MoveNext
	Loop
	%>
    
    
    </ul>



<div id="pageextender" style="clear:both">&nbsp;</div>



<div style="position:fixed; bottom:40px; left:10px; width:180px; padding:10px; font-size:.8em; background-color:#FFF">
  <a href="#pageTop">Return to Top Category Selection</a></div>


</div>

<!--END CONTENT-->

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
