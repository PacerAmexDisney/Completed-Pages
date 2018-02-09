<!--#include virtual="/templates/header.asp"-->

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <title>Simon Technology Center: Assistive Technology Links</title>
    <meta property="og:title" content="Simon Technology Center: Assistive Technology Links" />
    <meta property="og:url" content="http://www.pacer.org/stc/links.asp" />
    <meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
    <meta property="og:description" content="" />
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="../css/leftnavigation.css" media="screen, projection"/>
    <link rel="stylesheet" type="text/css" href="./css/stc.css" media="print"/>

    <script type="text/javascript" src="../css/menu.js"></script>

    <style>
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
                text-align:center;
            }

        }
    </style>
</head>

<body>

<!--#include virtual="/templates/page-header-nav.asp"-->
<!--#END virtual="/templates/page-header-nav.asp"-->

    <script type="text/javascript">
        // ID of the current Left Nav item
        var currId = "section504";
        // current subtree that should be displayed
        var showTree = "currentPageSubtree";
        var showTree2 = "secondarySubtreeIfNeeded";
    </script>
    <div id="rightBar">

        <p class="pacerinfo">
            <strong>PACER Center<br />
                952-838-9000</strong>
        </p>
        <p class="pacerinfo2">
            Champions for Children with Disabilities
        </p>
        <p class="pacerinfo3">
            <a href="http://www.pacer.org/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a>
        </p>
    </div>


    <div id="topbar">
        <div id="breadcrumb">
            <div class="printemail">
                <p>
                    <a href="https://www.facebook.com/simontechnologycenter" target="_blank">Join the STC Facebook Page</a> |
                    <img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

                </p>
            </div>
            <a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Simon Technology Center</a> / Links

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
        var currId="services";
        var currSubId="subservice-its";
        // any Subtree that I want to Display
        var showTree = "stc-subservice";

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

            <h2>Additional Technology Resources</h2>

            <!--BEGIN CONTENT-->
            <p>These websites and resources provide additional assistive technology services and information to professionals, parents and consumers across Minnesota and the nation.</p>
            <h3>Minnesota AT Providers</h3>
            <p>These Minnesota AT resources offer one or more of the following services: </p>
            <ul>
                <li>Assistive technology assessments</li>
                <li>Device demonstration and loan</li>
                <li>Information and referral </li>
                <li>Funding assistance</li>
                <li>Technical assistance </li>
                <li>Additional services</li>
            </ul>
            <p><a href="http://www.accessnorth.net/">AccessNorth MN</a> <br />
                <a href="http://www.couragecenter.org/">Courage Kenny Rehabilitation Institute</a> <br />
                <a href="http://www.equipalife.org/">EquipALife</a> <br />
                <a href="http://www.gillettechildrens.org/conditions-and-care/assistive-technology/">Gillette Children&rsquo;s Specialty Healthcare</a> <br />
                <a href="http://www.smatc.org/">Southern Minnesota Assistive Technology Center (SMATC)</a> <br />
                <a href="http://technologyforhome.org/livelife/">Technology for Home</a> <br />
                <a href="http://www.ucpcentralmn.org/">UCP of Central Minnesota</a></p>
            <h3>Information on Assistive Technology</h3>
            <p>These websites and organizations offer information regarding one or more of the following topics:</p>
            <ul>
                <li>General assistive technology information </li>
                <li>Assistive technology conferences </li>
                <li>Assistive technology webinars</li>
                <li>Assistive technology product information </li>
                <li>Funding information </li>
                <li>Directories of assistive technology services and organizations </li>
            </ul>
            <p><strong>Minnesota </strong><br />
                <a href="http://www.closingthegap.com/" target="_blank">Closing the Gap</a> <br />
                <a href="http://mn.gov/star/" target="_blank">Minnesota STAR Program</a></p>
            <p><strong>National </strong><br />
                <a href="http://www.abledata.com/products-by-category" target="_blank">AbleData</a> <br />
                <a href="http://www.atia.org/i4a/pages/index.cfm?pageid=1" target="_blank">Assistive Technology Industry Association</a> <br />
                <a href="http://www.csun.edu/cod/conference/" target="_blank">CSUN</a> <br />
                <a href="http://ctdinstitute.org/" target="_blank">Center on Technology and Disability</a></p>
            <h3>Other Resources</h3>
            <p>These websites and organizations offer one or more of the following: </p>
            <ul>
                <li>Online stores of assistive technology products </li>
                <li>Adaptive toys </li>
                <li>Adaptive recreational equipment&nbsp; </li>
            </ul>
            <p><a href="http://www.ablenetinc.com/" target="_blank">Ablenet</a> <br />
                <a href="http://www.ableplay.org/">AblePlay</a> <br />
                <a href="http://www.bestbuy.com/site/health/assistive-technology/pcmcat325200050005.c?id=pcmcat325200050005" target="_blank">Best Buy </a>&nbsp;<br />
                <a href="http://www.flaghouse.com/" target="_blank">Flaghouse</a> <br />
                <a href="http://tfeinc.com/" target="_blank">Technology for Education</a></p>

            <div id="pageextender" style="clear:both">&nbsp;</div>

        </div>

        <!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->