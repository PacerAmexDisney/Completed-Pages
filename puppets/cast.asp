<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>Puppets - Meet The Cast - PACER Center</title>

<meta property="og:title" content="Puppets - Meet The Cast" />
<meta property="og:url" content="http://www.pacer.org/puppets/casts.asp" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />

<style type="text/css">
	#puppets td {
	padding: .2em .2em 1.5em .2em;
	vertical-align: top;
}

.lists td {
	width: 50%;
	vertical-align: top;
	padding: .5em;
}
</style>

</head>
<body>

<!--#include virtual="/templates/page-header-nav.asp"-->

<div id="topbar">
<div id="breadcrumb">

	<a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> / PACER Puppets
</div>
	<h1>PACER Puppets</h1>

</div>

<script type="text/javascript">
	// ID of the current Left Nav item
	var currId="cast";
	// current subtree that should be displayed
	var showTree = "none";
	var showTree2 = "none";
</script>

<div id="leftbar">
<!--#include virtual="/puppets/nav.html" -->
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
<h2>Meet the Cast</h2>
<table id="puppets">
	
	<tr>
		<td><a href="images/ben.jpg"><img src="images/bensmall.jpg" width="75" height="104" alt="Ben the puppet" style="float: left;" /></a>
		</td>
		<td>
			<p id="ben">
			<strong>Ben,</strong> who has attention deficit hyperactivity disorder (ADHD). Ben enjoys karate class, telling jokes and performing magic tricks for friends. Sometimes he behaves differently and acts before he thinks, but a new program is helping him be less impulsive. Ben is looking forward to the upcoming talent show at camp.
			</p>
		</td>
	</tr>
  
	<tr>
		<td><a href="images/Brad.jpg"><img src="images/Bradsmall.jpg" width="75" height="103" alt="Ben the puppet" style="float: left;" /></a>
		</td>
		<td>
			<p id="brad"><strong>Brad,</strong> one of the KIDS AGAINST BULLYING puppets, is a poor student  but a good athlete. He tries to act tough, and sometimes threatens other kids,  but can also be a fun kid when he&rsquo;s not being mean.</p>
