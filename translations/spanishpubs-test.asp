<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title> - Template - PACER Center</title>

<meta property="og:title" content="" />
<meta property="og:url" content="" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />


</head>
<body class="singleCol">

<!--#include virtual="/templates/page-header-nav.asp"-->

<div id="topbar">
<div id="breadcrumb">

<a href="/index.asp">Home</a> / <a href="index.asp">Translated Content</a> / Espa�ol
</div>
	<h1>espa�ol</h1>
</div>

<div id="maincontent">

<div id="pagecontent" class="narrowContent">

<!--BEGIN CONTENT-->
<div class="alertBox" style="width:30em; text-align:center; font-size:1.05em">
<a href="/publications/spanish.asp">Click Here to view these publications with english titles</a>
</div>
<h2 class="nounderline"><a name="maincontent">publicaciones en espa�ol</a></h2>

<%

DisplayCategory "Books", "book"

DisplayCategory "Booklets", "booklet"

DisplayCategory "Information Cards", "infocard"

DisplayCategory "Let&rsquo;s Talk Activity Cards", "ltac"


'-----------------------------------------Handouts----------------------------------------------
sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'handout' AND pub_MPC = '' AND Not pub_code LIKE '%All%' ORDER BY pub_name_translated"
DisplayHandouts sql, "Handouts"

sql = "SELECT * FROM Publications WHERE pub_spanish = 'yes' AND pub_type = 'handout' AND pub_MPC = '' AND pub_code LIKE '%All%' ORDER BY pub_name_translated"
DisplayHandouts sql, "National Parent Technical Assistance Center Handouts"

DisplayCategory "Brochures", "brochure"

DisplayCategory "Videos", "video"

DisplayCategory "Bookmarks", "bookmark"

DisplayCategory "Book and Audio", "bookandaudio"

DisplayCategory "Audio", "audio"

DisplayCategory "Record Keeping Folders", "rkf"

DisplayCategory "Workshop / Training Curricula", "curriculum"

%>

<div id="pageextender" style="clear:both">&nbsp;</div>

<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->
