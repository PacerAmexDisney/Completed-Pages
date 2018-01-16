<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>Health Information Center Text Updates - PACER Center</title>

<meta property="og:title" content="Health Information Center Text Updates - PACER Center" />
<meta property="og:url" content="http://www.pacer.org/health/updates-via-text-message.asp" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />

</head>

<body>
<!--#include virtual="/templates/page-header-nav.asp"-->

<div id="topbar">
<div id="breadcrumb"><a href="/">Home</a> / <a href="/pandr/p">Programs </a> / <a href="/health/"> Health Information Center</a> /

</div>
	<h1> Health Information Center</h1>
</div>

<script type="text/javascript">
	// ID of the current Left Nav item
	var currId="text";
	// current subtree that should be displayed
	var showTree = "currentPageSubtree";
	var showTree2 = "secondarySubtreeIfNeeded";
</script>

<div id="leftbar">

<!--#include virtual="/health/leftNav.htm" -->
</div>

<script type="text/javascript">
	// set current page
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
	// collapse all subtrees except the one targeted above that the current page exists in.
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "treemenu") {
			if (subTrees[i].id != showTree && subTrees[i].id != showTree2) {
				subTrees[i].className = "treemenuhidden";
			}
		}
	}
</script>

<div id="maincontent">

<div id="pagecontent">

<h2 class="nounderline">Health Updates Via Text Message</h2>

<img class="fltrt" src="/health/images/cellphone-nextto-laptop-263w.jpg" width="263" height="176" alt="" />
<!--BEGIN CONTENT-->
<p>  People can sign up to  receive updates via text message! This new PACER service provides families  &nbsp;and others with specific information  from PACER programs including notice of upcoming workshops, reminders, short  tips and ideas, and new PACER resources. Your plan&rsquo;s text messaging rates will  apply. </p>
<p>&nbsp;</p>
<p><strong>For updates from PACER&rsquo;s  Health Information Center:</strong></p>
<h1> text &ldquo;Health&rdquo; to 51555
</h1>

	<p style="margin-top: 50px; font-size: .8em;">By subscribing you agree to the <a target="_blank" href="https://www.mobilecause.com/constituent-terms-new">terms and conditions</a> for <a target="_blank" href="https://www.mobilecause.com">messaging and mobile giving</a>.              Text help for <strong>HELP</strong> or <strong>STOP</strong> to cancel to 51555. Standard message and data rates may apply. </p>
<%
'<div style="width: 350px; margin: auto; margin-top: 50px;">

'<a href="//www.mobilecause.com/feature/subscription-widget" id="powered-by-mobilecause">Mobile messaging powered by Mobilecause</a><script>!function(d,s){var s=d.createElement("script"),h=(document.head||d.getElementsByTagName('head')[0]);s.src="https://app.mobilecause.com/public/messaging_widgets/civoeo/source";h.appendChild(s);}(document);</script>
'	</div>


'<p>You can also subscribe to this service here:</p>
'<div style="border:1px solid #999; background:#D2D2D2; width:350px; min-height:100px; margin-bottom:20px;">
'<script language="javascript" src="http://client.mobilecause.com/lists/5996/subscriptions/web.js?height=300&amp;width=300" type="text/javascript"></script>
'</div>
%>


<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->
