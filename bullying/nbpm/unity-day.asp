<%
	Dim UnityDay, UnityDayDate, UnityDayNoYear
	UnityDay = "10/25/2017"
	UnityDayDate = FormatDateTime(UnityDay, 1)
	UnityDayNoYear = Left(UnityDayDate, Len(UnityDayDate)-6)
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Unity Day - <%=UnityDayDate%> - National Bullying Prevention Center</title>
<meta name="title" content="Unity Day - <%=UnityDayDate%> - National Bullying Prevention Center" />
<meta name="description" content="Make it ORANGE and make it end! What are your true colors when it comes to bullying? If you care about safe and supportive schools and communities make your color ORANGE on Unity Day. Send one large ORANGE message of support, hope, and unity." />
<!-- for Facebook -->          
<meta property="og:title" content="UNITY DAY &mdash; <%=UnityDayNoYear%> &mdash; Make it orange and make it end!" />
<meta property="og:type" content="article" />
<meta property="og:image" content="http://www.pacer.org/bullying/nbpm/images/unityDay-fb.jpg" />
<meta property="og:url" content="http://www.pacer.org/bullying/nbpm/unity-day.asp" />
<meta property="og:description" content="Make it ORANGE and make it end! What are your true colors when it comes to bullying? If you care about safe and supportive schools and communities make your color ORANGE on Unity Day. Send one large ORANGE message of support, hope, and unity." />

<link rel="image_src" href="http://www.pacer.org/bullying/images/nbpc-logo.png" />
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/bullying/css/scrolling.css"/>

<link href="/js/colorbox1.5.9/colorbox.css" rel="stylesheet" type="text/css" />

<!--#include virtual="/bullying/dynamic-head-items.html"-->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script type="text/javascript" src="/js/pacer-expanding-box.js"></script>
<link rel="stylesheet" type="text/css" href="/js/pacer-expanding-box.css"/>
<script type="text/javascript" src="/js/jquery-ui-1.11.4.custom/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css" href="/js/jquery-ui-1.11.4.custom/jquery-ui.css"/>
<script type="text/javascript">
//<![CDATA[

	
	$(document).ready(function() {
		$('.dash').attr('aria-hidden','true');
		var $pageTabs = $('#tabs').tabs();
		//When linking to a tab on the page the browser sometimes jumps you to the bottom of the page.  This will start you at the top of the tab if you link directly to a tab on the page.
		if (window.location.hash) {
				$('html, body').animate({
        			scrollTop: $($pageTabs).offset().top - 115
    			}, 150);
		}

		$(".ui-tabs-panel").each(function(i){
	  		var totalSize = $(".ui-tabs-panel").size() - 1;
	  		if (i != totalSize) {
	      		next = i + 1;
   		  		$(this).append("<a href='#' class='next-tab mover' rel='" + next + "'>Next Tab &#187;</a>");
	  		}
	  
	  		if (i != 0) {
	      		prev = i - 1;
   		  	$(this).append("<a href='#' class='prev-tab mover' rel='" + prev + "'>&#171; Prev Tab</a>");
	  		}
   			$(this).append('<br class="clearfloat" />');
		});
	
		$('.next-tab, .prev-tab').click(function() { 
		   //scroll back to the top
		   $('html, body').animate({
        		scrollTop: $($pageTabs).offset().top - 115
    		}, 150);
		   //delay the changing of the tabs until the scroll is complete so the person sees the heading change
		   setTimeout($.proxy(function() {
			   	//alert('timeout - ' + $(this).attr("rel"));
		   		$('#tabs').tabs('option', 'active', $(this).attr("rel"));
		   		//Re-scroll the window after the content length has changed.
				$('html, body').animate({
        			scrollTop: $($pageTabs).offset().top - 115
    			}, 150);
				
		   }, this), 300);
           return false;
       	});
	 });
	 //----------close ready function----------
	 //]]>
     </script>
<script type="text/javascript" src="/js/colorbox1.5.9/jquery.colorbox-min.js"></script>
<script src="/js/LayerSlider/layerslider/jQuery/jquery-easing-1.3.js" type="text/javascript"></script>

<style type="text/css">
#gallery {
	text-align:center;
}
#gallery img {
	margin: 0px 4px 4px;
	box-shadow: 2px 2px 3px #333;
}
.topRightTabImage {
	float:right; 
	margin-right:-1.6em; 
	margin-top:-1em;
}
</style>

<style type="text/css">
	.eventtable {
	    border-spacing: 10px;
	    border-collapse: separate;
	}
	.eventtable td:nth-child(2) {
		border-top:1px solid #ccc;
		padding-top:5px;
	}
	.eventtable tr:first-child td {
		border:none;
	}
	
	.eventtable td {
		vertical-align:top;
	}
	.eventtable img {
		margin-bottom:25px;
		margin-top:5px;
	}
	.eventtable .captioned {
		font-size:.8em;
		font-style:italic;
	}
	.eventtable .captioned img {
		margin-bottom:5px;
	}
</style>

<script type="text/javascript">
$(document).ready(function(){
		$(".group1").colorbox({rel:'group1'});
	});

</script>
</head><body>

<div class="container"> <a id="skiptocontent" href="#maincontent">Skip to main content</a> 
  
  <!--#include virtual="/bullying/dynamic-header.html"--> 
  <!--#include virtual="/bullying/topnav.html"--> 
  
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/nbpm/">National Bullying Prevention Month</a> /</div>

  
			
  <!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show --> 
  <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="unityday";
	var showTree = "none";
	var currSubId="none";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "active";
	}
	if (document.getElementById(currSubId)){
		document.getElementById(currSubId).className = "active";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "submenu") {
			if (subTrees[i].id != showTree) {
				subTrees[i].className = "submenuhidden";
			}
		}
	}
