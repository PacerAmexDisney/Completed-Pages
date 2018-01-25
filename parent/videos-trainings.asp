<!--#include virtual="/templates/header.asp"-->

<%
'Update form videopoll-id# to match the id in the Parent_VideoPoll table in the database.
'Update the 4 id's and 4 matching <label for="v1group1yes"> attributes changeing the v# to match the id of the videopoll.
'Update all the Tabindex's to be ascending for all sections on the page (currently 7 spots).

Dim tabIndexCount
tabIndexCount = 10
Function AddTabIndex()
	AddTabIndex = tabIndexCount
	tabIndexCount = tabIndexCount + 10
End Function

Function AddVideoPoll (fId) 

Response.Write("<form id=""videopoll-id" & fId & """ class=""videopollquestions"">")
Response.Write("	<div class=""questionwrapper"">")
Response.Write("		<div class=""questiontitle"">Post Video Questions <span class=""questioncount""><span class=""questionnumber"">1</span> of 2</span>:</div> ")
Response.Write("		<p class=""pollquestion-1"" tabindex=""" & AddTabIndex & """>Are you a Parent?<br />")
Response.Write("			<input type=""radio"" name=""v" & fId & "group1"" id=""v" & fId & "group1yes"" value=""Yes"" tabindex=""" & AddTabIndex & """ /><label for=""v" & fId & "group1yes"">Yes</label> 	<input type=""radio"" name=""v" & fId & "group1"" id=""v" & fId & "group1no"" value=""No"" tabindex=""" & AddTabIndex & """ /> <label for=""v" & fId & "group1no"">No</label>")
Response.Write("		</p>")
Response.Write("		<p class=""pollquestion-2 pollhidden"" tabindex=""" & AddTabIndex & """>Did this training video provide information that will help you make decisions about your child&rsquo;s education? <br />")
Response.Write("			<input type=""radio"" name=""v" & fId & "group2"" id=""v" & fId & "group2yes"" value=""Yes"" tabindex=""" & AddTabIndex & """ /> <label for=""v" & fId & "group2yes"">Yes</label>	<input type=""radio"" name=""v" & fId & "group2"" id=""v" & fId & "group2no"" value=""No"" tabindex=""" & AddTabIndex & """ /><label for=""v" & fId & "group2no"">No</label>")
Response.Write("		</p>")
Response.Write("		<p class=""pollthankyou pollhidden"" tabindex=""" & AddTabIndex & """>Thank You For Your Response.</p>")
Response.Write("	</div>")
Response.Write("</form>")
End Function

%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Parent Information Videos/Trainings</title>

<!--Vote Count Script-->
<script type="text/javascript">
	function VideoVoteClick(fId, fVote) {
	}
	$(document).ready(function() {
		//attach listener to all poll buttons.
		$('.videopollquestions input').click(function() {
			vidId = $(this).parents('.videopollquestions').prop('id');
			vidId = vidId.split("-id")[1];
			pollQuestion = $(this).parent().prop('class');
			pollQuestion = pollQuestion.split("-")[1];
			pollAnswer = this.value;
			
			$(this).parent().slideUp();	
			if (pollQuestion == '1' && pollAnswer == 'Yes') {
				$('#videopoll-id' + vidId + ' .questionwrapper').addClass('widequestion');
				$('#videopoll-id' + vidId + ' .pollquestion-2').removeClass('pollhidden');
				$('#videopoll-id' + vidId + ' .questionnumber').html('2');
				$('#videopoll-id' + vidId + ' .pollquestion-2').focus();
			} else if (pollQuestion == '2') {
				//Submit Poll Results
				resultArray = {};
				resultArray['id'] = vidId;
				resultArray['vote'] = pollAnswer;
				$.get("scripts/videoPollResult.asp", resultArray);
				//Display Thankyou
				$('#videopoll-id' + vidId + ' .questioncount').addClass('pollhidden');
				$('#videopoll-id' + vidId + ' .pollthankyou').removeClass('pollhidden');
				$('#videopoll-id' + vidId + ' .pollthankyou').focus();
			} else {
				$('#videopoll-id' + vidId + ' .questioncount').addClass('pollhidden');
				$('#videopoll-id' + vidId + ' .pollthankyou').removeClass('pollhidden');
				$('#videopoll-id' + vidId + ' .pollthankyou').focus();
				
			}			
		});
 });
</script>



<style type="text/css">
.pollhidden {
	display:none;
}
.videopollquestions {
	margin:10px;
}
#pagecontent .videopollquestions p {
	margin: 0.5em;
}
.questionwrapper {
	border: 1px solid #ccc;
	border-radius: 5px;
	padding: 5px;
	background: #B6E4F8;
	width: 16em;
}
.widequestion {
	width: 50em;
}
	
.questioncount {
	font-style:italic;
}



.tableheader{
	font-weight:bold;
	font-size:1.1em;
}
#pagecontent h2{
	font-size:1.4em;
	margin:50px 0px 10px 0px;
	padding:10px;
	background:#FC9;
	border-top:2px solid #F90;
	border-bottom:2px solid #F90;
}
#pagecontent h3 {
	margin-top:40px;
	padding-top:10px;
	border-top:1px solid #ccc;
	
	
}
#pagecontent p {
	max-width:60em;
}

#parent-resources tr.resource td:first-child{
	border-right:1px solid #ccc;
	color:#666;
}
iframe {
  max-width: 100%;
}
</style>
</head>

<body>
<!--#include virtual="/templates/page-header-nav.asp"-->
    
<div id="topbar">
	<div id="breadcrumb">

	<a href="/">Home</a> / <a href="/parent/">Parent Special Education Information</a> / <a href="resources.asp"> Resources</a> /
	
	<h1>Parent Special Education Information</h1>
<p style="font-size:90%;padding:0;margin:0;">PACER is the Minnesota Parent Training and Information Center, funded by the U.S. Department of Education's Office of Special Education Programs.</p>
	
</div>
</div>

<div id="leftbar">
<h2 style="display: none;">Parents Helping Parents Navigation Menu</h2>
<!--#include virtual="/templates/leftNav.html" -->

</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="video";
	var currSubId="none";
	// any Subtree that I want to Display
	var showTree = "none";
	
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
<!--BEGIN CONTENT-->
<h1 class="nounderline">Parent Information Videos/Trainings</h1>


<h2>At The Table</h2>
<h4><a name="help"></a>Help! I&rsquo;m Going to My First IEP Meeting</h4>
<p>Your child has been evaluated and found eligible for special education. Now you will be attending your first Individualized Education Program (IEP) meeting.  This short presentation will help you prepare and build your confidence. It&rsquo;s a step-by-process &mdash; you will learn more and more as you move through special education with your child.</p>
<p align="center"><iframe width="640" height="360" src="https://www.youtube.com/embed/hIywl4OSsoc?rel=0" frameborder="0" allowfullscreen></iframe></p>


<hr />
<h4><a name="preparing-for"></a>Preparing for Your First Evaluation Planning Meeting for Your Child</h4>
<p>The first step in the process of special education is the identification or recognition that a child may be in need of special education services.  The next step is planning for the evaluation which will determine if the child qualifies for special education.  This webinar will help parents prepare to work with the school to develop an evaluation for the child.</p>
<p align="center"><iframe width="480" height="360" src="//www.youtube.com/embed/NYk6bNd8y0Y" frameborder="0" allowfullscreen></iframe></p>
<p>After watching the video, please complete <a href="https://www.surveymonkey.com/s/HPYY8V3" target="_blank">this survey</a>.</p>

<hr />
<h4><a name="receiving-results"></a>At the Table: Receiving the Results of Your Child&rsquo;s Special Education Evaluation</h4>
<p>We&rsquo;re &ldquo;at the special education planning table&rdquo; again. This short video presentation will help you prepare for your meeting with the school to discuss the results of your child&rsquo;s special education evaluation.</p>
<p align="center"><iframe width="480" height="360" src="https://www.youtube.com/embed/6BSQzD-8470?rel=0" frameborder="0" allowfullscreen></iframe></p>

<hr />
<h4><a name="six-areas"></a>Six Areas that May Affect IEP Services for Your Child</h4>
<p>Once your child qualifies for special education through the identification and evaluation process, your child&rsquo;s IEP team will develop or review and revise the IEP every year.  One part of this annual IEP development must be the &ldquo;consideration of special factors.&rdquo;  Parents will find out why and how these special factors may be key in helping their child make meaningful educational progress.</p>
<p align="center"><iframe width="480" height="360" src="//www.youtube.com/embed/igivgaEl4JQ?rel=0" frameborder="0" allowfullscreen></iframe></p>
<p>After watching the video, please complete <a href="https://www.surveymonkey.com/s/PJF8J2P" target="_blank">this survey</a>.</p>

<h2><a name="phc"></a>Parent Homework Sheet</h2>
<p>PACER parent advocates have developed a tool called the Parent Homework Sheet. We developed it to help parents of children with disabilities understand how the needs of the student as stated in the special education evaluation report connect with the goals and support in the student&rsquo;s IEP (Individualized Education Program). Watching this series of short videos will help parents prepare to discuss their child&rsquo;s special education services with the IEP team.</p>
<p>Download the accompanying <a href="/parent/php/PHP-c210.pdf" target="_blank">Parent Homework Sheet</a></p>

<h4 id="PHS1">Part 1 - Parent Homework Sheet: Why Should Parents Use It?</h4>
  <p>Do you wish you could go to IEP meetings better prepared to understand and discuss your child&rsquo;s special education needs? Do you wish you could understand your child&rsquo;s Evaluation Report better? Do you think your child needs a particular service but don&rsquo;t know how to ask for it effectively at an IEP meeting? This video will explain the PACER Parent Homework Sheet and how it may be helpful to you.</p>
<p align="center"><iframe width="480" height="360" src="//www.youtube.com/embed/XhD-j_GBh9c" frameborder="0" allowfullscreen></iframe></p>
<%AddVideoPoll(1)%>



<hr />
<h4 id="PHS2">Part 2 - Parent Homework Sheet: How to Complete the Form.</h4>
  <p>The goal of this video is to help parents of special education students complete the Parent Homework Sheet.</p>
<p align="center"><iframe width="560" height="315" src="http://www.youtube.com/embed/u2BdaWMFEcs" frameborder="0" allowfullscreen></iframe></p>
<%AddVideoPoll(2)%>

<hr />
<h4 id="PHS3">Part 3 - Parent Homework Sheet: How to Use the Results.</h4>
  <p>You have a new tool to help you effectively participate and plan services to meet your child&rsquo;s needs now and in the future. This video will help you put your hard work on the Parent Homework Sheet (PHS) to use.</p>
<p align="center"><iframe width="480" height="360" src="//www.youtube.com/embed/OhDQA1F9lBs" frameborder="0" allowfullscreen></iframe></p>
<p><img src="/images/pdficon_small.gif" width="15" height="15" alt="" /> <a href="/parent/php/PHP-c210.pdf">Parent Homework Sheet download</a></p>
<%AddVideoPoll(3)%>



<h2 id="spec-ed-asl"><a name="asl"></a>Special Education Overview in ASL</h2>
<p><strong></strong>This video overview of special education In American Sign Language was created to help parents who use sign language and are parents of children with disabilities understand what special education is, how a child might get into special education, how to resolve disagreements, and what role parents play.</p>
<p align="center"><iframe width="560" height="315" src="//www.youtube.com/embed/K9fik6xytY8" frameborder="0" allowfullscreen></iframe></p>



<h2>&ldquo;Leo&rsquo;s Story: Empowered by Assistive Technology&rdquo;</h2>
  <p>In this video Leo's mom discusses the important role of assistive technology in helping Leo communicate.</p>
<p align="center"><iframe width="560" height="315" src="http://www.youtube.com/embed/3-zeyYbYEDw" frameborder="0" allowfullscreen></iframe></p>




<h2><a name="helping-children"></a>Helping Children with Disabilities Learn What All Children Learn</a></h2>
<p>
	    Many benefits are possible when parents and the rest of the  Individualized Education Program (IEP) team help students with disabilities  learn what all children are expected to learn. The information in this 10  minute presentation will help parents of students receiving special education  services work with the IEP team to increase their child&rsquo;s skills in the areas  of reading and math. </p>
        <p align="center"><iframe width="480" height="360" src="//www.youtube.com/embed/8diEdoXanzg" frameborder="0" allowfullscreen></iframe>
</p>

<h2><a name="keeping-records"></a>Now, where did I put that? Keeping Special Education Records</h2>
<p>Good record keeping is an essential part of the special education process. This presentation will help parents of children with disabilities understand: the importance of special education records, which records to keep, how to organize them, and how to use them.</p>
<p align="center"><iframe width="640" height="360" src="https://www.youtube.com/embed/1wj9BhopsvA?rel=0" frameborder="0" allowfullscreen></iframe></p>

<!--END CONTENT-->

<div id="pageextender" style="clear:both">&nbsp;</div>



<!--#include virtual="/templates/footer.asp"-->
