<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>FLEX - Template - PACER Center</title>
<style>
	.original {background: #F4B1B2;}
	
	.flex {
        margin: 0;
        padding: 0;
        display: flex;
        flex-flow: row;
		align-items: center;
		justify-content: space-around;
    }
 
    .flex > .flexItemThumb, .flex > .flexLargeItemThumb {
        margin: 10px;
        padding: 0px;
        flex: 0 1 150px;
		overflow: hidden;
    }
	.flex > .flexLargeItemThumb {
		flex: 0 0 320px;
	}
	.flex img {
		width: 100%;
		height: auto;
		margin: 0px;
		padding: 0px;
		border-radius: 8px;
	}
	.flex img.mobileThumb {
		display: none;
	}

    .flex > .flexItemDescription {
		align-self: flex-start;
		margin: 10px;
        flex: 1 1 600px;
    }
	.flex > .flexItem {
		flex: 1 1 auto;
		margin: 20px;
	}
	.flexImage {
		margin: 2px;
		flex: 0 1 auto;
	}
	  /* Mobile */
    @media all and (max-width: 750px) {
		.mobileHidden { display: none;}
        .flex {
            flex-direction: column;
        }
    	.flex > .flexItemThumb, .flex > .flexLargeItemThumb {
	        order: 1;
			flex: 0 1 auto;
    	}
    	.flex > .flexItemDescription {
        	order: 2;
			flex: 1 1 auto;
    	}
		.flex > .flexLargeItemThumb {
			flex: 0 1 auto;
		}
		.flex img.mobileThumb {
			display: block;
		}
		.flex img.desktopThumb {
			display: none;
		}
	}
</style> 
</head>
<body>

<!--#include virtual="/templates/page-header-nav.asp"-->

<div id="topbar">
<div id="breadcrumb">

<a href="/">Home</a> / <a href="/cultural-diversity/">Working with Culturaly Diverse Families</a> /
</div>
	<h1>Flex Box</h1>

</div>

<script type="text/javascript">
	// ID of the current Left Nav item
	var currId="section504";
	// current subtree that should be displayed
	var showTree = "currentPageSubtree";
	var showTree2 = "secondarySubtreeIfNeeded";
</script>

<div id="leftbar">
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
<h2>2 Column Table Fix</h2>
   
	<h2>Original (from: http://staging.pacer.org/parent/)</h2>
   
   <div class="original">
   <table>
<tr>
  <td><img src="/parent/images/special-ed-thumb.jpg" alt="" height="150" width="150" /></td>
  <td><h3><a href="/parent/resources/improve-communications.asp">Understanding the Special Education Process </a></h3>
    <p>PACER&rsquo;s parent advocates often hear from parents when 
      they encounter certain statements or situations at school 
      meetings that they find uncomfortable or uncertain. These 
      tips are suggestions and techniques from PACER advocates 
      to help parents address some of those concerns, as well as 
      improve communication with school staff. </p></td>
</tr>
<tr>
<td><img src="/parent/images/improve-communications-thumb.jpg" alt="" height="150" width="150" /></td>
<td><h3><a href="/parent/resources/improve-communications.asp">Improve Communications with School Staff</a></h3>
	<p>PACER&rsquo;s parent advocates often hear from parents when 
they encounter certain statements or situations at school 
meetings that they find uncomfortable or uncertain. These 
tips are suggestions and techniques from PACER advocates 
to help parents address some of those concerns, as well as 
improve communication with school staff. </p>
</td>
</tr>
</table>    
	</div>  
    <hr>
	<h2>Flex Image Thumbnail and Description - <span style="color: green">Finished In flexbox-responsive-min.css</span></h2>
	<div class="flex" id="Row1">
	 <aside class="flexItemThumb">
	 	<img class="desktopThumb" src="/parent/images/special-ed-thumb.jpg" alt="" height="150" width="150" />
	 	<img class="mobileThumb" src="/parent/images/special-ed-mobilethumb.jpg" alt="" height="421" width="750" />
	 </aside>
	 <article class="flexItemDescription">
	 	<h2><a href="/parent/resources/improve-communications.asp">Seperate Desktop Image and Mobile Image Solution </a></h2>
	 	<p>PACER&rsquo;s parent advocates often hear from parents when 
	 		they encounter certain statements or situations at school 
	 		meetings that they find uncomfortable or uncertain. These 
	 		tips are suggestions and techniques from PACER advocates 
	 		to help parents address some of those concerns, as well as 
	 		improve communication with school staff. </p>
		</article>
	</div>
	<div class="flex" id="Row2">
	 <aside class="flexItemThumb">
	 	<img src="/parent/images/special-ed-mobilethumb.jpg" alt="" height="150" width="150" />
	 	
	 </aside>
	 <article class="flexItemDescription">
	 	<h2><a href="/parent/resources/improve-communications.asp">Single Image Thumb For Both </a></h2>
	 	<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It   has roots in a piece of classical Latin literature from 45 BC, making   it over 2000 years old. Richard McClintock, a Latin professor at   Hampden-Sydney College in Virginia, looked up one of the more obscure   Latin words, consectetur, from a Lorem Ipsum passage, and going through   the cites of the word in classical literature, discovered the   undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33   of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by   Cicero, written in 45 BC. This book is a treatise on the theory of   ethics, very popular during the Renaissance. The first line of Lorem   Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section   1.10.32.</p>
	 	<p>The standard chunk of Lorem Ipsum used since the 1500s is   reproduced below for those interested. Sections 1.10.32 and 1.10.33   from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in   their exact original form, accompanied by English versions from the 1914   translation by H. Rackham.</p>
		</article>
	</div>
	<div class="flex" id="Row3">
	 <aside class="flexLargeItemThumb">
	 	<img src="/bullying/stories/student-action/events/images/2017-grace-rembinski.jpg" alt="" height="435" width="320" />
	 </aside>
	 <article class="flexItemDescription">
	 	<h2>Large Item Thumbnails from :<br>
	 		<a href="http://staging.pacer.org/bullying/stories/student-action/">Bullying &gt; Stories &gt; Student Action</a></h2>
	 	<p><em>&ldquo;I want you to know that you are not invisible, you are not forgettable; you are wonderful.&rdquo; </em></p>
		<p>This is one of many kind lyrics in Grace Rembinski&rsquo;s new song   titled, &ldquo;I Want You to Know.&rdquo; She co-wrote this song, recorded in both   English and Spanish, for &ldquo;friends and for anyone who has ever been told   that they are not good enough. To show them that no matter how awful   people make you feel, how hopeless life may seem, things do get better;   and many others have been in your shoes. If you believe in yourself,   that's all you need and with that, anything is possible.&rdquo;</p>
		</article>
	</div>
	<div class="flex" id="Row4">
	 <aside class="flexLargeItemThumb">
	 	<img src="/bullying/stories/student-action/events/images/Haley-reading-to-class.jpg" alt="" height="475" width="320" />
	 	
	 </aside>
	 <article class="flexItemDescription">
	 	<h2>Bully Free Starts with Me</h2>
	 	<p>As a young girl, Haley Bird was diagnosed with a severe peanut   allergy. She could not touch, breathe, or be in the same room with   peanuts. As a result, she grew up knowing what she could and could not   eat. As Haley got older, things began to get more difficult. Her peers   would tease, call her names, and even wave candy in her face. Teachers   would hang-up signs in the classroom to show that no peanuts were   allowed, which made her even more of a target. When the bullying got   worse, Haley&rsquo;s parents met with her school to implement a 504 plan to   insure she was safe on school grounds. </p>
		<p>&ldquo;I always knew I was different and faced many obstacles because of   my food allergy,&rdquo; says Haley. &ldquo;However, I am fortunate that my parents   have been so supportive of the issues regarding my food allergy, as well   as my experiences being a target of bullying because of it.  That is   why it is so important to tell someone you trust if you are being   bullied or if you witness bullying behavior.&rdquo;<br>
		</p>
		<p>For these reasons, Haley, now Miss Arkansas International 2017,   chose the platform of &ldquo;Bully Free Starts with Me.&rdquo; She is educating   young children to know where to turn if they are being bullied and to   not let the words, actions, or ignorance of others defeat them. She is   sharing this message with as many people as she can, including Arkansas   state senators, representatives, and the governor who care so much about   bully prevention. &ldquo;I am working as a voice with them,&rdquo; says Haley. </p>
		<p>&ldquo;No matter what people say to you it does not define the person   you are. Yes, I was bullied in school, but I now use my story to empower   those around me. If we all foster love, I believe that bullying will   eventually end. One word or action can change a person&rsquo;s life. Stand up   for those around you.&rdquo;</p>
		</article>
	</div>
	<hr>
	
	<h1>Image Row - <span style="color: green">Finished In flexbox-responsive-min.css</span></h1>
	<h2>Original - http://staging.pacer.org/bullying/classroom/elementary/spookley/index.asp</h2>
	<style type="text/css">
.imgwrap{
	text-align:center;
	margin:10x 5px;
	margin-bottom:15px;
}
.imgwrap img {
	margin:0px 5px;
}
</style>
	
	<div class="original">
	
	<div class="imgwrap" style="text-align:center; clear:right"><span class="imgwrap" style="text-align:center; clear:right"><img src="/bullying/classroom/elementary/spookley/images/joe-with-kids-in-springfiled-nj-129h-195w.jpg" width="195" height="129" alt="" /><span class="imgwrap" style="text-align:center; clear:right"><img src="/bullying/classroom/elementary/spookley/images/Spookley-And-Class.jpg" width="195" height="129" alt="" /></span></span><span class="imgwrap" style="text-align:center; clear:right"><img src="/bullying/classroom/elementary/spookley/images/spookley-mcbroom-2-129h-195w.jpg" alt="" width="195" height="129" /></span><img src="/bullying/classroom/elementary/spookley/images/Spookley-with-Girl.jpg" width="195" height="129" alt="" /></div> 

  <img class="fltrt" style="margin-right:35px;" src="/bullying/classroom/elementary/spookley/images/Spookley-poster.jpg" width="150" height="177" alt="" />
  <h2>Purchasing the Spookley Products</h2>
  <ul>
  <li>The <a href="http://www.holidayhillfarm.com/farmstand" target="_blank">Holiday Hill Farm Online Farmstand <span class="fa fa-external-link"></span></a> </li>
   <li><a href="http://www.barnesandnoble.com/s/joe-troiano" target="_blank">Barnes &amp; Noble <span class="fa fa-external-link"></span></a></li>
   
   <li>Through <a href="http://www.scholastic.com/" target="_blank">Scholastic Book Clubs <span class="fa fa-external-link"></span></a>.</li>
   <li>Also available as an <a href="http://www.oceanhousemedia.com/products/spookleybook/" target="_blank">interactive storybook app <span class="fa fa-external-link"></span></a> for the Nook, iOS, and Android platforms.</li>
  </ul>



<div class="imgwrap" style="clear: right;">
<img src="/bullying/classroom/elementary/spookley/images/Spookley-Hay-Maze-farm-195w.jpg" width="195" height="129" alt="" />
	<img src="/bullying/classroom/elementary/spookley/images/Savannah-4H-Spookley-195w.jpg" width="195" height="129" alt="" />
	<img src="/bullying/classroom/elementary/spookley/images/Spookley-Inflatable-129h-195w.jpg" width="195" height="129" alt="" />
	<img src="/bullying/classroom/elementary/spookley/images/Spookley-Student-Assembly.jpg" width="195" height="129" alt="" />
	</div>

	</div>

<hr>
	
	<h1>Flex Image Row</h1>
	<p>Note: Now that the images in this layout scale, you should start with thumb images that are 500px - 750px wide to fill up the mobile screens better when the images stack vertically.</p>
	
	<div class="flex">
		<div class="flexImage">
			<img src="/bullying/classroom/elementary/spookley/images/joe-with-kids-in-springfiled-nj-129h-195w.jpg" width="195" height="129" alt="" />
		</div>
		<div class="flexImage">
			<img src="/bullying/classroom/elementary/spookley/images/Spookley-And-Class.jpg" width="195" height="129" alt="" />
		</div>
		<div class="flexImage">
			<img src="/bullying/classroom/elementary/spookley/images/spookley-mcbroom-2-129h-195w.jpg" alt="" width="195" height="129" />
		</div>
		<div class="flexImage">
			<img src="/bullying/classroom/elementary/spookley/images/Spookley-with-Girl.jpg" width="195" height="129" alt="" />
		</div>
	</div>

	
	<div class="flex" style="margin: 50px 0px;">
	  <div class="flexItem"> 
		  <h2>Purchasing the Spookley Products</h2>
		  <ul>
		  <li>The <a href="http://www.holidayhillfarm.com/farmstand" target="_blank">Holiday Hill Farm Online Farmstand <span class="fa fa-external-link"></span></a> </li>
		   <li><a href="http://www.barnesandnoble.com/s/joe-troiano" target="_blank">Barnes &amp; Noble <span class="fa fa-external-link"></span></a></li>

		   <li>Through <a href="http://www.scholastic.com/" target="_blank">Scholastic Book Clubs <span class="fa fa-external-link"></span></a>.</li>
		   <li>Also available as an <a href="http://www.oceanhousemedia.com/products/spookleybook/" target="_blank">interactive storybook app <span class="fa fa-external-link"></span></a> for the Nook, iOS, and Android platforms.</li>
		  </ul>
		</div>
		<div class="flexItem" style="flex: 0 0 auto;">
			<img src="/bullying/classroom/elementary/spookley/images/Spookley-poster.jpg" width="150" height="177" alt="" />
		</div>
	</div>
	
	<div class="flex flexImageRow">
		<div class="flexImage">
			<img src="/bullying/classroom/elementary/spookley/images/Spookley-Hay-Maze-farm-195w.jpg" width="195" height="129" alt="" />
		</div>
		<div class="flexImage">
			<img src="/bullying/classroom/elementary/spookley/images/Savannah-4H-Spookley-195w.jpg" width="195" height="129" alt="" />
		</div>
		<div class="flexImage">
			<img src="/bullying/classroom/elementary/spookley/images/Spookley-Inflatable-129h-195w.jpg" width="195" height="129" alt="" />
		</div>
		<div class="flexImage">
			<img src="/bullying/classroom/elementary/spookley/images/Spookley-Student-Assembly.jpg" width="195" height="129" alt="" />
		</div>
	</div>
	
	
<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->