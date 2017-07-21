<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim rs
Dim rs_cmd
Dim rs_numRows

Set rs_cmd = Server.CreateObject ("ADODB.Command")
rs_cmd.ActiveConnection = MM_PACER_WEB_STRING
rs_cmd.CommandText = "SELECT pub_id, pub_name, pub_name_translated, pub_link FROM Publications WHERE pub_type='handout' AND pub_bp='yes' AND pub_spanish='yes';" 
rs_cmd.Prepared = true

Set rs = rs_cmd.Execute
rs_numRows = 0
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>National Bullying Prevention Center - Spanish Publications</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--><script type="text/javascript">
  function recordOutboundLink(link, category, action) {
    _gat._getTrackerByName()._trackEvent(category, action);
    setTimeout('window.open("' + link.href + '")', 100);
  }
</script>


<style type="text/css">
.content ul {
	list-style:none;
}
.content li {
	margin-bottom:1em;
}
</style>
</head>

<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>
 
  <!--#include virtual="/bullying/dynamic-header.html"--> 
  <!--#include virtual="/bullying/topnav.html"--> 
  
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/resources/">Resources</a> / <a href="/bullying/resources/publications/">Handouts</a></div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/resources/nav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="publications-sp";
	var showTree = "publications-sub";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "active";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "submenu") {
			if (subTrees[i].id != showTree) {
				subTrees[i].className = "submenuhidden";
			}
		}
	}
</script> 
  </div>
  <!-- ###################### END Navigation ############################## -->
  
  <div class="content"> 
    <h1 id="maincontent">Spanish Handouts</h1>    








<%If rs.EOF Then%>
	<h3 style="color:red">Error: No Database Connection Found</h3>
<%End If%>    
    
    <ul>
<%
  Do Until rs.EOF
%>
	<li><a href="<%=(rs.Fields.Item("pub_link").Value)%>" target="_blank"><%=(rs.Fields.Item("pub_name_translated").Value)%></a> <span style="color:#666">- <%=(rs.Fields.Item("pub_name").Value)%></span></li>
<%
  rs.MoveNext
  Loop
%>
	</ul>  
	
	
	
	
	
    <br class="clearfloat" />
    
    <!-- end .content --></div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
<%
rs.Close()
Set rs = Nothing
%>
