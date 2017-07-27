<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>


<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/bullying/getinvolved/"
%>



























<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim rs
Dim rs_cmd
Dim rs_numRows
Set rs_cmd = Server.CreateObject ("ADODB.Command")
rs_cmd.ActiveConnection = MM_PACER_WEB_STRING
rs_cmd.CommandText = "SELECT TOP 1 * FROM dbo.bullyStories WHERE category='Donation' ORDER BY date_added DESC" 
rs_cmd.Prepared = true

Set rs = rs_cmd.Execute
%>
<!DOCTYPE html 
   PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="Bullying touches so many lives and it often inspires the generous spirit in people who want to make a difference, support the cause, and change something that has happened to too many for too long. Every day students, parents, schools, and community members ask us, &ldquo;What can I do to help?&rdquo;" />
<meta name="keywords" content="Donation, Fundraising, Help, Support, Bullying, Prevention, Pacer, national, prevention, center, anti-bullying" 
" />

<title>National Bullying Prevention Center - Everyone&rsquo;s Contribution Matters, Inspired Fundraising Stories</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"-->
<style type="text/css">
.sideArticle{
	border-top:1px solid #ccc;
	border-left:1px solid #ccc;
	border-bottom:1px solid #ccc;
	background-color:#FFFFC4;
	margin-bottom:15px;
	padding-top:5px;
}
</style>
</head>

<body class="twocolright">

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>


<!--#include virtual="/bullying/dynamic-header.html"-->
<!--#include virtual="/bullying/topnav.html"-->
 <script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>
 <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/getinvolved/">Get Involved</a> /</div>

 <div class="content">
  <h1 id="maincontent">Everyone&rsquo;s Contribution Matters</h1>
  <p>Bullying touches so many lives and it often inspires the generous spirit in people who want to make a difference, support the cause, and change something that has happened to too many for too long. Every day students, parents, schools, and community members ask us, &ldquo;What can I do to help?&rdquo; In addition to individuals around the world sharing information about PACER resources, we  receive heartfelt contributions of as little as five dollars from California to Maine, from Argentina to Norway and all around the globe, from donors ages 5 to 90. </p>
		
	

	
	<hr style="clear:left;" />
	<h2>Creative Fundraising Ideas</h2>
	<p>You are asking and PACER  is listening! PACER recognizes and values the generosity of people who make a personal and meaningful contribution to the cause. It is in that spirit that we share a few creative fundraising ideas that have come from students, organizations, and schools – along with a few of our own.</p>
	<p>Remember, when you hold a fundraiser, be sure to let people know that the proceeds from your activity are being donated to PACER’s National Bullying Prevention Center.</p>

	<h3>Sales</h3>
	<ul>
		<li><strong>Orange ribbons</strong> &mdash; Orange is the color of bullying prevention. We encourage you to wear orange during National Bullying Prevention Month in October and beyond. One easy way to do this is to create orange ribbons. Visit your local fabric store, buy a spool of orange ribbon, and cut it into 18-inch strips, or simply use orange construction paper. </li>
        <li><strong>Oranges</strong> &mdash; Ask your local grocer to  donate (or discount) oranges and offer them to supporters in return for a donation. </li>
        <li><strong>Wristbands</strong> &mdash; Purchase orange silicon wristbands, customize them with &lsquo;TeensAgainstBullying.org,&rsquo; &lsquo;The End of Bullying Begins With Me,&rsquo; or &lsquo;I Care About Bullying Prevention.&rsquo; Sell them at school events.</li>
        <li><strong>Orange swag &mdash; Purchase inexpensive orange items, such as shirts, basketballs, hats, socks or shoelaces. Encourage everyone to purchase, along with extra donation to PACER&rsquo;s National Bullying Prevention Center.</strong></li>
        <li><strong>Temporary Tattoos</strong> &mdash; Purchase tattoos, that can be adhered (and easily removed), which reflect themes of diversity, acceptance, and kindness.</li>
	</ul>
	<h3>Contests</h3>
	<ul>
		<li><strong>School T-shirt</strong> &mdash; Hold a T-shirt design contest. Ask people to vote for the winning design. Create an order form. Set the price for more than the cost of the shirts. Encourage people to preorder. When there are several orders, get the shirts printed. If there are extra T-shirts, sell them for a profit, and contribute the proceeds. </li>
        <li><strong>Unity Posters</strong> &mdash; Hold a contest to create UNITY posters. Request a small contribution from each participant and ask local businesses to donate prizes. The poster could include artwork, poetry, writing, or a combination of all three. Have a committee select the top three and award the prizes. </li>
	</ul>
	<h3>Community</h3>
	<ul>
		<li><strong>Unity Banner</strong> &mdash; Create a huge banner with the word UNITY as the central theme. Ask everyone to make a voluntary contribution to sign the banner, define what unity means to them, or make a suggestion about ways to unite as a school or organization. </li>
        <li><strong>Pajama Day</strong> &mdash; Sell tickets for the right to wear pajamas to school one day.</li>
	</ul>
	<h3>Raffles</h3>
	<ul>
		<li><strong>Orange shoe raffle</strong> &mdash; Ask a local running store to donate a pair of orange athletic shoes. The shoes can be symbolic, representing a $50 or $100 gift certificate, and tickets can be raffled for $1 to $5 using the slogan &ldquo;Will you take the first step to prevent bullying?&rdquo;</li>
	</ul>
	<h3>Events</h3>
	<ul>
		<li><strong>Birthday party</strong> &mdash; It&rsquo;s your birthday but instead of having guests bring presents, ask them to make a donation to the National Bullying Prevention Center. </li>
        <li><strong>Concert</strong> &mdash; Hold a concert (vocal or band) and charge admission or ask guests to donate to PACER&rsquo;s National Bullying Prevention Center </li>
        <li><strong>3-on-3 basketball tournament</strong> &mdash; Host a 3-on-3 basketball tournament and contribute the proceeds. </li>
        <li><strong>Kick ball tournament</strong> &mdash; Stage a fun, engaging kick ball tournament and donate the entrance fees. </li>
	</ul>
	
	
	
