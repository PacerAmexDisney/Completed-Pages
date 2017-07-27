<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Publications: Assistive Technology (Simon Technology Center)</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/style.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

<script type="text/javascript" src="../css/menu.js"></script>
<style type="text/css">
.date .newItem {
	color:#444;
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


<p class="pubinfo">
<a href="../forms/request.asp">Reprint Request Form</a><br /><br />

<a href="OrderForm.pdf">Publication Order Form</a>
<img src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /><br /><br />
Items marked <img src="/publications/images/square.png" width="16" height="12" alt="square" />are FREE to Minnesota parents of children and young adults with disabilities.<br /><br /> 
<img src="images/star.png" width="16" height="13" alt="star" />items are free to young adults, high school or older, with disabilities and their families.<br /><br />
Please limit requests for free items to 10 or less per order.
</p>
<p class="rightsidebarpic">
<img src="images/stc1.jpg" width="250" height="188" alt="young girl using touch screen to access a computer game" />
</p>
<div id="submenu">
<h3 style="display: none;">Publications Menu</h3>
<!--#include virtual="/publications/rightNav.html"-->
</div>
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="at";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
</script>
<p class="rightsidebarpic">
<img src="images/stc2.jpg" width="250" height="188" alt="young boy in a wheelchair using an Intellikeys keyboard to access a computer program" />
<img src="images/stc3.jpg" width="250" height="188" alt="teen reading a book on the computer" />
</p>
</div>

<div id="maincontent">

	<div id="pagetoporange">
	<div class="printemail">
		<p>
		<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>
		
		</p>
	</div>
	<div id="breadcrumb">
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Publications</a> / Assistive Technology
	
	<h1>Publications</h1>
	
</div>

<!--BEGIN CONTENT-->

<%
Dim ConStr, rs, conn, sql, i

ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
Set conn = Server.CreateObject("ADODB.Connection")
conn.open ConStr
%>

</div>

<div id="pagecontent">


<div id="intro">
<h2 class="nounderline">Assistive Technology (The Simon Technology Center)</h2>

<p>
The <a href="../stc/index.asp">Simon Technology Center</a> helps children and adults with disabilities and their families use assistive technology to improve their lives. The Simon Technology center believes that technology allows children and adults with disabilities to keep pace with a rapidly changing world by providing opportunities for communication, education, recreation, employment, and independence.
</p>

<p style="padding: .5em;">
<strong>The Simon Technology Center offers information and resources on assistive technology through:</strong>
</p>
<ul>
	<li>individualized technology consultations for children or adults with disabilities</li>
	<li>workshops on assistive technology and related issues for parents and professionals</li>
	<li>a statewide technology and software lending library</li>
	<li>a computer laboratory that members of the community may use</li>
	<li>a training model for early childhood professionals and parents of young children with disabilities, ages 3-8</li>
</ul>
</div>
<h3 class="pubcat" style="margin-bottom: .5em;">Brochures &amp; Forms</h3>

		<!--<%
		sql = "SELECT * FROM Publications WHERE pub_at = 'yes' AND pub_type = 'misc' ORDER BY pub_name"
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
		loop
		rs.close
		set rs = nothing
		end if
		%>-->
		
		<%
		sql = "SELECT * FROM Publications WHERE pub_at = 'yes' AND pub_type = 'misc' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else
		
		rs.movefirst
		do until rs.eof
		%>
		
		<%
		Dim checkforlink1
		checkforlink1 = Trim(rs("pub_link"))
		if Trim(rs("pub_image")) <> "" then
			if checkforlink1 <> "nolink" then
		%>
			
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="" />
				<strong><em><a href="<%=rs("pub_link")%>"><%=rs("pub_name")%></a></em></strong><br />
				<%=rs("pub_description")%><br />
				
			<%else%>
			
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="" />
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
				
			<%end if%>
			
		<%
		else if checkforlink1 <> "nolink" then
		%>			<p class="pubstext" id="<%=rs("pub_code")%>">		
			<a href="<%=rs("pub_link")%>"><%=rs("pub_name")%></a><br />
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
			<img src="/publications/images/square.png" alt="square" />
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
		loop
		rs.close
		set rs = nothing
		end if
		%>

		
<h3 class="pubcat" style="margin-bottom: .5em;">Booklets <span style="font-size: 75%;">Free to Download</span> <img src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /></h3>

		<%
		sql = "SELECT * FROM Publications WHERE pub_at = 'yes' AND pub_type = 'booklet' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else
		
		rs.movefirst
		do until rs.eof
		%>
		
		<%
		Dim checkforlink2
		checkforlink2 = Trim(rs("pub_link"))
		if Trim(rs("pub_image")) <> "" then
			if checkforlink2 <> "nolink" then
		%>
			
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="" />
				<strong><em><a href="<%=rs("pub_link")%>"><%=rs("pub_name")%></a></em></strong><br />
				<%=rs("pub_description")%><br />
				
			<%else%>
			
			<p class="pubstext" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="" />
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
				
			<%end if%>
			
		<%
		else if checkforlink2 <> "nolink" then
		%>			<p class="pubstext" id="<%=rs("pub_code")%>">		
			<a href="<%=rs("pub_link")%>"><%=rs("pub_name")%></a><br />
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
			<img src="/publications/images/square.png" alt="square" />
			<% end if %>
			
			<% if rs("pub_freetokids")="yes" then %>
			<img src="images/star.png" alt="star" />
			<% end if %>
			
			<%=rs("pub_price")%> | 
			<%If Left(rs("pub_pricenotes"), 5) =  "<form" Then%>
            	&nbsp;<%=rs("pub_code")%> <br /> <%=rs("pub_pricenotes")%>
			<%
			ElseIf rs("pub_pricenotes") <> "" then
			%>
				<%=rs("pub_pricenotes")%> | <%=rs("pub_code")%>
			<%
			Else
			%>
			<%=rs("pub_code")%>
			<%End If%>
			</p>
		
		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		end if
		%>
		
<h3 class="pubcat" style="margin-bottom: .5em;">Handouts <img src="/publications/images/square.png" width="16" height="12" alt="square" /><span style="font-size: 65%;">Free to Download
<img src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /> | $1.50 per request | 10+ copies, $.50 each</span></h3>

		<%
		sql = "SELECT * FROM Publications WHERE pub_at = 'yes' AND pub_type = 'handout' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else
		%>
		
		<table class="handouts">
		
		<%
		rs.movefirst
		do until rs.eof
		%>			<tr id="<%=rs("pub_code")%>">
				<td>
				
				<%
				Dim checkforlink
				checkforlink = Trim(rs("pub_link"))
				if checkforlink <> "nolink" then
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
				<td class="handoutcode">
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

<h3 class="pubcat" style="margin-bottom: .5em;">Presentation Handouts <img src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /></h3>

		<%
		sql = "SELECT * FROM Publications WHERE pub_at = 'yes' AND pub_type = 'preshandout' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else
		%>
		
		<table>
		<tr><td>&nbsp;</td><td class="date" style="padding-left:15px;">Created / Updated</td>
		<%
		rs.movefirst
		do until rs.eof
		%>			<tr>
				<td>
				
				<%
				Dim checkforlink3
				checkforlink3 = Trim(rs("pub_link"))
				if checkforlink3 <> "nolink" then
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
                <td class="date" style="padding-left:15px;">
                <%If rs("pub_date") <> "" And Not isNull(rs("pub_date")) Then
					%><span <%
					If dateadd("m", 12, rs("pub_date")) >= Now Then
						Response.Write("class=""newItem""")
					End If
					%>><%
					Response.Write(monthname(datepart("m", rs("pub_date"))) & " " & datepart("yyyy", rs("pub_date")))
				  Else
				  	Response.Write("&nbsp;")
				  End If 
                %>
                </span>
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



<%
		sql = "SELECT * FROM Publications WHERE pub_at = 'yes' AND pub_type = 'book' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if not rs.eof then%>
		<h3 class="pubcat" style="margin-bottom: .5em;">Books</h3>
		<%do until rs.eof

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
		loop
		rs.close
		set rs = nothing
		end if
		%>


<%
		sql = "SELECT * FROM Publications WHERE pub_at = 'yes' AND pub_type = 'video' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if not rs.eof then
		%>
		<h3 class="pubcat" style="margin-bottom: .5em;">Videos</h3>
		
		<%
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
		loop
		rs.close
		set rs = nothing
		end if
		%>


<%
		sql = "SELECT * FROM Publications WHERE pub_at = 'yes' AND pub_type = 'cd' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if not rs.eof then%>
		<h3 class="pubcat" style="margin-bottom: .5em;">CD Resources and Information</h3>
<%
		do until rs.eof
		%>
		

		<%
		if Trim(rs("pub_image")) <> "" then
		%>
			
			<p class="pubstext">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name")%> publication" />
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
			
		<%
		else
		%>

			<p class="pubstext">
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
		
		<%
		end if
		%>
		
			<% if rs("pub_freetoparents")="yes" then %>
			<img src="/publications/images/square.png" alt="square" />
			<% end if %>
			
			<% if rs("pub_freetokids")="yes" then %>
			<img src="images/star.png" alt="star" />
			<% end if %>
			
			<%=rs("pub_price")%> | 
			
			<%
			if rs("pub_pricenotes") <> "" then
			Response.write rs("pub_pricenotes")
			%>
			<%=rs("pub_code")%>
			
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