<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Publications: Transition</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/style.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

<script type="text/javascript" src="../css/menu.js"></script>
<style>
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
<img src="/publications/images/star.png" width="16" height="13" alt="star" />items are free to young adults, high school or older, with disabilities and their families.<br /><br />
Please limit requests for free items to 10 or less per order.
</p>
<div id="submenu">
<h3 style="display: none;">Publications Menu</h3>
<!--#include virtual="/publications/rightNav.html"-->
</div>
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="tfywd";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
</script>
<p class="rightsidebarpic">
<img src="images/transition1.jpg" width="250" height="375" alt="Teen looking up at the camera from a wheelchair" />
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
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp"> Resources</a> / <a href="index.asp">Publications</a> / Transition
	
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

<div style="float:right" id="mainImage">
<img src="/transition/images/fred_circleImage.jpg" width="330" height="330" alt=""/>
</div>

<div id="intro">
	<h2 class="nounderline"><a name="maincontent">Transition</a></h2>
	<p>
	PACER provides information, resources, and technical assistance to parents of young adults, 14 through 21, with disabilities and the professionals who work with them on<a href="/transition/"> transition related topics</a>, such as; post secondary options, housing, employment, and recreation.
	
	</p>


</div>


<h3 class="pubcat" style="margin-bottom: .5em;">Books</h3>
		<%
		sql = "SELECT * FROM Publications WHERE pub_transition = 'yes' AND pub_type = 'book' ORDER BY pub_name"
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
			
			<p class="pubstext textimage" id="<%=rs("pub_code")%>">
				<a target="_blank" href="<%=rs("pub_link")%>"><img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="" /></a>
				<strong><em><a target="_blank" href="<%=rs("pub_link")%>"><%=rs("pub_name")%></a></em></strong><br />
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
			<a target="_blank" href="<%=rs("pub_link")%>"><%=rs("pub_name")%></a><img src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /><br />
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
		


<h3 class="pubcat" id="ADAarticles" style="margin-bottom: .5em;">ADA Related Articles <span style="font-size: 65%;">| Free to Download</span></h3>


	<!--ada handouts: under ADA Related Articles-->

		<%
		sql = "SELECT * FROM Publications WHERE pub_transition = 'yes' AND pub_type = 'ada' ORDER BY pub_name"
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
		
		<!--handout links-->
		
		<%
		sql = "SELECT * FROM Publications WHERE pub_transition = 'yes' AND pub_type = 'adahandout' ORDER BY pub_name"
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
				
					<a target="_blank" href="<%=rs("pub_link")%>"><%=rs("pub_name")%></a>
					
				<%
				else
				%>
				
					<%=rs("pub_name")%>
				
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

		



<h3 class="pubcat" style="margin-bottom: .5em;">Training</h3>
  <%
		sql = "SELECT * FROM Publications WHERE pub_transition = 'yes' AND pub_type = 'training' ORDER BY pub_name"
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
			<a target="_blank" href="<%=rs("pub_link")%>"><img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="" /></a>
			<strong><em><a target="_blank" href="<%=rs("pub_link")%>"><%=rs("pub_name")%></a></em></strong><br />
			<%=rs("pub_description")%><br />
				
		  	<%
			else
			%>
			
		  <p class="pubstext textimage" id="<%=rs("pub_code")%>">
				<img src="<%=rs("pub_image")%>" style="float: right; padding: .5em 0 .5em .5em;" alt="" />
				<strong><em><%=rs("pub_name")%></em></strong><br />
				<%=rs("pub_description")%><br />
				
			<%end if%>
			
		<%
		else
			if checkforlink1 <> "nolink" then
		%>	
                <p class="pubstext" id="<%=rs("pub_code")%>">		
                <a target="_blank" href="<%=rs("pub_link")%>"><%=rs("pub_name")%></a><img src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /><br />
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





		
<a name="handouts"></a><h3 class="pubcat" style="margin-bottom: .5em;">Handouts <img src="/publications/images/square.png" width="16" height="12" alt="square" /><span style="font-size: 75%;">Free to Download
<img src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /> | $1.50 per request | 10+ copies, $.50 each</span></h3>




		<%
		sql = "SELECT * FROM Publications WHERE pub_transition = 'yes' AND pub_type = 'handout' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if rs.eof then
		else
		%>
		
		<table class="handouts" cellpadding="10">
		
		<%
		rs.movefirst
		do until rs.eof
		%>
		
			<tr id="<%=rs("pub_code")%>">
				<td>
				
				<%
				Dim checkforlink2
				checkforlink2 = Trim(rs("pub_link"))
				if checkforlink2 <> "nolink" then
				%>
				
					<a target="_blank" href="<%=rs("pub_link")%>"><%=rs("pub_name")%></a>
					
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
        
        
        
        
 <h3 class="pubcat" style="margin-bottom: .5em;">Transition Parent Briefs</h3>       
 <p>PACER has partnered with a number of national technical assistance centers to develop content designed to inform youth and families about a range of transition topics, such as postsecondary education, mental health, career development, soft skills, disclosure, diploma options, transition planning and more.  <a href="http://www.pacer.org/publications/ncsetbriefs.asp" target="_blank">View the full list of these collaborative products</a>.</p>     
        
        
        
        

<h3 class="pubcat" style="margin-bottom: .5em;">Interactive CD</h3>


		<%
		sql = "SELECT * FROM Publications WHERE pub_transition = 'yes' AND pub_type = 'intcd' ORDER BY pub_name"
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
		sql = "SELECT * FROM Publications WHERE pub_transition = 'yes' AND pub_type = 'curriculum' ORDER BY pub_name"
		set rs = conn.execute(sql)
		
		if Not rs.eof then%>
		<h3 class="pubcat" style="margin-bottom: .5em;">Workshop/Training Curricula</h3>
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
        
        

<h3 class="pubcat" style="margin-bottom: .5em;">Board Game</h3>


		<%
		sql = "SELECT * FROM Publications WHERE pub_transition = 'yes' AND pub_type = 'game' ORDER BY pub_name"
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

	  </div>	
		
<div id="pageextender" style="clear:both">&nbsp;</div>
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