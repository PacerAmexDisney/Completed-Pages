<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Publications: Special Education Rights</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/style.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

<script type="text/javascript" src="../css/menu.js"></script>
<script type="text/javascript">
<!--
function wopen(url, name, w, h)
{
// Fudge factors for window decoration space.
 // In my tests these work well on all platforms & browsers.
w += 32;
h += 96;
 var win = window.open(url,
  name, 
  'width=' + w + ', height=' + h + ', ' +
  'location=no, menubar=no, ' +
  'status=no, toolbar=no, scrollbars=yes, resizable=yes');
 win.resizeTo(w, h);
 win.focus();
}
// -->
</script> 

<style type="text/css">
.handouts td {
	padding: .2em;
}
#pagecontent .textimage {
	min-height:100px;
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
<img src="images/php3.jpg" width="250" height="166" alt="mother holding daughter close to her in a close up" />
<img src="images/php2.jpg" width="250" height="167" alt="mother with daughter behind with her chin on shoulder, smiling" />
</p>
<div id="submenu">
<h3 style="display: none;">Publications Menu</h3>
<!--#include virtual="/publications/rightNav.html"-->
</div>
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="ser";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
</script>

<p class="rightsidebarpic">
<img src="images/php1.jpg" width="250" height="375" alt="father reading a book with young daughter" />
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
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Publications</a> / Special Education Rights
	
	<h1>Publications</h1>
	
</div>

<!--BEGIN CONTENT-->

</div>

<div id="pagecontent" style="position:relative">
<div id="intro">

<h2 class="nounderline"><a name="maincontent">Special Education Rights</a></h2>
<p>PACER Center provides a wide array of services to help parents advocate for their children with disabilities. The project is staffed by parent advocates who assist parents by distributing informative materials, conducting workshops and trainings, and providing one-on-one consultations with parents throughout Minnesota. Parent advocates help clarify existing laws, explain school procedures, develop strategies for working with schools, and answer questions about everything from transportation to parental rights.</p>
</div>
<%
Dim ConStr, rs, conn, sql, i

ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
Set conn = Server.CreateObject("ADODB.Connection")
conn.open ConStr

Dim checkforlink1

%>
<h3 class="pubcat" style="margin-bottom: .5em;">Books</h3>

		<%
		sql = "SELECT * FROM Publications WHERE pub_ser = 'yes' AND pub_type = 'book' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else
		
		rs.movefirst
		do until rs.eof
		%>
		
<%
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
		
<h3 class="pubcat" style="margin-bottom: .5em;">Brochure</h3>

		<%
		sql = "SELECT * FROM Publications WHERE pub_ser = 'yes' AND pub_type = 'brochure' ORDER BY pub_name"
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
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="" />
			
		<%
		else
		%>

			<p class="pubstext" id="<%=rs("pub_code")%>">
		
		<%
		end if
		%>
		<%If Len(rs("pub_link")) > 0 And rs("pub_link") <> "nolink" Then%>
		<a href="<%=rs("pub_link")%>" target="_blank">
		<%Else%>
		<strong>
		<%End If%>
		<em><%=rs("pub_name")%></em>
		<%If Len(rs("pub_link")) = 0 Or rs("pub_link") = "nolink" Then%>
		</strong>
		<%Else%>
		</a>
		<%End If%>
		
		</strong>
		
		<br />
		<%=rs("pub_description")%><br />

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
		
<h3 class="pubcat" style="margin-bottom: .5em;">Record Keeping Folders</h3>

		<%
		sql = "SELECT * FROM Publications WHERE pub_ser = 'yes' AND pub_type = 'rkf' ORDER BY pub_name"
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
		%>
		

		<%
		sql = "SELECT * FROM Publications WHERE pub_ser = 'yes' AND pub_type = 'video' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if not rs.eof then%>
<h3 class="pubcat" style="margin-bottom: .5em;">Video</h3>
<%		do until rs.eof
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

		
<h3 class="pubcat" style="margin-bottom: .5em;">Handouts <img src="/publications/images/square.png" width="16" height="12" alt="square" /><span style="font-size: 75%;">Free to Download
<img src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /> | $1.50 per request | 10+ copies, $.50 each</span></h3>

		<%
		sql = "SELECT * FROM Publications WHERE pub_ser = 'yes' AND pub_type = 'handout' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else
		%>
		
		<table class="handouts">
		<tr style="font-weight: bold; background-color: #eee;">
			<td>Publication Name</td>
			<td>Publication Code</td>
			<td><a href="#star">*</a>Audio MP3 (download)</td>
		</tr>
		
		<%
		rs.movefirst
		do until rs.eof
		%>			<tr id="<%=rs("pub_code")%>">
				<td style="border-bottom: solid 1px #eee;">
				
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
				<td class="handoutcode" style="border-bottom: solid 1px #eee;">
					<%=rs("pub_code")%>
				</td>
				<td style="border-bottom: solid 1px #eee;">
<%
					if rs("pub_audiodownload") <> "" then
					%>
						<em><a href="<%=rs("pub_audiodownload")%>" target="_blank">Download Audio</a></em>
					<%
					else
					%>
						&nbsp;
					<%
					end if
					%>
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
		<p style="margin-top: 2em;">
		<a name="star"></a>* To download the MP3 files, right click on the <em>Download</em> link and select "Save Target As.."<br />
		Choose where to save it and click "Save". Then, open the file in desired media player upon completion.
		</p>
        
        


		<%
		sql = "SELECT * FROM Publications WHERE pub_ser = 'yes' AND pub_type = 'activity' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		If Not rs.eof Then
		%>
		<h3 class="pubcat" style="margin-bottom: .5em;">Activity Cards</h3>
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
		Loop
		rs.close
		Set rs = nothing
		End If
		%>
		



		<%
		sql = "SELECT * FROM Publications WHERE pub_ser = 'yes' AND pub_type = 'infocard' ORDER BY pub_name"
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
		Loop
		rs.close
		Set rs = nothing
		End If
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
		document.getElementById(self.document.location.hash.substring(1)).className += " highlight";
	}
</script>
</body>
</html>