</script>
  <div class="content" style="clear:right">
         
         <div class="contentrow row-orange row-shadow">
             <div class="addthis_sharing_toolbox"></div><div class="sharethis" style="float:right; width:3em;">Share:</div>
			<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53729684589714e1" async="async"></script>

             <h1 style="text-align:left; padding-top:20px;" id="maincontent">Unity Day - <%=UnityDayDate%></h1>
           <p style="font-size:1.2em; font-weight:bold;">Together against bullying &mdash; united for kindness, acceptance and inclusion.</p>
   	</div>
    
             <%If date = cDate("10-19-2016") Then%>
                 <div style="width:300px; float:right; margin:10px;">
                    <a class="btn btn-cta" href="/bullying/">See All The Activity Going On Today</a> 
                 </div>
			 <%End If%>

      <div class="tabbedPanel" style="clear:right;">
      <div id="tabs">
        <ul>
          <li><a href="#tab-about">About</a></li>
          <li><a href="#tab-promote">Promote</a></li>
          <li><a href="#tab-goorange">Go Orange</a></li>
          <li><a href="#tab-ideas">Ideas</a></li>
          <li><a href="#tab-stories">Stories</a></li>
          <li><a href="#tab-dance">Dance</a></li>
          <li><a href="#tab-faq">FAQ</a></li>         
        </ul>
        
        <div id="tab-about">
		  <img class="topRightTabImage" src="/bullying/nbpm/images/unityday-orange-silhouette.jpg" width="258" height="600" alt=""/>
          <h1>About Unity Day</h1>
          <h2>Save the date! Wednesday, October 25, 2017</h2>
		  <h3>UNITY DAY: Together against bullying. United for kindness, acceptance and inclusion. <%=UnityDayDate%></h3> 
          <p>Make it <span style="color:#F15C32; font-weight:bold">ORANGE</span> and make it end! What are your true colors when it comes to bullying? If you care about safe and supportive schools and communities make your color <span style="color:#F15C32; font-weight:bold">ORANGE</span> on&nbsp;<strong>Unity Day</strong>. That&rsquo;s the day everyone can come together &ndash; in schools, communities, and online &ndash; and send one large <span style="color:#F15C32; font-weight:bold">ORANGE</span> message of support, hope, and unity to show that we are together against bullying and united for kindness, acceptance and inclusion.</p>
          <p>Individuals across the nation, and even world-wide, can participate in Unity Day.</p>
          <h2>Wear Orange: Make a statement!</h2>
            <p>&ldquo;<span style="color:#F15C32; font-weight:bold">ORANGE</span> provides a powerful, visually compelling expression of solidarity,&rdquo; said Paula Goldberg, Executive Director of PACER Center. &ldquo;When hundreds of individuals in a school or organization wear orange, the vibrant statement becomes a conversation starter, sending the unified message to kids to know that they are not alone.&rdquo;</p>
            <p><a href="/bullying/nbpm/pdf/why-wearing-orange-flyer.pdf" target="_blank">Ways to talk about &ldquo;Why I&rsquo;m Wearing Orange&rdquo;</a> | <a href="/bullying/nbpm/pdf/why-wearing-orange-buttons.pdf" target="_blank">Print the stickers</a></p>
            <p><span style="color:#F15C32; font-weight:bold">Share Orange: Color our online world with orange!</span></p>
            <ul>
            <li>Change your social media profiles on <a href="http://www.pacer.org/bullying/nbpm/go-orange/socialmedia.asp" target="_blank">Facebook and Instagram</a></li>
            <li>Tag your social media photos using #UnityDay2017</li>
            <li>Share your pictures to the <a href="https://www.facebook.com/events/968592066590983/" target="_blank">Facebook event page</a></li>
            <li>Share this page with friends using the social media icons</li>
          </ul>
          <p><em>&ldquo;More than one of every five school-aged children report being bullied,</em>&rdquo; said Julie Hertzog, director of PACER&rsquo;s National Bullying Prevention Center, which sponsors Unity Day and founded National Bullying Prevention Month in 2006. <em>&ldquo;It&rsquo;s important these students know they are not alone and that they have the right to feel safe. By joining together and wearing <span style="color:#F15C32; font-weight:bold">ORANGE</span> on Unity Day, we can send the unified message that we care about student&rsquo;s physical and emotional health and that bullying will&nbsp;no longer be accepted in this society.&rdquo;</em></p>
          <p>Wikipedia: <a href="https://en.wikipedia.org/wiki/Unity_Day_(United_States)" target="_blank">Sponsored by PACER&rsquo;s National Bullying Prevention Center since 2011</a> </p>
          
