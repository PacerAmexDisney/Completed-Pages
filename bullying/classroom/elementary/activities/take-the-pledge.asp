<!--#include virtual="/bullying/templates/header.asp"-->

<title>Take the Pledge - National Bullying Prevention Center</title>
<meta name="description" content="Elementary school students are invited to take the 'Kids Against Bullying' pledge! Students promising to speak up, reach out, and be a friend when they see bullying can download the official certificate.
" />
<meta property="og:title" content="Take the Pledge - National Bullying Prevention Center" />
<meta property="og:url" content="http://www.pacer.org/bullying/classroom/elementary/activities/take-the-pledge.asp" />
<meta property="og:image" content="http://www.pacer.org/bullying/nbpm/images/unityDay-fb.jpg" />
<meta property="og:description" content="Elementary school students are invited to take the 'Kids Against Bullying' pledge! Students promising to speak up, reach out, and be a friend when they see bullying can download the official certificate.
" />
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
</head>

<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>
 
<!--#include virtual="/bullying/templates/page-header-nav.asp"-->

    <div class="breadcrumb"><a href="/bullying/">Home</a> / <a href="/bullying/classroom/">Classroom</a> / <a href="/bullying/classroom/elementary/">Elementary School</a> / <a href="/bullying/classroom/elementary/activities">Activities</a></div>

    <!-- ########################## LEFT NAV ########################################### -->
    <div class="sidebar1">
        <!--#include virtual="/bullying/templates/nav.html"-->
    </div>
    <script type="text/javascript">
        var currId = "unityday";
        var showTree = "none";
        var showTree2 = "none";
    </script>

    <script type="text/javascript">
        if (document.getElementById(currId)) {
            document.getElementById(currId).className = "active";
        }
        var subTrees = document.getElementsByTagName("ul");
        for (var i = 0; i < subTrees.length; i++) {
            if (subTrees[i].className == "submenu") {
                if (subTrees[i].id != showTree && subTrees[i].id != showTree2) {
                    subTrees[i].className = "submenuhidden";
                }
            }
        }
    </script>

    <!-- ########################## MAIN CONTENT ########################################### -->
    <div class="content" style="width:100%; max-width:844px;">
        <div class="narrowContent">
            <h1 id="maincontent">Take the Kids Against Bullying Pledge </h1>
            <p>Elementary school students are invited to take the &ldquo;Kids Against Bullying&rdquo; pledge! Students promising to speak up, reach out, and be a friend when they see bullying can download the official certificate.</p>
            <p>Options to take the pledge include:</p>
            <ul type="disc">
                <li>Schools: Order the <a href="/bullying/resources/bookmarks.asp" target="_blank">free bookmarks</a>, which has the pledge on it and invite each student to sign their name</li>
                <li>Individuals: Read the pledge (below), download the certificate, and sign your name</li>
            </ul>
            <blockquote class="hr">
                <p><strong>As a Kid Against Bullying, I&nbsp;pledge to: </strong></p>
                <ul type="disc">
                    <li>Speak up when I see bullying.</li>
                    <li>Reach out to others who are bullied.</li>
                    <li>And be a friend whenever I see bullying.</li>
                </ul>
            </blockquote>
            <img style="float: left; margin: 20px; border: #999999 1px solid" src="../../images/kab-pledge.jpg" width="200" height="258" alt="Kids Against Bullying Pledge"/>
            <p class="hr">Kids taking the pledge can download the <a href="https://www.pacerkidsagainstbullying.org/wp-content/uploads/2014/07/KABPledge.pdf" target="_blank">official Kids Against Bullying certificate.</a> <img
                    src="/images/pdficon_small.gif" alt="pdf icon" width="15" border="0" height="15"/></p>
        </div>
<!-- ########################## END MAIN CONTENT ########################################### -->
<!--#include virtual="/bullying/templates/footer.asp"-->
