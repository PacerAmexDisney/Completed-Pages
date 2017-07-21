<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Simon Technology Center Library - Paul Adelman Collection</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/leftnavnoright.css" media="screen, projection" />

		<link rel="stylesheet" type="text/css" href="/js/colorbox1.5.9/colorbox.css">
		
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script type="text/javascript">
			if (typeof jQuery == 'undefined')
			{
				document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
			}
		</script>
        <script src="/js/colorbox1.5.9/jquery.colorbox-min.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				//Change Any Links that contain the v= version into the embed version that colorbox expects
				//Note: You lose all extra query string items in the current version of this function
				$(".videoPopUp").each(function(){
					if (/\?v=/i.test(this.href)) {
						var vars = [], hash;
    					var q = this.href.split('?')[1];
						if(q != undefined){
							q = q.split('&');
							for(var i = 0; i < q.length; i++){
								hash = q[i].split('=');
								vars.push(hash[1]);
								vars[hash[0]] = hash[1];
							}
						}
						this.href = 'http://www.youtube.com/embed/' + vars['v'] + '?rel=0&amp;wmode=transparent&amp;autoplay=1';						
					}
				});
				//Initialize Colorbox
				$(".videoPopUp").colorbox({iframe:true, innerWidth:960, innerHeight:585});
			});
		</script>




<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>
<script type="text/javascript" src="/js/pacer-expanding-box.js"></script>
<link rel="stylesheet" type="text/css" href="/js/pacer-expanding-box.css"/>



<style type="text/css">
#pagecontent h3 {
	margin-top:20px;
	padding-top:20px;
	border-top:1px solid #ccc;
	clear:right;
}
	.rightThumbItems td:nth-child(2) {
			text-align: center;
			width: 200px;
		}
	}
</style>
</head>
<body>
<div id="skiptocontent">
<a href="#maincontent">Skip to main content</a>
</div>

<div id="wrapper">

<div id="main">

<div id="header">
<div><!--#include virtual="/googleSearchBox.htm"--><!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="/"><img src="/images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="topbar">
<div id="breadcrumb">    <div id="project-social">
           <a href="http://www.simontechnologycenter.blogspot.com/" title="Simon Technology Center Blog" target="_blank"><img style="display:block; border:1px solid #ccc; margin-top:-1px; border-radius:5px;" src="/images/bloggericon_medium.png" alt="Simon Technology Center Blog" /></a> 
           <a href="https://www.pinterest.com/simontechcenter/" title="Simon Technology Center Pintrest" target="_blank"><img src="/images/pinteresticon_medium.png" alt="Simon Technology Center Pintrest" /></a> 
           
            
         <div id="sm-label" style="width:7em;">Join Us - STC :</div>
        </div>
<a href="/index.asp">Home</a> / <a href="/pandr/index.asp">Programs &amp; Resources</a> / <a href="../index.asp">Simon Technology Center</a> / <a href="/stc/library/">Library</a>
<h1>Simon Technology Center - Library</h1>
	
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
	var currSubId="subservice-lib";
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
<!-- BEGIN CONTENT -->
<p><a href="/stc/library/">&lt; Return to the Main Library Page</a></p> 	
<div id="floatScopeAdjustment" style="float:right">	
	<h1>Paul Adelman Assistive Technology Collection</h1>
<p>PACER&rsquo;s Simon Technology Center is thrilled to add some new, cutting edge technology thanks to a grant from the Paul Adelman Children with Disabilities Endowment Fund. PACER was able to purchase two VGo Robots, the UbiDuo Wireless Face to Face Communicator.&nbsp; With additional funds received fall 2015 the Tobii Eye Mobile, the Nova Chat 8, the Accent 800, the Accent 1000, the Blaze ET, the E-Bot Pro, the VoiceMe ECU, the Pilot One, and the Relax IR Learning Remote were added to the Adelman Collection. In 2017 additional funds were used to purchase a variety mobile technology including tablets, accessories and apps for communication, literacy, and visual support.</p>
<p>Each of these exciting technologies has the ability to greatly improve the quality of life for individuals with a broad range of disabilities. You can view all of the technology received through the Paul Adelman Children with Disabilities Endowment Fund by visiting our Lending Library&rsquo;s <a href="https://stclendinglibrary.myturn.com/library/inventory/browse">online catalog</a>. Simply search for &ldquo;Adelman&rdquo; to see the entire collection</p>
<table class="rightThumbItems">
<tr>
<td colspan="2"><h1>Mobile Technology Toolkit</h1></td>
</tr>
<tr>
<td><p><strong>CJT ET Roller Mount with attached TBO Mount</strong><br />
  The ET Roller Mount is a floor mount on wheels that is easy to move and can be used to mount a communication device. The TBO Mount, attached to the ET Roller Mount, can support an iPad. Communication users can use their communication device and their iPad at the same time.</p></td>
