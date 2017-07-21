<%
Function GenerateCode(fWhichCode)

	Dim fDay, fTime, fSeed, fCode, fHour
	If fWhichCode = "previous" Then
		fHour = DatePart("h", DateAdd("h", -6, Now))
	Else
		fHour = DatePart("h", Now)
	End If
	fDay = DatePart("d", Now)
	
	If DatePart("h", Now) < 6 Then
		fTime = "AM1"
	ElseIf DatePart("h", Now) < 12 Then
		fTime = "AM2"
	ElseIf DatePart("h", Now) < 18 Then
		fTime = "PM1"
	Else
		fTime = "PM2"
	End If
	
	fSeed = "Rudolph" & fDay & fTime
	
	fCode = 0
	For i = 1 to Len(fSeed)
		fCode = fCode + Asc(Mid(fSeed, i, 1))
	Next 
	fCode = fCode * 576
	fCode = Hex(fCode)
	GenerateCode = "df4rLFv" & fCode & "v4456zkd"
End Function

If  Request.QueryString("ts") <> GenerateCode("current") And Request.QueryString("ts") <> GenerateCode("previous")Then
	Response.Redirect("./")
End If

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Team Rudolph</title>
<meta name="title" content="Team Rudolph" />
<meta name="description" content="Celebrating Acceptance and Inclusion Through Teamwork" />
<link rel="image_src" href="http://www.pacer.org/bullying/shinebright/images/Rudolph_ShineBright_FBLogo.png" />
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link href="/bullying/wewillgen/css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/bullying/css/scrolling.css"/>
<link rel="stylesheet" type="text/css" href="/php-sdk/fbwallfeed.css"/>
<link rel="stylesheet" type="text/css" href="/php-sdk/hashtagAggregator.css"/>
<link href="/js/colorbox1.5.9/colorbox.css" rel="stylesheet" type="text/css" />

<!--#include virtual="/bullying/dynamic-head-items.html"-->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script src="/js/colorbox1.5.9/jquery.colorbox-min.js" type="text/javascript"></script>
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>


<script src="/js/colorbox/jquery.colorbox-min.js" type="text/javascript"></script>

<script type="text/javascript">
//<![CDATA[
	//Make Color Box Descriptions Expand Below the Image.
	$(document).bind('cbox_complete', function(){
		if($('#cboxTitle').height() > 20){
			$("#cboxTitle").hide();
			$("<div>"+$("#cboxTitle").html()+"</div>").css({color: $("#cboxTitle").css('color')}).insertAfter(".cboxPhoto");
			$.fn.colorbox.resize();
		}
	});
	
	$(document).ready(function(){
		$('#twitterData').load('/php-sdk/displayShineBrightTwitter.php', function() {
				$(".colorboximg").colorbox({rel:'colorboximg'});			
		});
		$('#instagramData').load('/php-sdk/displayShineBrightInstagram.php', function() {
				$(".colorboximg").colorbox({rel:'colorboximg'});			
		});
				
	});	
	//]]>	
</script>





<style type="text/css">
#bottomContentWrapper {
	margin: 0 auto;
	width: 930px;
}

.bottomContent { padding: 10px 45px; }

#fbfeedheader {
	min-height: 40px;
	padding-bottom: 5px;
	margin-bottom: 5px;
	border-bottom: 1px soild #ccc;
}

#wwghashtagheader {
	position: relative;
	margin-bottom: 5px;
	min-height: 40px;
	padding-bottom: 5px;
}

#wwghashtagheader h2 {
	text-align: center;
	font-weight: bold;
	color: #772828;
	font-size: 1.2em;
	text-shadow: none;
}

#wwghashtagdata { margin-top: 5px; }

#extraSliderNav {
	width: 100%;
	text-align: center;
	padding: 10px;
}

#wwgtwitterhandle {
	position: absolute;
	right: 0px;
	bottom: -15px;
}

#wwginstagramhandle {
	position: absolute;
	left: 0px;
	bottom: -15px;
}

#topheroimage h1 {
	color: #FFFFFF;
	text-shadow: 2px 2px 4px #000;
	position: absolute;
	top: 132px;
	left: 91px;
	padding: 0px;

	line-height: 1.1em;
	width: 303px;
}

#topheroimage .widebutton { position: absolute; }

.row-shadow #intromessage {
	background-image: url('/bullying/wewillgen/images/shadow-bottom.png'), url('/bullying/wewillgen/images/shadow-top.png');
	background-repeat: repeat-x, repeat-x;
	background-position: 0px 50px, left top;
}

#pledgebutton {
	border-radius: 5px;
	color: #343263;
	font-size: 1.3em;
	font-weight: bold;
	min-height: 2em;
}

#pledgebutton:disabled {
	color: #ccc;
	background-color: #eee;
}

#pledgemessage { display: none; }

#hashtagitems{
    width:900px;
    margin:0 auto;
}

.bottombox {
	width:450px;
	float:left;
}
.logo {
	padding-right:10px;	
}

