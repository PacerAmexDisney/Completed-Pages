<!--#include virtual="/templates/header.asp"-->
<title>Simon Technology Center In-service</title>
    <meta property="og:title" content="Simon Technology Center In-service" />
        <meta property="og:url" content="http://www.pacer.org/stc/publications.asp" />
        <meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
        <meta property="og:description" content="" />
        <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" type="text/css" href="../css/leftnavigation.css" media="screen, projection"/>
        <link rel="stylesheet" type="text/css" href="./css/stc.css" media="print"/>
        <script type="text/javascript" src="../css/menu.js"></script>
    <style type="text/css">
        #pagecontent .textimage {
            min-height: 110px;
        }

        table.handouts td {
            padding: 5px;
        }

        #intro {
            display: none;
        }

        .headerRow {
            background: #246c00;
            color: #fff;
            padding: 12px 0px;
        }

        #pagetoporange, #topbar, #pagecontent, #maincontent {
            font-size: inherit;
        }

        @media screen and (max-width: 750px) {
            #rightBar, #leftbar, #maincontent, #topbar {
                width: 100%;
                margin: 0 auto;
                float: none;
            }

            #pagecontent {
                position: inherit;
            }

            #maincontent {
                width: auto;
            }

            #pagecontent .nounderline {
                text-align: center;
            }

        }
    </style>
</head>

<body>
<!--#include virtual="/templates/page-header-nav.asp"-->
<script type="text/javascript">
        // ID of the current Left Nav item
        var currId = "section504";
        // current subtree that should be displayed
        var showTree = "currentPageSubtree";
        var showTree2 = "secondarySubtreeIfNeeded";
    </script>

    <div id="topbar">
        <div id="breadcrumb">
            <div class="printemail">
                <p>
                    <a href="https://www.facebook.com/simontechnologycenter" target="_blank">Join the STC Facebook Page</a> |
                    <img src="../css/printicon.gif" width="15" height="14" alt=""/><a href="javascript:window.print()">Print page</a>

                </p>
            </div>
            <a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Simon Technology Center</a> / Publications

            <h1>Simon Technology Center</h1>

        </div>
    </div>

    <div id="leftbar">
        <h2 style="display: none;">STC - Navigation Menu</h2>
        <!--#include virtual="/stc/leftNav.htm"-->
    </div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
    <script type="text/javascript">
        // ID and SubId to be Orange
        var currId = "services";
        var currSubId = "subservice-its";
        // any Subtree that I want to Display
        var showTree = "stc-subservice";

        if (document.getElementById(currId)) {
            document.getElementById(currId).className = "page";
        }
        if (document.getElementById(currSubId)) {
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
            <p style="text-align:center; padding-bottom:30px;"><a href="/publications/">View Our Full Catalog </a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="/forms/request.asp">Reprint Request Form</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<img
                    src="/images/pdficon_small.gif" width="15" height="15" alt=""/><a href="/forms/request.asp">Publications Order Form</a></p>
            <div style="float:right">
                <img src="/childrensmentalhealth/images/circle_boy2.jpg" width="300" height="295" alt=""/>
            </div>


            <div id="importContent" class="newsblock"><p style="text-align:center; margin:25px;">Loading Content ...</p></div>


            <script type="text/javascript">
                $.get('/publications/stc.asp', function (data) {
                    data = $(data).find('#pagecontent').html();
                    $("#importContent").empty().append(data);
                });

                //$('#importContent').load('/publications/ebd.asp #pagecontent');
            </script>
            <noscript><p style="text-align:center; color:red; font-size:1.1em;">This content requires javascript active to view.</h2></noscript>


            <!--END CONTENT-->
            <!--#include virtual="/templates/footer.asp"-->