<td class="thumbImage"><img src="/stc/library/images/roller-mount.jpg" width="68" height="130" alt=""/></td>
</tr>
<tr>
<td><p><strong>My Gaze Assistive2</strong><br />
  myGaze is an eye gaze control system that can be used on a Windows computer or tablet. This device allows individuals to control their computers and tablets with their eye movement.</p></td>
<td><img src="/stc/library/images/my-gaze.jpg" width="150" height="86" alt=""/></td>
</tr>
<tr>
<td><p><strong>Osmo Genius Kit</strong><br />
  The Osmo Genius Kit has a variety of activities for learning and includes: The Osmo Game System, Masterpiece, Newton, Tangram, and Numbers.&nbsp; Additional sets available in the library include Coding, Pizza Co., and Monsters.</p></td>
<td><img src="/stc/library/images/osmo-genius-kit.jpg" width="180" height="173" alt=""/></td>
</tr>
<tr>
<td><p><strong>The Gooseneck Tablet Stand Mount</strong><br />
  This tablet mount is great for hands free tablet use. It works with 6.4-13in tablets. The mount can be adjusted in a variety of positions to be sure the user can access their device properly.</p></td>
<td><img src="/stc/library/images/gooseneck-tablet-stand.jpg" width="128" height="137" alt=""/></td>
</tr>
<tr>
<td><p><strong>The Anker Multi-Angle Aluminum Stand</strong><br />
  This tablet stand works for 4-10in smartphones and electronic readers. The rubber pads on the bottom of this stand prevent the stand from sliding around the table. It adjusts to 9 different viewing angles.&nbsp; This stand is most commonly used for watching a movie, reading an electronic book, and video chatting. </p></td>
<td><img src="/stc/library/images/anker-stand.jpg" width="175" height="153" alt=""/></td>
</tr>
<tr>
<td><p><strong>The Bendeez Stylus</strong><br />
  This stylus can be used to access any tablet and it doubles as a fidget. When an individual needs to listen and focus on something they can use this as a fidget, and they can use this device as a stylus when they need to use their tablet. </p></td>
<td><img src="/stc/library/images/bendeez-stylus.jpg" width="175" height="175" alt=""/></td>
</tr>
<tr>
<td><p><strong>Circle by Disney</strong><br />
  This device allows one parent or guardian to connect all of the smart devices in their home to their smartphone. They can monitor what type of apps, websites, and other activities their children can access. It allows parents to turn off all devices or a single device at any given time.</p></td>
<td><img src="/stc/library/images/circle-by-disney.jpg" width="175" height="155" alt=""/></td>
</tr>
<tr>
<td><p><strong>The Rolling Bedside iPad Stand</strong><br />
  This stand can be wheeled up to a bed, table or a chair. It can hold any tablet, and e-readers that are 81/2&rdquo; x 11&rdquo;. It rotates to a portrait or landscape view, and has adjustable height. It also includes a swinging arm that can be adjusted as well. </p></td>
<td><img src="/stc/library/images/rolling-ipad-stand.jpg" width="150" height="202" alt=""/></td>
</tr>
<tr>
<td><p><strong>The Apple Pencil </strong><br />
  This stylus was created for accessing iOS devices. It can make navigating an iPad or iPhone much easier than it may be with your hand. It has a fine point that make it easier to select small buttons or images. </p></td>
<td><img src="/stc/library/images/apple-pencil.jpg" width="200" height="48" alt=""/></td>
</tr>
<tr>
<td><p><strong>The Apple Watch</strong><br />
  This watch works with a number of iOS applications. It must be paired with an iPhone in order to use it.&nbsp; See our lending library catalog for apps that can be used with this watch through our loan program.</p></td>
<td><img src="/stc/library/images/apple-watch.jpg" width="150" height="167" alt=""/></td>
</tr>
</table>
<hr />
<table class="rightThumbItems">
<tr>
  <td valign="top">
<h1><a href="https://www.youtube.com/watch?v=EdSMfopl-qU" target="_blank" class="videoPopUp"><img src="/stc/library/images/communication-video.jpg" width="300" height="184" align="right" alt=""/></a>Communication Toolkit</h1>
<p><strong>Nova Chat 8</strong><br />
  The Nova Chat 8 is a small dedicated communication device for people who have communication needs.&nbsp; It features an 8-inch touchscreen and includes a handle and strap, making it easy to carry around. </p>
