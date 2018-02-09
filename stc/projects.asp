<!--#include virtual="/templates/header.asp"-->
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <title>Simon Technology Center Projects</title>
    <meta property="og:title" content="Simon Technology Center Projects" />
        <meta property="og:url" content="http://www.pacer.org/stc/projects.asp" />
        <meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
        <meta property="og:description" content="" />
        <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" type="text/css" href="../css/leftnavigation.css" media="screen, projection"/>
        <link rel="stylesheet" type="text/css" href="./css/stc.css" media="print"/>
        <script type="text/javascript" src="../css/menu.js"></script>
    <style type="text/css">
        .headerRow {
	        background:#246c00;
	        color:#fff;
	        padding:12px 0px;
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
                        text-align:center;
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
    <div id="rightBar">

        <p class="pacerinfo">
            <strong>PACER Center<br/>
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
                    <img src="../css/printicon.gif" width="15" height="14" alt=""/><a href="javascript:window.print()">Print page</a>

                </p>
            </div>
            <a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Simon Technology Center</a> / Projects

            <h1>Simon Projects</h1>

        </div>
    </div>

    <div id="leftbar">
        <h2 style="display: none;">STC - Navigation Menu</h2>
        <!--#include virtual="/stc/leftNav.htm"-->
    </div>
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

            <h2>Simon Technology Center Projects</h2>

            <!--BEGIN CONTENT-->
            <p>The Simon Technology Center (STC) impacts local and national communities through innovative projects designed to build capacity, knowledge, and support for individuals with disabilities and the parents, professionals, and organizations
                that help them thrive.</p>

            <h3>Get involved</h3>
            <p>Being part of an STC project can have lasting positive impact in your community and in the lives of those you care about.</p>


            <div>
                <div class="leftcontent">
                    <img src="/stc/tikes/images/tikes-blocks.jpg" alt="" width="230" height="55"/>
                </div>

                <div class="rightcontent">
                    <h4><a href="/stc/tikes/">Project TIKES<br/>
                        (Technology to Improve Kids&rsquo; Educational Success)</a></h4>
                    <p>Did you know that children ages birth to 5 with disabilities can benefit from assistive technology? Project TIKES gives parents and professionals the information they need to use technology with young children, include
                        technology in the Individual Family Service Plan (IFSP) or Individualized Education Program (IEP), and acquire and fund technology. Through trainings, videos, tip sheets and more This Office of Special Education Programs
                        (OSEP) funded project helps parent and professionals use technology to improve outcomes for children ages birth to 5 with disabilities.&nbsp; </p>
                </div>

                <div class="middlecontent">
                    <td colspan="2" class="headerRow"><h3>For Middle School Girls . . .</h3></td>
                </div>

                <div class="middlecontent">
                    <div class="leftcontent" valign="top" align="center"><img src="/stc/images/exitecamp-2014-pic2.jpg" width="215" height="188" alt=""/></div>
                    <div class="rightcontent" valign="top"><h4 align="left"><strong><a href="/stc/exite/index.asp">EX.I.T.E Camp: EXploring Interests<br/>
                        in Technology and Engineering</a></strong></h4>
                        <p align="left">Explore with other middle school girls with disabilities what makes science, technology, engineering, and math (STEM) so amazing and fun! Make friends and learn through hands-on activities led by scientists and
                            engineers during this unique summer camp opportunity. Professional development for teachers is available, as well as volunteer opportunities for STEM professionals.</p>
                    </div>
                </div>

                <div class="middlecontent">
                    <div class="leftcontent" valign="top" align="center"><img src="/stc/images/techforgirls-2014.jpg" width="215" height="166" alt=""/></div>
                    <div class="rightcontent" valign="top"><h4 align="left"><strong><a href="/stc/exite/techforgirls.asp">Technology for Girls Workshops</a></strong></h4>
                        <p align="left">Take part in these exciting interactive workshops for middle school girls with disabilities to learn about the remarkable ways science, technology, engineering, and math (STEM) make the world a better
                            place.</p>
                    </div>
                </div>

                <div class="middlecontent">
                    <div colspan="3" class="headerRow"><h3>For Parents and Educators . . .</h3></div>
                </div>

                <div class="middlecontent">
                    <div class="leftcontent" valign="top" align="center"><img src="/stc/images/kiteproject2.jpg" alt="" width="215" height="162"/></div>
                    <div class="rightcontent" valign="top"><h4><strong><a href="/stc/kite/index.asp">Project KITE:<br/>
                        Kids Included Through Technology are Enriched</a></strong></h4>
                        <p> Get involved in this free assistive technology training series and coaching program for teams of parents and educators. Project participants are working in schools across Minnesota to increase the independence and
                            inclusion of young children with disabilities, ages 3 to 8, through innovative uses of assistive technology.</p>
                    </div>
                </div>
            </div>


            <!--END CONTENT-->
            <!--#include virtual="/templates/footer.asp"-->