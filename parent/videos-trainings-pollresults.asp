<%
Dim fromDate, toDate, fyEndYr

fyEndYr = DatePart("yyyy", Now)

If DatePart("m", Now) >= 1 And DatePart("m", Now) <= 4 Then
	fyEndYr = fyEndYr - 1
End If

fromDate = "10/1/" & (fyEndYr - 1)
toDate = "9/30/" & fyEndYr

If Len(Request.Form("from")) > 0 And IsDate(Request.Form("from")) Then
	fromDate = Request.Form("from")
End If
If Len(Request.Form("to")) > 0 And IsDate(Request.Form("to")) Then
	toDate = Request.Form("to")
End If


 Dim ConStr, rsVideos, rsCounts, conn, sql

 ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
 Set conn = Server.CreateObject("ADODB.Connection")
 conn.open ConStr
 sql = "SELECT * FROM Parent_VideoPoll" & _
		" WHERE active <> 0" & _
		" ORDER BY id"

 Set rsVideos = conn.execute(sql)
 
 'Note: Only People that answered Yes to being a parent have thier results registered in the database.
 
 sql = "SELECT Parent_VideoPoll.id, Parent_VideoPoll.name, Parent_VideoPoll.youtube_url, Parent_VideoPoll.primarypage_url, Parent_VideoPoll.active, Parent_VideoPollVotes.vote, Count(Parent_VideoPollVotes.vote) AS CountOfvote" & _
		" FROM Parent_VideoPollVotes RIGHT JOIN Parent_VideoPoll ON Parent_VideoPollVotes.video_id = Parent_VideoPoll.id" & _
		" WHERE (((Parent_VideoPollVotes.date_time)>'" & fromDate & "') AND ((Parent_VideoPollVotes.date_time)<'" & toDate & "'))" & _
		" GROUP BY Parent_VideoPoll.id, Parent_VideoPoll.name, Parent_VideoPoll.youtube_url, Parent_VideoPoll.primarypage_url, Parent_VideoPoll.active, Parent_VideoPollVotes.vote" & _
		" ORDER BY Parent_VideoPoll.id, Parent_VideoPollVotes.vote DESC;"

 Set rsCounts = conn.execute(sql) 
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="robots" content="noindex,nofollow" />

<title>Parent Information Videos/Trainings</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" />
<link rel="stylesheet" type="text/css" href="/parent/css/reports.css" media="print" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.9.1.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

 <script>
$(function() {
$( "#from" ).datepicker({
numberOfMonths: 2,
//changeMonth: true,
//changeYear: true,
onClose: function( selectedDate ) {
$( "#to" ).datepicker( "option", "minDate", selectedDate );
}
});
$( "#to" ).datepicker({
numberOfMonths: 2,
//changeMonth: true,
//changeYear: true,
onClose: function( selectedDate ) {
$( "#from" ).datepicker( "option", "maxDate", selectedDate );
}
});
});
</script>
<style type="text/css">
.reportDates {
	text-align:right;
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
<a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>
<div id="topbar">
	<div id="breadcrumb">

	<a href="/">Home</a> / <a href="/parent/">Parent Special Education Information</a> / <a href="resources.asp"> Resources</a> /
	
	<h1>Parent Special Education Information</h1>
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
	var currId="parent_video";
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
<h1 style="margin-bottom:20px;">Parent Information Videos/Trainings Poll Results</h1>



<form id="datePicker" style="margin:20px;" action="videos-trainings-pollresults.asp" method="post">
<label for="from">From</label>
<input type="text" id="from" name="from" value="<%=fromDate%>" />
<label for="to">to</label>
<input type="text" id="to" name="to" value="<%=toDate%>" />
<input type="submit" name="submit" value="Refresh Data" />
</form>

<p class="reportDates">Dates Reporting: <%=fromDate%> - <%=toDate%></p>

<p>Answers of Parents: Did this training video provide information that will help you make decisions about your child’s education? </p>

<%
Dim yesVotes, noVotes, currentId
Do Until rsVideos.eof
	yesVotes = 0
	noVotes = 0
	currentId = rsVideos("id")
			
	If Not rsCounts.EOF Then
		Do Until rsCounts("id") >= rsVideos("id")
			rsCounts.MoveNext
			If rsCounts.EOF Then Exit Do
		loop
	End If
	
	If Not rsCounts.EOF Then
		Do Until rsCounts("id") <> currentId
			If Trim(rsCounts("vote")) = "Yes" Then
				yesVotes = rsCounts("CountOfvote")
			ElseIf Trim(rsCounts("vote")) = "No" Then
				noVotes = rsCounts("CountOfvote")
			End If
			rsCounts.MoveNext
			If rsCounts.EOF Then Exit Do
		Loop
	End If
%>
	<h3 class="page-break"><%=rsVideos("name")%></h3>
	<p>Video_id: <%=rsVideos("id")%> - 
	<a href="<%=rsVideos("primarypage_url")%>">Primary location</a>
	<%If Len(rsVideos("youtube_url")) > 0 Then%>
	 | <a href="<%=rsVideos("youtube_url")%>">YouTube Video</a>
	<%End If%>
	</p>
	<table cellpadding="10" cellspacing="0" border="1" width="50%">
	
	<tr>
		<th>Answer</th><th>Count</th><th>% of Total</th>
	</tr>
	<tr>
		<td>Yes</td>
		<td><%=yesVotes%></td>
		<td><%
				If yesVotes > 0 Then
					Response.Write(Round(yesVotes / (yesVotes + noVotes) * 100))
				Else
					Response.Write("0")
				End If
			%> %</td>
	</tr>
	<tr>
		<td>No</td>
		<td><%=noVotes%></td>
		<td><%
				If noVotes > 0 Then
					Response.Write(Round(noVotes / (yesVotes + noVotes) * 100))
				Else
					Response.Write("0")
				End If
				
			%> %</td>
	</tr>
	<tr style="font-weight:bold;">
		<td>Total</td>
		<td><%=yesVotes + noVotes%></td>
		<td>&nbsp;</td>
	</tr>
	</table>
	<hr />
<%
	rsVideos.MoveNext
	If not rsVideos.EOF Then
		currentId = rsVideos("id")
	End If
Loop
rsVideos.close
set rsVideos = nothing
rsCounts.close
set rsCounts = nothing
%>




	<!--END CONTENT-->

<div id="pageextender" style="clear:both">&nbsp;</div>
</div>
</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>