<p><strong>Accent 800</strong><br />
The Accent 800 by Prentke Romich Company (PRC) is a dedicated communication device that comes with the Unity with LAMP/Words for Life language system.&nbsp; The 8-inch screen size makes it easy to carry around where ever you go.</p>
<p><strong>Accent 1000</strong><br />
The Accent 1000 by Prentke Romich Company (PRC) is a larger version of the Accent 800.&nbsp; It features a 10-inch touch screen and also includes the Unity with LAMP/Words for Life language system. </p>
<p><strong>Communication App Toolkit (NEW 2017)</strong></p>
<p align="center">Alexicom Elements (Adult) | Avaz | aaCorn | Compass with PODD | GoTalk Now | LAMP Words for Life | <br />
  Predictable | Proloquo2Go | Proloquo4Text | Sono Flex | Speak for Yourself | Touch Chat HD | <br />
  Snap Scene | :prose | Flip Writer | Verbally | My First AAC | Rocket Keys | TalkTablet</p>
</td>
            

     
  <td valign="top"><img src="/stc/library/images/nova-chat-8.jpg" width="100" height="84" alt=""/><br />
  <img src="/stc/library/images/accent-800.jpg" width="100" height="75" alt=""/><br />
  <img src="/stc/library/images/accent-1000.jpg" width="100" height="76" alt=""/></td>
  </tr>
  <tr><td colspan="2"><hr /></td></tr>
  <tr>
    <td valign="top">
<h1><a href="https://www.youtube.com/watch?v=an_GEXLn1M0" target="_blank" class="videoPopUp"><img src="/stc/library/images/literacy-video.jpg" width="300" height="174" align="right" alt=""/></a>Literacy Toolkit</h1>
<p><strong>Blaze ET</strong><br />
  The Blaze ET is a portable device that scans and reads printed material such as newspapers, documents, books, and more.&nbsp; It uses optical character recognition (OCR) and can play a variety of audio file formats.&nbsp; The Blaze ET also features built in Wi-Fi capability to access books online, podcasts, Internet radio and more.</p>
<p><strong>E-Bot Pro</strong><br />
The E-bot Pro allows users to magnify printed material and has the capability to convert documents using optical character recognition or OCR which then allows the user to use text-to-speech to read the document.&nbsp; Pair the E-bot Pro with your iPad, Android tablet, Mac or PC to change the zoom level.&nbsp; OCR documents can be saved to the extra SD card.&nbsp; The E-Bot Pro runs on a rechargeable battery which holds a charge for up to 4 hours.</p>
<p><strong>Literacy App Toolkit (NEW 2017)</strong></p>
<p align="center">Clicker Docs | Clicker Sentences | Co:Writer | iReadWrite | Panther Math Paper | KNFB Reader | <br />
  Between the Lines Level 2 | Endless Wordplay School Edition | Endless Reader School Edition | <br />
  Endless Alphabet | Endless Numbers School Editio | To Do Math: School Edition</p>
</td>
  <td valign="top"><img src="/stc/library/images/blaze-et.jpg" width="100" height="169" alt=""/><br />
  <img src="/stc/library/images/e-bot-pro.jpg" width="100" height="79" alt=""/></td></tr>
  
  <tr><td colspan="2"><hr /></td></tr>
  <tr>
    <td valign="top">
<h1><a href="https://www.youtube.com/watch?v=lF0y9Ax0XNA" target="_blank" class="videoPopUp"><img src="/stc/library/images/environ-control-video.jpg" width="300" height="168" align="right" alt=""/></a>Environmental Control Toolkit</h1>
<p><strong>Relax IR Learning Remote</strong><br />
  The Relax IR Learning Remote is a scanning infrared transmitter that controls the TV, VCR, or any other device that operates using infrared. It will store up to six functions. Complete with large and colorful graphics, it provides visual and auditory feedback and features two scan modes.</p>
  <p><strong>VoiceMe ECU</strong><br />
  The VoiceMe Environmental Control Unit (ECU) allows you to use your voice to control the TV, stereo, and more.&nbsp; It can hold up to 120 voice commands.&nbsp; Each command is capable of a 10 command sequence (i.e. &quot;play movie&quot; will turn on the TV, turn on the DVD player, and press play).</p>
  <p><strong>Pilot One</strong><br />
  The Pilot One allows you to control devices around your home such as the TV, lights, and telephone using just your voice.&nbsp; It's small and portable and can be used in any room in your house or office.</p>
  </td>
  <td><img src="/stc/library/images/voiceme-ecu.jpg" width="100" height="93" alt=""/><br />
  <img src="/stc/library/images/relax-ir-learning-remote.jpg" width="100" height="53" alt=""/><br />
  <img src="/stc/library/images/pilot-one.jpg" width="100" height="180" alt=""/></td></tr>
  </table>
  
  <hr />

