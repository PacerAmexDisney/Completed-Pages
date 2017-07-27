<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Publications: Early Childhood</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/style.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

<script type="text/javascript" src="../css/menu.js"></script>
<style>
#pagecontent .textimage {
	min-height:110px;
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
<img src="/publications/images/star.png" width="16" height="13" alt="star" />items are free to young adults, high school or older, with disabilities and their families.<br /><br />
Please limit requests for free items to 10 or less per order.
</p>
<div class="stayinformed">
Order a free brochure that outlines PACER's early childhood program. (PHP-c64).<br /><br />
Subscribe to the early childhood newsletters, Early Childhood Connection (PHP-b6), published twice annually and 
<a href="../newsletters/ecenews/index.asp">Early Childhood enews</a>, emailed quarterly.
</div>
<div class="volunteer">
<h2>Other Early Childhood Projects</h2>
<a href="../stc/kite/index.asp">Project KITE</a> (Kids Included through Technology are Enriched) is a training curriculum for parents and teachers of young children with disabilities with a goal to promote inclusion for children with disabilities through the use of technology.
</div>

<div id="submenu">
<h3 style="display: none;">Publications Menu</h3>
<!--#include virtual="/publications/rightNav.html"-->
</div>
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="ec";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
</script>

<p class="rightsidebarpic">
<img src="images/ec1.jpg" width="250" height="167" alt="close up of a young boy smiling" />
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
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Publications</a> / Early Childhood
	
	<h1>Publications</h1>
	
</div>

<!--BEGIN CONTENT-->

</div>

<div id="pagecontent">

<h2 class="nounderline"><a name="maincontent">Early Childhood</a></h2>

<p>
PACER's <a href="../ec/index.asp">Early Childhood Project</a> is dedicated to providing parents of children with disabilities, ages birth through 5 years, the confidence, knowledge, and skills needed to help their children obtain the education, health care, and other services that are mandated by law.
</p>


<%
Dim ConStr, rs, conn, sql, i

ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
Set conn = Server.CreateObject("ADODB.Connection")
conn.open ConStr
%>

<h3 class="pubcat" style="margin-bottom: .5em;">Curricula</h3>

		<%
		sql = "SELECT * FROM Publications WHERE pub_ec = 'yes' AND pub_type = 'curriculum' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else
		
		rs.movefirst
		do until rs.eof
		%>
		

		<%
		if Trim(rs("pub_image")) <> "" then
		%>
			
			<p class="pubstext textimage" id="<%=rs("pub_code")%>">
				<img height="100" src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name")%> publication" />
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


<h3 class="pubcat" style="margin-bottom: .5em;">Books</h3>

		<%
		sql = "SELECT * FROM Publications WHERE pub_ec = 'yes' AND pub_type = 'book' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if Not rs.eof then
		do until rs.eof
		%>
		

	<%
		Dim checkforlink1
		checkforlink1 = Trim(rs("pub_link"))
		if Trim(rs("pub_image")) <> "" then
			if checkforlink1 <> "nolink" then
		%>
			
			<p class="pubstext textimage" id="<%=rs("pub_code")%>">
				<img height="100" src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name")%> publication" />
				<strong><em><a href="<%=rs("pub_link")%>"><%=rs("pub_name")%></a>&nbsp;<img src="../images/pdficon_small.gif"> (download for free)</em></strong><br />
				<%=rs("pub_description")%><br />
				
			<%else%>
			
			<p class="pubstext textimage" id="<%=rs("pub_code")%>">
				<img height="100" src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name")%> publication" />
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
				
			<%end if%>
			
	  <%
		else if checkforlink1 <> "nolink" then
		%>			<p id="<%=rs("pub_code")%>">		
			<a href="<%=rs("pub_link")%>"><%=rs("pub_name")%></a>&nbsp;<img src="../images/pdficon_small.gif" alt="pdf icon" /> (download for free)<br />
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

<h3 class="pubcat" style="margin-bottom: .5em;">Handouts <img src="/publications/images/square.png" width="16" height="12" alt="square" /><span style="font-size: 75%;">Free to Download <img src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /> | $1.50 per request | 10+ copies, $.50 each</span></h3>


		<%
		sql = "SELECT * FROM Publications WHERE pub_ec = 'yes' AND pub_type = 'handout' ORDER BY pub_name"
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
		sql = "SELECT * FROM Publications WHERE pub_ec = 'yes' AND pub_type = 'activity' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else%>
		<a name="activity"></a><h3 class="pubcat" style="margin-bottom: .5em;">Activity Cards</h3>
		<%rs.movefirst
		do until rs.eof
		%>
		
		<%
		if Trim(rs("pub_image")) <> "" then
		%>
			
			<p class="pubstext textimage" id="<%=rs("pub_code")%>">
				<img height="100" src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name")%> publication" />
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

<!--<h3 class="pubcat" style="margin-bottom: .5em;">Book and Audio</h3>
<h4>Family Strengths Series</h4>
<p>
This series of five booklets teach and encourage parents of young children (birth to age 5.) All are simply worded and beautifully illustrated with photos of children and families of various ethnic/cultural groups. 2000. (See Translations for Hmong and Spanish.)<br />
$5 | 10+, $4.50 each | 100+, $4 each
</p>
<p style="border-top: dashed 1px black; padding: .5em;">
Written in the child's voice, engaging booklets with focus on development.
</p>-->


		<%
		sql = "SELECT * FROM Publications WHERE pub_ec = 'yes' AND pub_type = 'bookandaudio' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else
		
		rs.movefirst
		do until rs.eof
		%>
		

	<%
		if Trim(rs("pub_image")) <> "" then
		%>
			
			<p class="pubstext textimage" id="<%=rs("pub_code")%>">
				<img height="100" src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name")%> publication" />
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
			
  <%
		else
		%>			<p id="<%=rs("pub_code")%>">
				<strong><em><%=rs("pub_name")%></em></strong>&nbsp;&nbsp;|&nbsp;&nbsp;<%=rs("pub_code")%><br />
				<%=rs("pub_description")%>
			</p>
<%
		end if
		%>
		
		
		<%
		rs.movenext
		loop
		rs.close
		set rs = nothing
		end if
		%>

<!--<h3 class="pubcat" style="margin-bottom: .5em;">Audio</h3>
-->

		<%
		sql = "SELECT * FROM Publications WHERE pub_ec = 'yes' AND pub_type = 'audio' ORDER BY pub_name"
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
				<img height="100" src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="image of <%=rs("pub_name")%> publication" />
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