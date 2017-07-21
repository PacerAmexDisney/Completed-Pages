<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/bullying/classroom/schoolwide/digital-petition.asp"
%>















<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>National Bullying Prevention Center - Digital Petition Classroom Toolkits</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/bullying/dynamic-head-items.html"--></head>

<body class="twocol">
<div class="container"> <a id="skiptocontent" href="#maincontent">Skip to main content</a> 
 
 <!--#include virtual="/bullying/dynamic-header.html"--> 
 <!--#include virtual="/bullying/topnav.html"--> 
 
 <script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>
   <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/resources/">Resources</a> / <a href="/bullying/resources/toolkits/">Classroom Toolkits</a> /</div>

 
 <!-- ######################### NAVIGATION ################################# -->
 <div class="sidebar1"> 
  <!--#include virtual="/bullying/resources/nav.html"--> 
  <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="class-toolkits-petition";	
	var showTree = "toolkits-sub";
	var showTree2 = "class-toolkits-sub";
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
  <div style="width:350px; float:right; margin:10px;">
  <a href="/bullying/pdf/kabPetitionMaterials.pdf" title="Download the Elementary School Flyers" target="_blank"><img src="/bullying/digitalpetition/images/petition-flyer-kids-001.jpg" width="350" height="269" alt="Elementary School Flyer" />
  <img src="/bullying/digitalpetition/images/petition-flyer-kids-002.jpg" width="350" height="201" alt="" /></a>
  <a href="/bullying/pdf/tabPetitionMaterials.pdf" title="Downlaod the Middle and High School Flyers" target="_blank"><img src="/bullying/digitalpetition/images/petition-flyer-teens-001.jpg" width="350" height="248" alt="Middle and high School Flyer" />
  <img src="/bullying/digitalpetition/images/petition-flyer-teens-002.jpg" width="350" height="165" alt="" />
  </a></div>
  <h1 id="maincontent">Digital Petition Toolkit</h1>
  <p>Students across the country stay home from school each day from fear of being bullied. No one should be afraid to go to school. Unite with others and add your voice to the online petition. When you sign this <a href="/bullying/digitalpetition/">petition</a> (only your first name, age, and state will be shown), you&rsquo;ll:</p>
  <ul>
   <li>strengthen the cause </li>
   <li>show those who are being bullied that people care </li>
   <li>unite others who are willing to stand against bullying </li>
   <li>create schools that are safer for all </li>
   <li>influence legislation to protect students </li>
   <li>receive bullying prevention updates via email (optional)</li>
  </ul>
  <p><strong>Want To Do More? Encourage Others to Sign</strong><br />
   Hold a petition signing event at your school. It&rsquo;s easy, it helps raise awareness and it makes a difference.</p>
   <ol>
   	<li>Print the
  <ul>
   <li class="pdficonlist"><a href="/bullying/pdf/PetitionandGuidelines.pdf" target="_blank">Petition Guidelines and Signature Pages</a></li>
   <li class="pdficonlist"><a href="/bullying/pdf/kabPetitionMaterials.pdf" target="_blank">Elementary</a> <strong>or</strong> <a href="/bullying/pdf/tabPetitionMaterials.pdf" target="_blank">Middle/Highschool </a>&nbsp;Flyers</li>
  </ul></li>
  <li>Bring the petition and support materials to your school or organization.</li>
  <li>Talk with teacher, guidance counselor principal.</li>
  <li>Set up a location with the materials.</li>
  <li>Encourage others to sign on.</li>
  <li>Send the signed petition forms to PACER and the names will be added to the national petition.<br />
<address style="margin-top:10px;">PACER Center<br />
8161 Normandale Blvd. <br />
Minneapolis, MN, 55437</address>
</li></ol>
  <br class="clearfloat" />
  
  <!-- end .content --></div>
 <!--#include virtual="/bullying/footer.html"--> 
 <!-- end .container --></div>
</body>
</html>
