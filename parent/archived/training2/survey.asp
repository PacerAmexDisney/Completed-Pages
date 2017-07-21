<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <meta name="generator" content="UIUC Web Publishing Accessibility Wizard 2.1" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Document Index: Training for Surrogate Parents</title>
    <link rel="stylesheet" href="index_files/officeexport.css" type="text/css" />
    
    <%
Dim ConStr, conn, SQL, strMonth, strDay, strDate

hidden=Request.Form("hidden")
if hidden="hi" then

if len(month(date)) = 1 then
	strMonth = "0" & month(date)
else
	strMonth = month(date)
end if
if len(day(date)) = 1 then
	strDay = "0" & day(date)
else
	strDay = day(date)
end if
		
strDate = year(date) & strMonth & strDay

	ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test" 
	Set conn = Server.CreateObject("ADODB.Connection")
		
			SQL = "INSERT INTO surrogatesurvey (survey_Q1, survey_Q2, survey_Q3, survey_Q4, survey_date) VALUES "
			SQL = SQL & "('"&request.form("personType")&"', '"&request.form("helps")&"', '"&request.form("learn")&"', '"&request.form("comments")& "','" & strDate & "')" 
			
			conn.open(ConStr)
			conn.execute SQL
			conn.close
			set conn = nothing
			
			hidden=""
			response.redirect("http://www.pacer.org/forms/thankyou.asp")

end if
%>
    
  </head>
  <body>
    <a href="http://www.pacer.org">Back to PACER Home</a>
    <div class="outerframe">
      <div class="header">
        <h1 class="headertext">Online Training for Surrogate Parents</h1>
        <h2 class="headertext">Carolyn Anderson</h2>
      </div>
      <div class="content">
        <h2>Feedback Form</h2>
        <form action="survey.asp" method="post">
        	<label for="personType">1. Are you a:</label><br />
        	<input type="radio" name="personType" value="Parent, foster parent, or surrogate parent of a child with a disability" id="parent" /><label for="parent">Parent, foster parent, or surrogate parent of a child with a disability</label><br />
        	<input type="radio" name="personType" value="School professional" id="professional" /><label for="professional">School professional</label><br />
        	<input type="radio" name="personType" value="Other" id="other" /><label for="other">Other</label><br /><br />
        	
        	<label for="helps">2. (parents, foster parents, and surrogate parents only) The information provided by PACER Center helped me be more prepared to represent my child’s educational needs at school meetings.</label><br />
        	<input type="radio" name="helps" value="Yes" id="yes" /><label for="yes">Yes</label><br />
        	<input type="radio" name="helps" value="No" id="no" /><label for="no">No</label><br /><br />
        	
        	<label for="learn">3. I learned something new. </label><br />
        	<input type="radio" name="learn" value="Yes" id="yes" /><label for="yes">Yes</label><br />
        	<input type="radio" name="learn" value="No" id="no" /><label for="no">No</label><br /><br />
        	
        	<label for="comments">Other comments:</label><br />
        	<span style="font-size:75%;"><strong>Limit 500 characters</strong></span><br />
        	<textarea id="comments" name="comments" cols="50" rows="5"></textarea><br /><br />
        	
        	<input type="hidden" name="hidden" value="hi" />
        	<input type="submit" name="submit" value="Submit" />
        </form>
      </div>
    </div>
    <p><a href="http://www.pacer.org">Back to PACER Home</a></p>
    <script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-2136885-1");
pageTracker._initData();
pageTracker._trackPageview();
</script>
    
  </body>
</html>