<div id="pageextender" style="clear:both">&nbsp;</div>
  <!-- end .content --></div>
	
<div class="sidebar2">
	
	<div>
      <h3>Make an Online Donation<br />
      Powered by GreaterGiving</h3>
		<div class="centered"><a href="https://pacer.ejoinme.org/MyPages/DonateToTheNationalBullyingPreventionCenter/tabid/229451/Default.aspx" target="_blank"><img style="margin-top:0px; margin-bottom:10px;" src="/bullying/getinvolved/contributions/images/donate_250w.jpg" width="250" height="196" alt="" /></a></div>


	
	</div>
<hr />	
<div id="featuredStory">
<% 
If NOT rs.EOF Then
%>


<h2>Inspired Fundraising Stories</h2>
<p><a href="/bullying/getinvolved/contributions/stories.asp">See All Stories</a></p>

<p style="font-weight:bold;"><%=(rs.Fields.Item("heading").Value)%></p>
<p class="date">Posted: <%=FormatDateTime(rs.Fields.Item("date_added").Value, 2)%></p>

<%
'CHECK FOR VIDEO URL TO ADD
	If Len(rs.Fields.Item("video").Value) > 0 Then
	
		If Instr(rs.Fields.Item("video").Value, "www.youtube.com") > 0 Then
		'EMBED THE YOUTUBE IFRAME FOR THE VIDEO
		%>
		
			<iframe style="margin:10px auto" width="700" height="450" src="http://www.youtube.com/embed/<%=Split(rs.Fields.Item("video").Value, "v=", -1, 1)(1)%>?rel=0&wmode=opaque" frameborder="0" allowfullscreen></iframe>
	
		<%
		  flashCount = flashCount + 1
		End If
	End If
	If Len(rs.Fields.Item("image").Value) > 0 Then
	%>
		<img src="<%=(rs.Fields.Item("image").Value)%>" alt="" width="150" class="fltlft" style="margin:0px 15px;" />
	<%
	End If
	%>

<%=(rs.Fields.Item("mainText").Value)%>


<p><a href="/bullying/getinvolved/contributions/stories.asp">See All Stories<span class="extralinktext"> about Foundraising</span></a></p>

<%End If%>
	
	</div>		
</div>	
	
<!--#include virtual="/bullying/footer.html"-->
 <!-- end .container --></div>
</body>
</html>
