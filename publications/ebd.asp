<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Publications: Emotional and Behavioral Disorders and Children's Mental Health Needs</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/style.css" media="screen, projection" />
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
	<div>			<!--#include virtual="/googleSearchBox.htm"-->
            <!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="rightBar">


<p class="pubinfo">
<a href="/forms/request.asp">Reprint Request Form</a><br /><br />

<a href="OrderForm.pdf">Publication Order Form</a>
<img src="/images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /><br /><br />
Items marked <img src="/publications/images/square.png" width="16" height="12" alt="square" />are FREE to Minnesota parents of children and young adults with disabilities.<br /><br /> 
<img src="/publications/images/star.png" width="16" height="13" alt="star" />items are free to young adults, high school or older, with disabilities and their families.<br /><br />
Please limit requests for free items to 10 or less per order.
</p>
<div id="submenu">
  <h3 style="display: none;">Publications Menu</h3>
<!--#include virtual="/publications/rightNav.html"-->
</div>
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="ebd";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
</script>
</div>

</div>

<div id="maincontent">

	<div id="pagetoporange">
	<div class="printemail">
		<p>
		<img src="/css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>
		
		</p>
	</div>
	<div id="breadcrumb">
	<a href="/index.asp">Home</a> / <a href="/pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Publications</a> / Emotional and Behavioral Disorders and Children's Mental Health Needs
	
	<h1>Publications</h1>
	
</div>

<!--BEGIN CONTENT-->

</div>

<div id="pagecontent">


<div id="intro">
<h2 class="nounderline">Emotional and Behavioral Disorders and Children's Mental Health Issues</h2>
<div class="resources">
<p>For more information see the <a href="/cmh/">Children's Mental Health and Emotional or Behavioral Disorders Project</a> or download the <a href="/publications/pdfs/CMH-EBD-brochure-2016.pdf" target="_blank">&ldquo;Inspiring Opportunities&rdquo; brochure</a> <span class="fa fa-file-pdf-o" aria-hidden="true"></span>.</p>
</div>
</div>
<%
Dim ConStr, rs, conn, sql, i

ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
Set conn = Server.CreateObject("ADODB.Connection")
conn.open ConStr
%>

<h3 class="pubcat" style="margin-bottom: .5em;">Books</h3>


		<%
		sql = "SELECT * FROM Publications WHERE pub_ebd = 'yes' AND pub_type = 'book' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else
		
		rs.movefirst
		do until rs.eof
		%>
		

		<%
		if Trim(rs("pub_image")) <> "" then
		%>
			
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name")%> publication" />
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
			
		<%
		else
		%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
		
		<%
		end if
		%>
		
			<% if rs("pub_freetoparents")="yes" then %>
			<img src="/publications/images/square.png" alt="square" />
			<% end if %>
			
			<% if rs("pub_freetokids")="yes" then %>
			<img src="/publications/images/star.png" alt="star" />
			<% end if %>
			
			<%=rs("pub_price")%> | 
			
			<%
			if rs("pub_pricenotes") <> "" then
			Response.write rs("pub_pricenotes")
			%>
			&nbsp;| <%=rs("pub_code")%>
			
			<%else%>
			<%=rs("pub_code")%>
			<%end if%>
			</p>
		
		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		end if
		%>
 
 
 
 		<%
		sql = "SELECT * FROM Publications WHERE pub_ebd = 'yes' AND pub_type = 'infocard' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		If Not rs.eof Then
		%>
		<h3 class="pubcat" style="margin-bottom: .5em;">Information Cards</h3>
		<%		
		Do Until rs.eof
			checkforlink1 = Trim(rs("pub_link"))
			if Trim(rs("pub_image")) <> "" then
				if checkforlink1 <> "nolink" then
			%>
				
				<p class="pubstext textimage" id="<%=rs("pub_code")%>">
					<a href="<%=rs("pub_link")%>"><img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="" /></a>
					<strong><em><a href="<%=rs("pub_link")%>"><%=rs("pub_name")%></a></em></strong><br />
					<%=rs("pub_description")%><br />
					
				<%else%>
				
				<p class="pubstext textimage" id="<%=rs("pub_code")%>">
					<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="" />
					<strong><em><%=rs("pub_name")%></em></strong><br />
					<%=rs("pub_description")%><br />
					
				<%end if%>
				
			<%
			else if checkforlink1 <> "nolink" then
			%>	
				<p class="pubstext" id="<%=rs("pub_code")%>">		
				<a href="<%=rs("pub_link")%>"><%=rs("pub_name")%></a><img src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /><br />
				<%=rs("pub_description")%><br />
				
				
				<%
				else
				%>
		
				<p class="pubstext" id="<%=rs("pub_code")%>">
					<strong><em><%=rs("pub_name")%></em></strong><br />
					<%=rs("pub_description")%><br />
			
				<%
				end if
			end if
				%>
			
	
				<% if rs("pub_freetoparents")="yes" then %>
				<img src="images/square.png" alt="square" />
				<% end if %>
				
				<% if rs("pub_freetokids")="yes" then %>
				<img src="images/star.png" alt="star" />
				<% end if %>
				
				<%=rs("pub_price")%> | 
				
				<%
				if rs("pub_pricenotes") <> "" then
				Response.write rs("pub_pricenotes")
				%>
				&nbsp;| <%=rs("pub_code")%>
				
				<%else%>
				<%=rs("pub_code")%>
				<%end if%>
				</p>
			
			<%
			rs.movenext
		Loop
		rs.close
		Set rs = nothing
		End If
		%>

 
 
 
 
        
 <h3 class="pubcat" style="margin-bottom: .5em;">Record Keeping Folders</h3>
 <p><strong>Children&rsquo;s Mental Health Parent Folder</strong><br />
   A folder with information for parents on what records, reports, and e-mail communication from the school and mental health provider(s) to keep. A communication log is also provided. 2015.<br />
   $2.00 each | MPC-6cmh</p> 
       

<h3 class="pubcat" style="margin-bottom: .5em;">Handouts <img src="/publications/images/square.png" width="16" height="12" alt="square" /><span style="font-size: 75%;">Free to Download
<img src="/images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /> | $1.50 per request | 10+ copies, $.50 each</span></h3>

		<%
		sql = "SELECT * FROM Publications WHERE pub_ebd = 'yes' AND pub_type = 'handout' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else
		%>
        
 		
		<table class="handouts" cellpadding="10">
		<tr style="font-weight: bold; background-color: #eee;">
			<td>Publication Name</td>
			<td>Publication Code</td>
		</tr>
		
		<%
		rs.movefirst
		do until rs.eof
		%>			<tr id="<%=rs("pub_code")%>">
				<td style="border-bottom: solid 1px #eee;">
				
				<%
				Dim checkforlink2
				checkforlink2 = Trim(rs("pub_link"))
				if checkforlink2 <> "nolink" then
				%>
<a href="<%=rs("pub_link")%>"><%=rs("pub_name")%></a>
					
				<%
				else
				%>
				
					<%=rs("pub_name")%>
				
				<%
				end if
				%>
				</td>
				<td class="handoutcode" style="border-bottom: solid 1px #eee;">
					<%=rs("pub_code")%>
				</td>
			</tr>
				
		<%
		rs.movenext
		loop
		%>
		
	  </table>
		
		<%
		rs.close
		set rs = nothing
		end if
		%>
		
<div id="pageextender" style="clear:both">&nbsp;</div>
</div>


<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

<script type="text/javascript">
	if (document.getElementById(self.document.location.hash.substring(1))){
		document.getElementById(self.document.location.hash.substring(1)).className = "highlight";
	}
</script>
</body>
</html>