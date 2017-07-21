<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
If Session("wwgLogin") <> "Valid" Then
	Session("wwgEntranceURL") = Request.ServerVariables("URL")
	Response.Redirect("/bullying/wewillgen/educator-login.asp")
End If
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>We Will Generation - Curriculum - Advisor Role</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link href="/bullying/wewillgen/css/loginstyle.css" rel="stylesheet" type="text/css" />



<!--#include virtual="/bullying/dynamic-head-items.html"--></head>

<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>
 
  <!--#include virtual="/bullying/dynamic-header.html"--> 
  <!--#include virtual="/bullying/wewillgen/curriculum/logintopnav.html"--> 
  
  <script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/wewillgen/">We Will Generation</a> /
  
  <div id="loginname">
  Logged in as:&nbsp;&nbsp;&nbsp;<strong><%=Session("fname")%></strong>
  </div>
  </div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/wewillgen/curriculum/loginnav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="advisornotes";	
	var showTree = "none-sub";
	var showTree2 = "none-none-sub";
	if (document.getElementById(currId)){
document.getElementById(currId).className = "active";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "submenu") {
			if (subTrees[i].id != showTree && subTrees[i].id != showTree2) {
				subTrees[i].className = "submenuhidden";
			}
		}
	}
</script> 
  </div>
  <!-- ###################### END Navigation ############################## -->
  
  <div class="content"> 
    <h1 id="maincontent">Role of Adult Advisor(s)</h1>

<!--	<div class="downloadbox">
		<h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="#">item 1</a></li>
			<li class="wordiconlist"><a href="#">item 2</a></li>
			<li class="ppticonlist"><a href="#">item 3</a></li>
		</ul>
	</div>
 -->

	<p>The WE WILL Generation is a student-centered movement, and the curriculum is designed with students as presenters. Having an adult advisor is important to the students&rsquo; success. The advisor could be a teacher, guidance counselor, social worker, or administrator. Other potential advisors include coaches, mentors, community leaders and volunteers.</p>
	<h2>Advisor Role</h2>
    <p>The advisor will assist in determining the presenters, the audience, and scheduling. Once a schedule is established, the advisor will ensure that the presenters are prepared for each lesson and attend the trainings, as well as provide support.</p>
	<h2>Logistics to Consider</h2>
	  <p><strong>1. Select Presenters</strong><br />
	  Advisors will recruit students who will present the WE WILL Curriculum.</p>
      <p>Tips:</p>
      <ul>
	 <li>The presenter groups should generally be older than the audience, such as 8th grade presenting to 5th grade, or seniors presenting to 8th grade.</li>
	 <li>Consider 5-8 presenters in a group. Pay attention to the group dynamic; a successful group will include:
     <ol type="a">
	  <li>diversity of gender, culture, and backgrounds</li>
	  <li>a range of stories and experiences</li>
	  <li>mutual support</li>
      </ol></li>
	  <li>Explore membership beyond the &ldquo;traditional&rdquo; school leadership groups; for example, try to recruit students who may feel excluded from other leadership opportunities.</li>
      <li>Determine what level of advisor involvement will be needed by the group to learn the curriculum and to be comfortable delivering the content to an audience.</li>
	  <li>Determine roles for presenting the curriculum. For example, one presenter may want to facilitate the discussion while another feels more comfortable leading the activities.</li>
	  <li>Consider developing guidelines for the presenters. Establish the expectations and rules.</li>
      </ul>
	  <p><strong>2. Select Audience</strong><br />
	  Advisors should consider an audience that is a best fit for their presenters. It is also helpful if there is an adult advisor who is willing to coordinate logistics for the audience.</p>
	  <p>Tips:</p>
      <ul>
	  <li>The audience should be younger than the presenters.</li>
	  <li>Consider logistics of:
      <ol type="a">
	  <li>Location of the audience &mdash; For example, will the presenters need to travel?</li>
	  <li>Size of audience &mdash; An audience of 30 or less students is optimal while an auditorium setting will be less effective</li>
	  <li>Availability of technology &mdash; Needed to show videos and other visuals</li>
      </ol></li></ul>
	  <p><strong>3. Determine Schedule</strong><br />
	  Advisors should work with the audience advisor or other leader to develop a presentation schedule.</p>
	  <p>Tips:</p>
      <ul>
	  <li>Each of the five lessons is approximately 30 &ndash; 60 minutes.</li>
	  <li>There is also a &ldquo;capstone&rdquo; activity of 30-60 minutes.</li>
	  <li>Consult with the audience advisor about the timeframe that can be allotted for the training.</li>
	  <li>Based on the parameters (which should include the number and length of available time slots), determine if a lesson will be presented in a single or multiple sessions.</li>
	  <li> Note that not all the content in a lesson needs to be presented.</li>
	  <li>Advisors have the option of selecting specific steps within each lesson to customize the lesson to fit the needs of their situation.</li>
	  <li>Record the proposed schedule. Share with all involved.</li>
      </ul>
	  <h2>Training and Support for Presenters</h2>
	  <p>The curriculum is designed for student facilitation, with easy to understand text, simple activities, and delivery models that should require minimal preparation. Some presenters will need minimal preparation, while other presenters will require more practice and supervision.</p>
	 
	  <p><strong>In order to prepare the students, it would be helpful for the adult advisor to:</strong></p>
      <ul>
	  <li>Review each lesson with the presenters.</li>
	  <li>Practice giving one or two of the lessons.</li>
	  <li>Evaluate their strengths.</li>
	  <li>Provide feedback throughout the process.</li>
	  <li>Assign roles and responsibilities.</li>
      </ul>

	 <h2> Ongoing support</h2>
    <p>Adult advisors will need to provide ongoing support throughout the process. Student presenters are gaining experience in facilitating groups, public speaking and advocacy and they will benefit from the insights and experiences of the advisor.</p>
    <h3>Safe and Supportive School Climate</h3>
     <p> A student-to-student program is one element of a successful plan to address bullying. A student focused program should be supported with other initiatives that include:</p>
     <ul>
      <li>school-wide assessment of bullying</li>
      <li>development and distribution of bullying prevention policies and rules</li>
      <li>engage, educate and involve parents</li>
      <li>building bullying prevention activities into school curriculum</li>
      <li>educator and school-personnel training and support</li>
      <li>trategies to support students involved in bullying situations</li>
    </ul>
    <p>For more information on creating a safe school climate, visit <a href="http://www.stopbullying.gov/prevention/at-school/index.html" target="_blank">StopBullying.gov</a></p>
    
    
              <p><img src="/css/printicon.gif" width="15" height="14" alt="" /> <a href="/bullying/wewillgen/curriculum/pdfs/Role-of-Adult-Advisor.pdf" target="_blank">Print-friendly version</a></p>

    
<br class="clearfloat" />
    
    <!-- end .content -->
  </div>
  <!--#include virtual="/bullying/wewillgen/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
