<!--#include virtual="/templates/header.asp"-->

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <title>Simon Technology Center Services</title>
    <meta property="og:title" content="Simon Technology Center Services" />
    <meta property="og:url" content="http://www.pacer.org/stc/services.asp" />
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

        #projects div {
            min-height: 250px;
        }
        .leftcontent, .rightcontent {
            width: 49%;
            float: left;
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
            .leftcontent, .rightcontent {
                width: 100%;
                margin: 10px;
            }
            #projects {
                min-height: 1500px;
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
            <a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Simon Technology Center</a> / Services

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

            <h2>Simon Technology Center Services</h2>

            <!--BEGIN CONTENT-->

<div id="projects">
                <div>
                    <div class="leftcontent">
                        <a href="consultations/index.asp">
                            <img src="/images/consult.jpg" width="150" height="115" alt="STC conducting a consultation with a teen boy and his mother" style="float: left; padding-right: .5em;"/></a>
                        <a href="consultations/index.asp">Technology Consultations</a><br/>
                        Children and adults with disabilities have the opportunity to try a variety of software and assistive technology devices. STC staff assist parents, their children, and professionals attending the session to experiment with
                        software and hardware. Together, they find ways the individual can benefit from technology.
                    </div>
                    <div class="rightcontent">
                        <a href="individualtrainings.asp">
                            <img src="/images/IndividualTraining3.jpg" width="150" height="180" alt="STC staff providing training for a parent" style="float: right; padding-left: .5em;"/></a>
                        <a href="individualtrainings.asp">Individualized Training Sessions</a><br/>
                        Individualized training sessions provide consumers, families, and professionals with focused training on newly purchased software programs.
                    </div>
                </div>
                <div>
                    <div class="leftcontent">
                        <a href="library/index.asp">
                            <img src="/images/older-student.jpg" width="150" height="104" alt="display case in the STC library" style="float: left; padding-right: .5em;"/></a>
                        <a href="library/index.asp">STC Library</a><br/>
                        The Library offers Minnesota families and professionals the opportunity to preview educational and disability-specific software and assistive technology devices for children and young adults.
                    </div>
                    <div class="rightcontent">
                        <a href="super/index.asp">
                            <img src="/images/super.jpg" width="150" height="115" alt="boy riding an accessible bike" style="float: right; padding-left: .5em;"/></a><span style="color:red">NEW! -</span> <span class="fa fa-facebook-square"></span> <a
                            href="https://www.facebook.com/groups/863267887136492/" target="_blank">Facebook Buy &amp; Sell Group - MN Special Needs Equipment for Sale<br/> <span class="fa fa-external-link"></span></a> <br/>
                        <p>Find equipment and assistive technology after its initial use. Items such as, communication devices, walkers, adaptive switches and toys, motorized cars (that can be adapted), adapted keyboards, etc.</p></div>
                </div>
                <div>
                    <div class="leftcontent">
                        <a href="workshop.asp">
                            <img src="/images/training.jpg" width="150" height="115" alt="STC staff presenting a workshop at a conference" style="float: left; padding-right: .5em;"/></a>
                        <a href="workshop.asp">In-Services and Workshops</a><br/>
                        The STC provides free, public workshops for parents and professionals on a variety of technology-related topics. Corporations, professional organizations, and parent groups can also request customized in-services (available
                        for a small fee).
                    </div>
                    <div class="rightcontent">&nbsp;

                    </div>
                </div>
            </div>
        </div>

<!--END CONTENT-->


            <!--#include virtual="/templates/footer.asp"-->