@font-face {
  font-family: edbrush;
  src: url(/bullying/classroom/elementary/team-rudolph/fonts/Ed-Brush.otf);
  }	

@font-face {
  font-family: tanglewoodtales;
  src: url(//bullying/classroom/elementary/team-rudolph/fonts/TanglewoodTalesNF.otf);
  }	
	
	
.headline {
  font-family: edbrush, Calibri, Arial, sans-serif;
  }
	
.subhead {
  font-family: tanglewoodtales, Calibri, Arial, sans-serif;
  }	
</style>	
</head>

<body class="onecol">

<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<div class="container">

<!--#include virtual="/bullying/dynamic-header.html"--> 
<!--#include virtual="/bullying/topnav.html"-->

<div class="content"> <a href="#" class="contentrow-anchor" aria-hidden="true"></a>
	<h1 class="centered">You Are Registered - Enjoy!</h1>
	<div id="topheroimage"> 
		<img src="/bullying/classroom/elementary/team-rudolph/images/logo.jpg" width="1024" height="467" alt="" />
	</div>	
<div class="centered">
	<p class="headline" style="font-size:2em; text-align:center; line-height:normal; letter-spacing:normal; color:#000">Celebrating Acceptance and Inclusion Through Teamwork</p>
</div>	
<div class="contentrow row-brightred row-shadow">
	<h2 class="subhead" style="font-size:30px; line-height: 40px">Digital Teacher Toolkit</h2>
		<table class="threecoltable" cellpadding="10">
			<tr>
				<td><img src="/bullying/classroom/elementary/team-rudolph/images/book-cover.png" width="235" height="247" alt=""/></td>
				<td><p><strong>Step One</strong>: Share the story of T.E.A.M. Rudolph and the Reindeer Games with your students.</p>
					<p><a href="/bullying/classroom/elementary/team-rudolph/streaming-movie.asp?ts=<%=GenerateCode("current")%>">Watch the video picture book</a>.</p>
				
					<div>
					<p>Want to purchase a copy of the printed book? A portion of the proceeds will be donated to PACER’s National Bullying Prevention Center.</p>
					<div style="margin-left: 15px"> 
					<form name="PrePage2" method = "post" action = "https://Simplecheckout.authorize.net/payment/CatalogPayment.aspx" target="_blank"> 
						<input type = "hidden" name = "LinkId" value ="18443cec-41a1-48ba-af50-3f2c27eded2d" /> <input type = "image" src ="//content.authorize.net/images/buy-now-gray.gif" /> 
					</form> 
					</div>
					</div>
			</td>
			</tr>
			<tr>
				<td><img src="/bullying/classroom/elementary/team-rudolph/images/toolkit-cover.jpg" width="235" height="308" alt=""/></td>
				<td><p><strong>Step Two</strong>: Use the learning activities with discussion guidelines to bring the lessons to life.</p>
					<p><a href="http://www.pacer.org/bullying/classroom/pdf/team-rudolph-learning-activities.pdf" target="_blank">Download the Classroom Activities Guide</a></p></td>
			</tr>
			<tr>
				<td><img style="border: .5px solid #fff" src="/bullying/classroom/elementary/team-rudolph/images/music-note.jpg" width="235" height="235" alt=""/></td>
				<td><p><strong>Step Three</strong>: Play the accompanying music, where indicated in the activities, and for general classroom cheer!</p>
					<p><a href="https://soundcloud.com/user-249223958/sets/songs-from-the-rudolph-the-red-nosed-reindeer-tv-special/s-pJoM2" target="_blank">Access the Rudolph song playlist on Soundcloud </a></p></td>
			</tr>			
		</table>
	<div style="margin-bottom: 30px"></div>
	</div>	

<div class="contentrow row-brightwhitered">
		<div class="singlecolumn">
				<p class="subhead" style="text-align: center; margin-top: 30px">Purchase a print copy of T.E.A.M. RUDOPLH and a portion of the proceeds will be donated to PACER’s National Bullying Prevention Center.</p>
				<div style="width:110px; margin:0 auto"> <form name="PrePage" method = "post" action = "https://Simplecheckout.authorize.net/payment/CatalogPayment.aspx" target="_blank"> <input type = "hidden" name = "LinkId" value ="18443cec-41a1-48ba-af50-3f2c27eded2d" /> <input type = "image" src ="//content.authorize.net/images/buy-now-gray.gif" /> </form></div> 
						
				<p class="subhead" style="text-align: center">Classroom activities created by Julia Magnasco, Education Director, First Stage In cooperation with PACER’s National Bullying Prevention Center</p>
				<p style="font-size: .9em; text-align: center"><em>Rudolph the Red-Nosed Reindeer and all related elements &copy; &amp; &trade;/&reg; under license to Character Arts, LLC.<br />All rights reserved.</em></p>				
		</div>	
</div>
	
	<!-- end .content --> 
</div>
<!--#include virtual="/bullying/footer.html"--> 
<!-- end .container -->
</div>
</body>
</html>
