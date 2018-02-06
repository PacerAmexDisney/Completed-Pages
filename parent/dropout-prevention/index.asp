<!--#include virtual="/templates/header.asp"-->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="Students who drop out of school often face a difficult future. For students with disabilities, the risks are intensified. Their dropout rate is about 40 percent--more than twice that of their peers without disabilities. However, families can play an important role in making sure their student with or without disabilities graduates. It is critical for parents to stay involved in their teen's life during middle school and high school." />
<title>Dropout Prevention - PACER Center</title>
<meta property="og:title" content="Dropout Prevention - PACER Center" />
<meta property="og:url" content="http://www.pacer.org/parent/dropout-prevention" />
<meta property="og:image" content="http://www.pacer.org/favicon.ico" />
<meta property="og:description" content="Students who drop out of school often face a difficult future. For students with disabilities, the risks are intensified. Their dropout rate is about 40 percent--more than twice that of their peers without disabilities. However, families can play an important role in making sure their student with or without disabilities graduates. It is critical for parents to stay involved in their teen's life during middle school and high school." />
<style>
.feature-img {
  float: right;
  margin: 6px 8px 16px 8px;
}
@media (max-width: 600px) {
  .feature-img {
    float: none;
  margin: 6px 8px 0px 8px;
  }
}
</style>
</head>

<body>
    <!--#include virtual="/templates/page-header-nav.asp"-->
    <div id="topbar">
    	<a href="/">Home</a> / Special Education /
	    <h1>Parent Special Education Information</h1>
        <p style="font-size:90%;padding:0;margin:0;">PACER is the Minnesota Parent Training and Information Center, funded by the U.S. Department of Education's Office of Special Education Programs.</p>
    </div>

    <script type="text/javascript">
       // ID of the current Left Nav item
    	var currId="dropout";
    	// any Subtree that I want to Display
    	var showTree = "none";
    </script>

    <div id="leftbar">
        <h2 style="display: none;">Parents Helping Parents Navigation Menu</h2>
        <!--#include virtual="/templates/leftNav.html" -->
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

        <!--BEGIN CONTENT-->
        <img src="/parent/images/grad.jpg" alt="" width="129" height="193" class="feature-img" />
        <h2>Dropout Prevention</h2>

        <p>Students who drop out of school often face a difficult future. For students with disabilities, the risks are intensified. Their dropout rate is about 40 percent--more than twice that of their peers without disabilities. However, families can play an important role in making sure their student with or without disabilities graduates. It is critical for parents to stay involved in their teen's life during middle school and high school. </p>
        <p>PACER Center collaborates with state and national agencies and organizations to address dropout prevention for students with disabilities, with a focus on encouraging effective parent involvement with their transition-aged youth. </p>

        <div class="resources" style="clear:right">
            <h2>resources</h2>
            <ul>
                <li class="pdficonlist"><a href="http://www.pacer.org/parent/php/PHP-c168.pdf" target="_blank">Dropout Prevention and Youth with Disabilities: The Role of Mentors <span class="fa fa-external-link"></span></a></li>
                <li class="pdficonlist"><a href="http://www.pacer.org/parent/php/PHP-c167.pdf" target="_blank">Dropout Prevention and Students with Disabilities: The Role of Service Learning <span class="fa fa-external-link"></span></a></li>
                <li class="pdficonlist"><a href="http://www.pacer.org/parent/php/PHP-c114.pdf" target="_blank">Dropout Prevention: Parents Play a Key Role <span class="fa fa-external-link"></span></a></li>
                <li class="pdficonlist"><a href="http://www.pacer.org/parent/php/PHP-c93.pdf" target="_blank">Resolving Special Education Issues: It Seems Like the School is Not Following My Child's IEP - What Can I Do? <span class="fa fa-external-link"></span></a></li>
                <li class="pdficonlist"><a href="http://www.pacer.org/parent/php/PHP-c94.pdf" target="_blank">Resolving Special Education Issues: Keeping Special Education Records <span class="fa fa-external-link"></span></a></li>
                <li class="pdficonlist"><a href="http://www.pacer.org/parent/php/PHP-c95.pdf" target="_blank">How You Can Help Your Child Learn to Be a Good Self Advocate <span class="fa fa-external-link"></span></a></li>
                <li class="pdficonlist"><a href="http://www.pacer.org/publications/parentbriefs/ParentBrief_Jul06.pdf" target="_blank">The Role of Parents in Dropout Prevention: Strategies that Promote Graduation and School Achievement <span class="fa fa-external-link"></span></a></li>
            </ul>
            <hr />
            <h3>Additional Information</h3>
            <p> <a href="http://www.ndpc-sd.org" target="_blank">The National Dropout Prevention Center for Students with Disabilities (NDPC-SD) <span class="fa fa-external-link"></span></a> supports the national implementation of provisions of the Individuals with Disabilities Education Act (IDEA) to provide successful school outcomes for students with disabilities. NDPC-SD supports states in assisting local education agencies to increase school completion rates and decrease dropout rates among students with disabilities </p>
        </div>

        <!--END CONTENT-->


    <!--#include virtual="/templates/footer.asp"-->
