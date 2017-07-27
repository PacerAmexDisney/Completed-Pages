<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/bullying/classroom/community/"
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center - Classroom Toolkits</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--></head>

<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>
 
  <!--#include virtual="/bullying/dynamic-header.html"--> 
  <!--#include virtual="/bullying/topnav.html"--> 
  
  <script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/resources/">Resources</a> / <a href="/bullying/resources/toolkits/">Toolkits</a> /</div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
  <!--#include virtual="/bullying/resources/nav.html"--> 
  <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="community-toolkits";
	var showTree = "toolkits-sub";
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "active";
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
  </div>
  <!-- ###################### END Navigation ############################## -->
  
  <div class="content watermark"> 
  <h1 id="maincontent">Community Toolkits</h1>
  <p>Free, downloadable  toolkits designed for students and community members &nbsp;to hold events,  raise awareness and share information about bullying prevention.</p>

  <ul>
   <li><span style="color:red; font-weight:bold">NEW - </span><a href="http://www.pacer.org/bullying/yourenotalone/event-toolkit.asp" target="_blank">You&rsquo;re Not Alone, We&rsquo;re Here for You &ndash; Hold An Event</a><br />
     Designed to help you hold an awareness raising event to unite against bullying and join together to provide community, support, and hope for those who have experienced bullying.<br />
     The toolkit can be used in coordination with a bullying prevention event in the school or community, such as a &quot;Run, Walk, Roll Against Bullying,&quot; school open house, or parent teacher conferences. It can also be used as a stand-alone activity to raise awareness of the importance of creating supportive, caring environments in which everyone feels like they belong.</li>
    <li class="pdficonlist"><strong><a href="/bullying/getinvolved/student-action/events/pdf/RallytoPromoteStrongerBullyingPreventionLegislation.pdf" target="_blank">Rally to Promote Stronger  Bullying Legislation</a><br />
    </strong>Unite to improve your community&rsquo;s bullying  prevention law or school policy.</li>

    <li class="pdficonlist"><strong><a href="/bullying/pdf/PetitionandGuidelines.pdf" target="_blank">Digital Petition Toolkit</a></strong><br />
      Hold an &ldquo;End of Bullying Begins With Me&rdquo; petition signing event.</li>
    <li class="pdficonlist"><strong><a href="http://www.pacer.org/bullying/nbpm/runwalkroll/pdf/RWR-EventPlanningToolkit.pdf" target="_blank">Run, Walk, Roll Against Bullying</a></strong><br />
      Coordinate  a Run, Walk, Roll Against Bullying in your community with five easy steps,  which includes tips, ideas, and resources such as checklists and sample forms. </li>
    <li class="pdficonlist"><strong><a href="/bullying/resources/toolkits/pdf/PeerAdvocacyGuide.pdf" target="_blank">Peer Advocacy Guide</a></strong><br />
      How to address bullying of students with disabilities by engaging, educating, and empowering their peers with advocacy skills. A peer advocate program creates a formal process that identifies, trains, and supports a designated group of students who advocate for students with disabilities. </li>
  
</ul>
  <br class="clearfloat" />
  
  <!-- end .content --></div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