<table class="rightThumbItems">
<tr>
<td valign="top"><a href="https://www.youtube.com/watch?v=Zowq574lpSM" target="_blank" class="videoPopUp"><img src="/stc/library/images/vgo-video-image.jpg" width="300" height="169" align="right" alt=""/></a>
  <h1>VGo Telepresence Robot</h1>
		  <p>In the past, one solution for a student  who receives education at home, hospital or other setting   was to bring in tutors. While this is a great way to deliver academics,   it still left the student out of the true social classroom experience.   Enter the <a href="http://www.vgocom.com/">VGo Telepresence Robot</a>!   VGo opens the doors to inclusion through technology. Using the VGo   software on their home computer (or iPad app), and with a webcam, a   student can drive the robot to attend and participate in class, go to   lunch, and even change classes with his or her peers. Here at PACER,   we&rsquo;ve named our robot Paul. </p>
          <br />
          <a href="https://www.youtube.com/watch?v=Dd-LMvkpjsM" target="_blank" class="videoPopUp"><img src="/stc/library/images/posnack-video-image.jpg" width="300" height="161" align="right" alt=""/></a><h2>Posnack Technology: A Day in the Life of Kyle</h2>
				<p>The US Department of Education received more than 2,500 submissions   for films highlighting the use of technology in education. One of the 16   winners was Posnack Jewish Day School which documented Kyle Weintraub's   use of a VGo to attend class.&nbsp;</p>
				<p>The short film, titled <a href="http://www.vgocom.com/day-life-kyle" target="_blank">Posnack Technology: A Day in the Life of Kyle</a>,&nbsp;follows&nbsp;Kyle   Weintraub, a seventh grader who is being treated for lymphoma in   Philadelphia but continues to attend school in Florida by using VGo.</p>
			  <p>&quot;Life would be awful without the robot,&quot; Kyle says in the film, which   is two minutes and 44 seconds long. &quot;I wouldn't see my friends. I   wouldn't be doing much at all.&quot;</p></td>
          <td><img src="/stc/images/vgo.jpg" alt="" width="100" height="261" /></td>
          </tr>
          </table>
          
				
				<hr />
                
				<table class="rightThumbItems">
                <tr>
                <td><a href="https://www.youtube.com/watch?v=0fempDQX_7E" target="_blank" class="videoPopUp"><img src="/stc/library/images/ubi-wireless-video.jpg" width="300" height="125" align="right" alt=""/></a>
                  <h2>UbiDuo Wireless Communicator</h2>
                <p><a href="http://www.scomm.com/">UbiDuo Wireless Communicator</a> from SCOMM allows someone who is deaf or hard of hearing to communicate   with the hearing. The UbiDuo is easy to store and transport. Communicating with the UbiDuo feels similar to texting via cell phone, but allows for communication in situations where it may not be appropriate for users to share their phone numbers.</p></td>
                <td><img src="/stc/library/images/ubiduo.jpg" width="100" height="88" alt=""/></td>
                </tr>
                <td colspan="2"><hr /></td>
                </tr>
                
		
		<tr>
          <td><a href="https://www.youtube.com/watch?v=w6KgWNJaogo" target="_blank" class="videoPopUp"><img src="/stc/library/images/tobii-video.jpg" width="300" height="180" align="right" alt=""/></a>
            <h2>Tobii Eye Mobile</h2>
          <p>The <a href="http://www.tobii.com/en/assistive-technology/global/products/hardware/tobii-eyemobile/#.UvuyuIXN7LQ">Tobii Eye Mobile</a> allows the user to have hands-free access to any Windows 8 Pro Tablet.   The PCEye Go eye tracker mounts to a Windows tablet (purchased   separately) and allows the user to completely control the tablet with   their eyes by simply gazing at the desired spot on the screen. Thanks to   this revolutionary device, individuals with physical or communication   challenges have the ability to surf the web, use apps, participate in   social media, or even read eBooks. With practice and training, a person   who is unable to use their hands is able to enjoy tablet technology. </p>
          </td>
          <td><img src="/stc/library/images/tobii-100px.jpg" width="100" height="84" alt=""/></td>
          </tr>
        </table>
			
		
		
		
</div>
<!--END CONTENT-->
<div id="pageextender" style="clear:both">&nbsp;</div>
</div>

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>