<!-- PHOTO GALLERY START -->
    <p class="date" style="font-style:italic; margin-bottom:2px">Click on an image to enlarge.</p>
    <div id="gallery">
        <a class="group1" href="/bullying/nbpm/images/unityDayGallery/unityDayGallery1.jpg" title="&copy;2014"><img src="/bullying/nbpm/images/unityDayGallery/unityDayThumb1.jpg" width="100" height="100" alt="image gallery 1" /></a>
        <a class="group1" href="/bullying/nbpm/images/unityDayGallery/unityDayGallery2.jpg" title="&copy;2014"><img src="/bullying/nbpm/images/unityDayGallery/unityDayThumb2.jpg" width="100" height="100" alt="image gallery 2" /></a>
        <a class="group1" href="/bullying/nbpm/images/unityDayGallery/unityDayGallery4.jpg" title="&copy;2014"><img src="/bullying/nbpm/images/unityDayGallery/unityDayThumb4.jpg" width="100" height="100" alt="image gallery 3" /></a>
        <a class="group1" href="/bullying/nbpm/images/unityDayGallery/unityDayGallery5.jpg" title="&copy;2014"><img src="/bullying/nbpm/images/unityDayGallery/unityDayThumb5.jpg" width="100" height="100" alt="image gallery 4" /></a>
        <a class="group1" href="/bullying/nbpm/images/unityDayGallery/unityDayGallery6.jpg" title="&copy;2014"><img src="/bullying/nbpm/images/unityDayGallery/unityDayThumb6.jpg" width="100" height="100" alt="image gallery 5" /></a>
        <a class="group1" href="/bullying/nbpm/images/unityDayGallery/unityDayGallery7.jpg" title="&copy;2014"><img src="/bullying/nbpm/images/unityDayGallery/unityDayThumb7.jpg" width="100" height="100" alt="image gallery 6" /></a>
        <a class="group1" href="/bullying/nbpm/images/unityDayGallery/unityDayGallery8.jpg" title="&copy;2014"><img src="/bullying/nbpm/images/unityDayGallery/unityDayThumb8.jpg" width="100" height="100" alt="image gallery 7" /></a>
        <a class="group1" href="/bullying/nbpm/images/unityDayGallery/unityDayGallery9.jpg" title="&copy;2014"><img src="/bullying/nbpm/images/unityDayGallery/unityDayThumb9.jpg" width="100" height="100" alt="image gallery 8" /></a>
        <%
        '<a class="group1" href="/bullying/nbpm/images/unityDayGallery/unityDayGallery3.jpg" title="&copy;2014"><img src="/bullying/nbpm/images/unityDayGallery/unityDayThumb3.jpg" width="100" height="100" alt="" /></a>
		%>
        </div> 
        </div>
        <%'------------------------------------------------- TAB 2 ------------------------------ %>
        
        <div id="tab-promote">
          <h1>Promote</h1>
          <p>Show your support of Unity Day through encouraging everyone to get involved! Whether it&rsquo;s displaying a poster, or sharing the message through social media, the goal is to color the nation orange!</p>
           
           <table id="promote" class="eventtable">
           <tr>
           <td><img src="/bullying/nbpm/images/NBPC_UnityDay2017.jpg" width="350" height="453" alt=""/></td>
           <td><h3>Download, Print and Share the Flyer</h3>
           <p>Inform your school, organization or community about UNITY DAY with this free, colorful 81/2 x 11 handout. Download, print and share. <a href="/bullying/nbpm/pdf/NBPC_UnityDay2017.pdf" target="_blank">Open the PDF here &gt;&gt;&gt;</a></p></td>
           </tr>
          <tr>
          <td align="center"><img src="/bullying/resources/images/UnityDayPoster.jpg" width="300" height="450" alt=""/></td>
          <td><h3>Order a Free Poster</h3>
          <p>Order a 24 x36 UNITY poster to display in your school, home, or community.</p>
          <p>The 2017 poster will be available this summer! <a href="http://www.pacer.org/bullying/resources/posters.asp" target="_blank">Order information &gt;&gt;&gt;</a></p></td>
          </tr>
          
          <tr>
          <td><img src="/bullying/nbpm/images/ud-promote-banner.jpg" width="350" height="188" alt=""/></td>
          <td><h3>Display a Banner</h3>
          <p>Go big with a Unity Day Banner: &ldquo;Together Against Bullying &mdash; United for Kindness, Acceptance, and Inclusion&rdquo; banners are a great way for students at your school or event to make a powerful visual statement of support on Unity Day. A 6 foot x 3 foot vinyl banner is approximately $100. Order from a local printer.</p></td>
          </tr>
          
          <tr>
          <td><img src="/bullying/nbpm/images/fb_unityday_shares_quote.jpg" width="350" height="130" alt=""/></td>
          <td><h3>Share the Orange</h3>
          <p>Download these images and share through your web and social media pages. </p>
          <p align="center"><a href="/bullying/nbpm/images/fb_unityday_shares_school-full.jpg" target="_blank"><img src="/bullying/nbpm/images/fb_unityday_shares_school.jpg" width="400" height="148" alt="Download - Go Orange In Your School"/></a><br />
            <a href="/bullying/nbpm/images/fb_unityday_shares_community-full.jpg" target="_blank"><img src="/bullying/nbpm/images/fb_unityday_shares_community.jpg" width="400" height="148" alt="Download - Go Orange in your community" hspace="10"/></a><br />
            <a href="/bullying/nbpm/images/fb_unityday_shares_workplace-full.jpg" target="_blank"><img src="/bullying/nbpm/images/fb_unityday_shares_workplace.jpg" width="400" height="148" alt="Download - Go Orange in the workplace"/></a></p></td>
          </tr>
          
          <tr>
          <td><img src="/bullying/nbpm/images/CreativeKidsCard-350px.jpg" width="350" height="233" alt=""/></td>
          <td><h3>Order the Card</h3>
          <p>PACER&rsquo;s Creative Kids Card celebrates unity, inclusion, kindness and friendship. Designed by 8 year old Isabella and available for purchase at $10 per box. <a href="http://www.pacer.org/help/creativeKids/creative2016.asp" target="_blank">Learn more about Creative Kids, Isabella, her new design and how to purchase >>></a></p>
          </td>
          </tr>
          
          <tr>
          <td><img src="/bullying/nbpm/images/ud-promote-update.jpg" width="350" height="130" alt=""/></td>
          <td><h3>Sign Up for Updates</h3>
          <p>&ldquo;Attend&rdquo; and &ldquo;Share&rdquo; the UNITY DAY Facebook Event with family and friends.</p>
          <p><a href="https://www.facebook.com/events/1276522079128909" target="_blank">Unity Day Facebook Event &ndash; 2017 &gt;&gt;&gt;</a></p>
          <p><a href="https://www.facebook.com/events/968592066590983/" target="_blank">Unity Day Facebook Event &ndash; 2016 &gt;&gt;&gt;</a></p>
          <p><a href="https://www.facebook.com/events/951749594836526/" target="_blank">Unity Day Facebook Event &ndash; 2015 &gt;&gt;&gt;</a></p></td>
          </tr>
          
          </table>
	
          
        </div>
        
        <%'------------------------------------------------- TAB 3 ------------------------------ %>
        
        <div id="tab-goorange">
          <h1>Go Orange</h1>
          <p>Want to unite against bullying? It's easy. Wear orange!</p>
          <p>On <%=UnityDayDate%>, color our nation, and even the world, in orange, showing that our society believes that no one child ever has to experience the physical and emotional pain of being purposefully hurt, harmed or humiliated. Send the message that every child deserves to feel safe from bullying while at school, online or in the community.</p>
          <table id="goorange" class="eventtable">
          <tr>
                    <td width="350" class="captioned"><img src="/bullying/nbpm/go-orange/images/TogetherAgainstBullying-fbFrame.jpg" width="350" height="350" alt="Together Against Bullying Facebook Frame"/></td>

	<td><h3>Change Your  Profile Images</h3>
          <p>Go orange on social media! Add the National Bullying Prevention Center Facebook frame to your  Facebook profile or add an orange tint to your Instagram profile to show&nbsp;your  friends that you support National Bullying Prevention Month. <a href="/bullying/nbpm/go-orange/socialmedia.asp">Learn How</a></p></td>
          </tr><tr>
                    <td width="350" class="captioned"><img src="/bullying/images/2016-tshirt-front.jpg" width="170" height="162" alt=""/><img src="/bullying/images/2016-tshirt-back.jpg" width="170" height="162" alt=""/><br />
          <p><em>Official 2016 Unity Day T-shirt</em></p></td>

	<td><h3>T-shirts</h3>
          <p>PACER&rsquo;s official t-shirt is available for online orders through our partner CustomInk to celebrate its sixth annual Be Good to Each Other bullying prevention campaign from Aug. 1 - Oct. 31, 2016. CustomInk will donate profits (up to $100,000) from the sales of bullying prevention t-shirts to PACER. <a href="http://www.customink.com/stopbullying" target="_blank">Order now <span class="fa fa-external-link"></span></a></p></td>
          </tr>
         
          <tr>
          <td><img src="/bullying/nbpm/images/ud-wearorange-crowns.jpg" width="350" height="225" alt=""/></td>
          <td><h3>Unity Crowns</h3>
          <p>Create an orange &ldquo;crown&rdquo; for each student with orange construction paper and template. Each crown can then be customized with the child&rsquo;s name. Free crown templates are available online.</p></td>
          
          </tr>
          <tr>
          <td><img src="/bullying/nbpm/images/ideas-orange-items.jpg" width="350" height="273" alt=""/></td>
          <td><h3>Be creative!</h3>
          <p>Other ideas include painting nails orange, inexpensive orange bead necklaces, orange face paint or orange flowers.</p></td>
          
          </tr></table>
        </div>
        
        <%'------------------------------------------------- TAB 2 ------------------------------ %>
        
        <div id="tab-ideas">
        <h1>Ideas</h1>
        <table id="ideas" class="eventtable">
        <tr>
        <td><img src="/bullying/nbpm/images/ideas-project-connect.jpg" width="350" height="281" alt=""/></td>
        <td><h3>Project Connect</h3>
        <p>Create a visual&nbsp;<strong>UNITY</strong>&nbsp;statement! In <a href="http://www.pacer.org/bullying/resources/toolkits/classroom/project-connect.asp"><strong>Project Connect</strong></a>, students can write a message on an&nbsp;<strong>ORANGE </strong>strip of paper. The paper links are then connected to create one long chain which visually represents uniting for a common cause.</p>
        <p>The process is simple. Students write a message on a strip of <strong>ORANGE</strong> construction paper.</p>
          <ul>
          <li>Create the strips (links) using sheets of 8 &frac12; x 11 <strong>ORANGE</strong> construction paper </li>
          <li>Cut into strips of 1 &frac12;&rdquo; to 2&rdquo; wide and 11&rdquo; long.</li>
          </ul>
        <p>The strips are then stapled or glued together, resulting in one long, connected chain that visually represents the power of uniting for a common cause. </p>
        <p><a href="http://www.pacer.org/bullying/resources/toolkits/classroom/project-connect.asp">Learn more</a></p></td>
        </tr>
        <tr>
        <td><img src="/bullying/nbpm/images/ideas-unity-discussions.jpg" width="350" height="312" alt=""/></td>
        <td><h3>Unity Discussions</h3>
        <p>Hold a classroom&nbsp;UNITY&nbsp;discussion.&nbsp;Define the word &quot;Unity&quot;. One idea is to reflect on the statement, &ldquo;when we stand together, no one stands alone.&rdquo;&nbsp;For more ideas, download the 4-page booklet, <a href="http://www.pacer.org/bullying/nbpm/pdf/unity-day-toolkit-2014.pdf">&ldquo;UNITY DAY: A guide to celebrating Unity Day with young students&rdquo;</a>&nbsp;and&nbsp;<a href="http://www.pacer.org/bullying/nbpm/pdf/unity-day-classroom-discussion.pdf">supplemental worksheet</a>.</p></td>
        </tr>
        
        <tr>
        <td><img src="/bullying/nbpm/images/ideas-unity-tree.jpg" width="350" height="150" alt=""/></td>
        <td><h3>Unity Tree</h3>
        <p>Plant a &lsquo;seed&rsquo; of unity in schools and communities to create social change, so that bullying is never again viewed as an accepted childhood rite of passage. The Unity Tree is an interactive and creative activity where everyone can participate. It is a powerful and visual experience for students and individuals to learn the importance of supporting those experiencing bullying.</p>
        <p><a href="/bullying/resources/toolkits/classroom/unity-tree.asp" target="_blank">Learn more</a></p>
        </td></tr>
        <tr>
        <td><img src="/bullying/nbpm/images/unity-yarn-project.jpg" width="350" height="191" alt=""/></td>
        <td>
        <h3>Unity Yarn Project</h3>
        <p>UNITY (sponsored and created by <a href="http://www.vessence.com/" target="_blank">Vessence</a> <a href="http://www.vessence.com/welivebig/" target="_blank">#WeLiveBig</a> initiative to promote human flourishing) is a larger-than-life structure that helps us celebrate our uniqueness and strengthens our ties to each other. Participants tie colorful yarn to posts that reflect their identities. Their yarn intertwines with others&rsquo; to create a web of interconnectedness. In the end, we see that we are all connected by something, and it's our diversity that builds a strong and vibrant community. <a href="http://www.unityproject.net/" target="_blank">Learn more at the UNITY website</a></p>
        </td></tr>
        
        <tr>
        <td><img src="/bullying/nbpm/images/ideas-unity-parade.jpg" width="350" height="177" alt=""/></td>
        <td><h3>Unity Parade</h3>
        <p>Invite all students to participate in a Unity Parade. Encourage students to wear orange. Provide materials to create banners, posters and signs that students can carry with message of together against bullying and united for kindness, inclusion and acceptance. </p>
        <p>Recognize those that participate! Ideas include taking a group photo and framing it for the classroom or school office. Provide each student with an orange incentive, such as a ribbon or treat. </p></td>
        </tr>
        </table>
        <h3>Show Videos</h3>
        <p>A great way to talk about unity is through videos, show them and follow up with discussion. Here's an amazing example:</p>
        <p align="center"><iframe width="853" height="480" src="https://www.youtube.com/embed/R8lUD6BHunE?rel=0" frameborder="0" allowfullscreen></iframe></p>
        <p><strong>You are Braver, Stronger and Smarter Than You Think</strong><br />
          Have you ever felt like the whispers, giggles, note passing, and looks were directed at you or someone you care about? Imagine if all that attention was channeled into positive action. Disney is supporting Pacer&rsquo;s National Bullying Prevention Center in hopes of inspiring social change among young people everywhere.</p>
        
        <table id="specialevents" class="eventtable">
        <tr>
        <td><img src="/bullying/nbpm/images/ideas-unity-murals.jpg" width="350" height="160" alt=""/></td>
        <td><h3>Unity Murals</h3>
        <p>Create a mural for the classroom or school hallway that is symbolic of unity. The mural could be a photo of each student along with a short statement from each student about why important to be together against bullying. &nbsp;Or each student could draw a picture, write a poem or story that depicts the importance of kindness, acceptance and inclusion. </p></td>
        </tr>
        <tr>
        <td><img src="/bullying/nbpm/images/ideas-unity-ribbons.jpg" width="350" height="310" alt=""/></td>
        <td><h3>Unity Ribbons</h3>
        <p>Hand out&nbsp;ORANGE&nbsp;&ldquo;unity ribbons.&rdquo; Create your own ribbons, use 8 &frac12; x 11-inch orange construction paper or ribbon from a craft store. Cut into strips 2 inches wide by 11 inches long. Write UNITE on each strip and then either display from a location such as a fence or tree &ndash;or- have each student wear on their wrist. </p></td>
        </tr>
        <tr>
        <td><img src="/bullying/nbpm/images/ideas-orange-items.jpg" width="350" height="273" alt=""/></td>
        
        <td><h3>Orange Items</h3>
        <p>Include an orange item in the school lunch menu or classroom treats. Ideas include carrots, oranges, or cupcakes. In 2015, a community bakery offered orange cookies to all its patrons that wore orange.</p></td>
        </tr></table>
        </div>
        
        <%'------------------------------------------------- TAB 2 ------------------------------ %>
        
        <div id="tab-stories">
          <h1>Stories</h1>
          <p>Everyone is invited to get involved! These stories are a sample of the ideas, activities and events that communities around the nation have done to show their support.</p>
          
          <table id="UnityStories" class="eventtable">
          <tr>
          <td><img src="/bullying/nbpm/images/ud-stories-elleng.jpg" width="350" height="243" alt=""/></td>
          <td><h3>Ellen DeGeneres</h3>
            <p>Message from Ellen&rsquo;s website, posted in October 2011. <em>Today I wore orange on my show for a very special reason. <strong>PACER&rsquo;s National Bullying Prevention Center</strong> has organized an incredible movement to put an end to bullying. It's called Unity Day. Today we send a message to anyone being bullied that they're not alone. Because the truth is no one who's being bullied is alone. Just about everyone has been bullied at some point, and nobody likes it. Let's stop hurting one another and try to appreciate the things that make us different.</em></p>
            <p><em>Today, I stand united with anyone who supports students who are being bullied. You can show the world that you're standing with me today by wearing orange. That's why I wore orange on my show. That, and it brings out the bronze tones in my complexion.</em></p></td>
          </tr>
          
          <tr>
          <td><img src="/bullying/nbpm/images/ud-stories-green-giant.jpg" width="350" height="515" alt=""/></td>
          <td><h3>WELCOME TO ORANGE EARTH, MINNESOTA</h3>
            <p>From the <a href="http://www.faribaultcountyregister.com/page/content.detail/id/509511/Welcome-to-Orange-Earth-Minnesota.html?nav=5002#sthash.HTQkTDcn.dpuf">Faribault County Register <span class="fa fa-external-link"></span></a> on October 2013. The Green Giant turned orange, the mayor declared the city's name be changed to Orange Earth and students from Blue Earth Area showed up in orange T-shirts. It was all part of a media event called Unity Day held last Wednesday morning at Blue Earth's Giant Park. Co-sponsored by General Mills and their Green Giant Company, and PACER (a Minneapolis based national Bullying Prevention Center), the hope was to create a buzz in media across the country in support of October being Bullying Prevention Month. </p>
            <p><em>Photo credit to Faribault County Register</em></p></td>
          </tr>
          
          <tr>
          <td><img src="/bullying/nbpm/images/ud-stories-spookley.jpg" width="350" height="209" alt=""/></td>
          <td><h3>SPOOKLEY</h3>
	<p>In 2011, it was announced that <strong>Spookley the Square Pumpkin</strong> was named the Official Spokes-Pumpkin of National Bullying Prevention Month through a partnership with PACER Center. <em>Spookley the Square Pumpkin, </em>tells the story of a square pumpkin living in a round pumpkin patch on Holiday Hill Farm. Although Spookley initially faces ridicule from his fellow patch-mates, he goes on to save the day during a terrible storm. As a result, all the pumpkins in the patch learn that it is the thing that makes you different that makes you special. <a href="http://www.pacer.org/bullying/resources/toolkits/spookley/"><strong>Access the free online toolkit for teachers</strong></a></p></td>
          </tr>
          </table>
          
          <hr />
          
          <div style="text-align:center; margin:20px auto">
	  <iframe width="560" height="315" src="https://www.youtube.com/embed/G_RFXs8TXTs?rel=0" frameborder="0" allowfullscreen></iframe></div>
      <h3><strong>Disney Interactive Celebrates Unity Day</strong></h3>
      <p>The Disney Interactive Grand Central Campus in Glendale was suddenly looking very orange on Wednesday, Oct. 21, as hundreds of employees donned electric orange t-shirts and congregated in the courtyard. Their colors were in honor of Unity Day, PACER's nationwide initiative to raise awareness about bullying prevention efforts. Disney Interactive Citizenship partnered with the Disney Guest Experience team, PACER's National Bullying Prevention Center and Me To We to share resources and spark conversations about bullying prevention. <a href="http://www.disneyinteractive.com/blog/unity-day-event-spreads-awareness-at-grand-central-campus/" target="_blank">Learn more</a> </p>
      <hr />
          
           <table class="eventtable">
          <tr>
          <td><img src="/bullying/nbpm/images/ud-stories-bridge.jpg" width="350" height="193" alt=""/></td>
          <td><h3>ICONIC BRIDGE in MINNESOTA</h3>
          <p>In October 2014, travelers saw orange as they drove over the I-35W bridge , which was lit orange at sunset in observance of Unity Day.</p></td>
          </tr>
          
          <tr>
          <td><img src="/bullying/nbpm/images/ud-stories-door-decoration.jpg" width="350" height="462" alt=""/></td>
          <td><h3>DOOR DECORATIONS</h3>
            <p>In October 2015, Paradise Valley Elementary School in Morgan Hill, CA decorated their classroom doors for Unity Day!</p></td>
          </tr>
          
          <tr>
          <td><img src="/bullying/nbpm/images/ud-wearorange-crowns.jpg" width="350" height="225" alt=""/></td>
          <td><h3>UNITY CROWNS</h3>
            <p>Saints Peter and Paul School in Easton, MD united for kindness, acceptance and inclusion and had many great activities planned for the day! This creative class made their own orange swag with crowns made from construction paper.</p></td>
          </tr>
          
          <tr>
          <td><img src="/bullying/nbpm/images/ud-stories-unity-sign.jpg" width="350" height="182" alt=""/></td>
          <td><h3>UNITY SIGN</h3>
            <p>As part of their Unity Day Celebrations, Eleanor Roosevelt High School in Eastvale, CA decorated their quad. They hung up a huge poster that said &quot;If you knew my story, you would know that . . . .&rdquo;and gave kids slips of paper to anonymously write what has happened in their life. </p></td>
          </tr>
          
          <tr>
          <td><img src="/bullying/nbpm/images/ud-stories-banner.jpg" width="350" height="289" alt=""/></td>
          <td><h3>UNITY BANNER</h3>
          <p>Douglas MacArthur Girls Leadership Academy, in Cleveland OH, wore orange in support of the cause. Students created a school-wide friendship chain, discussed the meaning of unity, and charted ideas for how to make our school a &quot;bully-free&quot; place to learn. The entire student body signed a Unity Day banner, pledging that they will not allow bullying to happen at our school!</p></td>
          </tr>
          
          <tr>
          <td><img src="/bullying/nbpm/images/ud-stories-orange-glasses.jpg" width="350" height="242" alt=""/></td>
          <td><h3>ORANGE GLASSES</h3>
          <p>These young students from Incarnate Word Academy in Corpus Christi, Texas celebrated with cool orange eyewear.</p></td>
          </tr>
          
          <tr>
          <td><img src="/bullying/nbpm/images/ud-stories-balloons.jpg" width="350" height="263" alt=""/></td>
          <td><h3>ORANGE BALLOONS</h3>
          <p>One school district released orange balloons during a unity presentation.</p></td>
          </tr>
          
          <tr>
          <td><img src="/bullying/nbpm/images/ud-stories-photo-opps.jpg" width="350" height="161" alt=""/></td>
          <td><h3>PHOTO OPPORTUNITIES</h3>
          <p>Sleepy Eye Elementary in Sleepy Eye, MN was United Together Against Bullying, by creating this peace sign with all their students!</p></td>
          </tr>
          
          <tr>
          <td><img src="/bullying/nbpm/images/ud-stories-business.jpg" width="350" height="228" alt=""/></td>
          <td><h3>BUSINESS PARTICIPATION</h3>
          <p>Supercoast Super Target in Odessa, FL celebrated unity and and bullying prevention month all of October, attending multiple events to share information about bullying!</p></td>
          </tr>
          
          <tr>
          <td><img src="/bullying/nbpm/images/ud-stories-orange-out.jpg" width="350" height="210" alt=""/></td>
          <td><h3>ORANGE OUT</h3>
          <p>Everyone at A.I.Root Middle School in Medina wore ORANGE on Unity Day!</p></td>
          </tr>
          
          </table>
          
          
</div>
        
        <%'------------------------------------------------- TAB 2 ------------------------------ %>
        
        <div id="tab-dance">
        <h1>Unity Dance</h1>
        
        <p><img src="/bullying/images/tristan-american-idol.jpg" width="150" height="150" align="right" hspace="10" alt=""/>In 2011, as an 11-year-old, Tristan McIntosh recorded the song &quot;You Can't Take That Away From Me,&quot; for PACER's National Bullying Prevention Center &quot;Unity Dance&quot; song, which celebrates the importance of looking out for each other and celebrating each other's differences. In 2016, Tristan auditioned for American Idol and was unanimously voted by the judges for the &quot;golden ticket&quot; to the next round in Hollywood. During competition she was named to the TOP 24, and finished in the Top 6 finalists! Congratulations Tristan, you are amazing and thank you for making a difference!</p>
  <p>Celebrate Unity Day by performing the dance created by Tristan and other amazing advocates! Dance, unite&mdash;and make a statement against bullying&mdash;by holding a Unity Dance. Join schools, students, and community organizations around the world to unite with PACER&rsquo;s National Bullying Prevention Center in music and dance to bring awareness to bullying prevention.</p>



<h2 class="centered">Dance to make a statement against bullying!</h2>

        
        <div id="rightBar" style="width:400px; margin:0px 5px 30px 10px; float:right; padding-left:10px; border-left:1px solid #ccc; border-bottom:1px solid #ccc">

<div id="getthesong" style="width:399px; margin:15px auto; text-align:center; font-size:.8em; padding-top:15px; margin-bottom:15px; border-bottom:2px solid #ccc">
<h3>Get The Song</h3>
<p><a href="/bullying/audio/YCTTA-Promo-2011.mp3" target="_blank">Download <em>&ldquo;You Can&rsquo;t Take That Away From Me&rdquo;</em> mp3</a></p>
<h3>Extras</h3>
<p><a href="/bullying/video/media/Dance%20Instructional_mpeg2video.mpg">Download the Choreography Video</a></p>
<p><a href="/bullying/pdf/UnityDay/You-Cant-Take-That-Away-From-Me-Song-lyrics.pdf" target="_blank">Lyrics for &ldquo;You Can't Take That Away From Me&rdquo; </a><br />
</p>
</div>


<div id="promovideo" style="width:399px; margin:0px auto; text-align:center">
<iframe width="399" height="278" src="http://www.youtube.com/embed/2ceaEAetpwA?rel=0&wmode=opaque" frameborder="0" allowfullscreen></iframe>
</div>

<div id="danceinaction" style="width:399px; margin:15px auto; text-align:center">
<h3>See The Dance in Action</h3>
<iframe width="399" height="278" src="http://www.youtube.com/embed/uXGoQlKdsyM?rel=0&wmode=opaque" frameborder="0" allowfullscreen></iframe>
</div>

<div id="learnthesteps" style="width:399px; margin:15px auto; text-align:center">
<h3>Learn The Steps</h3>
<iframe width="399" height="278" src="http://www.youtube.com/embed/i8YF2tlsHh8?rel=0&wmode=opaque" frameborder="0" allowfullscreen></iframe>
</div>


</div>


        

<p>Dance, unite&mdash;and make a statement against bullying&mdash;by holding a Unity Dance. Join schools, students, and community organizations around the world to unite with PACER&rsquo;s National Bullying Prevention Center in music and dance to bring awareness to bullying prevention.</p>
<p>The song selected for the event is &ldquo;<strong>You Can&rsquo;t Take That Away From Me</strong>,&rdquo; which was created by Nashville songwriters <strong>Tim Akers </strong>and<strong> Libby Weaver</strong>. Akers, the father of a child with a disability, has seen firsthand the struggles and frustrations that some children deal with because they are viewed as &ldquo;different.&rdquo;</p>
<p>The song speaks about the importance of teaching children to recognize that personality and character are more important than popularity and outward appearances. The song is performed by 11-year-old Nashville singer <strong>Tristan McIntosh</strong>, and choreographed by local teens.</p>
<p>&ldquo;The culture of bullying won&rsquo;t end until people across the country take action and show children and teens that they care,&rdquo; says Julie Hertzog, director of PACER&rsquo;s National Bullying Prevention Center. &ldquo;Unity Dance Day celebrates the influence of music and dance as a powerful avenue to reach kids and teens about the bullying prevention message.&rdquo;</p>
<p><strong>How Can My School or Organization Participate?</strong></p>
 
 <ol>
  <li>Determine a location. For example: the school lunchroom, the hallway, a classroom, the football field or an assembly.</li>
 	<li>Establish a time. Will it take place in the morning, during lunch, during half-time, or after school?</li>
 	<li>Consider who should participate. Ideas include:
  	<ul>
 <li>An athletic team leads the dance, learn the steps, and encourage others to join.</li>
 <li>One person leads the dance, one person joins in, then another, followed by several others, with an invite for anyone watching to join.</li>
 <li>Ten students lead the dance and invite others to join.</li>
 </ul>
  
  </li>
 	<li>Consider what is needed to play the song. For example: a sound system, the school&rsquo;s PA system, or speakers and an MP3 player?</li>
</ol>
 <p><strong>What Next? Practice, Practice, Practice!</strong></p>
 
 <ol>
 <li>Watch this video showing the dance.</li>
 <li>Watch this video showing the choreography.</li>
 <li>Download the MP3 file of &quot;You Can't Take That Away From Me.&quot;</li>
 <li>Practice the choreography with anyone who will be involved on Unity Dance Day.</li>
 <li>Determine how the dance will be introduced. For example: will a student emcee announce it, will it be a surprise, will the school principal invite everyone to the appointed place?</li>
 <li>Decide if there will be post dance activities. Ideas include:
 	<ul>
 	 <li>Setting up a table to <a href="/bullying/digitalpetition/">sign &quot;The End of Bullying Begins With Me&quot; petition</a></li>
 	 <li>Creating your own &quot;Unity Ribbons.&rdquo; <em>Purchase a spool of orange ribbon (5/8&rdquo; wide) at a craft or dollar store. Cut them into 12&rdquo; strips. With a black marker write UNITY, &ldquo;The End of Bullying Begins With Me,&rdquo; or create your own bullying prevention message. Then tie them around your wrist, on your notebook or to your locker door.</em></li>
 	 <li> Post a UNITY banner in the hallway for everyone to sign. <em>Purchase a blank 4' x 8' piece of cardstock at a local print or copy store. Write the word UNITY on it in color markers. Provide color markers for people to sign their name and write a statement about why they believe in supporting each other.</em></li>
 	</ul>
 </li>
 </ol>
 <hr />
  <p><strong>Special Thanks</strong></p>
  <p>PACER extends a shout out to everyone involved in creating the UNITY DANCE DAY video! Their talents, time, and commitment to this project are gratefully appreciated.</p>
  <ul type="disc">
    <li>Amy McIntosh &ndash; The mother of Tristan McIntosh, for all of her  behind-the-scenes coordination and for reaching out to PACER to ask how &ldquo;You  Can&rsquo;t Take That Away From Me&rdquo; could be used to help raise awareness of bullying  prevention</li>
    <li>Tim Akers &ndash; Co-writer of &ldquo;You Can&rsquo;t Take That Away From Me,&rdquo; who has  raised awareness of the importance of teaching children to recognize that  personality and character are more important than popularity and outward  appearances </li>
   <li>Tristan McIntosh &ndash; Singer of &ldquo;You Can&rsquo;t Take That Away From Me&rdquo;</li>
   <li>Caroline Grace, Matthew, Jessica, Makenzi, and Paiten &ndash; The dancers!</li>
   <li>Tony Speight - Choreography</li>
   <li>Camille Blinn &ndash;Director of photography, makeup, and stylist</li>
   <li>Eric Rhodes and Shanon Rhodes &ndash; Camera</li>
   <li>Dianna Akers, Shelly Ballestero, and Shanon Rhodes &ndash;Makeup artists</li>
   <li>Marathon Village &ndash; Provided the facility for the dance portion of the video </li>
   <li>Ben James, Chris Gero, and Yamaha Corp. &ndash;Equipment support</li>
   <li>Judy Bell, principal of Sycamore Middle School &ndash; Provided the school  to be used for the video</li>
   <li>Crystal Juechter, Choir teacher&nbsp; - Organized the logistics for use of the school. </li>
   <li>Sycamore Middle School</li>
   <li>Andrea Hedley-Williams and Jamie Milele &ndash; Helped to organize the dancers.</li>
   <li>Parents of the dancers, for allowing their children to be involved  with this important project.</li>
   <li>Jonzun Radio &ndash; Connected Amy Mcintosh to PACER</li>
  </ul>
        
        </div>
        
        <%'------------------------------------------------- TAB 2 ------------------------------ %>
        
        <div id="tab-faq">
          <h1>Frequently Asked Questions</h1>
          <img class="topRightTabImage" style="margin-top:-5.5em" src="/bullying/nbpm/images/unityday-orange-silhouette.jpg" width="258" height="600" alt=""/>
          <h3>When is Unity Day held each year?</h3>
          <p>Unity Day is usually held the third Wednesday of National Bullying Prevention Month in October. For 2016, it will be held on <%=Left(UnityDayDate, Len(UnityDayDate)-6)%>.</p>
          
          <h3>When was the first Unity Day?</h3>
          <p>The first Unity Day was held in 2011. The &ldquo;Unity Dance,&rdquo; featuring Tristan McIntosh, the 2016 American Idol finalist, was also created that year.</p>
          
          <h3>Why the color orange?</h3>
            <p>As Unity Day is held during October, orange is a color commonly identified with the month and the autumn season. It is also known as the color associated with &quot;safety&quot; and visibility. It is a color described as warm and inviting, and its vibrancy makes an impactful statement. Orange was also a color that was not being used by another widely known cause.</p>
            
            <h3>Who was the first celebrity to wear orange?</h3>
            <p>In 2011, in the first year of the event, <a href="http://www.ellentv.com/2011/10/12/unity-day-on-ellen/" target="_blank">Ellen Degeneres</a> wore an orange sweater on her show and talked about the significance of Unity Day.</p>
            
            <h3>How can schools participate?</h3>
            <p>There are a number of opportunities to get involved including displaying the <a href="http://www.pacer.org/bullying/resources/posters.asp" target="_blank">free posters</a>, encouraging everyone to wear an orange item, or having a <a href="http://www.pacer.org/bullying/nbpm/pdf/unity-day-toolkit-2014.pdf" target="_blank">classroom discussion</a> about what &quot;unity&quot; means and why it's important with this issue. Schools have also been very creative with ideas such as creating orange crowns for each student or participating in Project Connect, in which each student contributes a message on an strip of orange paper to create a chain representing the power of unity. New activities this year include creating a Unity Tree, holding a Unity Parade, and more ideas for wearing and sharing orange.</p>
            
            <h3>What can one person do?</h3>
            <p>Everyone's involvement is important! This event goes beyond the school wall into the community. Anyone can wear orange and post to the hashtag #UnityDay2016. For so long, those who were bullied, felt that no one cared, the simple act of wearing orange shows that them that they are not alone.</p>
            
            <h3>How can businesses and organizations get involved?</h3>
            <p>Go orange! Be creative! A few ideas include: in 2013 <a href="http://www.blog.generalmills.com/2013/10/the-jolly-orange-giant/" target="_blank">the iconic Green Giant statue in Blue Earth, MN</a> wore an orange toga and lit up the night sky with an orange glow. TLC of the Discovery Channel changed the logo orange for the day. Other ways to go orange include tying orange ribbons to a fence or around a tree, offering an orange item for sale with proceeds to the National Bullying Prevention Center, or creating a unity mural sharing it at #UnityDay2016.</p>
            
            <h3>Is there an official T-shirt?</h3>
            <p>Yes, an official Unity Day T-shirt is available through our generous partner CustomInk! For the past several years, CustomInk has coordinated their  <a href="http://www.customink.com/stopbullying" target="_blank">&ldquo;Be Good To Each Other&rdquo;</a> T-shirt campaign in support of PACER raising over $60,000 in 2015.</p>
            
            <h3>Are other orange products available?</h3>
            <p>In addition to the T-shirts, schools and individuals can order a <a href="http://www.pacer.org/bullying/resources/posters.asp" target="_blank">free Unity Day poster</a>, <a href="http://www.pacer.org/bullying/resources/bookmarks.asp" target="_blank">bookmarks</a> and <a href="http://www.pacer.org/bullying/resources/publications/" target="_blank">flyers</a>. In 2016, orange shoelaces will also be available.</p>
            
            <h3>How has Unity Day changed?</h3>
            <p>The event began with a call to action to wear orange. Schools, communities and individuals across the country, in addition to wearing orange, celebrate by serving orange items in the cafeteria, selling orange items to raise donations, having parades at school, and participating in activities designed to show they are united against bullying.</p>
        </div>
        

      </div>
    </div>
      
      
      
	  
         
      

      
 
 
    <!-- end .content --></div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body></html>