</td>
	</tr>
    
	<tr>
		<td><a href="images/bridget.jpg"><img src="images/bridgetsmall.jpg" width="75" height="111" alt="Bridget, the puppet" style="float: left;" /></a>
		</td>
		<td>
			<p id="bridget">
			<strong>Bridget,</strong> who has juvenile rheumatoid arthritis. Art class is one of Bridget&#8217;s favorite classes. She is competitive when playing board and computer games with her friends.  On days when she isn&#8217;t able to play her favorite sport, baseball, because of her JRA, she cheers for her team and helps out as scorekeeper.
			</p>
		</td>
	</tr>

	<tr>
		<td><img src="images/carmen.jpg" width="75" height="110" alt="Carmen the puppet, sliding down a playgound slide." style="float: left;" />
		</td>
		<td>
			<p id="carmen">
			<strong>Carmen,</strong> who has epilepsy. Carmen likes to try new things, go new places, and most importantly, help her many friends. Carmen&#8217;s friends, even Mitch, never knew about her seizures because they are controlled through medication.
			</p>
		</td>
	</tr>

	<tr>
		<td><a href="images/connor.jpg"><img src="images/connorsmall.jpg" width="75" height="100" alt="Connor the puppet, holding a paper pop rocket he has made" style="float: left;" /></a>
		</td>
		<td>
			<p id="conor">
			<strong>Connor,</strong> who has Tourette syndrome. Connor collects dinosaurs and has made a pop rocket from directions he got on the <em>NASA for Kids</em> Web site. He explains his tics to Mitch, and they discover that both of them want to work in the space program when they grow up. 
			</p>
		</td>
	</tr>

	<tr>
		<td><img src="images/corey.jpg" width="75" height="110" alt="Corey the puppet, sitting on the side of a playground merry go round." style="float: left;" />
		</td>
		<td>
			<p id="corey">
			<strong>Corey,</strong> who has Down syndrome. Corey learns more slowly than his friends. Mitch is upset to learn that Corey has been made equipment manager of the baseball team. Mitch later decides that Corey can be counted on to do a good job, with 
			extra help. 
			</p>
		</td>
	</tr>

	<tr>
		<td><a href="images/danny.jpg"><img src="images/dannysmall.jpg" width="75" height="112" alt="Danny, the puppet" style="float: left;" /></a>
		</td>
		<td>
			<p id="danny">
			<strong>Danny,</strong> who has muscular dystrophy and uses a wheelchair. Danny loves using the computer, watching baseball games, and trading baseball cards with his friends. At summer camp, Danny likes to swim, go horseback riding, and play wheelchair floor hockey.
			</p>
		</td>
	</tr>

	<tr>
		<td><a href="images/derek.jpg"><img src="images/dereksmall.jpg" width="75" height="99" alt="Derek, the puppet" style="float: left;" /></a>
		</td>
		<td>
			<p id="derek">
			<strong>Derek,</strong> one of the Let&#8217;s Prevent Abuse puppets. Derek loves playing baseball and shooting baskets. He tells Mitch about what happened with Tony, his former babysitter, and why Tony won&#8217;t be taking care of him in the future.
			</p>
		</td>
	</tr>

	<tr>
		<td><a href="images/erik.jpg"><img src="images/eriksmall.jpg" width="75" height="100" alt="Erik, the puppet" style="float: left;" /></a>
		</td>
		<td>
			<p id="eric">
			<strong>Eric,</strong> who has diabetes. Eric is really good at math, and likes to play hockey, baseball, and basketball. Eric is learning how to manage his diabetes with exercise, eating right, watching his blood sugar, and medication.
			</p>
		</td>
	</tr>

	<tr>
		<td><img src="images/gina.jpg" width="75" height="170" alt="Gina the puppet, standing on the playground platform." style="float: left;" />
		</td>
		<td>
			<p id="gina">
			<strong>Gina,</strong> who is blind. Gina uses a white cane to go almost anywhere. She rides a tandem bike, reads Braille, and enjoys having friends sleep overnight at her house.
			</p>
		</td>
	</tr>

    <tr>
		<td><img src="images/jay.jpg" width="75" height="90" alt="Jay the puppet, swinging on a tire swing." style="float: left;" />
		</td>
		<td>
			<p id="jay">
			<strong>Jay,</strong> who is deaf/hard of hearing. Jay wears a hearing aid that helps him hear some sounds. He likes to play games. Jay has learned to talk, and uses sign language and speech reading. He taught the students to sign &quot;Happy Birthday.&quot;
			</p>
		</td>
	</tr>

	<tr>
		<td><a href="images/max.jpg"><img src="images/maxsmall.jpg" width="75" height="104" alt="Max the puppet" style="float: left;" /></a>
		</td>
		<td>
			<p id="max">
			<strong>Max,</strong> who has autism. Max is a computer whiz and one of the best readers in the class. He enjoys participating in the school spelling bee and is fearless when sledding downhill. Carmen and Mitch learn why Max sometimes behaves differently and learn to appreciate Max&#8217;s special skills. 
			</p>
		</td>
	</tr>

	<tr>
		<td><a href="images/mitch.jpg"><img src="images/mitchsmall.jpg" width="75" height="110" alt="Mitch the puppet" style="float: left;" /></a>
		</td>
		<td>
			<p id="mitch">
			<strong>Mitch,</strong> who has a learning disability. Mitch needs to be taught some subjects in a different way than the other kids in his class. Mitch&#8217;s favorite sport is baseball. He is the pitcher and captain of his team.
			</p>
		</td>
	</tr>
    
	<tr>
		<td><a href="images/sally.jpg"><img src="images/sallysmall.jpg" width="75" height="101" alt="Sally the puppet, holding a ball on a playground." style="float: left;" /></a>
		</td>
		<td>
			<p id="sally">
			<strong>Sally,</strong> who has a physical disability. Sally has either spina bifida or cerebral palsy and uses a wheelchair. She likes to sing and play games and even tried horseback riding once, but her favorite thing to do is swim. In the Let&#8217;s Prevent Abuse show, Sally portrays a child who has experienced physical abuse.
			</p>
		</td>
	</tr>
	<tr>
		<td><a href="images/Shannon.jpg"><img src="images/Shannonsmall.jpg" width="75" height="106" alt="Sally the puppet, holding a ball on a playground." style="float: left;" /></a>
		</td>
		<td id="shannon">
			<p><strong>Shannon,</strong> one of the KIDS AGAINST BULLYING puppets, is popular and  likes to dress in the latest style. She uses verbal and social bullying to  control other kids, especially if she&rsquo;s jealous of someone.</p>
</td>
	</tr>
</table>
Jay, Sally, and Carmen are featured in the Club Crew of <a href="http://www.pacerkidsagainstbullying.org">PACER's Kids Against Bullying</a> web site. Want to learn more? Contact <a href="mailto:puppets@pacer.org">puppets@pacer.org</a>.
<!--#include virtual="/puppets/trademark.htm"-->


<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->